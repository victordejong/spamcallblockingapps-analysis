package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzele.class */
public final class zzele extends zzejl<Integer> implements zzelh, zzena, RandomAccess {
    private static final zzele zzirc;
    private int size;
    private int[] zzird;

    static {
        zzele zzeleVar = new zzele(new int[0], 0);
        zzirc = zzeleVar;
        zzeleVar.zzbgf();
    }

    zzele() {
        this(new int[10], 0);
    }

    private zzele(int[] iArr, int i) {
        this.zzird = iArr;
        this.size = i;
    }

    public static zzele zzbiz() {
        return zzirc;
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
        int intValue = ((Integer) obj).intValue();
        zzbgg();
        if (i < 0 || i > (i2 = this.size)) {
            throw new IndexOutOfBoundsException(zzfx(i));
        }
        int[] iArr = this.zzird;
        if (i2 < iArr.length) {
            System.arraycopy(iArr, i, iArr, i + 1, i2 - i);
        } else {
            int[] iArr2 = new int[((i2 * 3) / 2) + 1];
            System.arraycopy(iArr, 0, iArr2, 0, i);
            System.arraycopy(this.zzird, i, iArr2, i + 1, this.size - i);
            this.zzird = iArr2;
        }
        this.zzird[i] = intValue;
        this.size++;
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.ads.zzejl, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* synthetic */ boolean add(Object obj) {
        zzhh(((Integer) obj).intValue());
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzejl, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Integer> collection) {
        zzbgg();
        zzeld.checkNotNull(collection);
        if (!(collection instanceof zzele)) {
            return super.addAll(collection);
        }
        zzele zzeleVar = (zzele) collection;
        int i = zzeleVar.size;
        if (i == 0) {
            return false;
        }
        int i2 = this.size;
        if (Integer.MAX_VALUE - i2 < i) {
            throw new OutOfMemoryError();
        }
        int i3 = i2 + i;
        int[] iArr = this.zzird;
        if (i3 > iArr.length) {
            this.zzird = Arrays.copyOf(iArr, i3);
        }
        System.arraycopy(zzeleVar.zzird, 0, this.zzird, this.size, zzeleVar.size);
        this.size = i3;
        this.modCount++;
        return true;
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
        if (!(obj instanceof zzele)) {
            return super.equals(obj);
        }
        zzele zzeleVar = (zzele) obj;
        if (this.size != zzeleVar.size) {
            return false;
        }
        int[] iArr = zzeleVar.zzird;
        for (int i = 0; i < this.size; i++) {
            if (this.zzird[i] != iArr[i]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        return Integer.valueOf(getInt(i));
    }

    public final int getInt(int i) {
        zzfw(i);
        return this.zzird[i];
    }

    @Override // com.google.android.gms.internal.ads.zzejl, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.size; i2++) {
            i = (i * 31) + this.zzird[i2];
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
            if (this.zzird[i] == intValue) {
                return i;
            }
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.zzejl, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        zzbgg();
        zzfw(i);
        int[] iArr = this.zzird;
        int i2 = iArr[i];
        int i3 = this.size;
        if (i < i3 - 1) {
            System.arraycopy(iArr, i + 1, iArr, i, (i3 - i) - 1);
        }
        this.size--;
        this.modCount++;
        return Integer.valueOf(i2);
    }

    @Override // java.util.AbstractList
    protected final void removeRange(int i, int i2) {
        zzbgg();
        if (i2 >= i) {
            int[] iArr = this.zzird;
            System.arraycopy(iArr, i2, iArr, i, this.size - i2);
            this.size -= i2 - i;
            this.modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // com.google.android.gms.internal.ads.zzejl, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        int intValue = ((Integer) obj).intValue();
        zzbgg();
        zzfw(i);
        int[] iArr = this.zzird;
        int i2 = iArr[i];
        iArr[i] = intValue;
        return Integer.valueOf(i2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.size;
    }

    @Override // com.google.android.gms.internal.ads.zzelh
    /* renamed from: zzhg */
    public final zzelh zzfy(int i) {
        if (i >= this.size) {
            return new zzele(Arrays.copyOf(this.zzird, i), this.size);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.android.gms.internal.ads.zzelh
    public final void zzhh(int i) {
        zzbgg();
        int i2 = this.size;
        int[] iArr = this.zzird;
        if (i2 == iArr.length) {
            int[] iArr2 = new int[((i2 * 3) / 2) + 1];
            System.arraycopy(iArr, 0, iArr2, 0, i2);
            this.zzird = iArr2;
        }
        int[] iArr3 = this.zzird;
        int i3 = this.size;
        this.size = i3 + 1;
        iArr3[i3] = i;
    }
}
