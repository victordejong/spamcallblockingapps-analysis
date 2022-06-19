package com.google.android.gms.internal.measurement;

import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* renamed from: com.google.android.gms.internal.measurement.he */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/he.class */
public final class C13546he extends AbstractC13486ez<Long> implements AbstractC13532gr, AbstractC13564hw, RandomAccess {

    /* renamed from: a */
    private static final C13546he f50781a;

    /* renamed from: b */
    private long[] f50782b;

    /* renamed from: c */
    private int f50783c;

    static {
        C13546he c13546he = new C13546he(new long[0], 0);
        f50781a = c13546he;
        c13546he.mo12749b();
    }

    C13546he() {
        this(new long[10], 0);
    }

    private C13546he(long[] jArr, int i) {
        this.f50782b = jArr;
        this.f50783c = i;
    }

    /* renamed from: d */
    public static C13546he m12727d() {
        return f50781a;
    }

    /* renamed from: d */
    private final void m12726d(int i) {
        if (i < 0 || i >= this.f50783c) {
            throw new IndexOutOfBoundsException(m12725e(i));
        }
    }

    /* renamed from: e */
    private final String m12725e(int i) {
        int i2 = this.f50783c;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i);
        sb.append(", Size:");
        sb.append(i2);
        return sb.toString();
    }

    /* renamed from: a */
    public final void m12730a(long j) {
        m12885c();
        int i = this.f50783c;
        long[] jArr = this.f50782b;
        if (i == jArr.length) {
            long[] jArr2 = new long[((i * 3) / 2) + 1];
            System.arraycopy(jArr, 0, jArr2, 0, i);
            this.f50782b = jArr2;
        }
        long[] jArr3 = this.f50782b;
        int i2 = this.f50783c;
        this.f50783c = i2 + 1;
        jArr3[i2] = j;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13486ez, java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        int i2;
        long longValue = ((Long) obj).longValue();
        m12885c();
        if (i < 0 || i > (i2 = this.f50783c)) {
            throw new IndexOutOfBoundsException(m12725e(i));
        }
        long[] jArr = this.f50782b;
        if (i2 < jArr.length) {
            System.arraycopy(jArr, i, jArr, i + 1, i2 - i);
        } else {
            long[] jArr2 = new long[((i2 * 3) / 2) + 1];
            System.arraycopy(jArr, 0, jArr2, 0, i);
            System.arraycopy(this.f50782b, i, jArr2, i + 1, this.f50783c - i);
            this.f50782b = jArr2;
        }
        this.f50782b[i] = longValue;
        this.f50783c++;
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13486ez, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* synthetic */ boolean add(Object obj) {
        m12730a(((Long) obj).longValue());
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13486ez, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Long> collection) {
        m12885c();
        C13534gt.m12746a(collection);
        if (!(collection instanceof C13546he)) {
            return super.addAll(collection);
        }
        C13546he c13546he = (C13546he) collection;
        int i = c13546he.f50783c;
        if (i == 0) {
            return false;
        }
        int i2 = this.f50783c;
        if (Integer.MAX_VALUE - i2 < i) {
            throw new OutOfMemoryError();
        }
        int i3 = i2 + i;
        long[] jArr = this.f50782b;
        if (i3 > jArr.length) {
            this.f50782b = Arrays.copyOf(jArr, i3);
        }
        System.arraycopy(c13546he.f50782b, 0, this.f50782b, this.f50783c, c13546he.f50783c);
        this.f50783c = i3;
        this.modCount++;
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13532gr
    /* renamed from: b */
    public final long mo12729b(int i) {
        m12726d(i);
        return this.f50782b[i];
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13532gr
    /* renamed from: c */
    public final AbstractC13532gr mo12663a(int i) {
        if (i >= this.f50783c) {
            return new C13546he(Arrays.copyOf(this.f50782b, i), this.f50783c);
        }
        throw new IllegalArgumentException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13486ez, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C13546he)) {
            return super.equals(obj);
        }
        C13546he c13546he = (C13546he) obj;
        if (this.f50783c != c13546he.f50783c) {
            return false;
        }
        long[] jArr = c13546he.f50782b;
        for (int i = 0; i < this.f50783c; i++) {
            if (this.f50782b[i] != jArr[i]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        m12726d(i);
        return Long.valueOf(this.f50782b[i]);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13486ez, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f50783c; i2++) {
            i = (i * 31) + C13534gt.m12747a(this.f50782b[i2]);
        }
        return i;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Long)) {
            return -1;
        }
        long longValue = ((Long) obj).longValue();
        int i = this.f50783c;
        for (int i2 = 0; i2 < i; i2++) {
            if (this.f50782b[i2] == longValue) {
                return i2;
            }
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13486ez, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        m12885c();
        m12726d(i);
        long[] jArr = this.f50782b;
        long j = jArr[i];
        int i2 = this.f50783c;
        if (i < i2 - 1) {
            System.arraycopy(jArr, i + 1, jArr, i, (i2 - i) - 1);
        }
        this.f50783c--;
        this.modCount++;
        return Long.valueOf(j);
    }

    @Override // java.util.AbstractList
    protected final void removeRange(int i, int i2) {
        m12885c();
        if (i2 >= i) {
            long[] jArr = this.f50782b;
            System.arraycopy(jArr, i2, jArr, i, this.f50783c - i2);
            this.f50783c -= i2 - i;
            this.modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13486ez, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        long longValue = ((Long) obj).longValue();
        m12885c();
        m12726d(i);
        long[] jArr = this.f50782b;
        long j = jArr[i];
        jArr[i] = longValue;
        return Long.valueOf(j);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f50783c;
    }
}
