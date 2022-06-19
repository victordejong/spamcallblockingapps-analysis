package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.ArrayDeque;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzefi.class */
public final class zzefi implements zzgpr<zzefh> {
    private final zzgqe<Context> zza;
    private final zzgqe<Executor> zzb;
    private final zzgqe<zzcec> zzc;
    private final zzgqe<zzcvo> zzd;
    private final zzgqe<zzceb> zze;
    private final zzgqe<ArrayDeque<zzefe>> zzf;
    private final zzgqe<zzefm> zzg;

    public zzefi(zzgqe<Context> zzgqeVar, zzgqe<Executor> zzgqeVar2, zzgqe<zzcec> zzgqeVar3, zzgqe<zzcvo> zzgqeVar4, zzgqe<zzceb> zzgqeVar5, zzgqe<ArrayDeque<zzefe>> zzgqeVar6, zzgqe<zzefm> zzgqeVar7) {
        this.zza = zzgqeVar;
        this.zzb = zzgqeVar2;
        this.zzc = zzgqeVar3;
        this.zzd = zzgqeVar4;
        this.zze = zzgqeVar5;
        this.zzf = zzgqeVar6;
        this.zzg = zzgqeVar7;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* synthetic */ Object zzb() {
        return new zzefh(((zzcqr) this.zza).zza(), this.zzb.zzb(), new zzcec(), ((zzcqy) this.zzd).zzb(), ((zzcrj) this.zze).zzb(), this.zzf.zzb(), new zzefm(), null);
    }
}
