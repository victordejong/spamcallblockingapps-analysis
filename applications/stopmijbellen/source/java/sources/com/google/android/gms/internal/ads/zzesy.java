package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.ViewGroup;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzesy.class */
public final class zzesy implements zzgpr<zzesw> {
    private final zzgqe<zzfxb> zza;
    private final zzgqe<ViewGroup> zzb;
    private final zzgqe<Context> zzc;
    private final zzgqe<Set<String>> zzd;

    public zzesy(zzgqe<zzfxb> zzgqeVar, zzgqe<ViewGroup> zzgqeVar2, zzgqe<Context> zzgqeVar3, zzgqe<Set<String>> zzgqeVar4) {
        this.zza = zzgqeVar;
        this.zzb = zzgqeVar2;
        this.zzc = zzgqeVar3;
        this.zzd = zzgqeVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzfxb zzfxbVar = zzcjm.zza;
        zzgpz.zzb(zzfxbVar);
        return new zzesw(zzfxbVar, ((zzcyu) this.zzb).zza(), this.zzc.zzb(), ((zzgqc) this.zzd).zzb());
    }
}
