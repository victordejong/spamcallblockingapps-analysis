package com.google.android.gms.internal.ads;

import java.util.Iterator;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/czp.class */
final class czp<K> extends czc<K> {

    /* renamed from: a */
    private final transient czd<K, ?> f46812a;

    /* renamed from: b */
    private final transient cyz<K> f46813b;

    public czp(czd<K, ?> czdVar, cyz<K> cyzVar) {
        this.f46812a = czdVar;
        this.f46813b = cyzVar;
    }

    @Override // com.google.android.gms.internal.ads.cyt
    /* renamed from: a */
    public final int mo16996a(Object[] objArr, int i) {
        return mo17004e().mo16996a(objArr, i);
    }

    @Override // com.google.android.gms.internal.ads.cyt
    /* renamed from: a */
    public final czu<K> mo16997a() {
        return (czu) mo17004e().iterator();
    }

    @Override // com.google.android.gms.internal.ads.cyt, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        return this.f46812a.get(obj) != null;
    }

    @Override // com.google.android.gms.internal.ads.czc, com.google.android.gms.internal.ads.cyt
    /* renamed from: e */
    public final cyz<K> mo17004e() {
        return this.f46813b;
    }

    @Override // com.google.android.gms.internal.ads.cyt
    /* renamed from: f */
    public final boolean mo16995f() {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.czc, com.google.android.gms.internal.ads.cyt, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final /* synthetic */ Iterator iterator() {
        return iterator();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.f46812a.size();
    }
}
