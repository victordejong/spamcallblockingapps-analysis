package com.google.android.gms.internal.measurement;

import java.util.Arrays;
import java.util.RandomAccess;
/* renamed from: com.google.android.gms.internal.measurement.gc */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/gc.class */
final class C3959gc<E> extends AbstractC3853cn<E> implements RandomAccess {

    /* renamed from: a */
    private static final C3959gc<Object> f18200a;

    /* renamed from: b */
    private E[] f18201b;

    /* renamed from: c */
    private int f18202c;

    static {
        C3959gc<Object> c3959gc = new C3959gc<>(new Object[0], 0);
        f18200a = c3959gc;
        c3959gc.mo5597b();
    }

    C3959gc() {
        this(new Object[10], 0);
    }

    private C3959gc(E[] eArr, int i) {
        this.f18201b = eArr;
        this.f18202c = i;
    }

    /* renamed from: b */
    private final void m5475b(int i) {
        if (i < 0 || i >= this.f18202c) {
            throw new IndexOutOfBoundsException(m5474c(i));
        }
    }

    /* renamed from: c */
    private final String m5474c(int i) {
        return new StringBuilder(35).append("Index:").append(i).append(", Size:").append(this.f18202c).toString();
    }

    /* renamed from: d */
    public static <E> C3959gc<E> m5473d() {
        return (C3959gc<E>) f18200a;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3914el
    /* renamed from: a */
    public final /* synthetic */ AbstractC3914el mo5476a(int i) {
        if (i < this.f18202c) {
            throw new IllegalArgumentException();
        }
        return new C3959gc(Arrays.copyOf(this.f18201b, i), this.f18202c);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3853cn, java.util.AbstractList, java.util.List
    public final void add(int i, E e) {
        m5837q_();
        if (i < 0 || i > this.f18202c) {
            throw new IndexOutOfBoundsException(m5474c(i));
        }
        if (this.f18202c < this.f18201b.length) {
            System.arraycopy(this.f18201b, i, this.f18201b, i + 1, this.f18202c - i);
        } else {
            E[] eArr = (E[]) new Object[((this.f18202c * 3) / 2) + 1];
            System.arraycopy(this.f18201b, 0, eArr, 0, i);
            System.arraycopy(this.f18201b, i, eArr, i + 1, this.f18202c - i);
            this.f18201b = eArr;
        }
        this.f18201b[i] = e;
        this.f18202c++;
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3853cn, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(E e) {
        m5837q_();
        if (this.f18202c == this.f18201b.length) {
            this.f18201b = (E[]) Arrays.copyOf(this.f18201b, ((this.f18202c * 3) / 2) + 1);
        }
        E[] eArr = this.f18201b;
        int i = this.f18202c;
        this.f18202c = i + 1;
        eArr[i] = e;
        this.modCount++;
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final E get(int i) {
        m5475b(i);
        return this.f18201b[i];
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3853cn, java.util.AbstractList, java.util.List
    public final E remove(int i) {
        m5837q_();
        m5475b(i);
        E e = this.f18201b[i];
        if (i < this.f18202c - 1) {
            System.arraycopy(this.f18201b, i + 1, this.f18201b, i, (this.f18202c - i) - 1);
        }
        this.f18202c--;
        this.modCount++;
        return e;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3853cn, java.util.AbstractList, java.util.List
    public final E set(int i, E e) {
        m5837q_();
        m5475b(i);
        E e2 = this.f18201b[i];
        this.f18201b[i] = e;
        this.modCount++;
        return e2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f18202c;
    }
}
