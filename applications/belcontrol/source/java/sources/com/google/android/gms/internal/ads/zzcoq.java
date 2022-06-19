package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcoq.class */
public final /* synthetic */ class zzcoq implements Callable {
    private final zzdzw zzfym;
    private final zzdzw zzgig;

    public zzcoq(zzdzw zzdzwVar, zzdzw zzdzwVar2) {
        this.zzgig = zzdzwVar;
        this.zzfym = zzdzwVar2;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        zzdzw zzdzwVar = this.zzgig;
        zzdzw zzdzwVar2 = this.zzfym;
        return new zzcoz((zzcpg) zzdzwVar.get(), ((zzcpa) zzdzwVar2.get()).zzgpu, ((zzcpa) zzdzwVar2.get()).zzgpv);
    }
}
