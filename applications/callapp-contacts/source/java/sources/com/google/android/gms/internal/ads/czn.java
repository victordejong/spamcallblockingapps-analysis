package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/czn.class */
final class czn<K, V> extends czc<Map.Entry<K, V>> {

    /* renamed from: a */
    private final transient czd<K, V> f46805a;

    /* renamed from: b */
    private final transient Object[] f46806b;

    /* renamed from: c */
    private final transient int f46807c = 0;

    /* renamed from: d */
    private final transient int f46808d;

    public czn(czd<K, V> czdVar, Object[] objArr, int i, int i2) {
        this.f46805a = czdVar;
        this.f46806b = objArr;
        this.f46808d = i2;
    }

    @Override // com.google.android.gms.internal.ads.cyt
    /* renamed from: a */
    public final int mo16996a(Object[] objArr, int i) {
        return mo17004e().mo16996a(objArr, i);
    }

    @Override // com.google.android.gms.internal.ads.cyt
    /* renamed from: a */
    public final czu<Map.Entry<K, V>> mo16997a() {
        return (czu) mo17004e().iterator();
    }

    @Override // com.google.android.gms.internal.ads.cyt, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        if (obj instanceof Map.Entry) {
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            Object value = entry.getValue();
            return value != null && value.equals(this.f46805a.get(key));
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.cyt
    /* renamed from: f */
    public final boolean mo16995f() {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.czc
    /* renamed from: h */
    final cyz<Map.Entry<K, V>> mo16993h() {
        return new czm(this);
    }

    @Override // com.google.android.gms.internal.ads.czc, com.google.android.gms.internal.ads.cyt, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final /* synthetic */ Iterator iterator() {
        return iterator();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.f46808d;
    }
}
