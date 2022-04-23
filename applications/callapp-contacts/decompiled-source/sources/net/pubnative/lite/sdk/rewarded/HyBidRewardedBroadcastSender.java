package net.pubnative.lite.sdk.rewarded;

import android.content.Context;
import android.content.Intent;
import net.pubnative.lite.sdk.rewarded.HyBidRewardedBroadcastReceiver;
import net.pubnative.lite.sdk.utils.PNLocalBroadcastManager;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/rewarded/HyBidRewardedBroadcastSender.class */
public class HyBidRewardedBroadcastSender {
    private final long mBroadcastId;
    private final PNLocalBroadcastManager mLocalBroadcastManager;

    HyBidRewardedBroadcastSender(long j, PNLocalBroadcastManager pNLocalBroadcastManager) {
        this.mBroadcastId = j;
        this.mLocalBroadcastManager = pNLocalBroadcastManager;
    }

    public HyBidRewardedBroadcastSender(Context context, long j) {
        this(j, PNLocalBroadcastManager.getInstance(context));
    }

    public long getBroadcastId() {
        return this.mBroadcastId;
    }

    public void sendBroadcast(HyBidRewardedBroadcastReceiver.Action action) {
        Intent intent = new Intent(action.getId());
        intent.putExtra(HyBidRewardedBroadcastReceiver.BROADCAST_ID, this.mBroadcastId);
        this.mLocalBroadcastManager.sendBroadcast(intent);
    }
}
