package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeco.class */
public final /* synthetic */ class zzeco implements Callable {
    private final zzecm zza;

    private zzeco(zzecm zzecmVar) {
        this.zza = zzecmVar;
    }

    public static Callable zza(zzecm zzecmVar) {
        return new zzeco(zzecmVar);
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        return this.zza.getWritableDatabase();
    }
}
