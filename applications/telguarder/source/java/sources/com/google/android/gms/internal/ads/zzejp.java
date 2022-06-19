package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzejp.class */
final class zzejp extends zzejl<Boolean> implements zzell<Boolean>, zzena, RandomAccess {
    private static final zzejp zzilw;
    private int size;
    private boolean[] zzilx;

    static {
        zzejp zzejpVar = new zzejp(new boolean[0], 0);
        zzilw = zzejpVar;
        zzejpVar.zzbgf();
    }

    zzejp() {
        this(new boolean[10], 0);
    }

    private zzejp(boolean[] zArr, int i) {
        this.zzilx = zArr;
        this.size = i;
    }

    private final void zzfw(int i) {
        if (i < 0 || i >= this.size) {
            throw new IndexOutOfBoundsException(zzfx(i));
        }
    }

    private final String zzfx(int i) {
        int i2 = this.size;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i);
        sb.append(", Size:");
        sb.append(i2);
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.ads.zzejl, java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        int i2;
        boolean booleanValue = ((Boolean) obj).booleanValue();
        zzbgg();
        if (i < 0 || i > (i2 = this.size)) {
            throw new IndexOutOfBoundsException(zzfx(i));
        }
        boolean[] zArr = this.zzilx;
        if (i2 < zArr.length) {
            System.arraycopy(zArr, i, zArr, i + 1, i2 - i);
        } else {
            boolean[] zArr2 = new boolean[((i2 * 3) / 2) + 1];
            System.arraycopy(zArr, 0, zArr2, 0, i);
            System.arraycopy(this.zzilx, i, zArr2, i + 1, this.size - i);
            this.zzilx = zArr2;
        }
        this.zzilx[i] = booleanValue;
        this.size++;
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.ads.zzejl, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* synthetic */ boolean add(Object obj) {
        addBoolean(((Boolean) obj).booleanValue());
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzejl, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Boolean> collection) {
        zzbgg();
        zzeld.checkNotNull(collection);
        if (!(collection instanceof zzejp)) {
            return super.addAll(collection);
        }
        zzejp zzejpVar = (zzejp) collection;
        int i = zzejpVar.size;
        if (i == 0) {
            return false;
        }
        int i2 = this.size;
        if (Integer.MAX_VALUE - i2 < i) {
            throw new OutOfMemoryError();
        }
        int i3 = i2 + i;
        boolean[] zArr = this.zzilx;
        if (i3 > zArr.length) {
            this.zzilx = Arrays.copyOf(zArr, i3);
        }
        System.arraycopy(zzejpVar.zzilx, 0, this.zzilx, this.size, zzejpVar.size);
        this.size = i3;
        this.modCount++;
        return true;
    }

    public final void addBoolean(boolean z) {
        zzbgg();
        int i = this.size;
        boolean[] zArr = this.zzilx;
        if (i == zArr.length) {
            boolean[] zArr2 = new boolean[((i * 3) / 2) + 1];
            System.arraycopy(zArr, 0, zArr2, 0, i);
            this.zzilx = zArr2;
        }
        boolean[] zArr3 = this.zzilx;
        int i2 = this.size;
        this.size = i2 + 1;
        zArr3[i2] = z;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    @Override // com.google.android.gms.internal.ads.zzejl, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzejp)) {
            return super.equals(obj);
        }
        zzejp zzejpVar = (zzejp) obj;
        if (this.size != zzejpVar.size) {
            return false;
        }
        boolean[] zArr = zzejpVar.zzilx;
        for (int i = 0; i < this.size; i++) {
            if (this.zzilx[i] != zArr[i]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        zzfw(i);
        return Boolean.valueOf(this.zzilx[i]);
    }

    @Override // com.google.android.gms.internal.ads.zzejl, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.size; i2++) {
            i = (i * 31) + zzeld.zzbt(this.zzilx[i2]);
        }
        return i;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Boolean)) {
            return -1;
        }
        boolean booleanValue = ((Boolean) obj).booleanValue();
        int size = size();
        for (int i = 0; i < size; i++) {
            if (this.zzilx[i] == booleanValue) {
                return i;
            }
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.zzejl, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        zzbgg();
        zzfw(i);
        boolean[] zArr = this.zzilx;
        boolean z = zArr[i];
        int i2 = this.size;
        if (i < i2 - 1) {
            System.arraycopy(zArr, i + 1, zArr, i, (i2 - i) - 1);
        }
        this.size--;
        this.modCount++;
        return Boolean.valueOf(z);
    }

    @Override // java.util.AbstractList
    protected final void removeRange(int i, int i2) {
        zzbgg();
        if (i2 >= i) {
            boolean[] zArr = this.zzilx;
            System.arraycopy(zArr, i2, zArr, i, this.size - i2);
            this.size -= i2 - i;
            this.modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // com.google.android.gms.internal.ads.zzejl, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        boolean booleanValue = ((Boolean) obj).booleanValue();
        zzbgg();
        zzfw(i);
        boolean[] zArr = this.zzilx;
        boolean z = zArr[i];
        zArr[i] = booleanValue;
        return Boolean.valueOf(z);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.size;
    }

    @Override // com.google.android.gms.internal.ads.zzell
    public final /* synthetic */ zzell<Boolean> zzfy(int i) {
        if (i >= this.size) {
            return new zzejp(Arrays.copyOf(this.zzilx, i), this.size);
        }
        throw new IllegalArgumentException();
    }
}
