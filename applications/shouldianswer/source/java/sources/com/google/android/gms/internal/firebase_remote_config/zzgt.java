package com.google.android.gms.internal.firebase_remote_config;

import com.google.android.gms.common.api.Api;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzgt.class */
final class zzgt extends zzfr<Double> implements zzhn<Double>, zzjc, RandomAccess {
    private static final zzgt zzpx;
    private int size;
    private double[] zzpy;

    static {
        zzgt zzgtVar = new zzgt(new double[0], 0);
        zzpx = zzgtVar;
        zzgtVar.zzes();
    }

    zzgt() {
        this(new double[10], 0);
    }

    private zzgt(double[] dArr, int i) {
        this.zzpy = dArr;
        this.size = i;
    }

    private final void zzc(int i, double d) {
        int i2;
        zzet();
        if (i < 0 || i > (i2 = this.size)) {
            throw new IndexOutOfBoundsException(zzt(i));
        }
        double[] dArr = this.zzpy;
        if (i2 < dArr.length) {
            System.arraycopy(dArr, i, dArr, i + 1, i2 - i);
        } else {
            double[] dArr2 = new double[((i2 * 3) / 2) + 1];
            System.arraycopy(dArr, 0, dArr2, 0, i);
            System.arraycopy(this.zzpy, i, dArr2, i + 1, this.size - i);
            this.zzpy = dArr2;
        }
        this.zzpy[i] = d;
        this.size++;
        this.modCount++;
    }

    private final void zzs(int i) {
        if (i < 0 || i >= this.size) {
            throw new IndexOutOfBoundsException(zzt(i));
        }
    }

    private final String zzt(int i) {
        int i2 = this.size;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i);
        sb.append(", Size:");
        sb.append(i2);
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzfr, java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        zzc(i, ((Double) obj).doubleValue());
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzfr, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Double> collection) {
        zzet();
        zzhm.checkNotNull(collection);
        if (!(collection instanceof zzgt)) {
            return super.addAll(collection);
        }
        zzgt zzgtVar = (zzgt) collection;
        int i = zzgtVar.size;
        if (i == 0) {
            return false;
        }
        int i2 = this.size;
        if (Api.BaseClientBuilder.API_PRIORITY_OTHER - i2 < i) {
            throw new OutOfMemoryError();
        }
        int i3 = i2 + i;
        double[] dArr = this.zzpy;
        if (i3 > dArr.length) {
            this.zzpy = Arrays.copyOf(dArr, i3);
        }
        System.arraycopy(zzgtVar.zzpy, 0, this.zzpy, this.size, zzgtVar.size);
        this.size = i3;
        this.modCount++;
        return true;
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzfr, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzgt)) {
            return super.equals(obj);
        }
        zzgt zzgtVar = (zzgt) obj;
        if (this.size != zzgtVar.size) {
            return false;
        }
        double[] dArr = zzgtVar.zzpy;
        for (int i = 0; i < this.size; i++) {
            if (Double.doubleToLongBits(this.zzpy[i]) != Double.doubleToLongBits(dArr[i])) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        zzs(i);
        return Double.valueOf(this.zzpy[i]);
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzfr, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.size; i2++) {
            i = (i * 31) + zzhm.zzo(Double.doubleToLongBits(this.zzpy[i2]));
        }
        return i;
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzfr, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        zzet();
        zzs(i);
        double[] dArr = this.zzpy;
        double d = dArr[i];
        int i2 = this.size;
        if (i < i2 - 1) {
            System.arraycopy(dArr, i + 1, dArr, i, (i2 - i) - 1);
        }
        this.size--;
        this.modCount++;
        return Double.valueOf(d);
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzfr, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        zzet();
        for (int i = 0; i < this.size; i++) {
            if (obj.equals(Double.valueOf(this.zzpy[i]))) {
                double[] dArr = this.zzpy;
                System.arraycopy(dArr, i + 1, dArr, i, (this.size - i) - 1);
                this.size--;
                this.modCount++;
                return true;
            }
        }
        return false;
    }

    @Override // java.util.AbstractList
    protected final void removeRange(int i, int i2) {
        zzet();
        if (i2 >= i) {
            double[] dArr = this.zzpy;
            System.arraycopy(dArr, i2, dArr, i, this.size - i2);
            this.size -= i2 - i;
            this.modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzfr, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        double doubleValue = ((Double) obj).doubleValue();
        zzet();
        zzs(i);
        double[] dArr = this.zzpy;
        double d = dArr[i];
        dArr[i] = doubleValue;
        return Double.valueOf(d);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.size;
    }

    public final void zze(double d) {
        zzc(this.size, d);
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzhn
    public final /* synthetic */ zzhn<Double> zzu(int i) {
        if (i >= this.size) {
            return new zzgt(Arrays.copyOf(this.zzpy, i), this.size);
        }
        throw new IllegalArgumentException();
    }
}
