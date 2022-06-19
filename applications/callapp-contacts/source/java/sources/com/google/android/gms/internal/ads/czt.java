package com.google.android.gms.internal.ads;

import java.util.Iterator;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/czt.class */
public final class czt<E> extends czc<E> {

    /* renamed from: a */
    private final transient E f46821a;

    /* renamed from: b */
    private transient int f46822b;

    public czt(E e) {
        this.f46821a = (E) cyg.m17060a(e);
    }

    public czt(E e, int i) {
        this.f46821a = e;
        this.f46822b = i;
    }

    @Override // com.google.android.gms.internal.ads.cyt
    /* renamed from: a */
    public final int mo16996a(Object[] objArr, int i) {
        objArr[i] = this.f46821a;
        return i + 1;
    }

    @Override // com.google.android.gms.internal.ads.cyt
    /* renamed from: a */
    public final czu<E> mo16997a() {
        return new cze(this.f46821a);
    }

    @Override // com.google.android.gms.internal.ads.cyt, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        return this.f46821a.equals(obj);
    }

    @Override // com.google.android.gms.internal.ads.cyt
    /* renamed from: f */
    public final boolean mo16995f() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.czc
    /* renamed from: g */
    final boolean mo16994g() {
        return this.f46822b != 0;
    }

    @Override // com.google.android.gms.internal.ads.czc
    /* renamed from: h */
    final cyz<E> mo16993h() {
        return cyz.m17036a(this.f46821a);
    }

    @Override // com.google.android.gms.internal.ads.czc, java.util.Collection, java.util.Set
    public final int hashCode() {
        int i = this.f46822b;
        int i2 = i;
        if (i == 0) {
            i2 = this.f46821a.hashCode();
            this.f46822b = i2;
        }
        return i2;
    }

    @Override // com.google.android.gms.internal.ads.czc, com.google.android.gms.internal.ads.cyt, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final /* synthetic */ Iterator iterator() {
        return iterator();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return 1;
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        String obj = this.f46821a.toString();
        StringBuilder sb = new StringBuilder(String.valueOf(obj).length() + 2);
        sb.append('[');
        sb.append(obj);
        sb.append(']');
        return sb.toString();
    }
}
