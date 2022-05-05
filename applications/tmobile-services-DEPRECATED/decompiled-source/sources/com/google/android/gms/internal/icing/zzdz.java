package com.google.android.gms.internal.icing;

import com.google.android.gms.common.api.Api;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzdz.class */
final class zzdz extends zzcp<Integer> implements zzee<Integer>, zzfq, RandomAccess {

    /* renamed from: g */
    private int[] f8011g;

    /* renamed from: h */
    private int f8012h;

    static {
        new zzdz(new int[0], 0).mo13794q();
    }

    zzdz() {
        this(new int[10], 0);
    }

    private zzdz(int[] iArr, int i) {
        this.f8011g = iArr;
        this.f8012h = i;
    }

    /* renamed from: e */
    private final void m13808e(int i) {
        if (i < 0 || i >= this.f8012h) {
            throw new IndexOutOfBoundsException(m13807f(i));
        }
    }

    /* renamed from: f */
    private final String m13807f(int i) {
        int i2 = this.f8012h;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i);
        sb.append(", Size:");
        sb.append(i2);
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.icing.zzcp, java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        int i2;
        int intValue = ((Integer) obj).intValue();
        m13986c();
        if (i < 0 || i > (i2 = this.f8012h)) {
            throw new IndexOutOfBoundsException(m13807f(i));
        }
        int[] iArr = this.f8011g;
        if (i2 < iArr.length) {
            System.arraycopy(iArr, i, iArr, i + 1, i2 - i);
        } else {
            int[] iArr2 = new int[((i2 * 3) / 2) + 1];
            System.arraycopy(iArr, 0, iArr2, 0, i);
            System.arraycopy(this.f8011g, i, iArr2, i + 1, this.f8012h - i);
            this.f8011g = iArr2;
        }
        this.f8011g[i] = intValue;
        this.f8012h++;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.icing.zzcp, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* synthetic */ boolean add(Object obj) {
        int intValue = ((Integer) obj).intValue();
        m13986c();
        int i = this.f8012h;
        int[] iArr = this.f8011g;
        if (i == iArr.length) {
            int[] iArr2 = new int[((i * 3) / 2) + 1];
            System.arraycopy(iArr, 0, iArr2, 0, i);
            this.f8011g = iArr2;
        }
        int[] iArr3 = this.f8011g;
        int i2 = this.f8012h;
        this.f8012h = i2 + 1;
        iArr3[i2] = intValue;
        return true;
    }

    @Override // com.google.android.gms.internal.icing.zzcp, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Integer> collection) {
        m13986c();
        zzeb.m13806a(collection);
        if (!(collection instanceof zzdz)) {
            return super.addAll(collection);
        }
        zzdz zzdzVar = (zzdz) collection;
        int i = zzdzVar.f8012h;
        if (i == 0) {
            return false;
        }
        int i2 = this.f8012h;
        if (Api.BaseClientBuilder.API_PRIORITY_OTHER - i2 >= i) {
            int i3 = i2 + i;
            int[] iArr = this.f8011g;
            if (i3 > iArr.length) {
                this.f8011g = Arrays.copyOf(iArr, i3);
            }
            System.arraycopy(zzdzVar.f8011g, 0, this.f8011g, this.f8012h, zzdzVar.f8012h);
            this.f8012h = i3;
            ((AbstractList) this).modCount++;
            return true;
        }
        throw new OutOfMemoryError();
    }

    @Override // com.google.android.gms.internal.icing.zzee
    /* renamed from: b0 */
    public final /* synthetic */ zzee<Integer> mo13713b0(int i) {
        if (i >= this.f8012h) {
            return new zzdz(Arrays.copyOf(this.f8011g, i), this.f8012h);
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: d */
    public final int m13809d(int i) {
        m13808e(i);
        return this.f8011g[i];
    }

    @Override // com.google.android.gms.internal.icing.zzcp, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzdz)) {
            return super.equals(obj);
        }
        zzdz zzdzVar = (zzdz) obj;
        if (this.f8012h != zzdzVar.f8012h) {
            return false;
        }
        int[] iArr = zzdzVar.f8011g;
        for (int i = 0; i < this.f8012h; i++) {
            if (this.f8011g[i] != iArr[i]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        return Integer.valueOf(m13809d(i));
    }

    @Override // com.google.android.gms.internal.icing.zzcp, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f8012h; i2++) {
            i = (i * 31) + this.f8011g[i2];
        }
        return i;
    }

    @Override // com.google.android.gms.internal.icing.zzcp, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        m13986c();
        m13808e(i);
        int[] iArr = this.f8011g;
        int i2 = iArr[i];
        int i3 = this.f8012h;
        if (i < i3 - 1) {
            System.arraycopy(iArr, i + 1, iArr, i, (i3 - i) - 1);
        }
        this.f8012h--;
        ((AbstractList) this).modCount++;
        return Integer.valueOf(i2);
    }

    @Override // com.google.android.gms.internal.icing.zzcp, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        m13986c();
        for (int i = 0; i < this.f8012h; i++) {
            if (obj.equals(Integer.valueOf(this.f8011g[i]))) {
                int[] iArr = this.f8011g;
                System.arraycopy(iArr, i + 1, iArr, i, (this.f8012h - i) - 1);
                this.f8012h--;
                ((AbstractList) this).modCount++;
                return true;
            }
        }
        return false;
    }

    @Override // java.util.AbstractList
    protected final void removeRange(int i, int i2) {
        m13986c();
        if (i2 >= i) {
            int[] iArr = this.f8011g;
            System.arraycopy(iArr, i2, iArr, i, this.f8012h - i2);
            this.f8012h -= i2 - i;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // com.google.android.gms.internal.icing.zzcp, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        int intValue = ((Integer) obj).intValue();
        m13986c();
        m13808e(i);
        int[] iArr = this.f8011g;
        int i2 = iArr[i];
        iArr[i] = intValue;
        return Integer.valueOf(i2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f8012h;
    }
}
