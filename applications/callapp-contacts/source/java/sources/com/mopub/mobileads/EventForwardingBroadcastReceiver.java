package com.mopub.mobileads;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.mopub.common.IntentActions;
import com.mopub.mobileads.AdLifecycleListener;
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/EventForwardingBroadcastReceiver.class */
public class EventForwardingBroadcastReceiver extends BaseBroadcastReceiver {

    /* renamed from: b */
    private static IntentFilter f59154b;

    /* renamed from: a */
    private final AdLifecycleListener.InteractionListener f59155a;

    public EventForwardingBroadcastReceiver(AdLifecycleListener.InteractionListener interactionListener, long j) {
        super(j);
        this.f59155a = interactionListener;
        getIntentFilter();
    }

    @Override // com.mopub.mobileads.BaseBroadcastReceiver
    public IntentFilter getIntentFilter() {
        if (f59154b == null) {
            IntentFilter intentFilter = new IntentFilter();
            f59154b = intentFilter;
            intentFilter.addAction(IntentActions.ACTION_FULLSCREEN_FAIL);
            f59154b.addAction(IntentActions.ACTION_FULLSCREEN_SHOW);
            f59154b.addAction(IntentActions.ACTION_FULLSCREEN_DISMISS);
            f59154b.addAction(IntentActions.ACTION_FULLSCREEN_CLICK);
            f59154b.addAction(IntentActions.ACTION_REWARDED_AD_COMPLETE);
        }
        return f59154b;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (this.f59155a != null && shouldConsumeBroadcast(intent)) {
            String action = intent.getAction();
            if (IntentActions.ACTION_FULLSCREEN_FAIL.equals(action)) {
                this.f59155a.onAdFailed(MoPubErrorCode.NETWORK_INVALID_STATE);
            } else if (IntentActions.ACTION_FULLSCREEN_SHOW.equals(action)) {
                this.f59155a.onAdShown();
                this.f59155a.onAdImpression();
            } else if (IntentActions.ACTION_FULLSCREEN_DISMISS.equals(action)) {
                this.f59155a.onAdDismissed();
                unregister(this);
            } else if (IntentActions.ACTION_FULLSCREEN_CLICK.equals(action)) {
                this.f59155a.onAdClicked();
            } else if (!IntentActions.ACTION_REWARDED_AD_COMPLETE.equals(action)) {
            } else {
                this.f59155a.onAdComplete(null);
            }
        }
    }
}
