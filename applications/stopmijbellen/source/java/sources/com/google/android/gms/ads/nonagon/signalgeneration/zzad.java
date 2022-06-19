package com.google.android.gms.ads.nonagon.signalgeneration;

import com.google.android.gms.internal.ads.zzbgq;
import com.google.android.gms.internal.ads.zzblj;
import com.google.android.gms.internal.ads.zzddx;
import com.google.android.gms.internal.ads.zzddy;
import com.google.android.gms.internal.ads.zzfhy;
import com.google.android.gms.internal.ads.zzfie;
import com.google.android.gms.internal.ads.zzfxa;
import com.google.android.gms.internal.ads.zzgpr;
import com.google.android.gms.internal.ads.zzgqe;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/nonagon/signalgeneration/zzad.class */
public final class zzad implements zzgpr<zzfxa<zzah>> {
    private final zzgqe<zzfie> zza;
    private final zzgqe<zzaf> zzb;
    private final zzgqe<zzddx> zzc;

    public zzad(zzgqe<zzfie> zzgqeVar, zzgqe<zzaf> zzgqeVar2, zzgqe<zzddx> zzgqeVar3) {
        this.zza = zzgqeVar;
        this.zzb = zzgqeVar2;
        this.zzc = zzgqeVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzfie zzb = this.zza.zzb();
        return zzb.zzb(zzfhy.GENERATE_SIGNALS, ((zzddy) this.zzc).zzb().zzc()).zzf(((zzag) this.zzb).zzb()).zzi(((Integer) zzbgq.zzc().zzb(zzblj.zzdW)).intValue(), TimeUnit.SECONDS).zza();
    }
}
