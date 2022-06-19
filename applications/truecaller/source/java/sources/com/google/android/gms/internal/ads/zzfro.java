package com.google.android.gms.internal.ads;

import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfro.class */
public final class zzfro extends zzfrp {
    public final /* synthetic */ zzfrq zza;
    private final Callable zzc;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzfro(zzfrq zzfrqVar, Callable callable, Executor executor) {
        super(zzfrqVar, executor);
        this.zza = zzfrqVar;
        Objects.requireNonNull(callable);
        this.zzc = callable;
    }

    @Override // com.google.android.gms.internal.ads.zzfsl
    public final Object zza() throws Exception {
        return this.zzc.call();
    }

    @Override // com.google.android.gms.internal.ads.zzfrp
    public final void zzb(Object obj) {
        this.zza.zzp(obj);
    }

    @Override // com.google.android.gms.internal.ads.zzfsl
    public final String zzc() {
        return this.zzc.toString();
    }
}
