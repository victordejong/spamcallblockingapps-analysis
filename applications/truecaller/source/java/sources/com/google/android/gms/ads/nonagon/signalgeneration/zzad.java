package com.google.android.gms.ads.nonagon.signalgeneration;

import com.google.android.gms.internal.ads.zzbet;
import com.google.android.gms.internal.ads.zzbjl;
import com.google.android.gms.internal.ads.zzdai;
import com.google.android.gms.internal.ads.zzdaj;
import com.google.android.gms.internal.ads.zzfem;
import com.google.android.gms.internal.ads.zzfes;
import com.google.android.gms.internal.ads.zzfsm;
import com.google.android.gms.internal.ads.zzgla;
import com.google.android.gms.internal.ads.zzgln;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/nonagon/signalgeneration/zzad.class */
public final class zzad implements zzgla<zzfsm<zzah>> {
    private final zzgln<zzfes> zza;
    private final zzgln<zzaf> zzb;
    private final zzgln<zzdai> zzc;

    public zzad(zzgln<zzfes> zzglnVar, zzgln<zzaf> zzglnVar2, zzgln<zzdai> zzglnVar3) {
        this.zza = zzglnVar;
        this.zzb = zzglnVar2;
        this.zzc = zzglnVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzgln
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzfes zzb = this.zza.zzb();
        return zzb.zze(zzfem.GENERATE_SIGNALS, ((zzdaj) this.zzc).zzb().zzb()).zzc(((zzag) this.zzb).zzb()).zzh(((Integer) zzbet.zzc().zzc(zzbjl.zzdP)).intValue(), TimeUnit.SECONDS).zzi();
    }
}
