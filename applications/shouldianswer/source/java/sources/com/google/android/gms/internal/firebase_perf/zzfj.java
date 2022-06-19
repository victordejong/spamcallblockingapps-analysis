package com.google.android.gms.internal.firebase_perf;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzfj.class */
public final class zzfj<K, V> {
    private final V value;
    private final zzfi<K, V> zzsh;
    private final K zzsi;

    private zzfj(zzhk zzhkVar, K k, zzhk zzhkVar2, V v) {
        this.zzsh = new zzfi<>(zzhkVar, k, zzhkVar2, v);
        this.zzsi = k;
        this.value = v;
    }

    public static <K, V> int zza(zzfi<K, V> zzfiVar, K k, V v) {
        return zzdz.zza(zzfiVar.zzsd, 1, k) + zzdz.zza(zzfiVar.zzsf, 2, v);
    }

    public static <K, V> zzfj<K, V> zza(zzhk zzhkVar, K k, zzhk zzhkVar2, V v) {
        return new zzfj<>(zzhkVar, k, zzhkVar2, v);
    }

    public final int zzb(int i, K k, V v) {
        return zzdu.zzy(i) + zzdu.zzaf(zza(this.zzsh, k, v));
    }

    public final zzfi<K, V> zzhd() {
        return this.zzsh;
    }
}
