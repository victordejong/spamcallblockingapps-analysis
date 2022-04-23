package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.ads.internal.util.zzg;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/zi.class */
final class zi implements Executor {

    /* renamed from: a  reason: collision with root package name */
    private final Handler f28580a = new zzg(Looper.getMainLooper());

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
            try {
                runnable.run();
            } catch (Throwable th) {
                zzr.zzkv();
                zzj.zza(zzr.zzkz().f28528c, th);
                throw th;
            }
        } else {
            this.f28580a.post(runnable);
        }
    }
}
