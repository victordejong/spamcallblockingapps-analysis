package com.google.android.gms.internal.firebase_remote_config;

import com.google.android.gms.common.api.Api;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzfv.class */
final class zzfv extends zzfr<Boolean> implements zzhn<Boolean>, zzjc, RandomAccess {
    private static final zzfv zzop;
    private int size;
    private boolean[] zzoq;

    static {
        zzfv zzfvVar = new zzfv(new boolean[0], 0);
        zzop = zzfvVar;
        zzfvVar.zzes();
    }

    zzfv() {
        this(new boolean[10], 0);
    }

    private zzfv(boolean[] zArr, int i) {
        this.zzoq = zArr;
        this.size = i;
    }

    private final void zza(int i, boolean z) {
        int i2;
        zzet();
        if (i < 0 || i > (i2 = this.size)) {
            throw new IndexOutOfBoundsException(zzt(i));
        }
        boolean[] zArr = this.zzoq;
        if (i2 < zArr.length) {
            System.arraycopy(zArr, i, zArr, i + 1, i2 - i);
        } else {
            boolean[] zArr2 = new boolean[((i2 * 3) / 2) + 1];
            System.arraycopy(zArr, 0, zArr2, 0, i);
            System.arraycopy(this.zzoq, i, zArr2, i + 1, this.size - i);
            this.zzoq = zArr2;
        }
        this.zzoq[i] = z;
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
        zza(i, ((Boolean) obj).booleanValue());
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzfr, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Boolean> collection) {
        zzet();
        zzhm.checkNotNull(collection);
        if (!(collection instanceof zzfv)) {
            return super.addAll(collection);
        }
        zzfv zzfvVar = (zzfv) collection;
        int i = zzfvVar.size;
        if (i == 0) {
            return false;
        }
        int i2 = this.size;
        if (Api.BaseClientBuilder.API_PRIORITY_OTHER - i2 < i) {
            throw new OutOfMemoryError();
        }
        int i3 = i2 + i;
        boolean[] zArr = this.zzoq;
        if (i3 > zArr.length) {
            this.zzoq = Arrays.copyOf(zArr, i3);
        }
        System.arraycopy(zzfvVar.zzoq, 0, this.zzoq, this.size, zzfvVar.size);
        this.size = i3;
        this.modCount++;
        return true;
    }

    public final void addBoolean(boolean z) {
        zza(this.size, z);
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzfr, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzfv)) {
            return super.equals(obj);
        }
        zzfv zzfvVar = (zzfv) obj;
        if (this.size != zzfvVar.size) {
            return false;
        }
        boolean[] zArr = zzfvVar.zzoq;
        for (int i = 0; i < this.size; i++) {
            if (this.zzoq[i] != zArr[i]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        zzs(i);
        return Boolean.valueOf(this.zzoq[i]);
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzfr, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.size; i2++) {
            i = (i * 31) + zzhm.zzf(this.zzoq[i2]);
        }
        return i;
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzfr, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        zzet();
        zzs(i);
        boolean[] zArr = this.zzoq;
        boolean z = zArr[i];
        int i2 = this.size;
        if (i < i2 - 1) {
            System.arraycopy(zArr, i + 1, zArr, i, (i2 - i) - 1);
        }
        this.size--;
        this.modCount++;
        return Boolean.valueOf(z);
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzfr, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        zzet();
        for (int i = 0; i < this.size; i++) {
            if (obj.equals(Boolean.valueOf(this.zzoq[i]))) {
                boolean[] zArr = this.zzoq;
                System.arraycopy(zArr, i + 1, zArr, i, (this.size - i) - 1);
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
            boolean[] zArr = this.zzoq;
            System.arraycopy(zArr, i2, zArr, i, this.size - i2);
            this.size -= i2 - i;
            this.modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzfr, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        boolean booleanValue = ((Boolean) obj).booleanValue();
        zzet();
        zzs(i);
        boolean[] zArr = this.zzoq;
        boolean z = zArr[i];
        zArr[i] = booleanValue;
        return Boolean.valueOf(z);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.size;
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzhn
    public final /* synthetic */ zzhn<Boolean> zzu(int i) {
        if (i >= this.size) {
            return new zzfv(Arrays.copyOf(this.zzoq, i), this.size);
        }
        throw new IllegalArgumentException();
    }
}
