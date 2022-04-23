package net.pubnative.lite.sdk.rewarded.activity;

import android.os.Bundle;
import android.view.View;
import net.pubnative.lite.sdk.HyBid;
import net.pubnative.lite.sdk.rewarded.HyBidRewardedBroadcastReceiver;
import net.pubnative.lite.sdk.vpaid.PlayerInfo;
import net.pubnative.lite.sdk.vpaid.VideoAd;
import net.pubnative.lite.sdk.vpaid.VideoAdCacheItem;
import net.pubnative.lite.sdk.vpaid.VideoAdListener;
import net.pubnative.lite.sdk.vpaid.VideoAdView;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/rewarded/activity/VastRewardedActivity.class */
public class VastRewardedActivity extends HyBidRewardedActivity {
    private VideoAd mVideoAd;
    private VideoAdView mVideoPlayer;
    private boolean mReady = false;
    private boolean mFinished = false;
    private final VideoAdListener mVideoAdListener = new VideoAdListener() { // from class: net.pubnative.lite.sdk.rewarded.activity.VastRewardedActivity.2
        @Override // net.pubnative.lite.sdk.vpaid.VideoAdListener
        public void onAdClicked() {
            VastRewardedActivity.this.getBroadcastSender().sendBroadcast(HyBidRewardedBroadcastReceiver.Action.CLICK);
        }

        @Override // net.pubnative.lite.sdk.vpaid.VideoAdListener
        public void onAdDidReachEnd() {
            VastRewardedActivity.this.mReady = false;
            VastRewardedActivity.this.mFinished = true;
            VastRewardedActivity.this.showRewardedCloseButton();
            VastRewardedActivity.this.getBroadcastSender().sendBroadcast(HyBidRewardedBroadcastReceiver.Action.FINISH);
        }

        @Override // net.pubnative.lite.sdk.vpaid.VideoAdListener
        public void onAdDismissed() {
            VastRewardedActivity.this.getBroadcastSender().sendBroadcast(HyBidRewardedBroadcastReceiver.Action.CLOSE);
            VastRewardedActivity.this.finish();
        }

        @Override // net.pubnative.lite.sdk.vpaid.VideoAdListener
        public void onAdExpired() {
        }

        @Override // net.pubnative.lite.sdk.vpaid.VideoAdListener
        public void onAdLoadFail(PlayerInfo playerInfo) {
            VastRewardedActivity.this.setProgressBarInvisible();
            VastRewardedActivity.this.getBroadcastSender().sendBroadcast(HyBidRewardedBroadcastReceiver.Action.ERROR);
            VastRewardedActivity.this.finish();
        }

        @Override // net.pubnative.lite.sdk.vpaid.VideoAdListener
        public void onAdLoadSuccess() {
            if (!VastRewardedActivity.this.mReady) {
                VastRewardedActivity.this.mReady = true;
                VastRewardedActivity.this.setProgressBarInvisible();
                VastRewardedActivity.this.mVideoAd.show();
                VastRewardedActivity.this.getBroadcastSender().sendBroadcast(HyBidRewardedBroadcastReceiver.Action.OPEN);
            }
        }

        @Override // net.pubnative.lite.sdk.vpaid.VideoAdListener
        public void onAdStarted() {
        }
    };

    @Override // net.pubnative.lite.sdk.rewarded.activity.HyBidRewardedActivity
    public View getAdView() {
        if (getAd() == null) {
            return null;
        }
        VideoAdView videoAdView = new VideoAdView(this);
        this.mVideoPlayer = videoAdView;
        return videoAdView;
    }

    @Override // net.pubnative.lite.sdk.rewarded.activity.HyBidRewardedActivity, android.app.Activity
    public void onBackPressed() {
        if (this.mFinished) {
            super.onBackPressed();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // net.pubnative.lite.sdk.rewarded.activity.HyBidRewardedActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (getAd() != null) {
            VideoAd videoAd = new VideoAd(this, getAd().getVast());
            this.mVideoAd = videoAd;
            videoAd.setRewarded(true);
            this.mVideoAd.bindView(this.mVideoPlayer);
            this.mVideoAd.setAdListener(this.mVideoAdListener);
            setProgressBarVisible();
            VideoAdCacheItem remove = HyBid.getVideoAdCache().remove(getZoneId());
            if (remove != null) {
                this.mVideoAd.setVideoCacheItem(remove);
            }
            this.mVideoPlayer.postDelayed(new Runnable() { // from class: net.pubnative.lite.sdk.rewarded.activity.VastRewardedActivity.1
                @Override // java.lang.Runnable
                public void run() {
                    VastRewardedActivity.this.mVideoAd.load();
                }
            }, 1000L);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // net.pubnative.lite.sdk.rewarded.activity.HyBidRewardedActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        VideoAd videoAd = this.mVideoAd;
        if (videoAd != null) {
            videoAd.destroy();
            this.mReady = false;
        }
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        if (this.mReady) {
            this.mVideoAd.pause();
        }
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        if (this.mReady) {
            this.mVideoAd.resume();
        }
    }
}
