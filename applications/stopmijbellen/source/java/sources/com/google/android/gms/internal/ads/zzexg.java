package com.google.android.gms.internal.ads;

import java.util.List;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzexg.class */
public final class zzexg implements zzevn<zzexh> {
    public final zzfxb zza;
    public final List<String> zzb;
    public final zzbku zzc;

    /* JADX WARN: Multi-variable type inference failed */
    public zzexg(zzbku zzbkuVar, zzbku zzbkuVar2, zzfxb zzfxbVar, List<String> list) {
        this.zzc = zzbkuVar;
        this.zza = zzbkuVar2;
        this.zzb = zzfxbVar;
    }

    @Override // com.google.android.gms.internal.ads.zzevn
    public final zzfxa<zzexh> zzb() {
        return this.zza.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzexf
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return new zzexh(zzexg.this.zzb);
            }
        });
    }
}
