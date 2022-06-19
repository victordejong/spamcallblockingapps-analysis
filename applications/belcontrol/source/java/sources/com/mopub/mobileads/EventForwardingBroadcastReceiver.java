package com.mopub.mobileads;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.mopub.common.IntentActions;
import com.mopub.mobileads.AdLifecycleListener;
/* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/EventForwardingBroadcastReceiver.class */
public class EventForwardingBroadcastReceiver extends BaseBroadcastReceiver {

    /* renamed from: d */
    public static IntentFilter f4657d;

    /* renamed from: c */
    public final AdLifecycleListener.InteractionListener f4658c;

    public EventForwardingBroadcastReceiver(AdLifecycleListener.InteractionListener interactionListener, long j) {
        super(j);
        this.f4658c = interactionListener;
        getIntentFilter();
    }

    @Override // com.mopub.mobileads.BaseBroadcastReceiver
    public IntentFilter getIntentFilter() {
        if (f4657d == null) {
            IntentFilter intentFilter = new IntentFilter();
            f4657d = intentFilter;
            intentFilter.addAction(IntentActions.ACTION_FULLSCREEN_FAIL);
            f4657d.addAction(IntentActions.ACTION_FULLSCREEN_SHOW);
            f4657d.addAction(IntentActions.ACTION_FULLSCREEN_DISMISS);
            f4657d.addAction(IntentActions.ACTION_FULLSCREEN_CLICK);
            f4657d.addAction(IntentActions.ACTION_REWARDED_AD_COMPLETE);
        }
        return f4657d;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (this.f4658c != null && shouldConsumeBroadcast(intent)) {
            String action = intent.getAction();
            if (IntentActions.ACTION_FULLSCREEN_FAIL.equals(action)) {
                this.f4658c.onAdFailed(MoPubErrorCode.NETWORK_INVALID_STATE);
            } else if (IntentActions.ACTION_FULLSCREEN_SHOW.equals(action)) {
                this.f4658c.onAdShown();
                this.f4658c.onAdImpression();
            } else if (IntentActions.ACTION_FULLSCREEN_DISMISS.equals(action)) {
                this.f4658c.onAdDismissed();
                unregister(this);
            } else if (IntentActions.ACTION_FULLSCREEN_CLICK.equals(action)) {
                this.f4658c.onAdClicked();
            } else if (!IntentActions.ACTION_REWARDED_AD_COMPLETE.equals(action)) {
            } else {
                this.f4658c.onAdComplete(null);
            }
        }
    }
}
