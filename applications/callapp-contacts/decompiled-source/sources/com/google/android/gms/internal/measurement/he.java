package com.google.android.gms.internal.measurement;

import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/he.class */
public final class he extends ez<Long> implements gr, hw, RandomAccess {

    /* renamed from: a  reason: collision with root package name */
    private static final he f29080a;

    /* renamed from: b  reason: collision with root package name */
    private long[] f29081b;

    /* renamed from: c  reason: collision with root package name */
    private int f29082c;

    static {
        he heVar = new he(new long[0], 0);
        f29080a = heVar;
        heVar.b();
    }

    he() {
        this(new long[10], 0);
    }

    private he(long[] jArr, int i) {
        this.f29081b = jArr;
        this.f29082c = i;
    }

    public static he d() {
        return f29080a;
    }

    private final void d(int i) {
        if (i < 0 || i >= this.f29082c) {
            throw new IndexOutOfBoundsException(e(i));
        }
    }

    private final String e(int i) {
        int i2 = this.f29082c;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i);
        sb.append(", Size:");
        sb.append(i2);
        return sb.toString();
    }

    public final void a(long j) {
        c();
        int i = this.f29082c;
        long[] jArr = this.f29081b;
        if (i == jArr.length) {
            long[] jArr2 = new long[((i * 3) / 2) + 1];
            System.arraycopy(jArr, 0, jArr2, 0, i);
            this.f29081b = jArr2;
        }
        long[] jArr3 = this.f29081b;
        int i2 = this.f29082c;
        this.f29082c = i2 + 1;
        jArr3[i2] = j;
    }

    @Override // com.google.android.gms.internal.measurement.ez, java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        int i2;
        long longValue = ((Long) obj).longValue();
        c();
        if (i < 0 || i > (i2 = this.f29082c)) {
            throw new IndexOutOfBoundsException(e(i));
        }
        long[] jArr = this.f29081b;
        if (i2 < jArr.length) {
            System.arraycopy(jArr, i, jArr, i + 1, i2 - i);
        } else {
            long[] jArr2 = new long[((i2 * 3) / 2) + 1];
            System.arraycopy(jArr, 0, jArr2, 0, i);
            System.arraycopy(this.f29081b, i, jArr2, i + 1, this.f29082c - i);
            this.f29081b = jArr2;
        }
        this.f29081b[i] = longValue;
        this.f29082c++;
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.measurement.ez, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* synthetic */ boolean add(Object obj) {
        a(((Long) obj).longValue());
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.ez, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Long> collection) {
        c();
        gt.a(collection);
        if (!(collection instanceof he)) {
            return super.addAll(collection);
        }
        he heVar = (he) collection;
        int i = heVar.f29082c;
        if (i == 0) {
            return false;
        }
        int i2 = this.f29082c;
        if (Integer.MAX_VALUE - i2 >= i) {
            int i3 = i2 + i;
            long[] jArr = this.f29081b;
            if (i3 > jArr.length) {
                this.f29081b = Arrays.copyOf(jArr, i3);
            }
            System.arraycopy(heVar.f29081b, 0, this.f29081b, this.f29082c, heVar.f29082c);
            this.f29082c = i3;
            this.modCount++;
            return true;
        }
        throw new OutOfMemoryError();
    }

    @Override // com.google.android.gms.internal.measurement.gr
    public final long b(int i) {
        d(i);
        return this.f29081b[i];
    }

    @Override // com.google.android.gms.internal.measurement.gr
    /* renamed from: c */
    public final gr a(int i) {
        if (i >= this.f29082c) {
            return new he(Arrays.copyOf(this.f29081b, i), this.f29082c);
        }
        throw new IllegalArgumentException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    @Override // com.google.android.gms.internal.measurement.ez, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof he)) {
            return super.equals(obj);
        }
        he heVar = (he) obj;
        if (this.f29082c != heVar.f29082c) {
            return false;
        }
        long[] jArr = heVar.f29081b;
        for (int i = 0; i < this.f29082c; i++) {
            if (this.f29081b[i] != jArr[i]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        d(i);
        return Long.valueOf(this.f29081b[i]);
    }

    @Override // com.google.android.gms.internal.measurement.ez, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f29082c; i2++) {
            i = (i * 31) + gt.a(this.f29081b[i2]);
        }
        return i;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Long)) {
            return -1;
        }
        long longValue = ((Long) obj).longValue();
        int i = this.f29082c;
        for (int i2 = 0; i2 < i; i2++) {
            if (this.f29081b[i2] == longValue) {
                return i2;
            }
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.measurement.ez, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        c();
        d(i);
        long[] jArr = this.f29081b;
        long j = jArr[i];
        int i2 = this.f29082c;
        if (i < i2 - 1) {
            System.arraycopy(jArr, i + 1, jArr, i, (i2 - i) - 1);
        }
        this.f29082c--;
        this.modCount++;
        return Long.valueOf(j);
    }

    @Override // java.util.AbstractList
    protected final void removeRange(int i, int i2) {
        c();
        if (i2 >= i) {
            long[] jArr = this.f29081b;
            System.arraycopy(jArr, i2, jArr, i, this.f29082c - i2);
            this.f29082c -= i2 - i;
            this.modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // com.google.android.gms.internal.measurement.ez, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        long longValue = ((Long) obj).longValue();
        c();
        d(i);
        long[] jArr = this.f29081b;
        long j = jArr[i];
        jArr[i] = longValue;
        return Long.valueOf(j);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f29082c;
    }
}
