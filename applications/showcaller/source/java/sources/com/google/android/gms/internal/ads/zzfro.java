package com.google.android.gms.internal.ads;

import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfro.class */
public final class zzfro extends zzfrp {
    final /* synthetic */ yz2 zza;
    private final Callable zzc;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzfro(yz2 yz2Var, Callable callable, Executor executor) {
        super(yz2Var, executor);
        this.zza = yz2Var;
        Objects.requireNonNull(callable);
        this.zzc = callable;
    }

    @Override // com.google.android.gms.internal.ads.zzfsl
    final Object zza() {
        return this.zzc.call();
    }

    @Override // com.google.android.gms.internal.ads.zzfrp
    final void zzb(Object obj) {
        this.zza.mo8632u(obj);
    }

    @Override // com.google.android.gms.internal.ads.zzfsl
    final String zzc() {
        return this.zzc.toString();
    }
}
