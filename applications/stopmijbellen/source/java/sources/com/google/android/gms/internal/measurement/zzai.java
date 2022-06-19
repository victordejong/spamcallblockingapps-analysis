package com.google.android.gms.internal.measurement;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzai.class */
public abstract class zzai implements zzap, zzal {
    public final String zzd;
    public final Map<String, zzap> zze = new HashMap();

    public zzai(String str) {
        this.zzd = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzai)) {
            return false;
        }
        zzai zzaiVar = (zzai) obj;
        String str = this.zzd;
        if (str == null) {
            return false;
        }
        return str.equals(zzaiVar.zzd);
    }

    public final int hashCode() {
        String str = this.zzd;
        if (str != null) {
            return str.hashCode();
        }
        return 0;
    }

    public abstract zzap zza(zzg zzgVar, List<zzap> list);

    @Override // com.google.android.gms.internal.measurement.zzap
    public final zzap zzbK(String str, zzg zzgVar, List<zzap> list) {
        return "toString".equals(str) ? new zzat(this.zzd) : zzaj.zza(this, new zzat(str), zzgVar, list);
    }

    @Override // com.google.android.gms.internal.measurement.zzap
    public final String zzc() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.measurement.zzap
    public final Double zzd() {
        return Double.valueOf(Double.NaN);
    }

    @Override // com.google.android.gms.internal.measurement.zzap
    public final Boolean zze() {
        return Boolean.TRUE;
    }

    @Override // com.google.android.gms.internal.measurement.zzap
    public final Iterator<zzap> zzf() {
        return zzaj.zzb(this.zze);
    }

    public final String zzg() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.measurement.zzal
    public final boolean zzj(String str) {
        return this.zze.containsKey(str);
    }

    @Override // com.google.android.gms.internal.measurement.zzal
    public final zzap zzk(String str) {
        return this.zze.containsKey(str) ? this.zze.get(str) : zzap.zzf;
    }

    @Override // com.google.android.gms.internal.measurement.zzal
    public final void zzm(String str, zzap zzapVar) {
        if (zzapVar == null) {
            this.zze.remove(str);
        } else {
            this.zze.put(str, zzapVar);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzap
    public zzap zzt() {
        return this;
    }
}
