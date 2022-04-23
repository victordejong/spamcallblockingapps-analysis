package com.mopub.mraid;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.mopub.common.IntentActions;
import com.mopub.mobileads.BaseBroadcastReceiver;
import com.mopub.mraid.RewardedMraidInterstitial;
/* loaded from: classes2-dex2jar.jar:com/mopub/mraid/RewardedPlayableBroadcastReceiver.class */
public class RewardedPlayableBroadcastReceiver extends BaseBroadcastReceiver {

    /* renamed from: d */
    public static IntentFilter f34633d;

    /* renamed from: c */
    public RewardedMraidInterstitial.RewardedMraidInterstitialListener f34634c;

    public RewardedPlayableBroadcastReceiver(RewardedMraidInterstitial.RewardedMraidInterstitialListener rewardedMraidInterstitialListener, long j) {
        super(j);
        this.f34634c = rewardedMraidInterstitialListener;
        getIntentFilter();
    }

    @Override // com.mopub.mobileads.BaseBroadcastReceiver
    public IntentFilter getIntentFilter() {
        if (f34633d == null) {
            IntentFilter intentFilter = new IntentFilter();
            f34633d = intentFilter;
            intentFilter.addAction(IntentActions.ACTION_REWARDED_PLAYABLE_COMPLETE);
        }
        return f34633d;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (this.f34634c != null && shouldConsumeBroadcast(intent) && IntentActions.ACTION_REWARDED_PLAYABLE_COMPLETE.equals(intent.getAction())) {
            this.f34634c.onMraidComplete();
            unregister(this);
        }
    }
}
