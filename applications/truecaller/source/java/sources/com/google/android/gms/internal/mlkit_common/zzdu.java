package com.google.android.gms.internal.mlkit_common;

import e.m.h.a.d.l;
import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_common/zzdu.class */
public final /* synthetic */ class zzdu implements Callable {
    private final l zza;

    private zzdu(l lVar) {
        this.zza = lVar;
    }

    public static Callable zza(l lVar) {
        return new zzdu(lVar);
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        return this.zza.d();
    }
}
