package com.mopub.mobileads;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import androidx.annotation.NonNull;
import com.mopub.common.IntentActions;
import com.mopub.mobileads.CustomEventInterstitial;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/EventForwardingBroadcastReceiver.class */
public class EventForwardingBroadcastReceiver extends BaseBroadcastReceiver {

    /* renamed from: d */
    public static IntentFilter f8459d;

    /* renamed from: c */
    public final CustomEventInterstitial.CustomEventInterstitialListener f8460c;

    public EventForwardingBroadcastReceiver(CustomEventInterstitial.CustomEventInterstitialListener customEventInterstitialListener, long j) {
        super(j);
        this.f8460c = customEventInterstitialListener;
        getIntentFilter();
    }

    @Override // com.mopub.mobileads.BaseBroadcastReceiver
    @NonNull
    public IntentFilter getIntentFilter() {
        if (f8459d == null) {
            f8459d = new IntentFilter();
            f8459d.addAction(IntentActions.ACTION_INTERSTITIAL_FAIL);
            f8459d.addAction(IntentActions.ACTION_INTERSTITIAL_SHOW);
            f8459d.addAction(IntentActions.ACTION_INTERSTITIAL_DISMISS);
            f8459d.addAction(IntentActions.ACTION_INTERSTITIAL_CLICK);
        }
        return f8459d;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (this.f8460c != null && shouldConsumeBroadcast(intent)) {
            String action = intent.getAction();
            if (IntentActions.ACTION_INTERSTITIAL_FAIL.equals(action)) {
                this.f8460c.onInterstitialFailed(MoPubErrorCode.NETWORK_INVALID_STATE);
            } else if (IntentActions.ACTION_INTERSTITIAL_SHOW.equals(action)) {
                this.f8460c.onInterstitialShown();
            } else if (IntentActions.ACTION_INTERSTITIAL_DISMISS.equals(action)) {
                this.f8460c.onInterstitialDismissed();
                unregister(this);
            } else if (IntentActions.ACTION_INTERSTITIAL_CLICK.equals(action)) {
                this.f8460c.onInterstitialClicked();
            }
        }
    }
}
