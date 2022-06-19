package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzaf.class */
public final class zzaf implements zzap {
    private final boolean zza;

    public zzaf(Boolean bool) {
        if (bool == null) {
            this.zza = false;
        } else {
            this.zza = bool.booleanValue();
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof zzaf) && this.zza == ((zzaf) obj).zza;
    }

    public final int hashCode() {
        return Boolean.valueOf(this.zza).hashCode();
    }

    public final String toString() {
        return String.valueOf(this.zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzap
    public final zzap zzbK(String str, zzg zzgVar, List<zzap> list) {
        if ("toString".equals(str)) {
            return new zzat(Boolean.toString(this.zza));
        }
        throw new IllegalArgumentException(String.format("%s.%s is not a function.", Boolean.toString(this.zza), str));
    }

    @Override // com.google.android.gms.internal.measurement.zzap
    public final String zzc() {
        return Boolean.toString(this.zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzap
    public final Double zzd() {
        return Double.valueOf((true != this.zza ? null : 4607182418800017408) == 1 ? 1.0d : 0.0d);
    }

    @Override // com.google.android.gms.internal.measurement.zzap
    public final Boolean zze() {
        return Boolean.valueOf(this.zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzap
    public final Iterator<zzap> zzf() {
        return null;
    }

    @Override // com.google.android.gms.internal.measurement.zzap
    public final zzap zzt() {
        return new zzaf(Boolean.valueOf(this.zza));
    }
}
