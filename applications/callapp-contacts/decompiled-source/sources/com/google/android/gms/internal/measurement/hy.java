package com.google.android.gms.internal.measurement;

import java.util.Arrays;
import java.util.RandomAccess;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/hy.class */
public final class hy<E> extends ez<E> implements RandomAccess {

    /* renamed from: a  reason: collision with root package name */
    private static final hy<Object> f29103a;

    /* renamed from: b  reason: collision with root package name */
    private E[] f29104b;

    /* renamed from: c  reason: collision with root package name */
    private int f29105c;

    static {
        hy<Object> hyVar = new hy<>(new Object[0], 0);
        f29103a = hyVar;
        hyVar.b();
    }

    hy() {
        this(new Object[10], 0);
    }

    private hy(E[] eArr, int i) {
        this.f29104b = eArr;
        this.f29105c = i;
    }

    private final void b(int i) {
        if (i < 0 || i >= this.f29105c) {
            throw new IndexOutOfBoundsException(c(i));
        }
    }

    private final String c(int i) {
        int i2 = this.f29105c;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i);
        sb.append(", Size:");
        sb.append(i2);
        return sb.toString();
    }

    public static <E> hy<E> d() {
        return (hy<E>) f29103a;
    }

    @Override // com.google.android.gms.internal.measurement.gs
    public final /* synthetic */ gs a(int i) {
        if (i >= this.f29105c) {
            return new hy(Arrays.copyOf(this.f29104b, i), this.f29105c);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.android.gms.internal.measurement.ez, java.util.AbstractList, java.util.List
    public final void add(int i, E e) {
        int i2;
        c();
        if (i < 0 || i > (i2 = this.f29105c)) {
            throw new IndexOutOfBoundsException(c(i));
        }
        E[] eArr = this.f29104b;
        if (i2 < eArr.length) {
            System.arraycopy(eArr, i, eArr, i + 1, i2 - i);
        } else {
            E[] eArr2 = (E[]) new Object[((i2 * 3) / 2) + 1];
            System.arraycopy(eArr, 0, eArr2, 0, i);
            System.arraycopy(this.f29104b, i, eArr2, i + 1, this.f29105c - i);
            this.f29104b = eArr2;
        }
        this.f29104b[i] = e;
        this.f29105c++;
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.measurement.ez, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(E e) {
        c();
        int i = this.f29105c;
        E[] eArr = this.f29104b;
        if (i == eArr.length) {
            this.f29104b = (E[]) Arrays.copyOf(eArr, ((i * 3) / 2) + 1);
        }
        E[] eArr2 = this.f29104b;
        int i2 = this.f29105c;
        this.f29105c = i2 + 1;
        eArr2[i2] = e;
        this.modCount++;
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final E get(int i) {
        b(i);
        return this.f29104b[i];
    }

    @Override // com.google.android.gms.internal.measurement.ez, java.util.AbstractList, java.util.List
    public final E remove(int i) {
        c();
        b(i);
        E[] eArr = this.f29104b;
        E e = eArr[i];
        int i2 = this.f29105c;
        if (i < i2 - 1) {
            System.arraycopy(eArr, i + 1, eArr, i, (i2 - i) - 1);
        }
        this.f29105c--;
        this.modCount++;
        return e;
    }

    @Override // com.google.android.gms.internal.measurement.ez, java.util.AbstractList, java.util.List
    public final E set(int i, E e) {
        c();
        b(i);
        E[] eArr = this.f29104b;
        E e2 = eArr[i];
        eArr[i] = e;
        this.modCount++;
        return e2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f29105c;
    }
}
