package net.pubnative.lite.sdk.interstitial.activity;

import android.os.Bundle;
import android.view.View;
import net.pubnative.lite.sdk.HyBid;
import net.pubnative.lite.sdk.interstitial.HyBidInterstitialBroadcastReceiver;
import net.pubnative.lite.sdk.vpaid.PlayerInfo;
import net.pubnative.lite.sdk.vpaid.VideoAd;
import net.pubnative.lite.sdk.vpaid.VideoAdCacheItem;
import net.pubnative.lite.sdk.vpaid.VideoAdListener;
import net.pubnative.lite.sdk.vpaid.VideoAdView;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/interstitial/activity/VastInterstitialActivity.class */
public class VastInterstitialActivity extends HyBidInterstitialActivity {
    private int mSkipOffset;
    private VideoAd mVideoAd;
    private VideoAdView mVideoPlayer;
    private boolean mReady = false;
    private final VideoAdListener mVideoAdListener = new VideoAdListener() { // from class: net.pubnative.lite.sdk.interstitial.activity.VastInterstitialActivity.2
        @Override // net.pubnative.lite.sdk.vpaid.VideoAdListener
        public void onAdClicked() {
            VastInterstitialActivity.this.getBroadcastSender().sendBroadcast(HyBidInterstitialBroadcastReceiver.Action.CLICK);
        }

        @Override // net.pubnative.lite.sdk.vpaid.VideoAdListener
        public void onAdDidReachEnd() {
            VastInterstitialActivity.this.mReady = false;
            VastInterstitialActivity.this.showInterstitialCloseButton();
        }

        @Override // net.pubnative.lite.sdk.vpaid.VideoAdListener
        public void onAdDismissed() {
            VastInterstitialActivity.this.finish();
        }

        @Override // net.pubnative.lite.sdk.vpaid.VideoAdListener
        public void onAdExpired() {
        }

        @Override // net.pubnative.lite.sdk.vpaid.VideoAdListener
        public void onAdLoadFail(PlayerInfo playerInfo) {
            VastInterstitialActivity.this.setProgressBarInvisible();
            VastInterstitialActivity.this.getBroadcastSender().sendBroadcast(HyBidInterstitialBroadcastReceiver.Action.ERROR);
            VastInterstitialActivity.this.getBroadcastSender().sendBroadcast(HyBidInterstitialBroadcastReceiver.Action.DISMISS);
            VastInterstitialActivity.this.finish();
        }

        @Override // net.pubnative.lite.sdk.vpaid.VideoAdListener
        public void onAdLoadSuccess() {
            if (!VastInterstitialActivity.this.mReady) {
                VastInterstitialActivity.this.mReady = true;
                VastInterstitialActivity.this.setProgressBarInvisible();
                VastInterstitialActivity.this.mVideoAd.show();
                VastInterstitialActivity.this.getBroadcastSender().sendBroadcast(HyBidInterstitialBroadcastReceiver.Action.SHOW);
            }
        }

        @Override // net.pubnative.lite.sdk.vpaid.VideoAdListener
        public void onAdStarted() {
        }
    };

    @Override // net.pubnative.lite.sdk.interstitial.activity.HyBidInterstitialActivity
    public View getAdView() {
        if (getAd() != null) {
            VideoAdView videoAdView = new VideoAdView(this);
            this.mVideoPlayer = videoAdView;
            return videoAdView;
        }
        return null;
    }

    @Override // net.pubnative.lite.sdk.interstitial.activity.HyBidInterstitialActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        hideInterstitialCloseButton();
        if (getAd() != null) {
            this.mSkipOffset = getIntent().getIntExtra(HyBidInterstitialActivity.EXTRA_SKIP_OFFSET, 0);
            VideoAd videoAd = new VideoAd(this, getAd().getVast());
            this.mVideoAd = videoAd;
            videoAd.useMobileNetworkForCaching(true);
            this.mVideoAd.bindView(this.mVideoPlayer);
            this.mVideoAd.setAdListener(this.mVideoAdListener);
            setProgressBarVisible();
            VideoAdCacheItem remove = HyBid.getVideoAdCache().remove(getZoneId());
            if (remove != null) {
                remove.getAdParams().setPublisherSkipSeconds(this.mSkipOffset);
                this.mVideoAd.setVideoCacheItem(remove);
            }
            this.mVideoPlayer.postDelayed(new Runnable() { // from class: net.pubnative.lite.sdk.interstitial.activity.VastInterstitialActivity.1
                @Override // java.lang.Runnable
                public void run() {
                    VastInterstitialActivity.this.mVideoAd.load();
                }
            }, 1000L);
        }
    }

    @Override // net.pubnative.lite.sdk.interstitial.activity.HyBidInterstitialActivity, android.app.Activity
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

    @Override // net.pubnative.lite.sdk.interstitial.activity.HyBidInterstitialActivity
    protected boolean shouldShowContentInfo() {
        return true;
    }
}
