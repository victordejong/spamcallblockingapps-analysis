package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeti.class */
public final class zzeti implements zzevn<zzetj> {
    private final zzfxb zza;
    private final zzfdm zzb;

    public zzeti(zzfxb zzfxbVar, zzfdm zzfdmVar) {
        this.zza = zzfxbVar;
        this.zzb = zzfdmVar;
    }

    public final /* synthetic */ zzetj zza() throws Exception {
        return new zzetj(this.zzb);
    }

    @Override // com.google.android.gms.internal.ads.zzevn
    public final zzfxa<zzetj> zzb() {
        return this.zza.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzeth
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzeti.this.zza();
            }
        });
    }
}
