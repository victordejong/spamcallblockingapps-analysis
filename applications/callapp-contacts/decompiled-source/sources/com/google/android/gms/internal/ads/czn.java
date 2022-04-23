package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/czn.class */
final class czn<K, V> extends czc<Map.Entry<K, V>> {

    /* renamed from: a  reason: collision with root package name */
    private final transient czd<K, V> f26609a;

    /* renamed from: b  reason: collision with root package name */
    private final transient Object[] f26610b;

    /* renamed from: c  reason: collision with root package name */
    private final transient int f26611c = 0;

    /* renamed from: d  reason: collision with root package name */
    private final transient int f26612d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public czn(czd<K, V> czdVar, Object[] objArr, int i, int i2) {
        this.f26609a = czdVar;
        this.f26610b = objArr;
        this.f26612d = i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.cyt
    public final int a(Object[] objArr, int i) {
        return e().a(objArr, i);
    }

    @Override // com.google.android.gms.internal.ads.cyt
    public final czu<Map.Entry<K, V>> a() {
        return (czu) e().iterator();
    }

    @Override // com.google.android.gms.internal.ads.cyt, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        Object key = entry.getKey();
        Object value = entry.getValue();
        return value != null && value.equals(this.f26609a.get(key));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.cyt
    public final boolean f() {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.czc
    final cyz<Map.Entry<K, V>> h() {
        return new czm(this);
    }

    @Override // com.google.android.gms.internal.ads.czc, com.google.android.gms.internal.ads.cyt, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final /* synthetic */ Iterator iterator() {
        return iterator();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.f26612d;
    }
}
