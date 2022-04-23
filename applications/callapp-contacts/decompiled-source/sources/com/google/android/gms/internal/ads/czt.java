package com.google.android.gms.internal.ads;

import java.util.Iterator;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/czt.class */
public final class czt<E> extends czc<E> {

    /* renamed from: a  reason: collision with root package name */
    private final transient E f26623a;

    /* renamed from: b  reason: collision with root package name */
    private transient int f26624b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public czt(E e) {
        this.f26623a = (E) cyg.a(e);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public czt(E e, int i) {
        this.f26623a = e;
        this.f26624b = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.cyt
    public final int a(Object[] objArr, int i) {
        objArr[i] = this.f26623a;
        return i + 1;
    }

    @Override // com.google.android.gms.internal.ads.cyt
    public final czu<E> a() {
        return new cze(this.f26623a);
    }

    @Override // com.google.android.gms.internal.ads.cyt, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        return this.f26623a.equals(obj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.cyt
    public final boolean f() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.czc
    final boolean g() {
        return this.f26624b != 0;
    }

    @Override // com.google.android.gms.internal.ads.czc
    final cyz<E> h() {
        return cyz.a(this.f26623a);
    }

    @Override // com.google.android.gms.internal.ads.czc, java.util.Collection, java.util.Set
    public final int hashCode() {
        int i = this.f26624b;
        int i2 = i;
        if (i == 0) {
            i2 = this.f26623a.hashCode();
            this.f26624b = i2;
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
        String obj = this.f26623a.toString();
        StringBuilder sb = new StringBuilder(String.valueOf(obj).length() + 2);
        sb.append('[');
        sb.append(obj);
        sb.append(']');
        return sb.toString();
    }
}
