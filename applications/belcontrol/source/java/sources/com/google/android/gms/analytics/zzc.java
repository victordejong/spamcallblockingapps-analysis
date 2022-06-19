package com.google.android.gms.analytics;

import android.content.BroadcastReceiver;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/analytics/zzc.class */
public final class zzc implements Runnable {
    private final /* synthetic */ BroadcastReceiver.PendingResult zzrj;

    public zzc(CampaignTrackingReceiver campaignTrackingReceiver, BroadcastReceiver.PendingResult pendingResult) {
        this.zzrj = pendingResult;
    }

    @Override // java.lang.Runnable
    public final void run() {
        BroadcastReceiver.PendingResult pendingResult = this.zzrj;
        if (pendingResult != null) {
            pendingResult.finish();
        }
    }
}
