package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzfo;
import com.google.android.gms.internal.measurement.zzfw;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzkm.class */
public final class zzkm {
    public zzfw zza;
    public List<Long> zzb;
    public List<zzfo> zzc;
    public long zzd;
    public final /* synthetic */ zzkn zze;

    public /* synthetic */ zzkm(zzkn zzknVar, zzkg zzkgVar) {
        this.zze = zzknVar;
    }

    private static final long zzb(zzfo zzfoVar) {
        return ((zzfoVar.zzf() / 1000) / 60) / 60;
    }

    public final boolean zza(long j, zzfo zzfoVar) {
        Preconditions.checkNotNull(zzfoVar);
        if (this.zzc == null) {
            this.zzc = new ArrayList();
        }
        if (this.zzb == null) {
            this.zzb = new ArrayList();
        }
        if (this.zzc.size() <= 0 || zzb(this.zzc.get(0)) == zzb(zzfoVar)) {
            long zzbw = this.zzd + zzfoVar.zzbw();
            this.zze.zzd();
            if (zzbw >= Math.max(0, zzea.zzh.zzb(null).intValue())) {
                return false;
            }
            this.zzd = zzbw;
            this.zzc.add(zzfoVar);
            this.zzb.add(Long.valueOf(j));
            int size = this.zzc.size();
            this.zze.zzd();
            return size < Math.max(1, zzea.zzi.zzb(null).intValue());
        }
        return false;
    }
}
