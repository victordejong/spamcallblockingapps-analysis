package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.RandomAccess;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dph.class */
public final class dph<E> extends dlq<E> implements RandomAccess {

    /* renamed from: a */
    private static final dph<Object> f47357a;

    /* renamed from: b */
    private E[] f47358b;

    /* renamed from: c */
    private int f47359c;

    static {
        dph<Object> dphVar = new dph<>(new Object[0], 0);
        f47357a = dphVar;
        dphVar.mo16303b();
    }

    dph() {
        this(new Object[10], 0);
    }

    private dph(E[] eArr, int i) {
        this.f47358b = eArr;
        this.f47359c = i;
    }

    /* renamed from: b */
    private final void m16199b(int i) {
        if (i < 0 || i >= this.f47359c) {
            throw new IndexOutOfBoundsException(m16198c(i));
        }
    }

    /* renamed from: c */
    private final String m16198c(int i) {
        int i2 = this.f47359c;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i);
        sb.append(", Size:");
        sb.append(i2);
        return sb.toString();
    }

    /* renamed from: d */
    public static <E> dph<E> m16197d() {
        return (dph<E>) f47357a;
    }

    @Override // com.google.android.gms.internal.ads.dnr
    /* renamed from: a */
    public final /* synthetic */ dnr mo16200a(int i) {
        if (i >= this.f47359c) {
            return new dph(Arrays.copyOf(this.f47358b, i), this.f47359c);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.android.gms.internal.ads.dlq, java.util.AbstractList, java.util.List
    public final void add(int i, E e) {
        int i2;
        m16501c();
        if (i < 0 || i > (i2 = this.f47359c)) {
            throw new IndexOutOfBoundsException(m16198c(i));
        }
        E[] eArr = this.f47358b;
        if (i2 < eArr.length) {
            System.arraycopy(eArr, i, eArr, i + 1, i2 - i);
        } else {
            E[] eArr2 = (E[]) new Object[((i2 * 3) / 2) + 1];
            System.arraycopy(eArr, 0, eArr2, 0, i);
            System.arraycopy(this.f47358b, i, eArr2, i + 1, this.f47359c - i);
            this.f47358b = eArr2;
        }
        this.f47358b[i] = e;
        this.f47359c++;
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.ads.dlq, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(E e) {
        m16501c();
        int i = this.f47359c;
        E[] eArr = this.f47358b;
        if (i == eArr.length) {
            this.f47358b = (E[]) Arrays.copyOf(eArr, ((i * 3) / 2) + 1);
        }
        E[] eArr2 = this.f47358b;
        int i2 = this.f47359c;
        this.f47359c = i2 + 1;
        eArr2[i2] = e;
        this.modCount++;
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final E get(int i) {
        m16199b(i);
        return this.f47358b[i];
    }

    @Override // com.google.android.gms.internal.ads.dlq, java.util.AbstractList, java.util.List
    public final E remove(int i) {
        m16501c();
        m16199b(i);
        E[] eArr = this.f47358b;
        E e = eArr[i];
        int i2 = this.f47359c;
        if (i < i2 - 1) {
            System.arraycopy(eArr, i + 1, eArr, i, (i2 - i) - 1);
        }
        this.f47359c--;
        this.modCount++;
        return e;
    }

    @Override // com.google.android.gms.internal.ads.dlq, java.util.AbstractList, java.util.List
    public final E set(int i, E e) {
        m16501c();
        m16199b(i);
        E[] eArr = this.f47358b;
        E e2 = eArr[i];
        eArr[i] = e;
        this.modCount++;
        return e2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f47359c;
    }
}
