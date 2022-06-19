package com.google.android.gms.internal.measurement;

import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* renamed from: com.google.android.gms.internal.measurement.fc */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/fc.class */
final class C13490fc extends AbstractC13486ez<Boolean> implements AbstractC13533gs, AbstractC13564hw, RandomAccess {

    /* renamed from: a */
    private static final C13490fc f50708a;

    /* renamed from: b */
    private boolean[] f50709b;

    /* renamed from: c */
    private int f50710c;

    static {
        C13490fc c13490fc = new C13490fc(new boolean[0], 0);
        f50708a = c13490fc;
        c13490fc.mo12749b();
    }

    C13490fc() {
        this(new boolean[10], 0);
    }

    private C13490fc(boolean[] zArr, int i) {
        this.f50709b = zArr;
        this.f50710c = i;
    }

    /* renamed from: b */
    private final void m12869b(int i) {
        if (i < 0 || i >= this.f50710c) {
            throw new IndexOutOfBoundsException(m12868c(i));
        }
    }

    /* renamed from: c */
    private final String m12868c(int i) {
        int i2 = this.f50710c;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i);
        sb.append(", Size:");
        sb.append(i2);
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13533gs
    /* renamed from: a */
    public final /* synthetic */ AbstractC13533gs mo12663a(int i) {
        if (i >= this.f50710c) {
            return new C13490fc(Arrays.copyOf(this.f50709b, i), this.f50710c);
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: a */
    public final void m12870a(boolean z) {
        m12885c();
        int i = this.f50710c;
        boolean[] zArr = this.f50709b;
        if (i == zArr.length) {
            boolean[] zArr2 = new boolean[((i * 3) / 2) + 1];
            System.arraycopy(zArr, 0, zArr2, 0, i);
            this.f50709b = zArr2;
        }
        boolean[] zArr3 = this.f50709b;
        int i2 = this.f50710c;
        this.f50710c = i2 + 1;
        zArr3[i2] = z;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13486ez, java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        int i2;
        boolean booleanValue = ((Boolean) obj).booleanValue();
        m12885c();
        if (i < 0 || i > (i2 = this.f50710c)) {
            throw new IndexOutOfBoundsException(m12868c(i));
        }
        boolean[] zArr = this.f50709b;
        if (i2 < zArr.length) {
            System.arraycopy(zArr, i, zArr, i + 1, i2 - i);
        } else {
            boolean[] zArr2 = new boolean[((i2 * 3) / 2) + 1];
            System.arraycopy(zArr, 0, zArr2, 0, i);
            System.arraycopy(this.f50709b, i, zArr2, i + 1, this.f50710c - i);
            this.f50709b = zArr2;
        }
        this.f50709b[i] = booleanValue;
        this.f50710c++;
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13486ez, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* synthetic */ boolean add(Object obj) {
        m12870a(((Boolean) obj).booleanValue());
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13486ez, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Boolean> collection) {
        m12885c();
        C13534gt.m12746a(collection);
        if (!(collection instanceof C13490fc)) {
            return super.addAll(collection);
        }
        C13490fc c13490fc = (C13490fc) collection;
        int i = c13490fc.f50710c;
        if (i == 0) {
            return false;
        }
        int i2 = this.f50710c;
        if (Integer.MAX_VALUE - i2 < i) {
            throw new OutOfMemoryError();
        }
        int i3 = i2 + i;
        boolean[] zArr = this.f50709b;
        if (i3 > zArr.length) {
            this.f50709b = Arrays.copyOf(zArr, i3);
        }
        System.arraycopy(c13490fc.f50709b, 0, this.f50709b, this.f50710c, c13490fc.f50710c);
        this.f50710c = i3;
        this.modCount++;
        return true;
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
        if (!(obj instanceof C13490fc)) {
            return super.equals(obj);
        }
        C13490fc c13490fc = (C13490fc) obj;
        if (this.f50710c != c13490fc.f50710c) {
            return false;
        }
        boolean[] zArr = c13490fc.f50709b;
        for (int i = 0; i < this.f50710c; i++) {
            if (this.f50709b[i] != zArr[i]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        m12869b(i);
        return Boolean.valueOf(this.f50709b[i]);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13486ez, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f50710c; i2++) {
            i = (i * 31) + C13534gt.m12743a(this.f50709b[i2]);
        }
        return i;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Boolean)) {
            return -1;
        }
        boolean booleanValue = ((Boolean) obj).booleanValue();
        int i = this.f50710c;
        for (int i2 = 0; i2 < i; i2++) {
            if (this.f50709b[i2] == booleanValue) {
                return i2;
            }
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13486ez, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        m12885c();
        m12869b(i);
        boolean[] zArr = this.f50709b;
        boolean z = zArr[i];
        int i2 = this.f50710c;
        if (i < i2 - 1) {
            System.arraycopy(zArr, i + 1, zArr, i, (i2 - i) - 1);
        }
        this.f50710c--;
        this.modCount++;
        return Boolean.valueOf(z);
    }

    @Override // java.util.AbstractList
    protected final void removeRange(int i, int i2) {
        m12885c();
        if (i2 >= i) {
            boolean[] zArr = this.f50709b;
            System.arraycopy(zArr, i2, zArr, i, this.f50710c - i2);
            this.f50710c -= i2 - i;
            this.modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13486ez, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        boolean booleanValue = ((Boolean) obj).booleanValue();
        m12885c();
        m12869b(i);
        boolean[] zArr = this.f50709b;
        boolean z = zArr[i];
        zArr[i] = booleanValue;
        return Boolean.valueOf(z);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f50710c;
    }
}
