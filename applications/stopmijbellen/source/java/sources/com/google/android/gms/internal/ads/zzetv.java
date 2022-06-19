package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzetv.class */
public final class zzetv implements zzgpr<zzett> {
    private final zzgqe<zzfxb> zza;
    private final zzgqe<Context> zzb;
    private final zzgqe<Set<String>> zzc;

    public zzetv(zzgqe<zzfxb> zzgqeVar, zzgqe<Context> zzgqeVar2, zzgqe<Set<String>> zzgqeVar3) {
        this.zza = zzgqeVar;
        this.zzb = zzgqeVar2;
        this.zzc = zzgqeVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzfxb zzfxbVar = zzcjm.zza;
        zzgpz.zzb(zzfxbVar);
        return new zzett(zzfxbVar, ((zzffh) this.zzb).zza(), this.zzc.zzb());
    }
}
