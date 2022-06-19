package com.google.android.gms.internal.ads;

import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cpv.class */
public final class cpv<E> extends cpk<E> {

    /* renamed from: a */
    private final transient E f13527a;

    /* renamed from: b */
    private transient int f13528b;

    public cpv(E e) {
        this.f13527a = (E) cor.m10936a(e);
    }

    public cpv(E e, int i) {
        this.f13527a = e;
        this.f13528b = i;
    }

    @Override // com.google.android.gms.internal.ads.cpb
    /* renamed from: a */
    public final int mo10863a(Object[] objArr, int i) {
        objArr[i] = this.f13527a;
        return i + 1;
    }

    @Override // com.google.android.gms.internal.ads.cpb
    /* renamed from: a */
    public final cpy<E> mo10864a() {
        return new cpm(this.f13527a);
    }

    @Override // com.google.android.gms.internal.ads.cpb, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        return this.f13527a.equals(obj);
    }

    @Override // com.google.android.gms.internal.ads.cpb
    /* renamed from: f */
    public final boolean mo10862f() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.cpk
    /* renamed from: g */
    final boolean mo10861g() {
        return this.f13528b != 0;
    }

    @Override // com.google.android.gms.internal.ads.cpk
    /* renamed from: h */
    final cpc<E> mo10860h() {
        return cpc.m10898a(this.f13527a);
    }

    @Override // com.google.android.gms.internal.ads.cpk, java.util.Collection, java.util.Set
    public final int hashCode() {
        int i = this.f13528b;
        int i2 = i;
        if (i == 0) {
            i2 = this.f13527a.hashCode();
            this.f13528b = i2;
        }
        return i2;
    }

    @Override // com.google.android.gms.internal.ads.cpk, com.google.android.gms.internal.ads.cpb, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final /* synthetic */ Iterator iterator() {
        return iterator();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return 1;
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        String obj = this.f13527a.toString();
        return new StringBuilder(String.valueOf(obj).length() + 2).append('[').append(obj).append(']').toString();
    }
}
