package net.pubnative.lite.sdk.banner.presenter;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.widget.RelativeLayout;
import net.pubnative.lite.sdk.HyBid;
import net.pubnative.lite.sdk.models.Ad;
import net.pubnative.lite.sdk.presenter.AdPresenter;
import net.pubnative.lite.sdk.utils.CheckUtils;
import net.pubnative.lite.sdk.vpaid.PlayerInfo;
import net.pubnative.lite.sdk.vpaid.VideoAd;
import net.pubnative.lite.sdk.vpaid.VideoAdCacheItem;
import net.pubnative.lite.sdk.vpaid.VideoAdListener;
import net.pubnative.lite.sdk.vpaid.VideoAdView;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/banner/presenter/VastAdPresenter.class */
public class VastAdPresenter implements AdPresenter {
    private final Ad mAd;
    private final Context mContext;
    private AdPresenter.ImpressionListener mImpressionListener;
    private boolean mIsDestroyed;
    private AdPresenter.Listener mListener;
    private VideoAd mVideoAd;
    private VideoAdView mVideoPlayer;
    private boolean mLoaded = false;
    private final VideoAdListener mVideoAdListener = new VideoAdListener() { // from class: net.pubnative.lite.sdk.banner.presenter.VastAdPresenter.1
        @Override // net.pubnative.lite.sdk.vpaid.VideoAdListener
        public void onAdClicked() {
            if (!VastAdPresenter.this.mIsDestroyed && VastAdPresenter.this.mListener != null) {
                VastAdPresenter.this.mListener.onAdClicked(VastAdPresenter.this);
            }
        }

        @Override // net.pubnative.lite.sdk.vpaid.VideoAdListener
        public void onAdDidReachEnd() {
        }

        @Override // net.pubnative.lite.sdk.vpaid.VideoAdListener
        public void onAdDismissed() {
        }

        @Override // net.pubnative.lite.sdk.vpaid.VideoAdListener
        public void onAdExpired() {
        }

        @Override // net.pubnative.lite.sdk.vpaid.VideoAdListener
        public void onAdLoadFail(PlayerInfo playerInfo) {
            if (VastAdPresenter.this.mListener != null) {
                VastAdPresenter.this.mListener.onAdError(VastAdPresenter.this);
            }
        }

        @Override // net.pubnative.lite.sdk.vpaid.VideoAdListener
        public void onAdLoadSuccess() {
            if (!VastAdPresenter.this.mIsDestroyed && !VastAdPresenter.this.mLoaded) {
                VastAdPresenter.this.mLoaded = true;
                if (VastAdPresenter.this.mListener != null) {
                    AdPresenter.Listener listener = VastAdPresenter.this.mListener;
                    VastAdPresenter vastAdPresenter = VastAdPresenter.this;
                    listener.onAdLoaded(vastAdPresenter, vastAdPresenter.buildView());
                }
            }
        }

        @Override // net.pubnative.lite.sdk.vpaid.VideoAdListener
        public void onAdStarted() {
            VastAdPresenter.this.mImpressionListener.onImpression();
        }
    };

    public VastAdPresenter(Context context, Ad ad) {
        this.mContext = context;
        this.mAd = ad;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public View buildView() {
        RelativeLayout relativeLayout = new RelativeLayout(this.mContext);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(13, -1);
        relativeLayout.setBackgroundColor(-16777216);
        relativeLayout.addView(this.mVideoPlayer, layoutParams);
        RelativeLayout contentInfoContainer = getAd().getContentInfoContainer(this.mContext);
        if (contentInfoContainer != null) {
            relativeLayout.addView(contentInfoContainer);
        }
        return relativeLayout;
    }

    @Override // net.pubnative.lite.sdk.presenter.AdPresenter
    public void destroy() {
        VideoAd videoAd = this.mVideoAd;
        if (videoAd != null) {
            videoAd.destroy();
        }
        this.mListener = null;
        this.mIsDestroyed = true;
    }

    @Override // net.pubnative.lite.sdk.presenter.AdPresenter
    public Ad getAd() {
        return this.mAd;
    }

    @Override // net.pubnative.lite.sdk.presenter.AdPresenter
    public void load() {
        VideoAdCacheItem remove;
        if (CheckUtils.NoThrow.checkArgument(!this.mIsDestroyed, "VastMRectPresenter is destroyed")) {
            this.mVideoAd = new VideoAd(this.mContext, this.mAd.getVast());
            VideoAdView videoAdView = new VideoAdView(this.mContext);
            this.mVideoPlayer = videoAdView;
            this.mVideoAd.bindView(videoAdView);
            this.mVideoAd.setAdListener(this.mVideoAdListener);
            if (!TextUtils.isEmpty(getAd().getZoneId()) && (remove = HyBid.getVideoAdCache().remove(getAd().getZoneId())) != null) {
                this.mVideoAd.setVideoCacheItem(remove);
            }
            this.mVideoAd.load();
        }
    }

    @Override // net.pubnative.lite.sdk.presenter.AdPresenter
    public void setImpressionListener(AdPresenter.ImpressionListener impressionListener) {
        this.mImpressionListener = impressionListener;
    }

    @Override // net.pubnative.lite.sdk.presenter.AdPresenter
    public void setListener(AdPresenter.Listener listener) {
        this.mListener = listener;
    }

    @Override // net.pubnative.lite.sdk.presenter.AdPresenter
    public void startTracking() {
        this.mVideoAd.show();
    }

    @Override // net.pubnative.lite.sdk.presenter.AdPresenter
    public void stopTracking() {
        this.mVideoAd.dismiss();
    }
}
