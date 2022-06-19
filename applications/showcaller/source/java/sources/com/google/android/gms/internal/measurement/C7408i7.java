package com.google.android.gms.internal.measurement;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.RandomAccess;
/* renamed from: com.google.android.gms.internal.measurement.i7 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/i7.class */
final class C7408i7<E> extends AbstractC7503p4<E> implements RandomAccess {

    /* renamed from: e */
    private static final C7408i7<Object> f34526e;

    /* renamed from: f */
    private E[] f34527f;

    /* renamed from: g */
    private int f34528g;

    static {
        C7408i7<Object> c7408i7 = new C7408i7<>(new Object[0], 0);
        f34526e = c7408i7;
        c7408i7.mo7028b();
    }

    private C7408i7(E[] eArr, int i) {
        this.f34527f = eArr;
        this.f34528g = i;
    }

    /* renamed from: d */
    public static <E> C7408i7<E> m7331d() {
        return (C7408i7<E>) f34526e;
    }

    /* renamed from: e */
    private final void m7330e(int i) {
        if (i < 0 || i >= this.f34528g) {
            throw new IndexOutOfBoundsException(m7329h(i));
        }
    }

    /* renamed from: h */
    private final String m7329h(int i) {
        int i2 = this.f34528g;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i);
        sb.append(", Size:");
        sb.append(i2);
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7351e6
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ AbstractC7351e6 mo6737a(int i) {
        if (i >= this.f34528g) {
            return new C7408i7(Arrays.copyOf(this.f34527f, i), this.f34528g);
        }
        throw new IllegalArgumentException();
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i, E e) {
        int i2;
        m7027c();
        if (i < 0 || i > (i2 = this.f34528g)) {
            throw new IndexOutOfBoundsException(m7329h(i));
        }
        E[] eArr = this.f34527f;
        if (i2 < eArr.length) {
            System.arraycopy(eArr, i, eArr, i + 1, i2 - i);
        } else {
            E[] eArr2 = (E[]) new Object[((i2 * 3) / 2) + 1];
            System.arraycopy(eArr, 0, eArr2, 0, i);
            System.arraycopy(this.f34527f, i, eArr2, i + 1, this.f34528g - i);
            this.f34527f = eArr2;
        }
        this.f34527f[i] = e;
        this.f34528g++;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7503p4, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(E e) {
        m7027c();
        int i = this.f34528g;
        E[] eArr = this.f34527f;
        if (i == eArr.length) {
            this.f34527f = (E[]) Arrays.copyOf(eArr, ((i * 3) / 2) + 1);
        }
        E[] eArr2 = this.f34527f;
        int i2 = this.f34528g;
        this.f34528g = i2 + 1;
        eArr2[i2] = e;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final E get(int i) {
        m7330e(i);
        return this.f34527f[i];
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7503p4, java.util.AbstractList, java.util.List
    public final E remove(int i) {
        m7027c();
        m7330e(i);
        E[] eArr = this.f34527f;
        E e = eArr[i];
        int i2 = this.f34528g;
        if (i < i2 - 1) {
            System.arraycopy(eArr, i + 1, eArr, i, (i2 - i) - 1);
        }
        this.f34528g--;
        ((AbstractList) this).modCount++;
        return e;
    }

    @Override // java.util.AbstractList, java.util.List
    public final E set(int i, E e) {
        m7027c();
        m7330e(i);
        E[] eArr = this.f34527f;
        E e2 = eArr[i];
        eArr[i] = e;
        ((AbstractList) this).modCount++;
        return e2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f34528g;
    }
}
