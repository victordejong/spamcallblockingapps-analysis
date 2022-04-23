package com.mopub.mobileads;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.mopub.common.Constants;
import com.mopub.common.IntentActions;
import com.mopub.mobileads.RewardedVastVideoInterstitialTwo;
import p573f.p590w.p592c.C10057o;
import p573f.p590w.p592c.C10059q;
@Mockable
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/RewardedVideoBroadcastReceiverTwo.class */
public class RewardedVideoBroadcastReceiverTwo extends BaseBroadcastReceiver {
    public static final Companion Companion = new Companion(null);

    /* renamed from: d */
    public static final IntentFilter f34217d = new IntentFilter(IntentActions.ACTION_REWARDED_VIDEO_COMPLETE);

    /* renamed from: c */
    public final RewardedVastVideoInterstitialTwo.RewardedVideoInterstitialListenerTwo f34218c;

    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/RewardedVideoBroadcastReceiverTwo$Companion.class */
    public static final class Companion {
        public Companion() {
        }

        public /* synthetic */ Companion(C10057o oVar) {
            this();
        }
    }

    public RewardedVideoBroadcastReceiverTwo(RewardedVastVideoInterstitialTwo.RewardedVideoInterstitialListenerTwo rewardedVideoInterstitialListenerTwo, long j) {
        super(j);
        this.f34218c = rewardedVideoInterstitialListenerTwo;
    }

    @Override // com.mopub.mobileads.BaseBroadcastReceiver
    public IntentFilter getIntentFilter() {
        return f34217d;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        C10059q.m1637b(context, "context");
        C10059q.m1637b(intent, Constants.INTENT_SCHEME);
        if (this.f34218c != null && shouldConsumeBroadcast(intent) && C10059q.m1643a((Object) IntentActions.ACTION_REWARDED_VIDEO_COMPLETE, (Object) intent.getAction())) {
            this.f34218c.onVideoComplete();
            unregister(this);
        }
    }
}
