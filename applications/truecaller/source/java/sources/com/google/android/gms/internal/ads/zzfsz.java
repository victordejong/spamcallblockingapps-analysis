package com.google.android.gms.internal.ads;

import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfsz.class */
public final class zzfsz extends zzfsl<zzfsm> {
    public final /* synthetic */ zzftb zza;
    private final zzfrj zzb;

    public zzfsz(zzftb zzftbVar, zzfrj zzfrjVar) {
        this.zza = zzftbVar;
        Objects.requireNonNull(zzfrjVar);
        this.zzb = zzfrjVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfsl
    public final /* bridge */ /* synthetic */ zzfsm zza() throws Exception {
        zzfsm zza = this.zzb.zza();
        zzflx.zzd(zza, "AsyncCallable.call returned null instead of a Future. Did you mean to return immediateFuture(null)? %s", this.zzb);
        return zza;
    }

    @Override // com.google.android.gms.internal.ads.zzfsl
    public final String zzc() {
        return this.zzb.toString();
    }

    @Override // com.google.android.gms.internal.ads.zzfsl
    public final boolean zzd() {
        return this.zza.isDone();
    }

    @Override // com.google.android.gms.internal.ads.zzfsl
    public final /* bridge */ /* synthetic */ void zzf(zzfsm zzfsmVar) {
        this.zza.zzr(zzfsmVar);
    }

    @Override // com.google.android.gms.internal.ads.zzfsl
    public final void zzg(Throwable th) {
        this.zza.zzq(th);
    }
}
