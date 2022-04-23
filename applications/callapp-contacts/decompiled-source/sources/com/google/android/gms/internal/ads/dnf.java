package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dnf.class */
final class dnf extends dlq<Float> implements dnr<Float>, dpf, RandomAccess {

    /* renamed from: a  reason: collision with root package name */
    private static final dnf f26988a;

    /* renamed from: b  reason: collision with root package name */
    private float[] f26989b;

    /* renamed from: c  reason: collision with root package name */
    private int f26990c;

    static {
        dnf dnfVar = new dnf(new float[0], 0);
        f26988a = dnfVar;
        dnfVar.b();
    }

    dnf() {
        this(new float[10], 0);
    }

    private dnf(float[] fArr, int i) {
        this.f26989b = fArr;
        this.f26990c = i;
    }

    private final void b(int i) {
        if (i < 0 || i >= this.f26990c) {
            throw new IndexOutOfBoundsException(c(i));
        }
    }

    private final String c(int i) {
        int i2 = this.f26990c;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i);
        sb.append(", Size:");
        sb.append(i2);
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.ads.dnr
    public final /* synthetic */ dnr<Float> a(int i) {
        if (i >= this.f26990c) {
            return new dnf(Arrays.copyOf(this.f26989b, i), this.f26990c);
        }
        throw new IllegalArgumentException();
    }

    public final void a(float f) {
        c();
        int i = this.f26990c;
        float[] fArr = this.f26989b;
        if (i == fArr.length) {
            float[] fArr2 = new float[((i * 3) / 2) + 1];
            System.arraycopy(fArr, 0, fArr2, 0, i);
            this.f26989b = fArr2;
        }
        float[] fArr3 = this.f26989b;
        int i2 = this.f26990c;
        this.f26990c = i2 + 1;
        fArr3[i2] = f;
    }

    @Override // com.google.android.gms.internal.ads.dlq, java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        int i2;
        float floatValue = ((Float) obj).floatValue();
        c();
        if (i < 0 || i > (i2 = this.f26990c)) {
            throw new IndexOutOfBoundsException(c(i));
        }
        float[] fArr = this.f26989b;
        if (i2 < fArr.length) {
            System.arraycopy(fArr, i, fArr, i + 1, i2 - i);
        } else {
            float[] fArr2 = new float[((i2 * 3) / 2) + 1];
            System.arraycopy(fArr, 0, fArr2, 0, i);
            System.arraycopy(this.f26989b, i, fArr2, i + 1, this.f26990c - i);
            this.f26989b = fArr2;
        }
        this.f26989b[i] = floatValue;
        this.f26990c++;
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.ads.dlq, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* synthetic */ boolean add(Object obj) {
        a(((Float) obj).floatValue());
        return true;
    }

    @Override // com.google.android.gms.internal.ads.dlq, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Float> collection) {
        c();
        dnj.a(collection);
        if (!(collection instanceof dnf)) {
            return super.addAll(collection);
        }
        dnf dnfVar = (dnf) collection;
        int i = dnfVar.f26990c;
        if (i == 0) {
            return false;
        }
        int i2 = this.f26990c;
        if (Integer.MAX_VALUE - i2 >= i) {
            int i3 = i2 + i;
            float[] fArr = this.f26989b;
            if (i3 > fArr.length) {
                this.f26989b = Arrays.copyOf(fArr, i3);
            }
            System.arraycopy(dnfVar.f26989b, 0, this.f26989b, this.f26990c, dnfVar.f26990c);
            this.f26990c = i3;
            this.modCount++;
            return true;
        }
        throw new OutOfMemoryError();
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
        if (this.f26990c != dnfVar.f26990c) {
            return false;
        }
        float[] fArr = dnfVar.f26989b;
        for (int i = 0; i < this.f26990c; i++) {
            if (Float.floatToIntBits(this.f26989b[i]) != Float.floatToIntBits(fArr[i])) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        b(i);
        return Float.valueOf(this.f26989b[i]);
    }

    @Override // com.google.android.gms.internal.ads.dlq, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f26990c; i2++) {
            i = (i * 31) + Float.floatToIntBits(this.f26989b[i2]);
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
            if (this.f26989b[i] == floatValue) {
                return i;
            }
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.dlq, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        c();
        b(i);
        float[] fArr = this.f26989b;
        float f = fArr[i];
        int i2 = this.f26990c;
        if (i < i2 - 1) {
            System.arraycopy(fArr, i + 1, fArr, i, (i2 - i) - 1);
        }
        this.f26990c--;
        this.modCount++;
        return Float.valueOf(f);
    }

    @Override // java.util.AbstractList
    protected final void removeRange(int i, int i2) {
        c();
        if (i2 >= i) {
            float[] fArr = this.f26989b;
            System.arraycopy(fArr, i2, fArr, i, this.f26990c - i2);
            this.f26990c -= i2 - i;
            this.modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // com.google.android.gms.internal.ads.dlq, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        float floatValue = ((Float) obj).floatValue();
        c();
        b(i);
        float[] fArr = this.f26989b;
        float f = fArr[i];
        fArr[i] = floatValue;
        return Float.valueOf(f);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f26990c;
    }
}
