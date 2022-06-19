package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.List;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzend.class */
public interface zzend {
    int getTag();

    double readDouble() throws IOException;

    float readFloat() throws IOException;

    String readString() throws IOException;

    void readStringList(List<String> list) throws IOException;

    <T> T zza(zzenj<T> zzenjVar, zzeko zzekoVar) throws IOException;

    <T> void zza(List<T> list, zzenj<T> zzenjVar, zzeko zzekoVar) throws IOException;

    <K, V> void zza(Map<K, V> map, zzemf<K, V> zzemfVar, zzeko zzekoVar) throws IOException;

    void zzaa(List<Integer> list) throws IOException;

    void zzab(List<Long> list) throws IOException;

    @Deprecated
    <T> T zzb(zzenj<T> zzenjVar, zzeko zzekoVar) throws IOException;

    @Deprecated
    <T> void zzb(List<T> list, zzenj<T> zzenjVar, zzeko zzekoVar) throws IOException;

    long zzbgt() throws IOException;

    long zzbgu() throws IOException;

    int zzbgv() throws IOException;

    long zzbgw() throws IOException;

    int zzbgx() throws IOException;

    boolean zzbgy() throws IOException;

    String zzbgz() throws IOException;

    zzejr zzbha() throws IOException;

    int zzbhb() throws IOException;

    int zzbhc() throws IOException;

    int zzbhd() throws IOException;

    long zzbhe() throws IOException;

    int zzbhf() throws IOException;

    long zzbhg() throws IOException;

    int zzbhq() throws IOException;

    boolean zzbhr() throws IOException;

    void zzm(List<Double> list) throws IOException;

    void zzn(List<Float> list) throws IOException;

    void zzo(List<Long> list) throws IOException;

    void zzp(List<Long> list) throws IOException;

    void zzq(List<Integer> list) throws IOException;

    void zzr(List<Long> list) throws IOException;

    void zzs(List<Integer> list) throws IOException;

    void zzt(List<Boolean> list) throws IOException;

    void zzu(List<String> list) throws IOException;

    void zzv(List<zzejr> list) throws IOException;

    void zzw(List<Integer> list) throws IOException;

    void zzx(List<Integer> list) throws IOException;

    void zzy(List<Integer> list) throws IOException;

    void zzz(List<Long> list) throws IOException;
}
