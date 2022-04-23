package com.google.protobuf;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.RandomAccess;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.protobuf.x0 */
/* loaded from: classes2-dex2jar.jar:com/google/protobuf/x0.class */
public final class C2675x0<E> extends AbstractC2576c<E> implements RandomAccess {

    /* renamed from: e */
    private static final C2675x0<Object> f11227e;

    /* renamed from: c */
    private E[] f11228c;

    /* renamed from: d */
    private int f11229d;

    static {
        C2675x0<Object> x0Var = new C2675x0<>(new Object[0], 0);
        f11227e = x0Var;
        x0Var.mo2236h();
    }

    private C2675x0(E[] eArr, int i) {
        this.f11228c = eArr;
        this.f11229d = i;
    }

    /* renamed from: j */
    private static <E> E[] m2234j(int i) {
        return (E[]) new Object[i];
    }

    /* renamed from: k */
    public static <E> C2675x0<E> m2233k() {
        return (C2675x0<E>) f11227e;
    }

    /* renamed from: p */
    private void m2232p(int i) {
        if (i < 0 || i >= this.f11229d) {
            throw new IndexOutOfBoundsException(m2231r(i));
        }
    }

    /* renamed from: r */
    private String m2231r(int i) {
        return "Index:" + i + ", Size:" + this.f11229d;
    }

    @Override // java.util.AbstractList, java.util.List
    public void add(int i, E e) {
        int i2;
        m2894a();
        if (i < 0 || i > (i2 = this.f11229d)) {
            throw new IndexOutOfBoundsException(m2231r(i));
        }
        E[] eArr = this.f11228c;
        if (i2 < eArr.length) {
            System.arraycopy(eArr, i, eArr, i + 1, i2 - i);
        } else {
            E[] eArr2 = (E[]) m2234j(((i2 * 3) / 2) + 1);
            System.arraycopy(this.f11228c, 0, eArr2, 0, i);
            System.arraycopy(this.f11228c, i, eArr2, i + 1, this.f11229d - i);
            this.f11228c = eArr2;
        }
        this.f11228c[i] = e;
        this.f11229d++;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.protobuf.AbstractC2576c, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean add(E e) {
        m2894a();
        int i = this.f11229d;
        E[] eArr = this.f11228c;
        if (i == eArr.length) {
            this.f11228c = (E[]) Arrays.copyOf(eArr, ((i * 3) / 2) + 1);
        }
        E[] eArr2 = this.f11228c;
        int i2 = this.f11229d;
        this.f11229d = i2 + 1;
        eArr2[i2] = e;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public E get(int i) {
        m2232p(i);
        return this.f11228c[i];
    }

    @Override // com.google.protobuf.AbstractC2576c, java.util.AbstractList, java.util.List
    public E remove(int i) {
        m2894a();
        m2232p(i);
        E[] eArr = this.f11228c;
        E e = eArr[i];
        int i2 = this.f11229d;
        if (i < i2 - 1) {
            System.arraycopy(eArr, i + 1, eArr, i, (i2 - i) - 1);
        }
        this.f11229d--;
        ((AbstractList) this).modCount++;
        return e;
    }

    @Override // java.util.AbstractList, java.util.List
    public E set(int i, E e) {
        m2894a();
        m2232p(i);
        E[] eArr = this.f11228c;
        E e2 = eArr[i];
        eArr[i] = e;
        ((AbstractList) this).modCount++;
        return e2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.f11229d;
    }

    /* renamed from: u */
    public C2675x0<E> mo2235d(int i) {
        if (i >= this.f11229d) {
            return new C2675x0<>(Arrays.copyOf(this.f11228c, i), this.f11229d);
        }
        throw new IllegalArgumentException();
    }
}
