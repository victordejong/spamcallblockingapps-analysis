package com.google.android.gms.internal.measurement;

import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* renamed from: com.google.android.gms.internal.measurement.ec */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/ec.class */
final class C3899ec extends AbstractC3853cn<Float> implements AbstractC3914el<Float>, AbstractC3957ga, RandomAccess {

    /* renamed from: a */
    private static final C3899ec f18085a;

    /* renamed from: b */
    private float[] f18086b;

    /* renamed from: c */
    private int f18087c;

    static {
        C3899ec c3899ec = new C3899ec(new float[0], 0);
        f18085a = c3899ec;
        c3899ec.mo5597b();
    }

    C3899ec() {
        this(new float[10], 0);
    }

    private C3899ec(float[] fArr, int i) {
        this.f18086b = fArr;
        this.f18087c = i;
    }

    /* renamed from: b */
    private final void m5654b(int i) {
        if (i < 0 || i >= this.f18087c) {
            throw new IndexOutOfBoundsException(m5653c(i));
        }
    }

    /* renamed from: c */
    private final String m5653c(int i) {
        return new StringBuilder(35).append("Index:").append(i).append(", Size:").append(this.f18087c).toString();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3914el
    /* renamed from: a */
    public final /* synthetic */ AbstractC3914el<Float> mo5476a(int i) {
        if (i < this.f18087c) {
            throw new IllegalArgumentException();
        }
        return new C3899ec(Arrays.copyOf(this.f18086b, i), this.f18087c);
    }

    /* renamed from: a */
    public final void m5655a(float f) {
        m5837q_();
        if (this.f18087c == this.f18086b.length) {
            float[] fArr = new float[((this.f18087c * 3) / 2) + 1];
            System.arraycopy(this.f18086b, 0, fArr, 0, this.f18087c);
            this.f18086b = fArr;
        }
        float[] fArr2 = this.f18086b;
        int i = this.f18087c;
        this.f18087c = i + 1;
        fArr2[i] = f;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3853cn, java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        float floatValue = ((Float) obj).floatValue();
        m5837q_();
        if (i < 0 || i > this.f18087c) {
            throw new IndexOutOfBoundsException(m5653c(i));
        }
        if (this.f18087c < this.f18086b.length) {
            System.arraycopy(this.f18086b, i, this.f18086b, i + 1, this.f18087c - i);
        } else {
            float[] fArr = new float[((this.f18087c * 3) / 2) + 1];
            System.arraycopy(this.f18086b, 0, fArr, 0, i);
            System.arraycopy(this.f18086b, i, fArr, i + 1, this.f18087c - i);
            this.f18086b = fArr;
        }
        this.f18086b[i] = floatValue;
        this.f18087c++;
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3853cn, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* synthetic */ boolean add(Object obj) {
        m5655a(((Float) obj).floatValue());
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3853cn, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Float> collection) {
        boolean z = false;
        m5837q_();
        C3908ef.m5612a(collection);
        if (!(collection instanceof C3899ec)) {
            z = super.addAll(collection);
        } else {
            C3899ec c3899ec = (C3899ec) collection;
            if (c3899ec.f18087c != 0) {
                if (Integer.MAX_VALUE - this.f18087c < c3899ec.f18087c) {
                    throw new OutOfMemoryError();
                }
                int i = this.f18087c + c3899ec.f18087c;
                if (i > this.f18086b.length) {
                    this.f18086b = Arrays.copyOf(this.f18086b, i);
                }
                System.arraycopy(c3899ec.f18086b, 0, this.f18086b, this.f18087c, c3899ec.f18087c);
                this.f18087c = i;
                this.modCount++;
                z = true;
            }
        }
        return z;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3853cn, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        boolean z;
        if (this == obj) {
            z = true;
        } else if (!(obj instanceof C3899ec)) {
            z = super.equals(obj);
        } else {
            C3899ec c3899ec = (C3899ec) obj;
            z = false;
            if (this.f18087c == c3899ec.f18087c) {
                float[] fArr = c3899ec.f18086b;
                int i = 0;
                while (true) {
                    if (i >= this.f18087c) {
                        z = true;
                        break;
                    }
                    z = false;
                    if (Float.floatToIntBits(this.f18086b[i]) != Float.floatToIntBits(fArr[i])) {
                        break;
                    }
                    i++;
                }
            }
        }
        return z;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        m5654b(i);
        return Float.valueOf(this.f18086b[i]);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3853cn, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f18087c; i2++) {
            i = (i * 31) + Float.floatToIntBits(this.f18086b[i2]);
        }
        return i;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        int i;
        if (!(obj instanceof Float)) {
            i = -1;
        } else {
            float floatValue = ((Float) obj).floatValue();
            int size = size();
            int i2 = 0;
            while (true) {
                i = -1;
                if (i2 >= size) {
                    break;
                } else if (this.f18086b[i2] == floatValue) {
                    i = i2;
                    break;
                } else {
                    i2++;
                }
            }
        }
        return i;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3853cn, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        m5837q_();
        m5654b(i);
        float f = this.f18086b[i];
        if (i < this.f18087c - 1) {
            System.arraycopy(this.f18086b, i + 1, this.f18086b, i, (this.f18087c - i) - 1);
        }
        this.f18087c--;
        this.modCount++;
        return Float.valueOf(f);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3853cn, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        boolean z;
        m5837q_();
        int i = 0;
        while (true) {
            z = false;
            if (i >= this.f18087c) {
                break;
            } else if (obj.equals(Float.valueOf(this.f18086b[i]))) {
                System.arraycopy(this.f18086b, i + 1, this.f18086b, i, (this.f18087c - i) - 1);
                this.f18087c--;
                this.modCount++;
                z = true;
                break;
            } else {
                i++;
            }
        }
        return z;
    }

    @Override // java.util.AbstractList
    protected final void removeRange(int i, int i2) {
        m5837q_();
        if (i2 < i) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        System.arraycopy(this.f18086b, i2, this.f18086b, i, this.f18087c - i2);
        this.f18087c -= i2 - i;
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3853cn, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        float floatValue = ((Float) obj).floatValue();
        m5837q_();
        m5654b(i);
        float f = this.f18086b[i];
        this.f18086b[i] = floatValue;
        return Float.valueOf(f);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f18087c;
    }
}
