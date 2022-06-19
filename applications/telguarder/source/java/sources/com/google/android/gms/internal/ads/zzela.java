package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzela.class */
final class zzela extends zzejl<Float> implements zzell<Float>, zzena, RandomAccess {
    private static final zzela zziqi;
    private int size;
    private float[] zziqj;

    static {
        zzela zzelaVar = new zzela(new float[0], 0);
        zziqi = zzelaVar;
        zzelaVar.zzbgf();
    }

    zzela() {
        this(new float[10], 0);
    }

    private zzela(float[] fArr, int i) {
        this.zziqj = fArr;
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
        float floatValue = ((Float) obj).floatValue();
        zzbgg();
        if (i < 0 || i > (i2 = this.size)) {
            throw new IndexOutOfBoundsException(zzfx(i));
        }
        float[] fArr = this.zziqj;
        if (i2 < fArr.length) {
            System.arraycopy(fArr, i, fArr, i + 1, i2 - i);
        } else {
            float[] fArr2 = new float[((i2 * 3) / 2) + 1];
            System.arraycopy(fArr, 0, fArr2, 0, i);
            System.arraycopy(this.zziqj, i, fArr2, i + 1, this.size - i);
            this.zziqj = fArr2;
        }
        this.zziqj[i] = floatValue;
        this.size++;
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.ads.zzejl, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* synthetic */ boolean add(Object obj) {
        zzh(((Float) obj).floatValue());
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzejl, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Float> collection) {
        zzbgg();
        zzeld.checkNotNull(collection);
        if (!(collection instanceof zzela)) {
            return super.addAll(collection);
        }
        zzela zzelaVar = (zzela) collection;
        int i = zzelaVar.size;
        if (i == 0) {
            return false;
        }
        int i2 = this.size;
        if (Integer.MAX_VALUE - i2 < i) {
            throw new OutOfMemoryError();
        }
        int i3 = i2 + i;
        float[] fArr = this.zziqj;
        if (i3 > fArr.length) {
            this.zziqj = Arrays.copyOf(fArr, i3);
        }
        System.arraycopy(zzelaVar.zziqj, 0, this.zziqj, this.size, zzelaVar.size);
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
        if (!(obj instanceof zzela)) {
            return super.equals(obj);
        }
        zzela zzelaVar = (zzela) obj;
        if (this.size != zzelaVar.size) {
            return false;
        }
        float[] fArr = zzelaVar.zziqj;
        for (int i = 0; i < this.size; i++) {
            if (Float.floatToIntBits(this.zziqj[i]) != Float.floatToIntBits(fArr[i])) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        zzfw(i);
        return Float.valueOf(this.zziqj[i]);
    }

    @Override // com.google.android.gms.internal.ads.zzejl, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.size; i2++) {
            i = (i * 31) + Float.floatToIntBits(this.zziqj[i2]);
        }
        return i;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Float)) {
            return -1;
        }
        float floatValue = ((Float) obj).floatValue();
        int size = size();
        for (int i = 0; i < size; i++) {
            if (this.zziqj[i] == floatValue) {
                return i;
            }
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.zzejl, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        zzbgg();
        zzfw(i);
        float[] fArr = this.zziqj;
        float f = fArr[i];
        int i2 = this.size;
        if (i < i2 - 1) {
            System.arraycopy(fArr, i + 1, fArr, i, (i2 - i) - 1);
        }
        this.size--;
        this.modCount++;
        return Float.valueOf(f);
    }

    @Override // java.util.AbstractList
    protected final void removeRange(int i, int i2) {
        zzbgg();
        if (i2 >= i) {
            float[] fArr = this.zziqj;
            System.arraycopy(fArr, i2, fArr, i, this.size - i2);
            this.size -= i2 - i;
            this.modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // com.google.android.gms.internal.ads.zzejl, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        float floatValue = ((Float) obj).floatValue();
        zzbgg();
        zzfw(i);
        float[] fArr = this.zziqj;
        float f = fArr[i];
        fArr[i] = floatValue;
        return Float.valueOf(f);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.size;
    }

    @Override // com.google.android.gms.internal.ads.zzell
    public final /* synthetic */ zzell<Float> zzfy(int i) {
        if (i >= this.size) {
            return new zzela(Arrays.copyOf(this.zziqj, i), this.size);
        }
        throw new IllegalArgumentException();
    }

    public final void zzh(float f) {
        zzbgg();
        int i = this.size;
        float[] fArr = this.zziqj;
        if (i == fArr.length) {
            float[] fArr2 = new float[((i * 3) / 2) + 1];
            System.arraycopy(fArr, 0, fArr2, 0, i);
            this.zziqj = fArr2;
        }
        float[] fArr3 = this.zziqj;
        int i2 = this.size;
        this.size = i2 + 1;
        fArr3[i2] = f;
    }
}
