package com.google.android.gms.internal.ads;

import java.util.Iterator;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cpr.class */
final class cpr<K> extends cpk<K> {

    /* renamed from: a */
    private final transient cpg<K, ?> f13515a;

    /* renamed from: b */
    private final transient cpc<K> f13516b;

    public cpr(cpg<K, ?> cpgVar, cpc<K> cpcVar) {
        this.f13515a = cpgVar;
        this.f13516b = cpcVar;
    }

    @Override // com.google.android.gms.internal.ads.cpb
    /* renamed from: a */
    public final int mo10863a(Object[] objArr, int i) {
        return mo10868e().mo10863a(objArr, i);
    }

    @Override // com.google.android.gms.internal.ads.cpb
    /* renamed from: a */
    public final cpy<K> mo10864a() {
        return (cpy) mo10868e().iterator();
    }

    @Override // com.google.android.gms.internal.ads.cpb, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(@NullableDecl Object obj) {
        return this.f13515a.get(obj) != null;
    }

    @Override // com.google.android.gms.internal.ads.cpk, com.google.android.gms.internal.ads.cpb
    /* renamed from: e */
    public final cpc<K> mo10868e() {
        return this.f13516b;
    }

    @Override // com.google.android.gms.internal.ads.cpb
    /* renamed from: f */
    public final boolean mo10862f() {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.cpk, com.google.android.gms.internal.ads.cpb, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final /* synthetic */ Iterator iterator() {
        return iterator();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.f13515a.size();
    }
}
