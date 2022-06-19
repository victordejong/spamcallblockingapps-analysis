package com.google.android.gms.internal.ads;

import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfwb.class */
public final class zzfwb extends zzfwc {
    public final /* synthetic */ zzfwd zza;
    private final Callable zzc;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzfwb(zzfwd zzfwdVar, Callable callable, Executor executor) {
        super(zzfwdVar, executor);
        this.zza = zzfwdVar;
        Objects.requireNonNull(callable);
        this.zzc = callable;
    }

    @Override // com.google.android.gms.internal.ads.zzfwz
    public final Object zza() throws Exception {
        return this.zzc.call();
    }

    @Override // com.google.android.gms.internal.ads.zzfwz
    public final String zzb() {
        return this.zzc.toString();
    }

    @Override // com.google.android.gms.internal.ads.zzfwc
    public final void zzc(Object obj) {
        this.zza.zzs(obj);
    }
}
