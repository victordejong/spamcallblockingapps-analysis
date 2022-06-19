package com.google.android.gms.internal.ads;

import java.util.AbstractMap;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdxs.class */
final class zzdxs extends zzdxd<Map.Entry<K, V>> {
    private final /* synthetic */ zzdxt zzhyk;

    public zzdxs(zzdxt zzdxtVar) {
        this.zzhyk = zzdxtVar;
    }

    @Override // java.util.List
    public final /* synthetic */ Object get(int i) {
        int i2;
        Object[] objArr;
        Object[] objArr2;
        i2 = this.zzhyk.size;
        zzdwl.zzt(i, i2);
        objArr = this.zzhyk.zzhyh;
        int i3 = i * 2;
        Object obj = objArr[i3];
        objArr2 = this.zzhyk.zzhyh;
        return new AbstractMap.SimpleImmutableEntry(obj, objArr2[i3 + 1]);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        int i;
        i = this.zzhyk.size;
        return i;
    }

    @Override // com.google.android.gms.internal.ads.zzdwy
    public final boolean zzazl() {
        return true;
    }
}
