package com.google.android.gms.internal.mlkit_translate;

import e.m.h.a.d.l;
import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzgu.class */
public final /* synthetic */ class zzgu implements Callable {
    private final l zza;

    private zzgu(l lVar) {
        this.zza = lVar;
    }

    public static Callable zza(l lVar) {
        return new zzgu(lVar);
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        return this.zza.d();
    }
}
