package com.google.android.gms.internal.firebase_perf;

import com.google.android.gms.internal.firebase-perf.zzeo;
import java.util.Arrays;
import java.util.RandomAccess;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzgc.class */
final class zzgc<E> extends zzdc<E> implements RandomAccess {
    private static final zzgc<Object> zzth;
    private int size;
    private E[] zzm;

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.firebase_perf.zzgc, com.google.android.gms.internal.firebase_perf.zzdc, com.google.android.gms.internal.firebase_perf.zzgc<java.lang.Object>] */
    static {
        ?? zzgcVar = new zzgc(new Object[0], 0);
        zzth = zzgcVar;
        zzgcVar.zzfk();
    }

    zzgc() {
        this(new Object[10], 0);
    }

    private zzgc(E[] eArr, int i) {
        this.zzm = eArr;
        this.size = i;
    }

    private final void zzam(int i) {
        if (i < 0 || i >= this.size) {
            throw new IndexOutOfBoundsException(zzan(i));
        }
    }

    private final String zzan(int i) {
        int i2 = this.size;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i);
        sb.append(", Size:");
        sb.append(i2);
        return sb.toString();
    }

    public static <E> zzgc<E> zzhq() {
        return (zzgc<E>) zzth;
    }

    @Override // com.google.android.gms.internal.firebase_perf.zzdc, java.util.AbstractList, java.util.List
    public final void add(int i, E e) {
        int i2;
        zzfl();
        if (i < 0 || i > (i2 = this.size)) {
            throw new IndexOutOfBoundsException(zzan(i));
        }
        E[] eArr = this.zzm;
        if (i2 < eArr.length) {
            System.arraycopy(eArr, i, eArr, i + 1, i2 - i);
        } else {
            E[] eArr2 = (E[]) new Object[((i2 * 3) / 2) + 1];
            System.arraycopy(eArr, 0, eArr2, 0, i);
            System.arraycopy(this.zzm, i, eArr2, i + 1, this.size - i);
            this.zzm = eArr2;
        }
        this.zzm[i] = e;
        this.size++;
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.firebase_perf.zzdc, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(E e) {
        zzfl();
        int i = this.size;
        E[] eArr = this.zzm;
        if (i == eArr.length) {
            this.zzm = (E[]) Arrays.copyOf(eArr, ((i * 3) / 2) + 1);
        }
        E[] eArr2 = this.zzm;
        int i2 = this.size;
        this.size = i2 + 1;
        eArr2[i2] = e;
        this.modCount++;
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final E get(int i) {
        zzam(i);
        return this.zzm[i];
    }

    @Override // com.google.android.gms.internal.firebase_perf.zzdc, java.util.AbstractList, java.util.List
    public final E remove(int i) {
        zzfl();
        zzam(i);
        E[] eArr = this.zzm;
        E e = eArr[i];
        int i2 = this.size;
        if (i < i2 - 1) {
            System.arraycopy(eArr, i + 1, eArr, i, (i2 - i) - 1);
        }
        this.size--;
        this.modCount++;
        return e;
    }

    @Override // com.google.android.gms.internal.firebase_perf.zzdc, java.util.AbstractList, java.util.List
    public final E set(int i, E e) {
        zzfl();
        zzam(i);
        E[] eArr = this.zzm;
        E e2 = eArr[i];
        eArr[i] = e;
        this.modCount++;
        return e2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.size;
    }

    @Override // com.google.android.gms.internal.firebase_perf.zzeo
    public final /* synthetic */ zzeo zzao(int i) {
        if (i >= this.size) {
            return new zzgc(Arrays.copyOf(this.zzm, i), this.size);
        }
        throw new IllegalArgumentException();
    }
}
