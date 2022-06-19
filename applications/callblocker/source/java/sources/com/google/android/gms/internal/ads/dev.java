package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.RandomAccess;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dev.class */
final class dev<E> extends dbc<E> implements RandomAccess {

    /* renamed from: a */
    private static final dev<Object> f14173a;

    /* renamed from: b */
    private E[] f14174b;

    /* renamed from: c */
    private int f14175c;

    static {
        dev<Object> devVar = new dev<>(new Object[0], 0);
        f14173a = devVar;
        devVar.mo10038b();
    }

    dev() {
        this(new Object[10], 0);
    }

    private dev(E[] eArr, int i) {
        this.f14174b = eArr;
        this.f14175c = i;
    }

    /* renamed from: b */
    private final void m9922b(int i) {
        if (i < 0 || i >= this.f14175c) {
            throw new IndexOutOfBoundsException(m9921c(i));
        }
    }

    /* renamed from: c */
    private final String m9921c(int i) {
        return new StringBuilder(35).append("Index:").append(i).append(", Size:").append(this.f14175c).toString();
    }

    /* renamed from: d */
    public static <E> dev<E> m9920d() {
        return (dev<E>) f14173a;
    }

    @Override // com.google.android.gms.internal.ads.dde
    /* renamed from: a */
    public final /* synthetic */ dde mo9923a(int i) {
        if (i < this.f14175c) {
            throw new IllegalArgumentException();
        }
        return new dev(Arrays.copyOf(this.f14174b, i), this.f14175c);
    }

    @Override // com.google.android.gms.internal.ads.dbc, java.util.AbstractList, java.util.List
    public final void add(int i, E e) {
        m10248c();
        if (i < 0 || i > this.f14175c) {
            throw new IndexOutOfBoundsException(m9921c(i));
        }
        if (this.f14175c < this.f14174b.length) {
            System.arraycopy(this.f14174b, i, this.f14174b, i + 1, this.f14175c - i);
        } else {
            E[] eArr = (E[]) new Object[((this.f14175c * 3) / 2) + 1];
            System.arraycopy(this.f14174b, 0, eArr, 0, i);
            System.arraycopy(this.f14174b, i, eArr, i + 1, this.f14175c - i);
            this.f14174b = eArr;
        }
        this.f14174b[i] = e;
        this.f14175c++;
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.ads.dbc, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(E e) {
        m10248c();
        if (this.f14175c == this.f14174b.length) {
            this.f14174b = (E[]) Arrays.copyOf(this.f14174b, ((this.f14175c * 3) / 2) + 1);
        }
        E[] eArr = this.f14174b;
        int i = this.f14175c;
        this.f14175c = i + 1;
        eArr[i] = e;
        this.modCount++;
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final E get(int i) {
        m9922b(i);
        return this.f14174b[i];
    }

    @Override // com.google.android.gms.internal.ads.dbc, java.util.AbstractList, java.util.List
    public final E remove(int i) {
        m10248c();
        m9922b(i);
        E e = this.f14174b[i];
        if (i < this.f14175c - 1) {
            System.arraycopy(this.f14174b, i + 1, this.f14174b, i, (this.f14175c - i) - 1);
        }
        this.f14175c--;
        this.modCount++;
        return e;
    }

    @Override // com.google.android.gms.internal.ads.dbc, java.util.AbstractList, java.util.List
    public final E set(int i, E e) {
        m10248c();
        m9922b(i);
        E e2 = this.f14174b[i];
        this.f14174b[i] = e;
        this.modCount++;
        return e2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f14175c;
    }
}
