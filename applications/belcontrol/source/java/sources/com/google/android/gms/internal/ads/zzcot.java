package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcot.class */
public final /* synthetic */ class zzcot implements Callable {
    private final zzdzw zzfwq;
    private final zzdzw zzfym;
    private final zzcol zzgpq;

    public zzcot(zzcol zzcolVar, zzdzw zzdzwVar, zzdzw zzdzwVar2) {
        this.zzgpq = zzcolVar;
        this.zzfym = zzdzwVar;
        this.zzfwq = zzdzwVar2;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        return this.zzgpq.zza(this.zzfym, this.zzfwq);
    }
}
