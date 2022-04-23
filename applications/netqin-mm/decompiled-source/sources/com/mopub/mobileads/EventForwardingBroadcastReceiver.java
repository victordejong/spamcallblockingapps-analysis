package com.mopub.mobileads;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.mopub.common.IntentActions;
import com.mopub.mobileads.CustomEventInterstitial;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/EventForwardingBroadcastReceiver.class */
public class EventForwardingBroadcastReceiver extends BaseBroadcastReceiver {

    /* renamed from: d */
    public static IntentFilter f34096d;

    /* renamed from: c */
    public final CustomEventInterstitial.CustomEventInterstitialListener f34097c;

    public EventForwardingBroadcastReceiver(CustomEventInterstitial.CustomEventInterstitialListener customEventInterstitialListener, long j) {
        super(j);
        this.f34097c = customEventInterstitialListener;
        getIntentFilter();
    }

    @Override // com.mopub.mobileads.BaseBroadcastReceiver
    public IntentFilter getIntentFilter() {
        if (f34096d == null) {
            IntentFilter intentFilter = new IntentFilter();
            f34096d = intentFilter;
            intentFilter.addAction(IntentActions.ACTION_INTERSTITIAL_FAIL);
            f34096d.addAction(IntentActions.ACTION_INTERSTITIAL_SHOW);
            f34096d.addAction(IntentActions.ACTION_INTERSTITIAL_DISMISS);
            f34096d.addAction(IntentActions.ACTION_INTERSTITIAL_CLICK);
        }
        return f34096d;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (this.f34097c != null && shouldConsumeBroadcast(intent)) {
            String action = intent.getAction();
            if (IntentActions.ACTION_INTERSTITIAL_FAIL.equals(action)) {
                this.f34097c.onInterstitialFailed(MoPubErrorCode.NETWORK_INVALID_STATE);
            } else if (IntentActions.ACTION_INTERSTITIAL_SHOW.equals(action)) {
                this.f34097c.onInterstitialShown();
            } else if (IntentActions.ACTION_INTERSTITIAL_DISMISS.equals(action)) {
                this.f34097c.onInterstitialDismissed();
                unregister(this);
            } else if (IntentActions.ACTION_INTERSTITIAL_CLICK.equals(action)) {
                this.f34097c.onInterstitialClicked();
            }
        }
    }
}
