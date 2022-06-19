package com.google.android.gms.internal.firebase_remote_config;

import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzjg.class */
public interface zzjg {
    int getTag();

    double readDouble();

    float readFloat();

    String readString();

    void readStringList(List<String> list);

    <T> T zza(zzjf<T> zzjfVar, zzgx zzgxVar);

    <T> void zza(List<T> list, zzjf<T> zzjfVar, zzgx zzgxVar);

    <K, V> void zza(Map<K, V> map, zzih<K, V> zzihVar, zzgx zzgxVar);

    @Deprecated
    <T> T zzb(zzjf<T> zzjfVar, zzgx zzgxVar);

    @Deprecated
    <T> void zzb(List<T> list, zzjf<T> zzjfVar, zzgx zzgxVar);

    void zzc(List<Double> list);

    void zzd(List<Float> list);

    void zze(List<Long> list);

    void zzf(List<Long> list);

    long zzfc();

    long zzfd();

    int zzfe();

    long zzff();

    int zzfg();

    boolean zzfh();

    String zzfi();

    zzfx zzfj();

    int zzfk();

    int zzfl();

    int zzfm();

    long zzfn();

    int zzfo();

    long zzfp();

    int zzfz();

    void zzg(List<Integer> list);

    boolean zzga();

    void zzh(List<Long> list);

    void zzi(List<Integer> list);

    void zzj(List<Boolean> list);

    void zzk(List<String> list);

    void zzl(List<zzfx> list);

    void zzm(List<Integer> list);

    void zzn(List<Integer> list);

    void zzo(List<Integer> list);

    void zzp(List<Long> list);

    void zzq(List<Integer> list);

    void zzr(List<Long> list);
}
