package com.google.android.gms.internal.ads;

import java.util.Objects;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfxo.class */
public final class zzfxo extends zzfwz {
    public final /* synthetic */ zzfxp zza;
    private final Callable zzb;

    public zzfxo(zzfxp zzfxpVar, Callable callable) {
        this.zza = zzfxpVar;
        Objects.requireNonNull(callable);
        this.zzb = callable;
    }

    @Override // com.google.android.gms.internal.ads.zzfwz
    public final Object zza() throws Exception {
        return this.zzb.call();
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
    public final void zze(Object obj) {
        this.zza.zzs(obj);
    }

    @Override // com.google.android.gms.internal.ads.zzfwz
    public final boolean zzg() {
        return this.zza.isDone();
    }
}
