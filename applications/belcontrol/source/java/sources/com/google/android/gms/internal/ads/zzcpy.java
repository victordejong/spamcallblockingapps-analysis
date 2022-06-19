package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcpy.class */
public final /* synthetic */ class zzcpy implements Callable {
    private final zzcpt zzgqn;

    private zzcpy(zzcpt zzcptVar) {
        this.zzgqn = zzcptVar;
    }

    public static Callable zza(zzcpt zzcptVar) {
        return new zzcpy(zzcptVar);
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        return this.zzgqn.getWritableDatabase();
    }
}
