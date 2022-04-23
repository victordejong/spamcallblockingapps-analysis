package com.google.android.gms.internal.measurement;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.RandomAccess;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzjy.class */
final class zzjy<E> extends zzgl<E> implements RandomAccess {

    /* renamed from: i */
    private static final zzjy<Object> f8592i;

    /* renamed from: g */
    private E[] f8593g;

    /* renamed from: h */
    private int f8594h;

    static {
        zzjy<Object> zzjyVar = new zzjy<>(new Object[0], 0);
        f8592i = zzjyVar;
        zzjyVar.zzb();
    }

    zzjy() {
        this(new Object[10], 0);
    }

    private zzjy(E[] eArr, int i) {
        this.f8593g = eArr;
        this.f8594h = i;
    }

    /* renamed from: d */
    private final void m12265d(int i) {
        if (i < 0 || i >= this.f8594h) {
            throw new IndexOutOfBoundsException(m12264e(i));
        }
    }

    /* renamed from: e */
    private final String m12264e(int i) {
        int i2 = this.f8594h;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i);
        sb.append(", Size:");
        sb.append(i2);
        return sb.toString();
    }

    /* renamed from: f */
    public static <E> zzjy<E> m12263f() {
        return (zzjy<E>) f8592i;
    }

    @Override // com.google.android.gms.internal.measurement.zzii
    /* renamed from: a */
    public final /* synthetic */ zzii mo12266a(int i) {
        if (i >= this.f8594h) {
            return new zzjy(Arrays.copyOf(this.f8593g, i), this.f8594h);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.android.gms.internal.measurement.zzgl, java.util.AbstractList, java.util.List
    public final void add(int i, E e) {
        int i2;
        m12656c();
        if (i < 0 || i > (i2 = this.f8594h)) {
            throw new IndexOutOfBoundsException(m12264e(i));
        }
        E[] eArr = this.f8593g;
        if (i2 < eArr.length) {
            System.arraycopy(eArr, i, eArr, i + 1, i2 - i);
        } else {
            E[] eArr2 = (E[]) new Object[((i2 * 3) / 2) + 1];
            System.arraycopy(eArr, 0, eArr2, 0, i);
            System.arraycopy(this.f8593g, i, eArr2, i + 1, this.f8594h - i);
            this.f8593g = eArr2;
        }
        this.f8593g[i] = e;
        this.f8594h++;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.measurement.zzgl, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(E e) {
        m12656c();
        int i = this.f8594h;
        E[] eArr = this.f8593g;
        if (i == eArr.length) {
            this.f8593g = (E[]) Arrays.copyOf(eArr, ((i * 3) / 2) + 1);
        }
        E[] eArr2 = this.f8593g;
        int i2 = this.f8594h;
        this.f8594h = i2 + 1;
        eArr2[i2] = e;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final E get(int i) {
        m12265d(i);
        return this.f8593g[i];
    }

    @Override // com.google.android.gms.internal.measurement.zzgl, java.util.AbstractList, java.util.List
    public final E remove(int i) {
        m12656c();
        m12265d(i);
        E[] eArr = this.f8593g;
        E e = eArr[i];
        int i2 = this.f8594h;
        if (i < i2 - 1) {
            System.arraycopy(eArr, i + 1, eArr, i, (i2 - i) - 1);
        }
        this.f8594h--;
        ((AbstractList) this).modCount++;
        return e;
    }

    @Override // com.google.android.gms.internal.measurement.zzgl, java.util.AbstractList, java.util.List
    public final E set(int i, E e) {
        m12656c();
        m12265d(i);
        E[] eArr = this.f8593g;
        E e2 = eArr[i];
        eArr[i] = e;
        ((AbstractList) this).modCount++;
        return e2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f8594h;
    }
}
