package net.pubnative.lite.sdk.rewarded;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import net.pubnative.lite.sdk.AdCache;
import net.pubnative.lite.sdk.HyBid;
import net.pubnative.lite.sdk.api.RequestManager;
import net.pubnative.lite.sdk.api.RewardedRequestManager;
import net.pubnative.lite.sdk.models.Ad;
import net.pubnative.lite.sdk.models.IntegrationType;
import net.pubnative.lite.sdk.rewarded.presenter.RewardedPresenter;
import net.pubnative.lite.sdk.rewarded.presenter.RewardedPresenterFactory;
import net.pubnative.lite.sdk.utils.Logger;
import net.pubnative.lite.sdk.vpaid.VideoAdCache;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/rewarded/HyBidRewardedAd.class */
public class HyBidRewardedAd implements RequestManager.RequestListener, RewardedPresenter.Listener {
    private static final String TAG = "HyBidRewardedAd";
    private Ad mAd;
    private final AdCache mAdCache;
    private final Context mContext;
    private boolean mIsDestroyed;
    private final Listener mListener;
    private RewardedPresenter mPresenter;
    private boolean mReady;
    private RequestManager mRequestManager;
    private final VideoAdCache mVideoCache;
    private final String mZoneId;

    /* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/rewarded/HyBidRewardedAd$Listener.class */
    public interface Listener {
        void onReward();

        void onRewardedClick();

        void onRewardedClosed();

        void onRewardedLoadFailed(Throwable th);

        void onRewardedLoaded();

        void onRewardedOpened();
    }

    public HyBidRewardedAd(Activity activity, String str, Listener listener) {
        this((Context) activity, str, listener);
    }

    public HyBidRewardedAd(Activity activity, Listener listener) {
        this((Context) activity, "", listener);
    }

    public HyBidRewardedAd(Context context, String str, Listener listener) {
        this.mReady = false;
        this.mIsDestroyed = false;
        this.mRequestManager = new RewardedRequestManager();
        this.mContext = context;
        this.mZoneId = str;
        this.mListener = listener;
        this.mAdCache = HyBid.getAdCache();
        this.mVideoCache = HyBid.getVideoAdCache();
        this.mRequestManager.setIntegrationType(IntegrationType.STANDALONE);
    }

    private void cleanup() {
        this.mReady = false;
        RewardedPresenter rewardedPresenter = this.mPresenter;
        if (rewardedPresenter != null) {
            rewardedPresenter.destroy();
            this.mPresenter = null;
        }
    }

    private void renderAd() {
        RewardedPresenter createRewardedPresenter = new RewardedPresenterFactory(this.mContext, this.mZoneId).createRewardedPresenter(this.mAd, this);
        this.mPresenter = createRewardedPresenter;
        if (createRewardedPresenter != null) {
            createRewardedPresenter.load();
        } else {
            invokeOnLoadFailed(new Exception("The server has returned an unsupported ad asset"));
        }
    }

    public void destroy() {
        cleanup();
        this.mIsDestroyed = true;
        RequestManager requestManager = this.mRequestManager;
        if (requestManager != null) {
            requestManager.destroy();
            this.mRequestManager = null;
        }
    }

    public Integer getBidPoints() {
        Ad ad = this.mAd;
        return Integer.valueOf(ad != null ? ad.getECPM().intValue() : 0);
    }

    public String getCreativeId() {
        Ad ad = this.mAd;
        if (ad != null) {
            return ad.getCreativeId();
        }
        return null;
    }

    public String getImpressionId() {
        Ad ad = this.mAd;
        if (ad != null) {
            return ad.getImpressionId();
        }
        return null;
    }

    protected void invokeOnClick() {
        Listener listener = this.mListener;
        if (listener != null) {
            listener.onRewardedClick();
        }
    }

    protected void invokeOnClosed() {
        Listener listener = this.mListener;
        if (listener != null) {
            listener.onRewardedClosed();
        }
    }

    protected void invokeOnLoadFailed(Exception exc) {
        Logger.e(TAG, exc.getMessage());
        Listener listener = this.mListener;
        if (listener != null) {
            listener.onRewardedLoadFailed(exc);
        }
    }

    protected void invokeOnLoadFinished() {
        Listener listener = this.mListener;
        if (listener != null) {
            listener.onRewardedLoaded();
        }
    }

    protected void invokeOnOpened() {
        Listener listener = this.mListener;
        if (listener != null) {
            listener.onRewardedOpened();
        }
    }

    protected void invokeOnReward() {
        Listener listener = this.mListener;
        if (listener != null) {
            listener.onReward();
        }
    }

    public boolean isReady() {
        return this.mReady;
    }

    public void load() {
        if (TextUtils.isEmpty(this.mZoneId)) {
            invokeOnLoadFailed(new Exception("Invalid zone id provided"));
            return;
        }
        cleanup();
        this.mRequestManager.setZoneId(this.mZoneId);
        this.mRequestManager.setRequestListener(this);
        this.mRequestManager.requestAd();
    }

    @Override // net.pubnative.lite.sdk.api.RequestManager.RequestListener
    public void onRequestFail(Throwable th) {
        invokeOnLoadFailed(new Exception(th));
    }

    @Override // net.pubnative.lite.sdk.api.RequestManager.RequestListener
    public void onRequestSuccess(Ad ad) {
        if (ad == null) {
            invokeOnLoadFailed(new Exception("Server returned null ad"));
            return;
        }
        this.mAd = ad;
        renderAd();
    }

    @Override // net.pubnative.lite.sdk.rewarded.presenter.RewardedPresenter.Listener
    public void onRewardedClicked(RewardedPresenter rewardedPresenter) {
        invokeOnClick();
    }

    @Override // net.pubnative.lite.sdk.rewarded.presenter.RewardedPresenter.Listener
    public void onRewardedClosed(RewardedPresenter rewardedPresenter) {
        invokeOnClosed();
    }

    @Override // net.pubnative.lite.sdk.rewarded.presenter.RewardedPresenter.Listener
    public void onRewardedError(RewardedPresenter rewardedPresenter) {
        invokeOnLoadFailed(new Exception("An error has occurred while rendering the rewarded ad"));
    }

    @Override // net.pubnative.lite.sdk.rewarded.presenter.RewardedPresenter.Listener
    public void onRewardedFinished(RewardedPresenter rewardedPresenter) {
        invokeOnReward();
    }

    @Override // net.pubnative.lite.sdk.rewarded.presenter.RewardedPresenter.Listener
    public void onRewardedLoaded(RewardedPresenter rewardedPresenter) {
        this.mReady = true;
        invokeOnLoadFinished();
    }

    @Override // net.pubnative.lite.sdk.rewarded.presenter.RewardedPresenter.Listener
    public void onRewardedOpened(RewardedPresenter rewardedPresenter) {
        invokeOnOpened();
    }

    public void setMediation(boolean z) {
        RequestManager requestManager = this.mRequestManager;
        if (requestManager != null) {
            requestManager.setIntegrationType(z ? IntegrationType.MEDIATION : IntegrationType.STANDALONE);
        }
    }

    public void show() {
        RewardedPresenter rewardedPresenter = this.mPresenter;
        if (rewardedPresenter == null || !this.mReady) {
            Logger.e(TAG, "Can't display ad. Rewarded ad not ready.");
        } else {
            rewardedPresenter.show();
        }
    }
}
