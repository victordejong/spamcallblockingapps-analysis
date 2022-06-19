package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.zzaw;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzddo.class */
public final class zzddo implements zzgpr<zzfpv<zzfdn, zzaw>> {
    private final zzgqe<Context> zza;
    private final zzgqe<zzcjf> zzb;
    private final zzgqe<zzfef> zzc;

    public zzddo(zzgqe<Context> zzgqeVar, zzgqe<zzcjf> zzgqeVar2, zzgqe<zzfef> zzgqeVar3) {
        this.zza = zzgqeVar;
        this.zzb = zzgqeVar2;
        this.zzc = zzgqeVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* bridge */ /* synthetic */ Object zzb() {
        final Context zzb = this.zza.zzb();
        final zzcjf zza = ((zzcrb) this.zzb).zza();
        final zzfef zza2 = ((zzdei) this.zzc).zza();
        return new zzfpv() { // from class: com.google.android.gms.internal.ads.zzddn
            @Override // com.google.android.gms.internal.ads.zzfpv
            public final Object apply(Object obj) {
                Context context = zzb;
                zzcjf zzcjfVar = zza;
                zzfef zzfefVar = zza2;
                zzfdn zzfdnVar = (zzfdn) obj;
                zzaw zzawVar = new zzaw(context);
                zzawVar.zzp(zzfdnVar.zzC);
                zzawVar.zzq(zzfdnVar.zzD.toString());
                zzawVar.zzo(zzcjfVar.zza);
                zzawVar.zzn(zzfefVar.zzf);
                return zzawVar;
            }
        };
    }
}
