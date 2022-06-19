package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dnf.class */
final class dnf extends dlq<Float> implements dnr<Float>, dpf, RandomAccess {

    /* renamed from: a */
    private static final dnf f47269a;

    /* renamed from: b */
    private float[] f47270b;

    /* renamed from: c */
    private int f47271c;

    static {
        dnf dnfVar = new dnf(new float[0], 0);
        f47269a = dnfVar;
        dnfVar.mo16303b();
    }

    dnf() {
        this(new float[10], 0);
    }

    private dnf(float[] fArr, int i) {
        this.f47270b = fArr;
        this.f47271c = i;
    }

    /* renamed from: b */
    private final void m16354b(int i) {
        if (i < 0 || i >= this.f47271c) {
            throw new IndexOutOfBoundsException(m16353c(i));
        }
    }

    /* renamed from: c */
    private final String m16353c(int i) {
        int i2 = this.f47271c;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i);
        sb.append(", Size:");
        sb.append(i2);
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.ads.dnr
    /* renamed from: a */
    public final /* synthetic */ dnr<Float> mo16200a(int i) {
        if (i >= this.f47271c) {
            return new dnf(Arrays.copyOf(this.f47270b, i), this.f47271c);
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: a */
    public final void m16355a(float f) {
        m16501c();
        int i = this.f47271c;
        float[] fArr = this.f47270b;
        if (i == fArr.length) {
            float[] fArr2 = new float[((i * 3) / 2) + 1];
            System.arraycopy(fArr, 0, fArr2, 0, i);
            this.f47270b = fArr2;
        }
        float[] fArr3 = this.f47270b;
        int i2 = this.f47271c;
        this.f47271c = i2 + 1;
        fArr3[i2] = f;
    }

    @Override // com.google.android.gms.internal.ads.dlq, java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        int i2;
        float floatValue = ((Float) obj).floatValue();
        m16501c();
        if (i < 0 || i > (i2 = this.f47271c)) {
            throw new IndexOutOfBoundsException(m16353c(i));
        }
        float[] fArr = this.f47270b;
        if (i2 < fArr.length) {
            System.arraycopy(fArr, i, fArr, i + 1, i2 - i);
        } else {
            float[] fArr2 = new float[((i2 * 3) / 2) + 1];
            System.arraycopy(fArr, 0, fArr2, 0, i);
            System.arraycopy(this.f47270b, i, fArr2, i + 1, this.f47271c - i);
            this.f47270b = fArr2;
        }
        this.f47270b[i] = floatValue;
        this.f47271c++;
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.ads.dlq, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* synthetic */ boolean add(Object obj) {
        m16355a(((Float) obj).floatValue());
        return true;
    }

    @Override // com.google.android.gms.internal.ads.dlq, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Float> collection) {
        m16501c();
        dnj.m16316a(collection);
        if (!(collection instanceof dnf)) {
            return super.addAll(collection);
        }
        dnf dnfVar = (dnf) collection;
        int i = dnfVar.f47271c;
        if (i == 0) {
            return false;
        }
        int i2 = this.f47271c;
        if (Integer.MAX_VALUE - i2 < i) {
            throw new OutOfMemoryError();
        }
        int i3 = i2 + i;
        float[] fArr = this.f47270b;
        if (i3 > fArr.length) {
            this.f47270b = Arrays.copyOf(fArr, i3);
        }
        System.arraycopy(dnfVar.f47270b, 0, this.f47270b, this.f47271c, dnfVar.f47271c);
        this.f47271c = i3;
        this.modCount++;
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    @Override // com.google.android.gms.internal.ads.dlq, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof dnf)) {
            return super.equals(obj);
        }
        dnf dnfVar = (dnf) obj;
        if (this.f47271c != dnfVar.f47271c) {
            return false;
        }
        float[] fArr = dnfVar.f47270b;
        for (int i = 0; i < this.f47271c; i++) {
            if (Float.floatToIntBits(this.f47270b[i]) != Float.floatToIntBits(fArr[i])) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        m16354b(i);
        return Float.valueOf(this.f47270b[i]);
    }

    @Override // com.google.android.gms.internal.ads.dlq, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f47271c; i2++) {
            i = (i * 31) + Float.floatToIntBits(this.f47270b[i2]);
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
            if (this.f47270b[i] == floatValue) {
                return i;
            }
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.dlq, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        m16501c();
        m16354b(i);
        float[] fArr = this.f47270b;
        float f = fArr[i];
        int i2 = this.f47271c;
        if (i < i2 - 1) {
            System.arraycopy(fArr, i + 1, fArr, i, (i2 - i) - 1);
        }
        this.f47271c--;
        this.modCount++;
        return Float.valueOf(f);
    }

    @Override // java.util.AbstractList
    protected final void removeRange(int i, int i2) {
        m16501c();
        if (i2 >= i) {
            float[] fArr = this.f47270b;
            System.arraycopy(fArr, i2, fArr, i, this.f47271c - i2);
            this.f47271c -= i2 - i;
            this.modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // com.google.android.gms.internal.ads.dlq, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        float floatValue = ((Float) obj).floatValue();
        m16501c();
        m16354b(i);
        float[] fArr = this.f47270b;
        float f = fArr[i];
        fArr[i] = floatValue;
        return Float.valueOf(f);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f47271c;
    }
}
