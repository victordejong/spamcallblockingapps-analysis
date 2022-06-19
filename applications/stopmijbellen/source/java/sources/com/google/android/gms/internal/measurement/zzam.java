package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzam.class */
public class zzam implements zzap, zzal {
    public final Map<String, zzap> zza = new HashMap();

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof zzam) {
            return this.zza.equals(((zzam) obj).zza);
        }
        return false;
    }

    public final int hashCode() {
        return this.zza.hashCode();
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("{");
        if (!this.zza.isEmpty()) {
            for (String str : this.zza.keySet()) {
                sb.append(String.format("%s: %s,", str, this.zza.get(str)));
            }
            sb.deleteCharAt(sb.lastIndexOf(","));
        }
        sb.append("}");
        return sb.toString();
    }

    public final List<String> zzb() {
        return new ArrayList(this.zza.keySet());
    }

    @Override // com.google.android.gms.internal.measurement.zzap
    public zzap zzbK(String str, zzg zzgVar, List<zzap> list) {
        return "toString".equals(str) ? new zzat(toString()) : zzaj.zza(this, new zzat(str), zzgVar, list);
    }

    @Override // com.google.android.gms.internal.measurement.zzap
    public final String zzc() {
        return "[object Object]";
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
        return zzaj.zzb(this.zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzal
    public final boolean zzj(String str) {
        return this.zza.containsKey(str);
    }

    @Override // com.google.android.gms.internal.measurement.zzal
    public final zzap zzk(String str) {
        return this.zza.containsKey(str) ? this.zza.get(str) : zzap.zzf;
    }

    @Override // com.google.android.gms.internal.measurement.zzal
    public final void zzm(String str, zzap zzapVar) {
        if (zzapVar == null) {
            this.zza.remove(str);
        } else {
            this.zza.put(str, zzapVar);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzap
    public final zzap zzt() {
        zzam zzamVar = new zzam();
        for (Map.Entry<String, zzap> entry : this.zza.entrySet()) {
            if (entry.getValue() instanceof zzal) {
                zzamVar.zza.put(entry.getKey(), entry.getValue());
            } else {
                zzamVar.zza.put(entry.getKey(), entry.getValue().zzt());
            }
        }
        return zzamVar;
    }
}
