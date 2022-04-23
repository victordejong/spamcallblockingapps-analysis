package com.google.android.gms.internal.measurement;

import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/fc.class */
final class fc extends ez<Boolean> implements gs, hw, RandomAccess {

    /* renamed from: a  reason: collision with root package name */
    private static final fc f29009a;

    /* renamed from: b  reason: collision with root package name */
    private boolean[] f29010b;

    /* renamed from: c  reason: collision with root package name */
    private int f29011c;

    static {
        fc fcVar = new fc(new boolean[0], 0);
        f29009a = fcVar;
        fcVar.b();
    }

    fc() {
        this(new boolean[10], 0);
    }

    private fc(boolean[] zArr, int i) {
        this.f29010b = zArr;
        this.f29011c = i;
    }

    private final void b(int i) {
        if (i < 0 || i >= this.f29011c) {
            throw new IndexOutOfBoundsException(c(i));
        }
    }

    private final String c(int i) {
        int i2 = this.f29011c;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i);
        sb.append(", Size:");
        sb.append(i2);
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.measurement.gs
    public final /* synthetic */ gs a(int i) {
        if (i >= this.f29011c) {
            return new fc(Arrays.copyOf(this.f29010b, i), this.f29011c);
        }
        throw new IllegalArgumentException();
    }

    public final void a(boolean z) {
        c();
        int i = this.f29011c;
        boolean[] zArr = this.f29010b;
        if (i == zArr.length) {
            boolean[] zArr2 = new boolean[((i * 3) / 2) + 1];
            System.arraycopy(zArr, 0, zArr2, 0, i);
            this.f29010b = zArr2;
        }
        boolean[] zArr3 = this.f29010b;
        int i2 = this.f29011c;
        this.f29011c = i2 + 1;
        zArr3[i2] = z;
    }

    @Override // com.google.android.gms.internal.measurement.ez, java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        int i2;
        boolean booleanValue = ((Boolean) obj).booleanValue();
        c();
        if (i < 0 || i > (i2 = this.f29011c)) {
            throw new IndexOutOfBoundsException(c(i));
        }
        boolean[] zArr = this.f29010b;
        if (i2 < zArr.length) {
            System.arraycopy(zArr, i, zArr, i + 1, i2 - i);
        } else {
            boolean[] zArr2 = new boolean[((i2 * 3) / 2) + 1];
            System.arraycopy(zArr, 0, zArr2, 0, i);
            System.arraycopy(this.f29010b, i, zArr2, i + 1, this.f29011c - i);
            this.f29010b = zArr2;
        }
        this.f29010b[i] = booleanValue;
        this.f29011c++;
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.measurement.ez, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* synthetic */ boolean add(Object obj) {
        a(((Boolean) obj).booleanValue());
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.ez, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Boolean> collection) {
        c();
        gt.a(collection);
        if (!(collection instanceof fc)) {
            return super.addAll(collection);
        }
        fc fcVar = (fc) collection;
        int i = fcVar.f29011c;
        if (i == 0) {
            return false;
        }
        int i2 = this.f29011c;
        if (Integer.MAX_VALUE - i2 >= i) {
            int i3 = i2 + i;
            boolean[] zArr = this.f29010b;
            if (i3 > zArr.length) {
                this.f29010b = Arrays.copyOf(zArr, i3);
            }
            System.arraycopy(fcVar.f29010b, 0, this.f29010b, this.f29011c, fcVar.f29011c);
            this.f29011c = i3;
            this.modCount++;
            return true;
        }
        throw new OutOfMemoryError();
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
        if (!(obj instanceof fc)) {
            return super.equals(obj);
        }
        fc fcVar = (fc) obj;
        if (this.f29011c != fcVar.f29011c) {
            return false;
        }
        boolean[] zArr = fcVar.f29010b;
        for (int i = 0; i < this.f29011c; i++) {
            if (this.f29010b[i] != zArr[i]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        b(i);
        return Boolean.valueOf(this.f29010b[i]);
    }

    @Override // com.google.android.gms.internal.measurement.ez, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f29011c; i2++) {
            i = (i * 31) + gt.a(this.f29010b[i2]);
        }
        return i;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Boolean)) {
            return -1;
        }
        boolean booleanValue = ((Boolean) obj).booleanValue();
        int i = this.f29011c;
        for (int i2 = 0; i2 < i; i2++) {
            if (this.f29010b[i2] == booleanValue) {
                return i2;
            }
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.measurement.ez, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        c();
        b(i);
        boolean[] zArr = this.f29010b;
        boolean z = zArr[i];
        int i2 = this.f29011c;
        if (i < i2 - 1) {
            System.arraycopy(zArr, i + 1, zArr, i, (i2 - i) - 1);
        }
        this.f29011c--;
        this.modCount++;
        return Boolean.valueOf(z);
    }

    @Override // java.util.AbstractList
    protected final void removeRange(int i, int i2) {
        c();
        if (i2 >= i) {
            boolean[] zArr = this.f29010b;
            System.arraycopy(zArr, i2, zArr, i, this.f29011c - i2);
            this.f29011c -= i2 - i;
            this.modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // com.google.android.gms.internal.measurement.ez, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        boolean booleanValue = ((Boolean) obj).booleanValue();
        c();
        b(i);
        boolean[] zArr = this.f29010b;
        boolean z = zArr[i];
        zArr[i] = booleanValue;
        return Boolean.valueOf(z);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f29011c;
    }
}
