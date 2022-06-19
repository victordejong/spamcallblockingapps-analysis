package com.google.android.gms.internal.firebase_remote_config;

import com.google.android.gms.common.api.Api;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzie.class */
final class zzie extends zzfr<Long> implements zzhn<Long>, zzjc, RandomAccess {
    private static final zzie zzvf;
    private int size;
    private long[] zzvg;

    static {
        zzie zzieVar = new zzie(new long[0], 0);
        zzvf = zzieVar;
        zzieVar.zzes();
    }

    zzie() {
        this(new long[10], 0);
    }

    private zzie(long[] jArr, int i) {
        this.zzvg = jArr;
        this.size = i;
    }

    private final void zzk(int i, long j) {
        int i2;
        zzet();
        if (i < 0 || i > (i2 = this.size)) {
            throw new IndexOutOfBoundsException(zzt(i));
        }
        long[] jArr = this.zzvg;
        if (i2 < jArr.length) {
            System.arraycopy(jArr, i, jArr, i + 1, i2 - i);
        } else {
            long[] jArr2 = new long[((i2 * 3) / 2) + 1];
            System.arraycopy(jArr, 0, jArr2, 0, i);
            System.arraycopy(this.zzvg, i, jArr2, i + 1, this.size - i);
            this.zzvg = jArr2;
        }
        this.zzvg[i] = j;
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
        zzk(i, ((Long) obj).longValue());
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzfr, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Long> collection) {
        zzet();
        zzhm.checkNotNull(collection);
        if (!(collection instanceof zzie)) {
            return super.addAll(collection);
        }
        zzie zzieVar = (zzie) collection;
        int i = zzieVar.size;
        if (i == 0) {
            return false;
        }
        int i2 = this.size;
        if (Api.BaseClientBuilder.API_PRIORITY_OTHER - i2 < i) {
            throw new OutOfMemoryError();
        }
        int i3 = i2 + i;
        long[] jArr = this.zzvg;
        if (i3 > jArr.length) {
            this.zzvg = Arrays.copyOf(jArr, i3);
        }
        System.arraycopy(zzieVar.zzvg, 0, this.zzvg, this.size, zzieVar.size);
        this.size = i3;
        this.modCount++;
        return true;
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzfr, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzie)) {
            return super.equals(obj);
        }
        zzie zzieVar = (zzie) obj;
        if (this.size != zzieVar.size) {
            return false;
        }
        long[] jArr = zzieVar.zzvg;
        for (int i = 0; i < this.size; i++) {
            if (this.zzvg[i] != jArr[i]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        return Long.valueOf(getLong(i));
    }

    public final long getLong(int i) {
        zzs(i);
        return this.zzvg[i];
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzfr, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.size; i2++) {
            i = (i * 31) + zzhm.zzo(this.zzvg[i2]);
        }
        return i;
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzfr, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        zzet();
        zzs(i);
        long[] jArr = this.zzvg;
        long j = jArr[i];
        int i2 = this.size;
        if (i < i2 - 1) {
            System.arraycopy(jArr, i + 1, jArr, i, (i2 - i) - 1);
        }
        this.size--;
        this.modCount++;
        return Long.valueOf(j);
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzfr, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        zzet();
        for (int i = 0; i < this.size; i++) {
            if (obj.equals(Long.valueOf(this.zzvg[i]))) {
                long[] jArr = this.zzvg;
                System.arraycopy(jArr, i + 1, jArr, i, (this.size - i) - 1);
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
            long[] jArr = this.zzvg;
            System.arraycopy(jArr, i2, jArr, i, this.size - i2);
            this.size -= i2 - i;
            this.modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzfr, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        long longValue = ((Long) obj).longValue();
        zzet();
        zzs(i);
        long[] jArr = this.zzvg;
        long j = jArr[i];
        jArr[i] = longValue;
        return Long.valueOf(j);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.size;
    }

    public final void zzp(long j) {
        zzk(this.size, j);
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzhn
    public final /* synthetic */ zzhn<Long> zzu(int i) {
        if (i >= this.size) {
            return new zzie(Arrays.copyOf(this.zzvg, i), this.size);
        }
        throw new IllegalArgumentException();
    }
}
