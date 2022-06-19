package com.google.android.gms.internal.firebase_perf;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.internal.firebase-perf.zzem;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzej.class */
public final class zzej extends zzdc<Integer> implements zzem, zzga, RandomAccess {
    private static final com.google.android.gms.internal.firebase-perf.zzej zzqw;
    private int size;
    private int[] zzqx;

    static {
        com.google.android.gms.internal.firebase-perf.zzej zzejVar = new zzej(new int[0], 0);
        zzqw = zzejVar;
        zzejVar.zzfk();
    }

    zzej() {
        this(new int[10], 0);
    }

    private zzej(int[] iArr, int i) {
        this.zzqx = iArr;
        this.size = i;
    }

    private final void zzam(int i) {
        if (i < 0 || i >= this.size) {
            throw new IndexOutOfBoundsException(zzan(i));
        }
    }

    private final String zzan(int i) {
        int i2 = this.size;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i);
        sb.append(", Size:");
        sb.append(i2);
        return sb.toString();
    }

    public static com.google.android.gms.internal.firebase-perf.zzej zzgt() {
        return zzqw;
    }

    @Override // com.google.android.gms.internal.firebase_perf.zzdc, java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        int i2;
        int intValue = ((Integer) obj).intValue();
        zzfl();
        if (i < 0 || i > (i2 = this.size)) {
            throw new IndexOutOfBoundsException(zzan(i));
        }
        int[] iArr = this.zzqx;
        if (i2 < iArr.length) {
            System.arraycopy(iArr, i, iArr, i + 1, i2 - i);
        } else {
            int[] iArr2 = new int[((i2 * 3) / 2) + 1];
            System.arraycopy(iArr, 0, iArr2, 0, i);
            System.arraycopy(this.zzqx, i, iArr2, i + 1, this.size - i);
            this.zzqx = iArr2;
        }
        this.zzqx[i] = intValue;
        this.size++;
        this.modCount++;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.firebase_perf.zzdc, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* synthetic */ boolean add(Object obj) {
        zzal(((Integer) obj).intValue());
        return true;
    }

    @Override // com.google.android.gms.internal.firebase_perf.zzdc, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Integer> collection) {
        zzfl();
        zzei.checkNotNull(collection);
        if (!(collection instanceof zzej)) {
            return super.addAll(collection);
        }
        zzej zzejVar = (zzej) collection;
        int i = zzejVar.size;
        if (i == 0) {
            return false;
        }
        int i2 = this.size;
        if (Api.BaseClientBuilder.API_PRIORITY_OTHER - i2 < i) {
            throw new OutOfMemoryError();
        }
        int i3 = i2 + i;
        int[] iArr = this.zzqx;
        if (i3 > iArr.length) {
            this.zzqx = Arrays.copyOf(iArr, i3);
        }
        System.arraycopy(zzejVar.zzqx, 0, this.zzqx, this.size, zzejVar.size);
        this.size = i3;
        this.modCount++;
        return true;
    }

    @Override // com.google.android.gms.internal.firebase_perf.zzdc, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzej)) {
            return super.equals(obj);
        }
        zzej zzejVar = (zzej) obj;
        if (this.size != zzejVar.size) {
            return false;
        }
        int[] iArr = zzejVar.zzqx;
        for (int i = 0; i < this.size; i++) {
            if (this.zzqx[i] != iArr[i]) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        return Integer.valueOf(getInt(i));
    }

    @Override // com.google.android.gms.internal.firebase_perf.zzem
    public final int getInt(int i) {
        zzam(i);
        return this.zzqx[i];
    }

    @Override // com.google.android.gms.internal.firebase_perf.zzdc, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.size; i2++) {
            i = (i * 31) + this.zzqx[i2];
        }
        return i;
    }

    @Override // com.google.android.gms.internal.firebase_perf.zzdc, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        zzfl();
        zzam(i);
        int[] iArr = this.zzqx;
        int i2 = iArr[i];
        int i3 = this.size;
        if (i < i3 - 1) {
            System.arraycopy(iArr, i + 1, iArr, i, (i3 - i) - 1);
        }
        this.size--;
        this.modCount++;
        return Integer.valueOf(i2);
    }

    @Override // com.google.android.gms.internal.firebase_perf.zzdc, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        zzfl();
        for (int i = 0; i < this.size; i++) {
            if (obj.equals(Integer.valueOf(this.zzqx[i]))) {
                int[] iArr = this.zzqx;
                System.arraycopy(iArr, i + 1, iArr, i, (this.size - i) - 1);
                this.size--;
                this.modCount++;
                return true;
            }
        }
        return false;
    }

    @Override // java.util.AbstractList
    protected final void removeRange(int i, int i2) {
        zzfl();
        if (i2 >= i) {
            int[] iArr = this.zzqx;
            System.arraycopy(iArr, i2, iArr, i, this.size - i2);
            this.size -= i2 - i;
            this.modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // com.google.android.gms.internal.firebase_perf.zzdc, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        int intValue = ((Integer) obj).intValue();
        zzfl();
        zzam(i);
        int[] iArr = this.zzqx;
        int i2 = iArr[i];
        iArr[i] = intValue;
        return Integer.valueOf(i2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.size;
    }

    @Override // com.google.android.gms.internal.firebase_perf.zzem
    /* renamed from: zzak */
    public final zzem zzao(int i) {
        if (i >= this.size) {
            return new zzej(Arrays.copyOf(this.zzqx, i), this.size);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.android.gms.internal.firebase_perf.zzem
    public final void zzal(int i) {
        zzfl();
        int i2 = this.size;
        int[] iArr = this.zzqx;
        if (i2 == iArr.length) {
            int[] iArr2 = new int[((i2 * 3) / 2) + 1];
            System.arraycopy(iArr, 0, iArr2, 0, i2);
            this.zzqx = iArr2;
        }
        int[] iArr3 = this.zzqx;
        int i3 = this.size;
        this.size = i3 + 1;
        iArr3[i3] = i;
    }
}
