package com.google.android.gms.internal.icing;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.RandomAccess;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzfs.class */
final class zzfs<E> extends zzcp<E> implements RandomAccess {

    /* renamed from: i */
    private static final zzfs<Object> f8057i;

    /* renamed from: g */
    private E[] f8058g;

    /* renamed from: h */
    private int f8059h;

    static {
        zzfs<Object> zzfsVar = new zzfs<>(new Object[0], 0);
        f8057i = zzfsVar;
        zzfsVar.mo13794q();
    }

    zzfs() {
        this(new Object[10], 0);
    }

    private zzfs(E[] eArr, int i) {
        this.f8058g = eArr;
        this.f8059h = i;
    }

    /* renamed from: d */
    public static <E> zzfs<E> m13712d() {
        return (zzfs<E>) f8057i;
    }

    /* renamed from: e */
    private final void m13711e(int i) {
        if (i < 0 || i >= this.f8059h) {
            throw new IndexOutOfBoundsException(m13710f(i));
        }
    }

    /* renamed from: f */
    private final String m13710f(int i) {
        int i2 = this.f8059h;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i);
        sb.append(", Size:");
        sb.append(i2);
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.icing.zzcp, java.util.AbstractList, java.util.List
    public final void add(int i, E e) {
        int i2;
        m13986c();
        if (i < 0 || i > (i2 = this.f8059h)) {
            throw new IndexOutOfBoundsException(m13710f(i));
        }
        E[] eArr = this.f8058g;
        if (i2 < eArr.length) {
            System.arraycopy(eArr, i, eArr, i + 1, i2 - i);
        } else {
            E[] eArr2 = (E[]) new Object[((i2 * 3) / 2) + 1];
            System.arraycopy(eArr, 0, eArr2, 0, i);
            System.arraycopy(this.f8058g, i, eArr2, i + 1, this.f8059h - i);
            this.f8058g = eArr2;
        }
        this.f8058g[i] = e;
        this.f8059h++;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.icing.zzcp, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(E e) {
        m13986c();
        int i = this.f8059h;
        E[] eArr = this.f8058g;
        if (i == eArr.length) {
            this.f8058g = (E[]) Arrays.copyOf(eArr, ((i * 3) / 2) + 1);
        }
        E[] eArr2 = this.f8058g;
        int i2 = this.f8059h;
        this.f8059h = i2 + 1;
        eArr2[i2] = e;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // com.google.android.gms.internal.icing.zzee
    /* renamed from: b0 */
    public final /* synthetic */ zzee mo13713b0(int i) {
        if (i >= this.f8059h) {
            return new zzfs(Arrays.copyOf(this.f8058g, i), this.f8059h);
        }
        throw new IllegalArgumentException();
    }

    @Override // java.util.AbstractList, java.util.List
    public final E get(int i) {
        m13711e(i);
        return this.f8058g[i];
    }

    @Override // com.google.android.gms.internal.icing.zzcp, java.util.AbstractList, java.util.List
    public final E remove(int i) {
        m13986c();
        m13711e(i);
        E[] eArr = this.f8058g;
        E e = eArr[i];
        int i2 = this.f8059h;
        if (i < i2 - 1) {
            System.arraycopy(eArr, i + 1, eArr, i, (i2 - i) - 1);
        }
        this.f8059h--;
        ((AbstractList) this).modCount++;
        return e;
    }

    @Override // com.google.android.gms.internal.icing.zzcp, java.util.AbstractList, java.util.List
    public final E set(int i, E e) {
        m13986c();
        m13711e(i);
        E[] eArr = this.f8058g;
        E e2 = eArr[i];
        eArr[i] = e;
        ((AbstractList) this).modCount++;
        return e2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f8059h;
    }
}
