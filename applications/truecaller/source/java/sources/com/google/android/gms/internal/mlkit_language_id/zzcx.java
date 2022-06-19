package com.google.android.gms.internal.mlkit_language_id;

import e.m.h.a.d.l;
import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_language_id/zzcx.class */
public final /* synthetic */ class zzcx implements Callable {
    private final l zza;

    private zzcx(l lVar) {
        this.zza = lVar;
    }

    public static Callable zza(l lVar) {
        return new zzcx(lVar);
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        return this.zza.d();
    }
}
