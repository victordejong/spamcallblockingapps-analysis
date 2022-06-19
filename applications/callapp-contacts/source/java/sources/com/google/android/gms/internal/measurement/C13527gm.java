package com.google.android.gms.internal.measurement;

import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* renamed from: com.google.android.gms.internal.measurement.gm */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/gm.class */
final class C13527gm extends AbstractC13486ez<Integer> implements AbstractC13531gq, AbstractC13564hw, RandomAccess {

    /* renamed from: a */
    private static final C13527gm f50762a;

    /* renamed from: b */
    private int[] f50763b;

    /* renamed from: c */
    private int f50764c;

    static {
        C13527gm c13527gm = new C13527gm(new int[0], 0);
        f50762a = c13527gm;
        c13527gm.mo12749b();
    }

    C13527gm() {
        this(new int[10], 0);
    }

    private C13527gm(int[] iArr, int i) {
        this.f50763b = iArr;
        this.f50764c = i;
    }

    /* renamed from: d */
    public static C13527gm m12756d() {
        return f50762a;
    }

    /* renamed from: e */
    private final void m12754e(int i) {
        if (i < 0 || i >= this.f50764c) {
            throw new IndexOutOfBoundsException(m12753f(i));
        }
    }

    /* renamed from: f */
    private final String m12753f(int i) {
        int i2 = this.f50764c;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i);
        sb.append(", Size:");
        sb.append(i2);
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13486ez, java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        int i2;
        int intValue = ((Integer) obj).intValue();
        m12885c();
        if (i < 0 || i > (i2 = this.f50764c)) {
            throw new IndexOutOfBoundsException(m12753f(i));
        }
        int[] iArr = this.f50763b;
        if (i2 < iArr.length) {
            System.arraycopy(iArr, i, iArr, i + 1, i2 - i);
        } else {
            int[] iArr2 = new int[((i2 * 3) / 2) + 1];
            System.arraycopy(iArr, 0, iArr2, 0, i);
            System.arraycopy(this.f50763b, i, iArr2, i + 1, this.f50764c - i);
            this.f50763b = iArr2;
        }
        this.f50763b[i] = intValue;
        this.f50764c++;
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13486ez, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* synthetic */ boolean add(Object obj) {
        m12755d(((Integer) obj).intValue());
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13486ez, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Integer> collection) {
        m12885c();
        C13534gt.m12746a(collection);
        if (!(collection instanceof C13527gm)) {
            return super.addAll(collection);
        }
        C13527gm c13527gm = (C13527gm) collection;
        int i = c13527gm.f50764c;
        if (i == 0) {
            return false;
        }
        int i2 = this.f50764c;
        if (Integer.MAX_VALUE - i2 < i) {
            throw new OutOfMemoryError();
        }
        int i3 = i2 + i;
        int[] iArr = this.f50763b;
        if (i3 > iArr.length) {
            this.f50763b = Arrays.copyOf(iArr, i3);
        }
        System.arraycopy(c13527gm.f50763b, 0, this.f50763b, this.f50764c, c13527gm.f50764c);
        this.f50764c = i3;
        this.modCount++;
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13531gq
    /* renamed from: b */
    public final AbstractC13531gq mo12663a(int i) {
        if (i >= this.f50764c) {
            return new C13527gm(Arrays.copyOf(this.f50763b, i), this.f50764c);
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: c */
    public final int m12757c(int i) {
        m12754e(i);
        return this.f50763b[i];
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    /* renamed from: d */
    public final void m12755d(int i) {
        m12885c();
        int i2 = this.f50764c;
        int[] iArr = this.f50763b;
        if (i2 == iArr.length) {
            int[] iArr2 = new int[((i2 * 3) / 2) + 1];
            System.arraycopy(iArr, 0, iArr2, 0, i2);
            this.f50763b = iArr2;
        }
        int[] iArr3 = this.f50763b;
        int i3 = this.f50764c;
        this.f50764c = i3 + 1;
        iArr3[i3] = i;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13486ez, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C13527gm)) {
            return super.equals(obj);
        }
        C13527gm c13527gm = (C13527gm) obj;
        if (this.f50764c != c13527gm.f50764c) {
            return false;
        }
        int[] iArr = c13527gm.f50763b;
        for (int i = 0; i < this.f50764c; i++) {
            if (this.f50763b[i] != iArr[i]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        m12754e(i);
        return Integer.valueOf(this.f50763b[i]);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13486ez, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f50764c; i2++) {
            i = (i * 31) + this.f50763b[i2];
        }
        return i;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Integer)) {
            return -1;
        }
        int intValue = ((Integer) obj).intValue();
        int i = this.f50764c;
        for (int i2 = 0; i2 < i; i2++) {
            if (this.f50763b[i2] == intValue) {
                return i2;
            }
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13486ez, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        m12885c();
        m12754e(i);
        int[] iArr = this.f50763b;
        int i2 = iArr[i];
        int i3 = this.f50764c;
        if (i < i3 - 1) {
            System.arraycopy(iArr, i + 1, iArr, i, (i3 - i) - 1);
        }
        this.f50764c--;
        this.modCount++;
        return Integer.valueOf(i2);
    }

    @Override // java.util.AbstractList
    protected final void removeRange(int i, int i2) {
        m12885c();
        if (i2 >= i) {
            int[] iArr = this.f50763b;
            System.arraycopy(iArr, i2, iArr, i, this.f50764c - i2);
            this.f50764c -= i2 - i;
            this.modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13486ez, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        int intValue = ((Integer) obj).intValue();
        m12885c();
        m12754e(i);
        int[] iArr = this.f50763b;
        int i2 = iArr[i];
        iArr[i] = intValue;
        return Integer.valueOf(i2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f50764c;
    }
}
