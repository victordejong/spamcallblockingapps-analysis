package com.mopub.mobileads;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.mopub.common.IntentActions;
import com.mopub.common.Preconditions;
import com.mopub.mobileads.RewardedVastVideoInterstitial;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/RewardedVideoBroadcastReceiver.class */
public class RewardedVideoBroadcastReceiver extends BaseBroadcastReceiver {

    /* renamed from: d */
    public static IntentFilter f34215d;

    /* renamed from: c */
    public RewardedVastVideoInterstitial.AbstractC8812a f34216c;

    public RewardedVideoBroadcastReceiver(RewardedVastVideoInterstitial.AbstractC8812a aVar, long j) {
        super(j);
        this.f34216c = aVar;
        getIntentFilter();
    }

    @Override // com.mopub.mobileads.BaseBroadcastReceiver
    public IntentFilter getIntentFilter() {
        if (f34215d == null) {
            IntentFilter intentFilter = new IntentFilter();
            f34215d = intentFilter;
            intentFilter.addAction(IntentActions.ACTION_REWARDED_VIDEO_COMPLETE);
        }
        return f34215d;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(intent);
        if (this.f34216c != null && shouldConsumeBroadcast(intent) && IntentActions.ACTION_REWARDED_VIDEO_COMPLETE.equals(intent.getAction())) {
            this.f34216c.onVideoComplete();
            unregister(this);
        }
    }
}
