package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.ads.internal.util.zzg;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import java.util.concurrent.Executor;
/* renamed from: com.google.android.gms.internal.ads.zi */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/zi.class */
final class ExecutorC13096zi implements Executor {

    /* renamed from: a */
    private final Handler f50127a = new zzg(Looper.getMainLooper());

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        if (Looper.getMainLooper().getThread() != Thread.currentThread()) {
            this.f50127a.post(runnable);
            return;
        }
        try {
            runnable.run();
        } catch (Throwable th) {
            zzr.zzkv();
            zzj.zza(zzr.zzkz().f50045c, th);
            throw th;
        }
    }
}
