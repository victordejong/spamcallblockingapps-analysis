package com.google.android.gms.iid;

import android.content.BroadcastReceiver;
import android.content.Intent;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/iid/zzg.class */
final class zzg {

    /* renamed from: a */
    final Intent f7779a;

    /* renamed from: b */
    private final BroadcastReceiver.PendingResult f7780b;

    /* renamed from: c */
    private boolean f7781c = false;

    /* renamed from: d */
    private final ScheduledFuture<?> f7782d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzg(Intent intent, BroadcastReceiver.PendingResult pendingResult, ScheduledExecutorService scheduledExecutorService) {
        this.f7779a = intent;
        this.f7780b = pendingResult;
        this.f7782d = scheduledExecutorService.schedule(new zzh(this, intent), 9500L, TimeUnit.MILLISECONDS);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m14144a() {
        synchronized (this) {
            if (!this.f7781c) {
                this.f7780b.finish();
                this.f7782d.cancel(false);
                this.f7781c = true;
            }
        }
    }
}
