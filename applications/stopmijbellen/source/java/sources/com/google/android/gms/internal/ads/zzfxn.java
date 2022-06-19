package com.google.android.gms.internal.ads;

import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfxn.class */
public final class zzfxn extends zzfwz<zzfxa> {
    public final /* synthetic */ zzfxp zza;
    private final zzfvw zzb;

    public zzfxn(zzfxp zzfxpVar, zzfvw zzfvwVar) {
        this.zza = zzfxpVar;
        Objects.requireNonNull(zzfvwVar);
        this.zzb = zzfvwVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfwz
    public final /* bridge */ /* synthetic */ zzfxa zza() throws Exception {
        zzfxa zza = this.zzb.zza();
        zzfqg.zzd(zza, "AsyncCallable.call returned null instead of a Future. Did you mean to return immediateFuture(null)? %s", this.zzb);
        return zza;
    }

    @Override // com.google.android.gms.internal.ads.zzfwz
    public final String zzb() {
        return this.zzb.toString();
    }

    @Override // com.google.android.gms.internal.ads.zzfwz
    public final void zzd(Throwable th) {
        this.zza.zzt(th);
    }

    @Override // com.google.android.gms.internal.ads.zzfwz
    public final /* synthetic */ void zze(zzfxa zzfxaVar) {
        this.zza.zzu(zzfxaVar);
    }

    @Override // com.google.android.gms.internal.ads.zzfwz
    public final boolean zzg() {
        return this.zza.isDone();
    }
}
