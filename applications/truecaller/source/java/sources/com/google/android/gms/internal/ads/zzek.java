package com.google.android.gms.internal.ads;

import android.os.Handler;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzek.class */
public final /* synthetic */ class zzek implements Executor {
    private final Handler zza;

    private zzek(Handler handler) {
        this.zza = handler;
    }

    public static Executor zza(Handler handler) {
        return new zzek(handler);
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.zza.post(runnable);
    }
}
