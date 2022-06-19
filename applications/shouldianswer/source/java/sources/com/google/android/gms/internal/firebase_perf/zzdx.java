package com.google.android.gms.internal.firebase_perf;

import com.google.android.gms.internal.firebase-perf.zzfr;
import com.google.android.gms.internal.firebase_perf.zzeh;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzdx.class */
final class zzdx extends zzdy<zzeh.zze> {
    @Override // com.google.android.gms.internal.firebase_perf.zzdy
    public final void zza(zzhq zzhqVar, Map.Entry<?, ?> entry) {
        zzeh.zze zzeVar = (zzeh.zze) entry.getKey();
        throw new NoSuchMethodError();
    }

    @Override // com.google.android.gms.internal.firebase_perf.zzdy
    public final int zzb(Map.Entry<?, ?> entry) {
        zzeh.zze zzeVar = (zzeh.zze) entry.getKey();
        throw new NoSuchMethodError();
    }

    @Override // com.google.android.gms.internal.firebase_perf.zzdy
    public final zzdz<zzeh.zze> zzb(Object obj) {
        return ((zzeh.zzb) obj).zzqf;
    }

    @Override // com.google.android.gms.internal.firebase_perf.zzdy
    public final zzdz<zzeh.zze> zzc(Object obj) {
        zzeh.zzb zzbVar = (zzeh.zzb) obj;
        if (zzbVar.zzqf.isImmutable()) {
            zzbVar.zzqf = (zzdz) zzbVar.zzqf.clone();
        }
        return zzbVar.zzqf;
    }

    @Override // com.google.android.gms.internal.firebase_perf.zzdy
    public final void zzd(Object obj) {
        zzb(obj).zzfk();
    }

    @Override // com.google.android.gms.internal.firebase_perf.zzdy
    public final boolean zze(zzfr zzfrVar) {
        return zzfrVar instanceof zzeh.zzb;
    }
}
