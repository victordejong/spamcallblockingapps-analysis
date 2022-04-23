package com.google.android.gms.internal.measurement;

import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/gf.class */
final class gf extends ez<Float> implements gs, hw, RandomAccess {

    /* renamed from: a  reason: collision with root package name */
    private static final gf f29053a;

    /* renamed from: b  reason: collision with root package name */
    private float[] f29054b;

    /* renamed from: c  reason: collision with root package name */
    private int f29055c;

    static {
        gf gfVar = new gf(new float[0], 0);
        f29053a = gfVar;
        gfVar.b();
    }

    gf() {
        this(new float[10], 0);
    }

    private gf(float[] fArr, int i) {
        this.f29054b = fArr;
        this.f29055c = i;
    }

    private final void b(int i) {
        if (i < 0 || i >= this.f29055c) {
            throw new IndexOutOfBoundsException(c(i));
        }
    }

    private final String c(int i) {
        int i2 = this.f29055c;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i);
        sb.append(", Size:");
        sb.append(i2);
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.measurement.gs
    public final /* synthetic */ gs a(int i) {
        if (i >= this.f29055c) {
            return new gf(Arrays.copyOf(this.f29054b, i), this.f29055c);
        }
        throw new IllegalArgumentException();
    }

    public final void a(float f) {
        c();
        int i = this.f29055c;
        float[] fArr = this.f29054b;
        if (i == fArr.length) {
            float[] fArr2 = new float[((i * 3) / 2) + 1];
            System.arraycopy(fArr, 0, fArr2, 0, i);
            this.f29054b = fArr2;
        }
        float[] fArr3 = this.f29054b;
        int i2 = this.f29055c;
        this.f29055c = i2 + 1;
        fArr3[i2] = f;
    }

    @Override // com.google.android.gms.internal.measurement.ez, java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        int i2;
        float floatValue = ((Float) obj).floatValue();
        c();
        if (i < 0 || i > (i2 = this.f29055c)) {
            throw new IndexOutOfBoundsException(c(i));
        }
        float[] fArr = this.f29054b;
        if (i2 < fArr.length) {
            System.arraycopy(fArr, i, fArr, i + 1, i2 - i);
        } else {
            float[] fArr2 = new float[((i2 * 3) / 2) + 1];
            System.arraycopy(fArr, 0, fArr2, 0, i);
            System.arraycopy(this.f29054b, i, fArr2, i + 1, this.f29055c - i);
            this.f29054b = fArr2;
        }
        this.f29054b[i] = floatValue;
        this.f29055c++;
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.measurement.ez, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* synthetic */ boolean add(Object obj) {
        a(((Float) obj).floatValue());
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.ez, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Float> collection) {
        c();
        gt.a(collection);
        if (!(collection instanceof gf)) {
            return super.addAll(collection);
        }
        gf gfVar = (gf) collection;
        int i = gfVar.f29055c;
        if (i == 0) {
            return false;
        }
        int i2 = this.f29055c;
        if (Integer.MAX_VALUE - i2 >= i) {
            int i3 = i2 + i;
            float[] fArr = this.f29054b;
            if (i3 > fArr.length) {
                this.f29054b = Arrays.copyOf(fArr, i3);
            }
            System.arraycopy(gfVar.f29054b, 0, this.f29054b, this.f29055c, gfVar.f29055c);
            this.f29055c = i3;
            this.modCount++;
            return true;
        }
        throw new OutOfMemoryError();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    @Override // com.google.android.gms.internal.measurement.ez, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof gf)) {
            return super.equals(obj);
        }
        gf gfVar = (gf) obj;
        if (this.f29055c != gfVar.f29055c) {
            return false;
        }
        float[] fArr = gfVar.f29054b;
        for (int i = 0; i < this.f29055c; i++) {
            if (Float.floatToIntBits(this.f29054b[i]) != Float.floatToIntBits(fArr[i])) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        b(i);
        return Float.valueOf(this.f29054b[i]);
    }

    @Override // com.google.android.gms.internal.measurement.ez, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f29055c; i2++) {
            i = (i * 31) + Float.floatToIntBits(this.f29054b[i2]);
        }
        return i;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Float)) {
            return -1;
        }
        float floatValue = ((Float) obj).floatValue();
        int i = this.f29055c;
        for (int i2 = 0; i2 < i; i2++) {
            if (this.f29054b[i2] == floatValue) {
                return i2;
            }
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.measurement.ez, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        c();
        b(i);
        float[] fArr = this.f29054b;
        float f = fArr[i];
        int i2 = this.f29055c;
        if (i < i2 - 1) {
            System.arraycopy(fArr, i + 1, fArr, i, (i2 - i) - 1);
        }
        this.f29055c--;
        this.modCount++;
        return Float.valueOf(f);
    }

    @Override // java.util.AbstractList
    protected final void removeRange(int i, int i2) {
        c();
        if (i2 >= i) {
            float[] fArr = this.f29054b;
            System.arraycopy(fArr, i2, fArr, i, this.f29055c - i2);
            this.f29055c -= i2 - i;
            this.modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // com.google.android.gms.internal.measurement.ez, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        float floatValue = ((Float) obj).floatValue();
        c();
        b(i);
        float[] fArr = this.f29054b;
        float f = fArr[i];
        fArr[i] = floatValue;
        return Float.valueOf(f);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f29055c;
    }
}
