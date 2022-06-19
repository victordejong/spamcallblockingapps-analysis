package com.google.android.gms.internal.ads;

import java.util.Objects;
import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfta.class */
public final class zzfta extends zzfsl {
    final /* synthetic */ e13 zza;
    private final Callable zzb;

    public zzfta(e13 e13Var, Callable callable) {
        this.zza = e13Var;
        Objects.requireNonNull(callable);
        this.zzb = callable;
    }

    @Override // com.google.android.gms.internal.ads.zzfsl
    final Object zza() {
        return this.zzb.call();
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
    final void zzf(Object obj) {
        this.zza.mo8632u(obj);
    }

    @Override // com.google.android.gms.internal.ads.zzfsl
    final void zzg(Throwable th) {
        this.zza.mo8631v(th);
    }
}
