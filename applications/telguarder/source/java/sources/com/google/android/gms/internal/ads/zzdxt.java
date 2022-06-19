package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdxt.class */
final class zzdxt<K, V> extends zzdxg<Map.Entry<K, V>> {
    private final transient int size;
    private final transient Object[] zzhyh;
    private final transient zzdxh<K, V> zzhyl;
    private final transient int zzhym = 0;

    public zzdxt(zzdxh<K, V> zzdxhVar, Object[] objArr, int i, int i2) {
        this.zzhyl = zzdxhVar;
        this.zzhyh = objArr;
        this.size = i2;
    }

    @Override // com.google.android.gms.internal.ads.zzdwy, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        if (obj instanceof Map.Entry) {
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            Object value = entry.getValue();
            return value != null && value.equals(this.zzhyl.get(key));
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzdxg, com.google.android.gms.internal.ads.zzdwy, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final /* synthetic */ Iterator iterator() {
        return iterator();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.size;
    }

    @Override // com.google.android.gms.internal.ads.zzdwy
    public final int zza(Object[] objArr, int i) {
        return zzazk().zza(objArr, i);
    }

    @Override // com.google.android.gms.internal.ads.zzdwy
    public final zzdya<Map.Entry<K, V>> zzazg() {
        return (zzdya) zzazk().iterator();
    }

    @Override // com.google.android.gms.internal.ads.zzdwy
    public final boolean zzazl() {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzdxg
    final zzdxd<Map.Entry<K, V>> zzazo() {
        return new zzdxs(this);
    }
}
