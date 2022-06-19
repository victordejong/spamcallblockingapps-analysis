package com.google.android.gms.internal.firebase_remote_config;

import com.google.android.gms.common.api.Api;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzhg.class */
final class zzhg extends zzfr<Float> implements zzhn<Float>, zzjc, RandomAccess {
    private static final zzhg zzsu;
    private int size;
    private float[] zzsv;

    static {
        zzhg zzhgVar = new zzhg(new float[0], 0);
        zzsu = zzhgVar;
        zzhgVar.zzes();
    }

    zzhg() {
        this(new float[10], 0);
    }

    private zzhg(float[] fArr, int i) {
        this.zzsv = fArr;
        this.size = i;
    }

    private final void zzc(int i, float f) {
        int i2;
        zzet();
        if (i < 0 || i > (i2 = this.size)) {
            throw new IndexOutOfBoundsException(zzt(i));
        }
        float[] fArr = this.zzsv;
        if (i2 < fArr.length) {
            System.arraycopy(fArr, i, fArr, i + 1, i2 - i);
        } else {
            float[] fArr2 = new float[((i2 * 3) / 2) + 1];
            System.arraycopy(fArr, 0, fArr2, 0, i);
            System.arraycopy(this.zzsv, i, fArr2, i + 1, this.size - i);
            this.zzsv = fArr2;
        }
        this.zzsv[i] = f;
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
        zzc(i, ((Float) obj).floatValue());
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzfr, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Float> collection) {
        zzet();
        zzhm.checkNotNull(collection);
        if (!(collection instanceof zzhg)) {
            return super.addAll(collection);
        }
        zzhg zzhgVar = (zzhg) collection;
        int i = zzhgVar.size;
        if (i == 0) {
            return false;
        }
        int i2 = this.size;
        if (Api.BaseClientBuilder.API_PRIORITY_OTHER - i2 < i) {
            throw new OutOfMemoryError();
        }
        int i3 = i2 + i;
        float[] fArr = this.zzsv;
        if (i3 > fArr.length) {
            this.zzsv = Arrays.copyOf(fArr, i3);
        }
        System.arraycopy(zzhgVar.zzsv, 0, this.zzsv, this.size, zzhgVar.size);
        this.size = i3;
        this.modCount++;
        return true;
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzfr, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzhg)) {
            return super.equals(obj);
        }
        zzhg zzhgVar = (zzhg) obj;
        if (this.size != zzhgVar.size) {
            return false;
        }
        float[] fArr = zzhgVar.zzsv;
        for (int i = 0; i < this.size; i++) {
            if (Float.floatToIntBits(this.zzsv[i]) != Float.floatToIntBits(fArr[i])) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        zzs(i);
        return Float.valueOf(this.zzsv[i]);
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzfr, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.size; i2++) {
            i = (i * 31) + Float.floatToIntBits(this.zzsv[i2]);
        }
        return i;
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzfr, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        zzet();
        zzs(i);
        float[] fArr = this.zzsv;
        float f = fArr[i];
        int i2 = this.size;
        if (i < i2 - 1) {
            System.arraycopy(fArr, i + 1, fArr, i, (i2 - i) - 1);
        }
        this.size--;
        this.modCount++;
        return Float.valueOf(f);
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzfr, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        zzet();
        for (int i = 0; i < this.size; i++) {
            if (obj.equals(Float.valueOf(this.zzsv[i]))) {
                float[] fArr = this.zzsv;
                System.arraycopy(fArr, i + 1, fArr, i, (this.size - i) - 1);
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
            float[] fArr = this.zzsv;
            System.arraycopy(fArr, i2, fArr, i, this.size - i2);
            this.size -= i2 - i;
            this.modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzfr, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        float floatValue = ((Float) obj).floatValue();
        zzet();
        zzs(i);
        float[] fArr = this.zzsv;
        float f = fArr[i];
        fArr[i] = floatValue;
        return Float.valueOf(f);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.size;
    }

    public final void zzd(float f) {
        zzc(this.size, f);
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzhn
    public final /* synthetic */ zzhn<Float> zzu(int i) {
        if (i >= this.size) {
            return new zzhg(Arrays.copyOf(this.zzsv, i), this.size);
        }
        throw new IllegalArgumentException();
    }
}
