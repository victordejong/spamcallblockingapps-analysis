package com.google.android.gms.internal.measurement;

import com.google.android.gms.common.api.Api;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzia.class */
public final class zzia extends zzgl<Integer> implements zzig, zzjt, RandomAccess {

    /* renamed from: i */
    private static final zzia f8530i;

    /* renamed from: g */
    private int[] f8531g;

    /* renamed from: h */
    private int f8532h;

    static {
        zzia zziaVar = new zzia(new int[0], 0);
        f8530i = zziaVar;
        zziaVar.zzb();
    }

    zzia() {
        this(new int[10], 0);
    }

    private zzia(int[] iArr, int i) {
        this.f8531g = iArr;
        this.f8532h = i;
    }

    /* renamed from: e */
    public static zzia m12401e() {
        return f8530i;
    }

    /* renamed from: g */
    private final void m12399g(int i) {
        if (i < 0 || i >= this.f8532h) {
            throw new IndexOutOfBoundsException(m12398h(i));
        }
    }

    /* renamed from: h */
    private final String m12398h(int i) {
        int i2 = this.f8532h;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i);
        sb.append(", Size:");
        sb.append(i2);
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.measurement.zzgl, java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        int i2;
        int intValue = ((Integer) obj).intValue();
        m12656c();
        if (i < 0 || i > (i2 = this.f8532h)) {
            throw new IndexOutOfBoundsException(m12398h(i));
        }
        int[] iArr = this.f8531g;
        if (i2 < iArr.length) {
            System.arraycopy(iArr, i, iArr, i + 1, i2 - i);
        } else {
            int[] iArr2 = new int[((i2 * 3) / 2) + 1];
            System.arraycopy(iArr, 0, iArr2, 0, i);
            System.arraycopy(this.f8531g, i, iArr2, i + 1, this.f8532h - i);
            this.f8531g = iArr2;
        }
        this.f8531g[i] = intValue;
        this.f8532h++;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.measurement.zzgl, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* synthetic */ boolean add(Object obj) {
        m12400f(((Integer) obj).intValue());
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzgl, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Integer> collection) {
        m12656c();
        zzic.m12394d(collection);
        if (!(collection instanceof zzia)) {
            return super.addAll(collection);
        }
        zzia zziaVar = (zzia) collection;
        int i = zziaVar.f8532h;
        if (i == 0) {
            return false;
        }
        int i2 = this.f8532h;
        if (Api.BaseClientBuilder.API_PRIORITY_OTHER - i2 >= i) {
            int i3 = i2 + i;
            int[] iArr = this.f8531g;
            if (i3 > iArr.length) {
                this.f8531g = Arrays.copyOf(iArr, i3);
            }
            System.arraycopy(zziaVar.f8531g, 0, this.f8531g, this.f8532h, zziaVar.f8532h);
            this.f8532h = i3;
            ((AbstractList) this).modCount++;
            return true;
        }
        throw new OutOfMemoryError();
    }

    @Override // com.google.android.gms.internal.measurement.zzig
    /* renamed from: b */
    public final zzig mo12266a(int i) {
        if (i >= this.f8532h) {
            return new zzia(Arrays.copyOf(this.f8531g, i), this.f8532h);
        }
        throw new IllegalArgumentException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    /* renamed from: d */
    public final int m12402d(int i) {
        m12399g(i);
        return this.f8531g[i];
    }

    @Override // com.google.android.gms.internal.measurement.zzgl, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzia)) {
            return super.equals(obj);
        }
        zzia zziaVar = (zzia) obj;
        if (this.f8532h != zziaVar.f8532h) {
            return false;
        }
        int[] iArr = zziaVar.f8531g;
        for (int i = 0; i < this.f8532h; i++) {
            if (this.f8531g[i] != iArr[i]) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: f */
    public final void m12400f(int i) {
        m12656c();
        int i2 = this.f8532h;
        int[] iArr = this.f8531g;
        if (i2 == iArr.length) {
            int[] iArr2 = new int[((i2 * 3) / 2) + 1];
            System.arraycopy(iArr, 0, iArr2, 0, i2);
            this.f8531g = iArr2;
        }
        int[] iArr3 = this.f8531g;
        int i3 = this.f8532h;
        this.f8532h = i3 + 1;
        iArr3[i3] = i;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        return Integer.valueOf(m12402d(i));
    }

    @Override // com.google.android.gms.internal.measurement.zzgl, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f8532h; i2++) {
            i = (i * 31) + this.f8531g[i2];
        }
        return i;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Integer)) {
            return -1;
        }
        int intValue = ((Integer) obj).intValue();
        int size = size();
        for (int i = 0; i < size; i++) {
            if (this.f8531g[i] == intValue) {
                return i;
            }
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.measurement.zzgl, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        m12656c();
        m12399g(i);
        int[] iArr = this.f8531g;
        int i2 = iArr[i];
        int i3 = this.f8532h;
        if (i < i3 - 1) {
            System.arraycopy(iArr, i + 1, iArr, i, (i3 - i) - 1);
        }
        this.f8532h--;
        ((AbstractList) this).modCount++;
        return Integer.valueOf(i2);
    }

    @Override // java.util.AbstractList
    protected final void removeRange(int i, int i2) {
        m12656c();
        if (i2 >= i) {
            int[] iArr = this.f8531g;
            System.arraycopy(iArr, i2, iArr, i, this.f8532h - i2);
            this.f8532h -= i2 - i;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // com.google.android.gms.internal.measurement.zzgl, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        int intValue = ((Integer) obj).intValue();
        m12656c();
        m12399g(i);
        int[] iArr = this.f8531g;
        int i2 = iArr[i];
        iArr[i] = intValue;
        return Integer.valueOf(i2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f8532h;
    }
}
