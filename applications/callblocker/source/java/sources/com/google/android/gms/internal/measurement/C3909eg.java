package com.google.android.gms.internal.measurement;

import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* renamed from: com.google.android.gms.internal.measurement.eg */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/eg.class */
public final class C3909eg extends AbstractC3853cn<Integer> implements AbstractC3912ej, AbstractC3957ga, RandomAccess {

    /* renamed from: a */
    private static final C3909eg f18112a;

    /* renamed from: b */
    private int[] f18113b;

    /* renamed from: c */
    private int f18114c;

    static {
        C3909eg c3909eg = new C3909eg(new int[0], 0);
        f18112a = c3909eg;
        c3909eg.mo5597b();
    }

    C3909eg() {
        this(new int[10], 0);
    }

    private C3909eg(int[] iArr, int i) {
        this.f18113b = iArr;
        this.f18114c = i;
    }

    /* renamed from: d */
    public static C3909eg m5604d() {
        return f18112a;
    }

    /* renamed from: e */
    private final void m5602e(int i) {
        if (i < 0 || i >= this.f18114c) {
            throw new IndexOutOfBoundsException(m5601f(i));
        }
    }

    /* renamed from: f */
    private final String m5601f(int i) {
        return new StringBuilder(35).append("Index:").append(i).append(", Size:").append(this.f18114c).toString();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3853cn, java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        int intValue = ((Integer) obj).intValue();
        m5837q_();
        if (i < 0 || i > this.f18114c) {
            throw new IndexOutOfBoundsException(m5601f(i));
        }
        if (this.f18114c < this.f18113b.length) {
            System.arraycopy(this.f18113b, i, this.f18113b, i + 1, this.f18114c - i);
        } else {
            int[] iArr = new int[((this.f18114c * 3) / 2) + 1];
            System.arraycopy(this.f18113b, 0, iArr, 0, i);
            System.arraycopy(this.f18113b, i, iArr, i + 1, this.f18114c - i);
            this.f18113b = iArr;
        }
        this.f18113b[i] = intValue;
        this.f18114c++;
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3853cn, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* synthetic */ boolean add(Object obj) {
        m5603d(((Integer) obj).intValue());
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3853cn, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Integer> collection) {
        boolean z = false;
        m5837q_();
        C3908ef.m5612a(collection);
        if (!(collection instanceof C3909eg)) {
            z = super.addAll(collection);
        } else {
            C3909eg c3909eg = (C3909eg) collection;
            if (c3909eg.f18114c != 0) {
                if (Integer.MAX_VALUE - this.f18114c < c3909eg.f18114c) {
                    throw new OutOfMemoryError();
                }
                int i = this.f18114c + c3909eg.f18114c;
                if (i > this.f18113b.length) {
                    this.f18113b = Arrays.copyOf(this.f18113b, i);
                }
                System.arraycopy(c3909eg.f18113b, 0, this.f18113b, this.f18114c, c3909eg.f18114c);
                this.f18114c = i;
                this.modCount++;
                z = true;
            }
        }
        return z;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3912ej
    /* renamed from: b */
    public final AbstractC3912ej mo5476a(int i) {
        if (i < this.f18114c) {
            throw new IllegalArgumentException();
        }
        return new C3909eg(Arrays.copyOf(this.f18113b, i), this.f18114c);
    }

    /* renamed from: c */
    public final int m5605c(int i) {
        m5602e(i);
        return this.f18113b[i];
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    /* renamed from: d */
    public final void m5603d(int i) {
        m5837q_();
        if (this.f18114c == this.f18113b.length) {
            int[] iArr = new int[((this.f18114c * 3) / 2) + 1];
            System.arraycopy(this.f18113b, 0, iArr, 0, this.f18114c);
            this.f18113b = iArr;
        }
        int[] iArr2 = this.f18113b;
        int i2 = this.f18114c;
        this.f18114c = i2 + 1;
        iArr2[i2] = i;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3853cn, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        boolean z;
        if (this == obj) {
            z = true;
        } else if (!(obj instanceof C3909eg)) {
            z = super.equals(obj);
        } else {
            C3909eg c3909eg = (C3909eg) obj;
            z = false;
            if (this.f18114c == c3909eg.f18114c) {
                int[] iArr = c3909eg.f18113b;
                int i = 0;
                while (true) {
                    if (i >= this.f18114c) {
                        z = true;
                        break;
                    }
                    z = false;
                    if (this.f18113b[i] != iArr[i]) {
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
        return Integer.valueOf(m5605c(i));
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3853cn, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f18114c; i2++) {
            i = (i * 31) + this.f18113b[i2];
        }
        return i;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        int i;
        if (!(obj instanceof Integer)) {
            i = -1;
        } else {
            int intValue = ((Integer) obj).intValue();
            int size = size();
            int i2 = 0;
            while (true) {
                i = -1;
                if (i2 >= size) {
                    break;
                } else if (this.f18113b[i2] == intValue) {
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
        m5602e(i);
        int i2 = this.f18113b[i];
        if (i < this.f18114c - 1) {
            System.arraycopy(this.f18113b, i + 1, this.f18113b, i, (this.f18114c - i) - 1);
        }
        this.f18114c--;
        this.modCount++;
        return Integer.valueOf(i2);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3853cn, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        boolean z;
        m5837q_();
        int i = 0;
        while (true) {
            z = false;
            if (i >= this.f18114c) {
                break;
            } else if (obj.equals(Integer.valueOf(this.f18113b[i]))) {
                System.arraycopy(this.f18113b, i + 1, this.f18113b, i, (this.f18114c - i) - 1);
                this.f18114c--;
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
        System.arraycopy(this.f18113b, i2, this.f18113b, i, this.f18114c - i2);
        this.f18114c -= i2 - i;
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3853cn, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        int intValue = ((Integer) obj).intValue();
        m5837q_();
        m5602e(i);
        int i2 = this.f18113b[i];
        this.f18113b[i] = intValue;
        return Integer.valueOf(i2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f18114c;
    }
}
