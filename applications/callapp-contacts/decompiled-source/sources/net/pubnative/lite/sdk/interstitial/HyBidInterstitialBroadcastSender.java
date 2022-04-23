package net.pubnative.lite.sdk.interstitial;

import android.content.Context;
import android.content.Intent;
import net.pubnative.lite.sdk.interstitial.HyBidInterstitialBroadcastReceiver;
import net.pubnative.lite.sdk.utils.PNLocalBroadcastManager;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/interstitial/HyBidInterstitialBroadcastSender.class */
public class HyBidInterstitialBroadcastSender {
    private final long mBroadcastId;
    private final PNLocalBroadcastManager mLocalBroadcastManager;

    HyBidInterstitialBroadcastSender(long j, PNLocalBroadcastManager pNLocalBroadcastManager) {
        this.mBroadcastId = j;
        this.mLocalBroadcastManager = pNLocalBroadcastManager;
    }

    public HyBidInterstitialBroadcastSender(Context context, long j) {
        this(j, PNLocalBroadcastManager.getInstance(context));
    }

    public long getBroadcastId() {
        return this.mBroadcastId;
    }

    public void sendBroadcast(HyBidInterstitialBroadcastReceiver.Action action) {
        Intent intent = new Intent(action.getId());
        intent.putExtra(HyBidInterstitialBroadcastReceiver.BROADCAST_ID, this.mBroadcastId);
        this.mLocalBroadcastManager.sendBroadcast(intent);
    }
}
