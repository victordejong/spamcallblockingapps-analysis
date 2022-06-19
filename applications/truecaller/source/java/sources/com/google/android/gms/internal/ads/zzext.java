package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zzt;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzext.class */
public final class zzext implements zzgla<zzexo<zzdsb, zzdrw>> {
    private final zzgln<Context> zza;
    private final zzgln<zzfby> zzb;
    private final zzgln<zzfcq> zzc;

    public zzext(zzgln<Context> zzglnVar, zzgln<zzfby> zzglnVar2, zzgln<zzfcq> zzglnVar3) {
        this.zza = zzglnVar;
        this.zzb = zzglnVar2;
        this.zzc = zzglnVar3;
    }

    /* renamed from: zza */
    public final zzexo<zzdsb, zzdrw> zzb() {
        zzewu zzewuVar;
        Context zzb = this.zza.zzb();
        zzfby zzb2 = this.zzb.zzb();
        zzfcq zzb3 = this.zzc.zzb();
        zzcfz zzn = ((Boolean) zzbet.zzc().zzc(zzbjl.zzeF)).booleanValue() ? zzt.zzg().zzp().zzn() : zzt.zzg().zzp().zzo();
        boolean z = false;
        if (zzn != null) {
            z = false;
            if (zzn.zzi()) {
                z = true;
            }
        }
        if (((Integer) zzbet.zzc().zzc(zzbjl.zzeH)).intValue() > 0) {
            if (!((Boolean) zzbet.zzc().zzc(zzbjl.zzeE)).booleanValue() || z) {
                zzfcp zza = zzb3.zza(zzfcg.Rewarded, zzb, zzb2, new zzews(new zzewp()));
                zzexe zzexeVar = new zzexe(new zzexd());
                zzfcc zzfccVar = zza.zza;
                zzfsn zzfsnVar = zzchg.zza;
                zzewuVar = new zzewu(zzexeVar, new zzexa(zzfccVar, zzfsnVar), zza.zzb, zza.zza.zze().zzf, zzfsnVar);
                return zzewuVar;
            }
        }
        zzewuVar = new zzexd();
        return zzewuVar;
    }
}
