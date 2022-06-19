package com.google.android.gms.internal.measurement;

import android.support.p012v4.media.C0082b;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.SortedMap;
import java.util.TreeMap;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzae.class */
public final class zzae implements Iterable<zzap>, zzap, zzal {
    public final SortedMap<Integer, zzap> zza;
    public final Map<String, zzap> zzb;

    public zzae() {
        this.zza = new TreeMap();
        this.zzb = new TreeMap();
    }

    public zzae(List<zzap> list) {
        this();
        if (list != null) {
            for (int i = 0; i < list.size(); i++) {
                zzn(i, list.get(i));
            }
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzae)) {
            return false;
        }
        zzae zzaeVar = (zzae) obj;
        if (zzh() != zzaeVar.zzh()) {
            return false;
        }
        if (this.zza.isEmpty()) {
            return zzaeVar.zza.isEmpty();
        }
        for (int intValue = this.zza.firstKey().intValue(); intValue <= this.zza.lastKey().intValue(); intValue++) {
            if (!zzl(intValue).equals(zzaeVar.zzl(intValue))) {
                return false;
            }
        }
        return true;
    }

    public final int hashCode() {
        return this.zza.hashCode() * 31;
    }

    @Override // java.lang.Iterable
    public final Iterator<zzap> iterator() {
        return new zzad(this);
    }

    public final String toString() {
        return zzs(",");
    }

    public final List<zzap> zzb() {
        ArrayList arrayList = new ArrayList(zzh());
        for (int i = 0; i < zzh(); i++) {
            arrayList.add(zzl(i));
        }
        return arrayList;
    }

    @Override // com.google.android.gms.internal.measurement.zzap
    public final zzap zzbK(String str, zzg zzgVar, List<zzap> list) {
        return ("concat".equals(str) || "every".equals(str) || "filter".equals(str) || "forEach".equals(str) || "indexOf".equals(str) || "join".equals(str) || "lastIndexOf".equals(str) || "map".equals(str) || "pop".equals(str) || "push".equals(str) || "reduce".equals(str) || "reduceRight".equals(str) || "reverse".equals(str) || "shift".equals(str) || "slice".equals(str) || "some".equals(str) || "sort".equals(str) || "splice".equals(str) || "toString".equals(str) || "unshift".equals(str)) ? zzbb.zza(str, this, zzgVar, list) : zzaj.zza(this, new zzat(str), zzgVar, list);
    }

    @Override // com.google.android.gms.internal.measurement.zzap
    public final String zzc() {
        return zzs(",");
    }

    @Override // com.google.android.gms.internal.measurement.zzap
    public final Double zzd() {
        return this.zza.size() == 1 ? zzl(0).zzd() : this.zza.size() <= 0 ? Double.valueOf(0.0d) : Double.valueOf(Double.NaN);
    }

    @Override // com.google.android.gms.internal.measurement.zzap
    public final Boolean zze() {
        return Boolean.TRUE;
    }

    @Override // com.google.android.gms.internal.measurement.zzap
    public final Iterator<zzap> zzf() {
        return new zzac(this, this.zza.keySet().iterator(), this.zzb.keySet().iterator());
    }

    public final Iterator<Integer> zzg() {
        return this.zza.keySet().iterator();
    }

    public final int zzh() {
        if (this.zza.isEmpty()) {
            return 0;
        }
        return this.zza.lastKey().intValue() + 1;
    }

    public final int zzi() {
        return this.zza.size();
    }

    @Override // com.google.android.gms.internal.measurement.zzal
    public final boolean zzj(String str) {
        return "length".equals(str) || this.zzb.containsKey(str);
    }

    @Override // com.google.android.gms.internal.measurement.zzal
    public final zzap zzk(String str) {
        zzap zzapVar;
        return "length".equals(str) ? new zzah(Double.valueOf(zzh())) : (!zzj(str) || (zzapVar = this.zzb.get(str)) == null) ? zzap.zzf : zzapVar;
    }

    public final zzap zzl(int i) {
        zzap zzapVar;
        if (i < zzh()) {
            return (!zzo(i) || (zzapVar = this.zza.get(Integer.valueOf(i))) == null) ? zzap.zzf : zzapVar;
        }
        throw new IndexOutOfBoundsException("Attempting to get element outside of current array");
    }

    @Override // com.google.android.gms.internal.measurement.zzal
    public final void zzm(String str, zzap zzapVar) {
        if (zzapVar == null) {
            this.zzb.remove(str);
        } else {
            this.zzb.put(str, zzapVar);
        }
    }

    @RequiresNonNull({"elements"})
    public final void zzn(int i, zzap zzapVar) {
        if (i <= 32468) {
            if (i < 0) {
                throw new IndexOutOfBoundsException(C0082b.m8758d(32, "Out of bounds index: ", i));
            }
            if (zzapVar == null) {
                this.zza.remove(Integer.valueOf(i));
                return;
            } else {
                this.zza.put(Integer.valueOf(i), zzapVar);
                return;
            }
        }
        throw new IllegalStateException("Array too large");
    }

    public final boolean zzo(int i) {
        if (i < 0 || i > this.zza.lastKey().intValue()) {
            throw new IndexOutOfBoundsException(C0082b.m8758d(32, "Out of bounds index: ", i));
        }
        return this.zza.containsKey(Integer.valueOf(i));
    }

    public final void zzp() {
        this.zza.clear();
    }

    public final void zzq(int i, zzap zzapVar) {
        if (i >= 0) {
            if (i >= zzh()) {
                zzn(i, zzapVar);
                return;
            }
            for (int intValue = this.zza.lastKey().intValue(); intValue >= i; intValue--) {
                SortedMap<Integer, zzap> sortedMap = this.zza;
                Integer valueOf = Integer.valueOf(intValue);
                zzap zzapVar2 = sortedMap.get(valueOf);
                if (zzapVar2 != null) {
                    zzn(intValue + 1, zzapVar2);
                    this.zza.remove(valueOf);
                }
            }
            zzn(i, zzapVar);
            return;
        }
        throw new IllegalArgumentException(C0082b.m8758d(32, "Invalid value index: ", i));
    }

    public final void zzr(int i) {
        int intValue = this.zza.lastKey().intValue();
        if (i > intValue || i < 0) {
            return;
        }
        this.zza.remove(Integer.valueOf(i));
        int i2 = i;
        if (i == intValue) {
            SortedMap<Integer, zzap> sortedMap = this.zza;
            int i3 = i - 1;
            Integer valueOf = Integer.valueOf(i3);
            if (sortedMap.containsKey(valueOf) || i3 < 0) {
                return;
            }
            this.zza.put(valueOf, zzap.zzf);
            return;
        }
        while (true) {
            int i4 = i2 + 1;
            if (i4 > this.zza.lastKey().intValue()) {
                return;
            }
            SortedMap<Integer, zzap> sortedMap2 = this.zza;
            Integer valueOf2 = Integer.valueOf(i4);
            zzap zzapVar = sortedMap2.get(valueOf2);
            i2 = i4;
            if (zzapVar != null) {
                this.zza.put(Integer.valueOf(i4 - 1), zzapVar);
                this.zza.remove(valueOf2);
                i2 = i4;
            }
        }
    }

    public final String zzs(String str) {
        String str2 = str;
        if (str == null) {
            str2 = "";
        }
        StringBuilder sb = new StringBuilder();
        if (!this.zza.isEmpty()) {
            for (int i = 0; i < zzh(); i++) {
                zzap zzl = zzl(i);
                sb.append(str2);
                if (!(zzl instanceof zzau) && !(zzl instanceof zzan)) {
                    sb.append(zzl.zzc());
                }
            }
            sb.delete(0, str2.length());
        }
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.measurement.zzap
    public final zzap zzt() {
        zzae zzaeVar = new zzae();
        for (Map.Entry<Integer, zzap> entry : this.zza.entrySet()) {
            if (entry.getValue() instanceof zzal) {
                zzaeVar.zza.put(entry.getKey(), entry.getValue());
            } else {
                zzaeVar.zza.put(entry.getKey(), entry.getValue().zzt());
            }
        }
        return zzaeVar;
    }
}
