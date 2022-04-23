package com.google.android.gms.internal.measurement;

import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/gm.class */
final class gm extends ez<Integer> implements gq, hw, RandomAccess {

    /* renamed from: a  reason: collision with root package name */
    private static final gm f29062a;

    /* renamed from: b  reason: collision with root package name */
    private int[] f29063b;

    /* renamed from: c  reason: collision with root package name */
    private int f29064c;

    static {
        gm gmVar = new gm(new int[0], 0);
        f29062a = gmVar;
        gmVar.b();
    }

    gm() {
        this(new int[10], 0);
    }

    private gm(int[] iArr, int i) {
        this.f29063b = iArr;
        this.f29064c = i;
    }

    public static gm d() {
        return f29062a;
    }

    private final void e(int i) {
        if (i < 0 || i >= this.f29064c) {
            throw new IndexOutOfBoundsException(f(i));
        }
    }

    private final String f(int i) {
        int i2 = this.f29064c;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i);
        sb.append(", Size:");
        sb.append(i2);
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.measurement.ez, java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        int i2;
        int intValue = ((Integer) obj).intValue();
        c();
        if (i < 0 || i > (i2 = this.f29064c)) {
            throw new IndexOutOfBoundsException(f(i));
        }
        int[] iArr = this.f29063b;
        if (i2 < iArr.length) {
            System.arraycopy(iArr, i, iArr, i + 1, i2 - i);
        } else {
            int[] iArr2 = new int[((i2 * 3) / 2) + 1];
            System.arraycopy(iArr, 0, iArr2, 0, i);
            System.arraycopy(this.f29063b, i, iArr2, i + 1, this.f29064c - i);
            this.f29063b = iArr2;
        }
        this.f29063b[i] = intValue;
        this.f29064c++;
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.measurement.ez, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* synthetic */ boolean add(Object obj) {
        d(((Integer) obj).intValue());
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.ez, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Integer> collection) {
        c();
        gt.a(collection);
        if (!(collection instanceof gm)) {
            return super.addAll(collection);
        }
        gm gmVar = (gm) collection;
        int i = gmVar.f29064c;
        if (i == 0) {
            return false;
        }
        int i2 = this.f29064c;
        if (Integer.MAX_VALUE - i2 >= i) {
            int i3 = i2 + i;
            int[] iArr = this.f29063b;
            if (i3 > iArr.length) {
                this.f29063b = Arrays.copyOf(iArr, i3);
            }
            System.arraycopy(gmVar.f29063b, 0, this.f29063b, this.f29064c, gmVar.f29064c);
            this.f29064c = i3;
            this.modCount++;
            return true;
        }
        throw new OutOfMemoryError();
    }

    @Override // com.google.android.gms.internal.measurement.gq
    /* renamed from: b */
    public final gq a(int i) {
        if (i >= this.f29064c) {
            return new gm(Arrays.copyOf(this.f29063b, i), this.f29064c);
        }
        throw new IllegalArgumentException();
    }

    public final int c(int i) {
        e(i);
        return this.f29063b[i];
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    public final void d(int i) {
        c();
        int i2 = this.f29064c;
        int[] iArr = this.f29063b;
        if (i2 == iArr.length) {
            int[] iArr2 = new int[((i2 * 3) / 2) + 1];
            System.arraycopy(iArr, 0, iArr2, 0, i2);
            this.f29063b = iArr2;
        }
        int[] iArr3 = this.f29063b;
        int i3 = this.f29064c;
        this.f29064c = i3 + 1;
        iArr3[i3] = i;
    }

    @Override // com.google.android.gms.internal.measurement.ez, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof gm)) {
            return super.equals(obj);
        }
        gm gmVar = (gm) obj;
        if (this.f29064c != gmVar.f29064c) {
            return false;
        }
        int[] iArr = gmVar.f29063b;
        for (int i = 0; i < this.f29064c; i++) {
            if (this.f29063b[i] != iArr[i]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        e(i);
        return Integer.valueOf(this.f29063b[i]);
    }

    @Override // com.google.android.gms.internal.measurement.ez, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f29064c; i2++) {
            i = (i * 31) + this.f29063b[i2];
        }
        return i;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Integer)) {
            return -1;
        }
        int intValue = ((Integer) obj).intValue();
        int i = this.f29064c;
        for (int i2 = 0; i2 < i; i2++) {
            if (this.f29063b[i2] == intValue) {
                return i2;
            }
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.measurement.ez, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        c();
        e(i);
        int[] iArr = this.f29063b;
        int i2 = iArr[i];
        int i3 = this.f29064c;
        if (i < i3 - 1) {
            System.arraycopy(iArr, i + 1, iArr, i, (i3 - i) - 1);
        }
        this.f29064c--;
        this.modCount++;
        return Integer.valueOf(i2);
    }

    @Override // java.util.AbstractList
    protected final void removeRange(int i, int i2) {
        c();
        if (i2 >= i) {
            int[] iArr = this.f29063b;
            System.arraycopy(iArr, i2, iArr, i, this.f29064c - i2);
            this.f29064c -= i2 - i;
            this.modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // com.google.android.gms.internal.measurement.ez, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        int intValue = ((Integer) obj).intValue();
        c();
        e(i);
        int[] iArr = this.f29063b;
        int i2 = iArr[i];
        iArr[i] = intValue;
        return Integer.valueOf(i2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f29064c;
    }
}
