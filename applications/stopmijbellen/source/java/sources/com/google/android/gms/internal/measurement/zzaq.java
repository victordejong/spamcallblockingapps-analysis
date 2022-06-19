package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzaq.class */
public final class zzaq implements zzap {
    private final String zza;
    private final ArrayList<zzap> zzb;

    public zzaq(String str, List<zzap> list) {
        this.zza = str;
        ArrayList<zzap> arrayList = new ArrayList<>();
        this.zzb = arrayList;
        arrayList.addAll(list);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzaq)) {
            return false;
        }
        zzaq zzaqVar = (zzaq) obj;
        String str = this.zza;
        if (str != null) {
            if (!str.equals(zzaqVar.zza)) {
                return false;
            }
        } else if (zzaqVar.zza != null) {
            return false;
        }
        return this.zzb.equals(zzaqVar.zzb);
    }

    public final int hashCode() {
        String str = this.zza;
        return this.zzb.hashCode() + ((str != null ? str.hashCode() : 0) * 31);
    }

    public final String zzb() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.measurement.zzap
    public final zzap zzbK(String str, zzg zzgVar, List<zzap> list) {
        throw new IllegalStateException("Statement is not an evaluated entity");
    }

    @Override // com.google.android.gms.internal.measurement.zzap
    public final String zzc() {
        throw new IllegalStateException("Statement cannot be cast as String");
    }

    @Override // com.google.android.gms.internal.measurement.zzap
    public final Double zzd() {
        throw new IllegalStateException("Statement cannot be cast as Double");
    }

    @Override // com.google.android.gms.internal.measurement.zzap
    public final Boolean zze() {
        throw new IllegalStateException("Statement cannot be cast as Boolean");
    }

    @Override // com.google.android.gms.internal.measurement.zzap
    public final Iterator<zzap> zzf() {
        return null;
    }

    public final ArrayList<zzap> zzg() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.measurement.zzap
    public final zzap zzt() {
        return this;
    }
}
