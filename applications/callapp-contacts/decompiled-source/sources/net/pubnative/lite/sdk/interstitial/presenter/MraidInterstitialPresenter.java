package net.pubnative.lite.sdk.interstitial.presenter;

import android.content.Context;
import android.content.Intent;
import net.pubnative.lite.sdk.interstitial.HyBidInterstitialBroadcastReceiver;
import net.pubnative.lite.sdk.interstitial.activity.HyBidInterstitialActivity;
import net.pubnative.lite.sdk.interstitial.activity.MraidInterstitialActivity;
import net.pubnative.lite.sdk.interstitial.presenter.InterstitialPresenter;
import net.pubnative.lite.sdk.models.Ad;
import net.pubnative.lite.sdk.utils.CheckUtils;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/interstitial/presenter/MraidInterstitialPresenter.class */
public class MraidInterstitialPresenter implements HyBidInterstitialBroadcastReceiver.Listener, InterstitialPresenter {
    private final Ad mAd;
    private final HyBidInterstitialBroadcastReceiver mBroadcastReceiver;
    private final Context mContext;
    private boolean mIsDestroyed;
    private InterstitialPresenter.Listener mListener;
    private boolean mReady = false;
    private final Integer mSkipOffset;
    private final String mZoneId;

    public MraidInterstitialPresenter(Context context, Ad ad, String str, Integer num) {
        this.mContext = context;
        this.mAd = ad;
        this.mZoneId = str;
        this.mSkipOffset = num;
        if (context == null || context.getApplicationContext() == null) {
            this.mBroadcastReceiver = null;
            return;
        }
        HyBidInterstitialBroadcastReceiver hyBidInterstitialBroadcastReceiver = new HyBidInterstitialBroadcastReceiver(context);
        this.mBroadcastReceiver = hyBidInterstitialBroadcastReceiver;
        hyBidInterstitialBroadcastReceiver.setListener(this);
    }

    @Override // net.pubnative.lite.sdk.interstitial.presenter.InterstitialPresenter
    public void destroy() {
        HyBidInterstitialBroadcastReceiver hyBidInterstitialBroadcastReceiver = this.mBroadcastReceiver;
        if (hyBidInterstitialBroadcastReceiver != null) {
            hyBidInterstitialBroadcastReceiver.destroy();
        }
        this.mListener = null;
        this.mIsDestroyed = true;
        this.mReady = false;
    }

    @Override // net.pubnative.lite.sdk.interstitial.presenter.InterstitialPresenter
    public Ad getAd() {
        return this.mAd;
    }

    @Override // net.pubnative.lite.sdk.interstitial.presenter.InterstitialPresenter
    public boolean isReady() {
        return this.mReady;
    }

    @Override // net.pubnative.lite.sdk.interstitial.presenter.InterstitialPresenter
    public void load() {
        if (CheckUtils.NoThrow.checkArgument(!this.mIsDestroyed, "MraidInterstitialPresenter is destroyed")) {
            this.mReady = true;
            InterstitialPresenter.Listener listener = this.mListener;
            if (listener != null) {
                listener.onInterstitialLoaded(this);
            }
        }
    }

    @Override // net.pubnative.lite.sdk.interstitial.HyBidInterstitialBroadcastReceiver.Listener
    public void onReceivedAction(HyBidInterstitialBroadcastReceiver.Action action) {
        this.mBroadcastReceiver.handleAction(action, this, this.mListener);
    }

    @Override // net.pubnative.lite.sdk.interstitial.presenter.InterstitialPresenter
    public void setListener(InterstitialPresenter.Listener listener) {
        this.mListener = listener;
    }

    @Override // net.pubnative.lite.sdk.interstitial.presenter.InterstitialPresenter
    public void show() {
        HyBidInterstitialBroadcastReceiver hyBidInterstitialBroadcastReceiver;
        if (CheckUtils.NoThrow.checkArgument(!this.mIsDestroyed, "MraidInterstitialPresenter is destroyed") && (hyBidInterstitialBroadcastReceiver = this.mBroadcastReceiver) != null) {
            hyBidInterstitialBroadcastReceiver.register();
            Intent intent = new Intent(this.mContext, MraidInterstitialActivity.class);
            intent.putExtra(HyBidInterstitialActivity.EXTRA_SKIP_OFFSET, this.mSkipOffset);
            intent.putExtra("extra_pn_broadcast_id", this.mBroadcastReceiver.getBroadcastId());
            intent.putExtra("extra_pn_zone_id", this.mZoneId);
            intent.addFlags(268435456);
            this.mContext.startActivity(intent);
        }
    }
}
