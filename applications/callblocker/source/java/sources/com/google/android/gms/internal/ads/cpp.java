package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cpp.class */
final class cpp<K, V> extends cpk<Map.Entry<K, V>> {

    /* renamed from: a */
    private final transient cpg<K, V> f13507a;

    /* renamed from: b */
    private final transient Object[] f13508b;

    /* renamed from: c */
    private final transient int f13509c = 0;

    /* renamed from: d */
    private final transient int f13510d;

    public cpp(cpg<K, V> cpgVar, Object[] objArr, int i, int i2) {
        this.f13507a = cpgVar;
        this.f13508b = objArr;
        this.f13510d = i2;
    }

    @Override // com.google.android.gms.internal.ads.cpb
    /* renamed from: a */
    public final int mo10863a(Object[] objArr, int i) {
        return mo10868e().mo10863a(objArr, i);
    }

    @Override // com.google.android.gms.internal.ads.cpb
    /* renamed from: a */
    public final cpy<Map.Entry<K, V>> mo10864a() {
        return (cpy) mo10868e().iterator();
    }

    @Override // com.google.android.gms.internal.ads.cpb, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        boolean z = false;
        if (obj instanceof Map.Entry) {
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            Object value = entry.getValue();
            z = false;
            if (value != null) {
                z = false;
                if (value.equals(this.f13507a.get(key))) {
                    z = true;
                }
            }
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.cpb
    /* renamed from: f */
    public final boolean mo10862f() {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.cpk
    /* renamed from: h */
    final cpc<Map.Entry<K, V>> mo10860h() {
        return new cps(this);
    }

    @Override // com.google.android.gms.internal.ads.cpk, com.google.android.gms.internal.ads.cpb, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final /* synthetic */ Iterator iterator() {
        return iterator();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.f13510d;
    }
}
