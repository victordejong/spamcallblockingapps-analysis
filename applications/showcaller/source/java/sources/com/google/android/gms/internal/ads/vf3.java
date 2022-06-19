package com.google.android.gms.internal.ads;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.RandomAccess;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/vf3.class */
public final class vf3<E> extends uc3<E> implements RandomAccess {

    /* renamed from: e */
    private static final vf3<Object> f31171e;

    /* renamed from: f */
    private E[] f31172f;

    /* renamed from: g */
    private int f31173g;

    static {
        vf3<Object> vf3Var = new vf3<>(new Object[0], 0);
        f31171e = vf3Var;
        vf3Var.mo10354b();
    }

    private vf3(E[] eArr, int i) {
        this.f31172f = eArr;
        this.f31173g = i;
    }

    /* renamed from: d */
    public static <E> vf3<E> m10030d() {
        return (vf3<E>) f31171e;
    }

    /* renamed from: e */
    private final void m10029e(int i) {
        if (i < 0 || i >= this.f31173g) {
            throw new IndexOutOfBoundsException(m10028h(i));
        }
    }

    /* renamed from: h */
    private final String m10028h(int i) {
        int i2 = this.f31173g;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i);
        sb.append(", Size:");
        sb.append(i2);
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.ads.re3
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ re3 mo8859a(int i) {
        if (i >= this.f31173g) {
            return new vf3(Arrays.copyOf(this.f31172f, i), this.f31173g);
        }
        throw new IllegalArgumentException();
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i, E e) {
        int i2;
        m10353c();
        if (i < 0 || i > (i2 = this.f31173g)) {
            throw new IndexOutOfBoundsException(m10028h(i));
        }
        E[] eArr = this.f31172f;
        if (i2 < eArr.length) {
            System.arraycopy(eArr, i, eArr, i + 1, i2 - i);
        } else {
            E[] eArr2 = (E[]) new Object[((i2 * 3) / 2) + 1];
            System.arraycopy(eArr, 0, eArr2, 0, i);
            System.arraycopy(this.f31172f, i, eArr2, i + 1, this.f31173g - i);
            this.f31172f = eArr2;
        }
        this.f31172f[i] = e;
        this.f31173g++;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.ads.uc3, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(E e) {
        m10353c();
        int i = this.f31173g;
        E[] eArr = this.f31172f;
        if (i == eArr.length) {
            this.f31172f = (E[]) Arrays.copyOf(eArr, ((i * 3) / 2) + 1);
        }
        E[] eArr2 = this.f31172f;
        int i2 = this.f31173g;
        this.f31173g = i2 + 1;
        eArr2[i2] = e;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final E get(int i) {
        m10029e(i);
        return this.f31172f[i];
    }

    @Override // com.google.android.gms.internal.ads.uc3, java.util.AbstractList, java.util.List
    public final E remove(int i) {
        m10353c();
        m10029e(i);
        E[] eArr = this.f31172f;
        E e = eArr[i];
        int i2 = this.f31173g;
        if (i < i2 - 1) {
            System.arraycopy(eArr, i + 1, eArr, i, (i2 - i) - 1);
        }
        this.f31173g--;
        ((AbstractList) this).modCount++;
        return e;
    }

    @Override // java.util.AbstractList, java.util.List
    public final E set(int i, E e) {
        m10353c();
        m10029e(i);
        E[] eArr = this.f31172f;
        E e2 = eArr[i];
        eArr[i] = e;
        ((AbstractList) this).modCount++;
        return e2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f31173g;
    }
}
