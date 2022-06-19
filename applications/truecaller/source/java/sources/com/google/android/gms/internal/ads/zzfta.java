package com.google.android.gms.internal.ads;

import java.util.Objects;
import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfta.class */
public final class zzfta extends zzfsl {
    public final /* synthetic */ zzftb zza;
    private final Callable zzb;

    public zzfta(zzftb zzftbVar, Callable callable) {
        this.zza = zzftbVar;
        Objects.requireNonNull(callable);
        this.zzb = callable;
    }

    @Override // com.google.android.gms.internal.ads.zzfsl
    public final Object zza() throws Exception {
        return this.zzb.call();
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
    public final void zzf(Object obj) {
        this.zza.zzp(obj);
    }

    @Override // com.google.android.gms.internal.ads.zzfsl
    public final void zzg(Throwable th) {
        this.zza.zzq(th);
    }
}
