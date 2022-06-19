package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.ads.internal.util.zzg;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzazu.class */
final class zzazu implements Executor {
    private final Handler zzeik = new zzg(Looper.getMainLooper());

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        if (Looper.getMainLooper().getThread() != Thread.currentThread()) {
            this.zzeik.post(runnable);
            return;
        }
        try {
            runnable.run();
        } catch (Throwable th) {
            zzr.zzkr();
            zzj.zza(zzr.zzkv().getApplicationContext(), th);
            throw th;
        }
    }
}
