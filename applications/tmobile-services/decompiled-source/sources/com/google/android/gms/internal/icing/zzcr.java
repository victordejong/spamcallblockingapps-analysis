package com.google.android.gms.internal.icing;

import com.google.android.gms.common.api.Api;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzcr.class */
final class zzcr extends zzcp<Boolean> implements zzee<Boolean>, zzfq, RandomAccess {

    /* renamed from: i */
    private static final zzcr f7951i;

    /* renamed from: g */
    private boolean[] f7952g;

    /* renamed from: h */
    private int f7953h;

    static {
        zzcr zzcrVar = new zzcr(new boolean[0], 0);
        f7951i = zzcrVar;
        zzcrVar.mo13794q();
    }

    zzcr() {
        this(new boolean[10], 0);
    }

    private zzcr(boolean[] zArr, int i) {
        this.f7952g = zArr;
        this.f7953h = i;
    }

    /* renamed from: d */
    public static zzcr m13985d() {
        return f7951i;
    }

    /* renamed from: e */
    private final void m13984e(int i) {
        if (i < 0 || i >= this.f7953h) {
            throw new IndexOutOfBoundsException(m13983f(i));
        }
    }

    /* renamed from: f */
    private final String m13983f(int i) {
        int i2 = this.f7953h;
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
        boolean booleanValue = ((Boolean) obj).booleanValue();
        m13986c();
        if (i < 0 || i > (i2 = this.f7953h)) {
            throw new IndexOutOfBoundsException(m13983f(i));
        }
        boolean[] zArr = this.f7952g;
        if (i2 < zArr.length) {
            System.arraycopy(zArr, i, zArr, i + 1, i2 - i);
        } else {
            boolean[] zArr2 = new boolean[((i2 * 3) / 2) + 1];
            System.arraycopy(zArr, 0, zArr2, 0, i);
            System.arraycopy(this.f7952g, i, zArr2, i + 1, this.f7953h - i);
            this.f7952g = zArr2;
        }
        this.f7952g[i] = booleanValue;
        this.f7953h++;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.icing.zzcp, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* synthetic */ boolean add(Object obj) {
        boolean booleanValue = ((Boolean) obj).booleanValue();
        m13986c();
        int i = this.f7953h;
        boolean[] zArr = this.f7952g;
        if (i == zArr.length) {
            boolean[] zArr2 = new boolean[((i * 3) / 2) + 1];
            System.arraycopy(zArr, 0, zArr2, 0, i);
            this.f7952g = zArr2;
        }
        boolean[] zArr3 = this.f7952g;
        int i2 = this.f7953h;
        this.f7953h = i2 + 1;
        zArr3[i2] = booleanValue;
        return true;
    }

    @Override // com.google.android.gms.internal.icing.zzcp, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Boolean> collection) {
        m13986c();
        zzeb.m13806a(collection);
        if (!(collection instanceof zzcr)) {
            return super.addAll(collection);
        }
        zzcr zzcrVar = (zzcr) collection;
        int i = zzcrVar.f7953h;
        if (i == 0) {
            return false;
        }
        int i2 = this.f7953h;
        if (Api.BaseClientBuilder.API_PRIORITY_OTHER - i2 >= i) {
            int i3 = i2 + i;
            boolean[] zArr = this.f7952g;
            if (i3 > zArr.length) {
                this.f7952g = Arrays.copyOf(zArr, i3);
            }
            System.arraycopy(zzcrVar.f7952g, 0, this.f7952g, this.f7953h, zzcrVar.f7953h);
            this.f7953h = i3;
            ((AbstractList) this).modCount++;
            return true;
        }
        throw new OutOfMemoryError();
    }

    @Override // com.google.android.gms.internal.icing.zzee
    /* renamed from: b0 */
    public final /* synthetic */ zzee<Boolean> mo13713b0(int i) {
        if (i >= this.f7953h) {
            return new zzcr(Arrays.copyOf(this.f7952g, i), this.f7953h);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.android.gms.internal.icing.zzcp, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzcr)) {
            return super.equals(obj);
        }
        zzcr zzcrVar = (zzcr) obj;
        if (this.f7953h != zzcrVar.f7953h) {
            return false;
        }
        boolean[] zArr = zzcrVar.f7952g;
        for (int i = 0; i < this.f7953h; i++) {
            if (this.f7952g[i] != zArr[i]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        m13984e(i);
        return Boolean.valueOf(this.f7952g[i]);
    }

    @Override // com.google.android.gms.internal.icing.zzcp, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f7953h; i2++) {
            i = (i * 31) + zzeb.m13798i(this.f7952g[i2]);
        }
        return i;
    }

    @Override // com.google.android.gms.internal.icing.zzcp, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        m13986c();
        m13984e(i);
        boolean[] zArr = this.f7952g;
        boolean z = zArr[i];
        int i2 = this.f7953h;
        if (i < i2 - 1) {
            System.arraycopy(zArr, i + 1, zArr, i, (i2 - i) - 1);
        }
        this.f7953h--;
        ((AbstractList) this).modCount++;
        return Boolean.valueOf(z);
    }

    @Override // com.google.android.gms.internal.icing.zzcp, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        m13986c();
        for (int i = 0; i < this.f7953h; i++) {
            if (obj.equals(Boolean.valueOf(this.f7952g[i]))) {
                boolean[] zArr = this.f7952g;
                System.arraycopy(zArr, i + 1, zArr, i, (this.f7953h - i) - 1);
                this.f7953h--;
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
            boolean[] zArr = this.f7952g;
            System.arraycopy(zArr, i2, zArr, i, this.f7953h - i2);
            this.f7953h -= i2 - i;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // com.google.android.gms.internal.icing.zzcp, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        boolean booleanValue = ((Boolean) obj).booleanValue();
        m13986c();
        m13984e(i);
        boolean[] zArr = this.f7952g;
        boolean z = zArr[i];
        zArr[i] = booleanValue;
        return Boolean.valueOf(z);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f7953h;
    }
}
