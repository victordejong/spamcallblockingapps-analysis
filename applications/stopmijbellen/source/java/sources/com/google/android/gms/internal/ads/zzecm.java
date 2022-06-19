package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzecm.class */
public final class zzecm implements zzgpr<zzfxa<String>> {
    private final zzgqe<zzalt> zza;
    private final zzgqe<Context> zzb;
    private final zzgqe<zzfxb> zzc;

    public zzecm(zzgqe<zzalt> zzgqeVar, zzgqe<Context> zzgqeVar2, zzgqe<zzfxb> zzgqeVar3) {
        this.zza = zzgqeVar;
        this.zzb = zzgqeVar2;
        this.zzc = zzgqeVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* bridge */ /* synthetic */ Object zzb() {
        final zzalt zzb = this.zza.zzb();
        final Context zza = ((zzffh) this.zzb).zza();
        zzfxb zzfxbVar = zzcjm.zza;
        zzgpz.zzb(zzfxbVar);
        zzfxa zzb2 = zzfxbVar.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzecl
            @Override // java.util.concurrent.Callable
            public final Object call() {
                zzalt zzaltVar = zzalt.this;
                return zzaltVar.zzc().zzg(zza);
            }
        });
        zzgpz.zzb(zzb2);
        return zzb2;
    }
}
