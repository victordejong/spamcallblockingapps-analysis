package com.google.android.gms.internal.ads;

import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfsz.class */
public final class zzfsz extends zzfsl<r03> {
    final /* synthetic */ e13 zza;
    private final tz2 zzb;

    public zzfsz(e13 e13Var, tz2 tz2Var) {
        this.zza = e13Var;
        Objects.requireNonNull(tz2Var);
        this.zzb = tz2Var;
    }

    @Override // com.google.android.gms.internal.ads.zzfsl
    final /* bridge */ /* synthetic */ r03 zza() {
        r03 zza = this.zzb.zza();
        xu2.m9053d(zza, "AsyncCallable.call returned null instead of a Future. Did you mean to return immediateFuture(null)? %s", this.zzb);
        return zza;
    }

    @Override // com.google.android.gms.internal.ads.zzfsl
    final String zzc() {
        return this.zzb.toString();
    }

    @Override // com.google.android.gms.internal.ads.zzfsl
    final boolean zzd() {
        return this.zza.isDone();
    }

    @Override // com.google.android.gms.internal.ads.zzfsl
    final /* bridge */ /* synthetic */ void zzf(r03 r03Var) {
        this.zza.m15006w(r03Var);
    }

    @Override // com.google.android.gms.internal.ads.zzfsl
    final void zzg(Throwable th) {
        this.zza.mo8631v(th);
    }
}
