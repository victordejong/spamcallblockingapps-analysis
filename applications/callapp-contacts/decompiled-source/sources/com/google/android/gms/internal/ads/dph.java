package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.RandomAccess;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dph.class */
public final class dph<E> extends dlq<E> implements RandomAccess {

    /* renamed from: a  reason: collision with root package name */
    private static final dph<Object> f27056a;

    /* renamed from: b  reason: collision with root package name */
    private E[] f27057b;

    /* renamed from: c  reason: collision with root package name */
    private int f27058c;

    static {
        dph<Object> dphVar = new dph<>(new Object[0], 0);
        f27056a = dphVar;
        dphVar.b();
    }

    dph() {
        this(new Object[10], 0);
    }

    private dph(E[] eArr, int i) {
        this.f27057b = eArr;
        this.f27058c = i;
    }

    private final void b(int i) {
        if (i < 0 || i >= this.f27058c) {
            throw new IndexOutOfBoundsException(c(i));
        }
    }

    private final String c(int i) {
        int i2 = this.f27058c;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i);
        sb.append(", Size:");
        sb.append(i2);
        return sb.toString();
    }

    public static <E> dph<E> d() {
        return (dph<E>) f27056a;
    }

    @Override // com.google.android.gms.internal.ads.dnr
    public final /* synthetic */ dnr a(int i) {
        if (i >= this.f27058c) {
            return new dph(Arrays.copyOf(this.f27057b, i), this.f27058c);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.android.gms.internal.ads.dlq, java.util.AbstractList, java.util.List
    public final void add(int i, E e) {
        int i2;
        c();
        if (i < 0 || i > (i2 = this.f27058c)) {
            throw new IndexOutOfBoundsException(c(i));
        }
        E[] eArr = this.f27057b;
        if (i2 < eArr.length) {
            System.arraycopy(eArr, i, eArr, i + 1, i2 - i);
        } else {
            E[] eArr2 = (E[]) new Object[((i2 * 3) / 2) + 1];
            System.arraycopy(eArr, 0, eArr2, 0, i);
            System.arraycopy(this.f27057b, i, eArr2, i + 1, this.f27058c - i);
            this.f27057b = eArr2;
        }
        this.f27057b[i] = e;
        this.f27058c++;
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.ads.dlq, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(E e) {
        c();
        int i = this.f27058c;
        E[] eArr = this.f27057b;
        if (i == eArr.length) {
            this.f27057b = (E[]) Arrays.copyOf(eArr, ((i * 3) / 2) + 1);
        }
        E[] eArr2 = this.f27057b;
        int i2 = this.f27058c;
        this.f27058c = i2 + 1;
        eArr2[i2] = e;
        this.modCount++;
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final E get(int i) {
        b(i);
        return this.f27057b[i];
    }

    @Override // com.google.android.gms.internal.ads.dlq, java.util.AbstractList, java.util.List
    public final E remove(int i) {
        c();
        b(i);
        E[] eArr = this.f27057b;
        E e = eArr[i];
        int i2 = this.f27058c;
        if (i < i2 - 1) {
            System.arraycopy(eArr, i + 1, eArr, i, (i2 - i) - 1);
        }
        this.f27058c--;
        this.modCount++;
        return e;
    }

    @Override // com.google.android.gms.internal.ads.dlq, java.util.AbstractList, java.util.List
    public final E set(int i, E e) {
        c();
        b(i);
        E[] eArr = this.f27057b;
        E e2 = eArr[i];
        eArr[i] = e;
        this.modCount++;
        return e2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f27058c;
    }
}
