package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzekm.class */
final class zzekm extends zzejl<Double> implements zzell<Double>, zzena, RandomAccess {
    private static final zzekm zzine;
    private int size;
    private double[] zzinf;

    static {
        zzekm zzekmVar = new zzekm(new double[0], 0);
        zzine = zzekmVar;
        zzekmVar.zzbgf();
    }

    zzekm() {
        this(new double[10], 0);
    }

    private zzekm(double[] dArr, int i) {
        this.zzinf = dArr;
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
        double doubleValue = ((Double) obj).doubleValue();
        zzbgg();
        if (i < 0 || i > (i2 = this.size)) {
            throw new IndexOutOfBoundsException(zzfx(i));
        }
        double[] dArr = this.zzinf;
        if (i2 < dArr.length) {
            System.arraycopy(dArr, i, dArr, i + 1, i2 - i);
        } else {
            double[] dArr2 = new double[((i2 * 3) / 2) + 1];
            System.arraycopy(dArr, 0, dArr2, 0, i);
            System.arraycopy(this.zzinf, i, dArr2, i + 1, this.size - i);
            this.zzinf = dArr2;
        }
        this.zzinf[i] = doubleValue;
        this.size++;
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.ads.zzejl, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* synthetic */ boolean add(Object obj) {
        zze(((Double) obj).doubleValue());
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzejl, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Double> collection) {
        zzbgg();
        zzeld.checkNotNull(collection);
        if (!(collection instanceof zzekm)) {
            return super.addAll(collection);
        }
        zzekm zzekmVar = (zzekm) collection;
        int i = zzekmVar.size;
        if (i == 0) {
            return false;
        }
        int i2 = this.size;
        if (Integer.MAX_VALUE - i2 < i) {
            throw new OutOfMemoryError();
        }
        int i3 = i2 + i;
        double[] dArr = this.zzinf;
        if (i3 > dArr.length) {
            this.zzinf = Arrays.copyOf(dArr, i3);
        }
        System.arraycopy(zzekmVar.zzinf, 0, this.zzinf, this.size, zzekmVar.size);
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
        if (!(obj instanceof zzekm)) {
            return super.equals(obj);
        }
        zzekm zzekmVar = (zzekm) obj;
        if (this.size != zzekmVar.size) {
            return false;
        }
        double[] dArr = zzekmVar.zzinf;
        for (int i = 0; i < this.size; i++) {
            if (Double.doubleToLongBits(this.zzinf[i]) != Double.doubleToLongBits(dArr[i])) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        zzfw(i);
        return Double.valueOf(this.zzinf[i]);
    }

    @Override // com.google.android.gms.internal.ads.zzejl, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.size; i2++) {
            i = (i * 31) + zzeld.zzfq(Double.doubleToLongBits(this.zzinf[i2]));
        }
        return i;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Double)) {
            return -1;
        }
        double doubleValue = ((Double) obj).doubleValue();
        int size = size();
        for (int i = 0; i < size; i++) {
            if (this.zzinf[i] == doubleValue) {
                return i;
            }
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.zzejl, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        zzbgg();
        zzfw(i);
        double[] dArr = this.zzinf;
        double d = dArr[i];
        int i2 = this.size;
        if (i < i2 - 1) {
            System.arraycopy(dArr, i + 1, dArr, i, (i2 - i) - 1);
        }
        this.size--;
        this.modCount++;
        return Double.valueOf(d);
    }

    @Override // java.util.AbstractList
    protected final void removeRange(int i, int i2) {
        zzbgg();
        if (i2 >= i) {
            double[] dArr = this.zzinf;
            System.arraycopy(dArr, i2, dArr, i, this.size - i2);
            this.size -= i2 - i;
            this.modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // com.google.android.gms.internal.ads.zzejl, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        double doubleValue = ((Double) obj).doubleValue();
        zzbgg();
        zzfw(i);
        double[] dArr = this.zzinf;
        double d = dArr[i];
        dArr[i] = doubleValue;
        return Double.valueOf(d);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.size;
    }

    public final void zze(double d) {
        zzbgg();
        int i = this.size;
        double[] dArr = this.zzinf;
        if (i == dArr.length) {
            double[] dArr2 = new double[((i * 3) / 2) + 1];
            System.arraycopy(dArr, 0, dArr2, 0, i);
            this.zzinf = dArr2;
        }
        double[] dArr3 = this.zzinf;
        int i2 = this.size;
        this.size = i2 + 1;
        dArr3[i2] = d;
    }

    @Override // com.google.android.gms.internal.ads.zzell
    public final /* synthetic */ zzell<Double> zzfy(int i) {
        if (i >= this.size) {
            return new zzekm(Arrays.copyOf(this.zzinf, i), this.size);
        }
        throw new IllegalArgumentException();
    }
}
