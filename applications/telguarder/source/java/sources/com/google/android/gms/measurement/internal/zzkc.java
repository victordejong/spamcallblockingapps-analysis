package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzdb;
import com.google.android.gms.internal.measurement.zzdj;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/zzkc.class */
public final class zzkc {
    zzdj zza;
    List<Long> zzb;
    List<zzdb> zzc;
    long zzd;
    final /* synthetic */ zzkd zze;

    public /* synthetic */ zzkc(zzkd zzkdVar, zzjw zzjwVar) {
        this.zze = zzkdVar;
    }

    private static final long zzb(zzdb zzdbVar) {
        return ((zzdbVar.zzf() / 1000) / 60) / 60;
    }

    public final boolean zza(long j, zzdb zzdbVar) {
        Preconditions.checkNotNull(zzdbVar);
        if (this.zzc == null) {
            this.zzc = new ArrayList();
        }
        if (this.zzb == null) {
            this.zzb = new ArrayList();
        }
        if (this.zzc.size() <= 0 || zzb(this.zzc.get(0)) == zzb(zzdbVar)) {
            long zzbw = this.zzd + zzdbVar.zzbw();
            this.zze.zzd();
            if (zzbw >= Math.max(0, zzdw.zzh.zzb(null).intValue())) {
                return false;
            }
            this.zzd = zzbw;
            this.zzc.add(zzdbVar);
            this.zzb.add(Long.valueOf(j));
            int size = this.zzc.size();
            this.zze.zzd();
            return size < Math.max(1, zzdw.zzi.zzb(null).intValue());
        }
        return false;
    }
}
