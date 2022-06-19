package com.google.protobuf;

import android.support.p012v4.media.C0082b;
import com.google.protobuf.C1895k;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.RandomAccess;
/* renamed from: com.google.protobuf.z */
/* loaded from: classes-dex2jar.jar:com/google/protobuf/z.class */
public final class C1922z<E> extends AbstractC1864c<E> implements RandomAccess {

    /* renamed from: d */
    public static final C1922z<Object> f7136d;

    /* renamed from: b */
    public E[] f7137b;

    /* renamed from: c */
    public int f7138c;

    static {
        C1922z<Object> c1922z = new C1922z<>(new Object[0], 0);
        f7136d = c1922z;
        c1922z.f7039a = false;
    }

    public C1922z(E[] eArr, int i) {
        this.f7137b = eArr;
        this.f7138c = i;
    }

    @Override // java.util.AbstractList, java.util.List
    public void add(int i, E e) {
        int i2;
        m4347a();
        if (i < 0 || i > (i2 = this.f7138c)) {
            throw new IndexOutOfBoundsException(m4206c(i));
        }
        E[] eArr = this.f7137b;
        if (i2 < eArr.length) {
            System.arraycopy(eArr, i, eArr, i + 1, i2 - i);
        } else {
            E[] eArr2 = (E[]) new Object[C0082b.m8760b(i2, 3, 2, 1)];
            System.arraycopy(eArr, 0, eArr2, 0, i);
            System.arraycopy(this.f7137b, i, eArr2, i + 1, this.f7138c - i);
            this.f7137b = eArr2;
        }
        this.f7137b[i] = e;
        this.f7138c++;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.protobuf.AbstractC1864c, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean add(E e) {
        m4347a();
        int i = this.f7138c;
        E[] eArr = this.f7137b;
        if (i == eArr.length) {
            this.f7137b = (E[]) Arrays.copyOf(eArr, ((i * 3) / 2) + 1);
        }
        E[] eArr2 = this.f7137b;
        int i2 = this.f7138c;
        this.f7138c = i2 + 1;
        eArr2[i2] = e;
        ((AbstractList) this).modCount++;
        return true;
    }

    /* renamed from: b */
    public final void m4207b(int i) {
        if (i < 0 || i >= this.f7138c) {
            throw new IndexOutOfBoundsException(m4206c(i));
        }
    }

    /* renamed from: c */
    public final String m4206c(int i) {
        StringBuilder m8751k = C0082b.m8751k("Index:", i, ", Size:");
        m8751k.append(this.f7138c);
        return m8751k.toString();
    }

    @Override // java.util.AbstractList, java.util.List
    public E get(int i) {
        m4207b(i);
        return this.f7137b[i];
    }

    @Override // com.google.protobuf.C1895k.AbstractC1899d
    /* renamed from: r */
    public C1895k.AbstractC1899d mo4205r(int i) {
        if (i >= this.f7138c) {
            return new C1922z(Arrays.copyOf(this.f7137b, i), this.f7138c);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.protobuf.AbstractC1864c, java.util.AbstractList, java.util.List
    public E remove(int i) {
        m4347a();
        m4207b(i);
        E[] eArr = this.f7137b;
        E e = eArr[i];
        int i2 = this.f7138c;
        if (i < i2 - 1) {
            System.arraycopy(eArr, i + 1, eArr, i, (i2 - i) - 1);
        }
        this.f7138c--;
        ((AbstractList) this).modCount++;
        return e;
    }

    @Override // java.util.AbstractList, java.util.List
    public E set(int i, E e) {
        m4347a();
        m4207b(i);
        E[] eArr = this.f7137b;
        E e2 = eArr[i];
        eArr[i] = e;
        ((AbstractList) this).modCount++;
        return e2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.f7138c;
    }
}
