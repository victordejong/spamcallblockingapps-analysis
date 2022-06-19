package com.google.android.gms.internal.measurement;

import java.util.Arrays;
import java.util.RandomAccess;
/* renamed from: com.google.android.gms.internal.measurement.hy */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/hy.class */
public final class C13566hy<E> extends AbstractC13486ez<E> implements RandomAccess {

    /* renamed from: a */
    private static final C13566hy<Object> f50817a;

    /* renamed from: b */
    private E[] f50818b;

    /* renamed from: c */
    private int f50819c;

    static {
        C13566hy<Object> c13566hy = new C13566hy<>(new Object[0], 0);
        f50817a = c13566hy;
        c13566hy.mo12749b();
    }

    C13566hy() {
        this(new Object[10], 0);
    }

    private C13566hy(E[] eArr, int i) {
        this.f50818b = eArr;
        this.f50819c = i;
    }

    /* renamed from: b */
    private final void m12662b(int i) {
        if (i < 0 || i >= this.f50819c) {
            throw new IndexOutOfBoundsException(m12661c(i));
        }
    }

    /* renamed from: c */
    private final String m12661c(int i) {
        int i2 = this.f50819c;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i);
        sb.append(", Size:");
        sb.append(i2);
        return sb.toString();
    }

    /* renamed from: d */
    public static <E> C13566hy<E> m12660d() {
        return (C13566hy<E>) f50817a;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13533gs
    /* renamed from: a */
    public final /* synthetic */ AbstractC13533gs mo12663a(int i) {
        if (i >= this.f50819c) {
            return new C13566hy(Arrays.copyOf(this.f50818b, i), this.f50819c);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13486ez, java.util.AbstractList, java.util.List
    public final void add(int i, E e) {
        int i2;
        m12885c();
        if (i < 0 || i > (i2 = this.f50819c)) {
            throw new IndexOutOfBoundsException(m12661c(i));
        }
        E[] eArr = this.f50818b;
        if (i2 < eArr.length) {
            System.arraycopy(eArr, i, eArr, i + 1, i2 - i);
        } else {
            E[] eArr2 = (E[]) new Object[((i2 * 3) / 2) + 1];
            System.arraycopy(eArr, 0, eArr2, 0, i);
            System.arraycopy(this.f50818b, i, eArr2, i + 1, this.f50819c - i);
            this.f50818b = eArr2;
        }
        this.f50818b[i] = e;
        this.f50819c++;
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13486ez, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(E e) {
        m12885c();
        int i = this.f50819c;
        E[] eArr = this.f50818b;
        if (i == eArr.length) {
            this.f50818b = (E[]) Arrays.copyOf(eArr, ((i * 3) / 2) + 1);
        }
        E[] eArr2 = this.f50818b;
        int i2 = this.f50819c;
        this.f50819c = i2 + 1;
        eArr2[i2] = e;
        this.modCount++;
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final E get(int i) {
        m12662b(i);
        return this.f50818b[i];
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13486ez, java.util.AbstractList, java.util.List
    public final E remove(int i) {
        m12885c();
        m12662b(i);
        E[] eArr = this.f50818b;
        E e = eArr[i];
        int i2 = this.f50819c;
        if (i < i2 - 1) {
            System.arraycopy(eArr, i + 1, eArr, i, (i2 - i) - 1);
        }
        this.f50819c--;
        this.modCount++;
        return e;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13486ez, java.util.AbstractList, java.util.List
    public final E set(int i, E e) {
        m12885c();
        m12662b(i);
        E[] eArr = this.f50818b;
        E e2 = eArr[i];
        eArr[i] = e;
        this.modCount++;
        return e2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f50819c;
    }
}
