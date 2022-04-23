package net.pubnative.lite.sdk.rewarded.presenter;

import android.content.Context;
import android.content.Intent;
import net.pubnative.lite.sdk.models.Ad;
import net.pubnative.lite.sdk.rewarded.HyBidRewardedBroadcastReceiver;
import net.pubnative.lite.sdk.rewarded.activity.VastRewardedActivity;
import net.pubnative.lite.sdk.rewarded.presenter.RewardedPresenter;
import net.pubnative.lite.sdk.utils.CheckUtils;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/rewarded/presenter/VastRewardedPresenter.class */
public class VastRewardedPresenter implements HyBidRewardedBroadcastReceiver.Listener, RewardedPresenter {
    private final Ad mAd;
    private final HyBidRewardedBroadcastReceiver mBroadcastReceiver;
    private final Context mContext;
    private boolean mIsDestroyed;
    private RewardedPresenter.Listener mListener;
    private boolean mReady = false;
    private final String mZoneId;

    public VastRewardedPresenter(Context context, Ad ad, String str) {
        this.mContext = context;
        this.mAd = ad;
        this.mZoneId = str;
        if (context == null || context.getApplicationContext() == null) {
            this.mBroadcastReceiver = null;
            return;
        }
        HyBidRewardedBroadcastReceiver hyBidRewardedBroadcastReceiver = new HyBidRewardedBroadcastReceiver(context);
        this.mBroadcastReceiver = hyBidRewardedBroadcastReceiver;
        hyBidRewardedBroadcastReceiver.setListener(this);
    }

    @Override // net.pubnative.lite.sdk.rewarded.presenter.RewardedPresenter
    public void destroy() {
        HyBidRewardedBroadcastReceiver hyBidRewardedBroadcastReceiver = this.mBroadcastReceiver;
        if (hyBidRewardedBroadcastReceiver != null) {
            hyBidRewardedBroadcastReceiver.destroy();
        }
        this.mListener = null;
        this.mIsDestroyed = true;
        this.mReady = false;
    }

    @Override // net.pubnative.lite.sdk.rewarded.presenter.RewardedPresenter
    public Ad getAd() {
        return this.mAd;
    }

    @Override // net.pubnative.lite.sdk.rewarded.presenter.RewardedPresenter
    public boolean isReady() {
        return this.mReady;
    }

    @Override // net.pubnative.lite.sdk.rewarded.presenter.RewardedPresenter
    public void load() {
        if (CheckUtils.NoThrow.checkArgument(!this.mIsDestroyed, "VastRewardedPresenter is destroyed")) {
            this.mReady = true;
            RewardedPresenter.Listener listener = this.mListener;
            if (listener != null) {
                listener.onRewardedLoaded(this);
            }
        }
    }

    @Override // net.pubnative.lite.sdk.rewarded.HyBidRewardedBroadcastReceiver.Listener
    public void onReceivedAction(HyBidRewardedBroadcastReceiver.Action action) {
        this.mBroadcastReceiver.handleAction(action, this, this.mListener);
    }

    @Override // net.pubnative.lite.sdk.rewarded.presenter.RewardedPresenter
    public void setListener(RewardedPresenter.Listener listener) {
        this.mListener = listener;
    }

    @Override // net.pubnative.lite.sdk.rewarded.presenter.RewardedPresenter
    public void show() {
        HyBidRewardedBroadcastReceiver hyBidRewardedBroadcastReceiver;
        if (CheckUtils.NoThrow.checkArgument(!this.mIsDestroyed, "VastRewardedPresenter is destroyed") && (hyBidRewardedBroadcastReceiver = this.mBroadcastReceiver) != null) {
            hyBidRewardedBroadcastReceiver.register();
            Intent intent = new Intent(this.mContext, VastRewardedActivity.class);
            intent.putExtra("extra_pn_broadcast_id", this.mBroadcastReceiver.getBroadcastId());
            intent.putExtra("extra_pn_zone_id", this.mZoneId);
            intent.addFlags(268435456);
            this.mContext.startActivity(intent);
        }
    }
}
