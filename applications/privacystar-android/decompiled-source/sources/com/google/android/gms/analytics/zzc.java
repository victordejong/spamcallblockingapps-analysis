package com.google.android.gms.analytics;

import android.content.BroadcastReceiver;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/analytics/zzc.class */
final class zzc implements Runnable {
    private final /* synthetic */ BroadcastReceiver.PendingResult zzrf;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzc(CampaignTrackingReceiver campaignTrackingReceiver, BroadcastReceiver.PendingResult pendingResult) {
        this.zzrf = pendingResult;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.zzrf != null) {
            this.zzrf.finish();
        }
    }
}
