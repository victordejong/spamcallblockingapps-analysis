package com.google.android.gms.internal.ads;

import java.util.Iterator;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/czp.class */
final class czp<K> extends czc<K> {

    /* renamed from: a  reason: collision with root package name */
    private final transient czd<K, ?> f26616a;

    /* renamed from: b  reason: collision with root package name */
    private final transient cyz<K> f26617b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public czp(czd<K, ?> czdVar, cyz<K> cyzVar) {
        this.f26616a = czdVar;
        this.f26617b = cyzVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.cyt
    public final int a(Object[] objArr, int i) {
        return e().a(objArr, i);
    }

    @Override // com.google.android.gms.internal.ads.cyt
    public final czu<K> a() {
        return (czu) e().iterator();
    }

    @Override // com.google.android.gms.internal.ads.cyt, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        return this.f26616a.get(obj) != null;
    }

    @Override // com.google.android.gms.internal.ads.czc, com.google.android.gms.internal.ads.cyt
    public final cyz<K> e() {
        return this.f26617b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.cyt
    public final boolean f() {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.czc, com.google.android.gms.internal.ads.cyt, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final /* synthetic */ Iterator iterator() {
        return iterator();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.f26616a.size();
    }
}
