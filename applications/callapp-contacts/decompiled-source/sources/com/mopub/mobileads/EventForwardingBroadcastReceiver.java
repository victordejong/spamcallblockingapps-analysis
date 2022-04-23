package com.mopub.mobileads;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.mopub.common.IntentActions;
import com.mopub.mobileads.AdLifecycleListener;
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/EventForwardingBroadcastReceiver.class */
public class EventForwardingBroadcastReceiver extends BaseBroadcastReceiver {

    /* renamed from: b  reason: collision with root package name */
    private static IntentFilter f34062b;

    /* renamed from: a  reason: collision with root package name */
    private final AdLifecycleListener.InteractionListener f34063a;

    public EventForwardingBroadcastReceiver(AdLifecycleListener.InteractionListener interactionListener, long j) {
        super(j);
        this.f34063a = interactionListener;
        getIntentFilter();
    }

    @Override // com.mopub.mobileads.BaseBroadcastReceiver
    public IntentFilter getIntentFilter() {
        if (f34062b == null) {
            IntentFilter intentFilter = new IntentFilter();
            f34062b = intentFilter;
            intentFilter.addAction(IntentActions.ACTION_FULLSCREEN_FAIL);
            f34062b.addAction(IntentActions.ACTION_FULLSCREEN_SHOW);
            f34062b.addAction(IntentActions.ACTION_FULLSCREEN_DISMISS);
            f34062b.addAction(IntentActions.ACTION_FULLSCREEN_CLICK);
            f34062b.addAction(IntentActions.ACTION_REWARDED_AD_COMPLETE);
        }
        return f34062b;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (this.f34063a != null && shouldConsumeBroadcast(intent)) {
            String action = intent.getAction();
            if (IntentActions.ACTION_FULLSCREEN_FAIL.equals(action)) {
                this.f34063a.onAdFailed(MoPubErrorCode.NETWORK_INVALID_STATE);
            } else if (IntentActions.ACTION_FULLSCREEN_SHOW.equals(action)) {
                this.f34063a.onAdShown();
                this.f34063a.onAdImpression();
            } else if (IntentActions.ACTION_FULLSCREEN_DISMISS.equals(action)) {
                this.f34063a.onAdDismissed();
                unregister(this);
            } else if (IntentActions.ACTION_FULLSCREEN_CLICK.equals(action)) {
                this.f34063a.onAdClicked();
            } else if (IntentActions.ACTION_REWARDED_AD_COMPLETE.equals(action)) {
                this.f34063a.onAdComplete(null);
            }
        }
    }
}
