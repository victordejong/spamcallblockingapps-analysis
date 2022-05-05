package com.google.firebase.iid;

import android.content.BroadcastReceiver;
import android.content.Intent;
import android.util.Log;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/google/firebase/iid/zzd.class */
final class zzd {
    final Intent intent;
    private final BroadcastReceiver.PendingResult zzp;
    private boolean zzq = false;
    private final ScheduledFuture<?> zzr;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzd(final Intent intent, BroadcastReceiver.PendingResult pendingResult, ScheduledExecutorService scheduledExecutorService) {
        this.intent = intent;
        this.zzp = pendingResult;
        this.zzr = scheduledExecutorService.schedule(new Runnable(this, intent) { // from class: com.google.firebase.iid.zze
            private final zzd zzs;
            private final Intent zzt;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzs = this;
                this.zzt = intent;
            }

            @Override // java.lang.Runnable
            public final void run() {
                zzd zzdVar = this.zzs;
                String action = this.zzt.getAction();
                StringBuilder sb = new StringBuilder(String.valueOf(action).length() + 61);
                sb.append("Service took too long to process intent: ");
                sb.append(action);
                sb.append(" App may get closed.");
                Log.w("EnhancedIntentService", sb.toString());
                zzdVar.finish();
            }
        }, 9000L, TimeUnit.MILLISECONDS);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void finish() {
        synchronized (this) {
            if (!this.zzq) {
                this.zzp.finish();
                this.zzr.cancel(false);
                this.zzq = true;
            }
        }
    }
}
