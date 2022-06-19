package com.google.android.gms.internal.measurement;

import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* renamed from: com.google.android.gms.internal.measurement.fb */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/fb.class */
public final class C3931fb extends AbstractC3853cn<Long> implements AbstractC3915em, AbstractC3957ga, RandomAccess {

    /* renamed from: a */
    private static final C3931fb f18147a;

    /* renamed from: b */
    private long[] f18148b;

    /* renamed from: c */
    private int f18149c;

    static {
        C3931fb c3931fb = new C3931fb(new long[0], 0);
        f18147a = c3931fb;
        c3931fb.mo5597b();
    }

    C3931fb() {
        this(new long[10], 0);
    }

    private C3931fb(long[] jArr, int i) {
        this.f18148b = jArr;
        this.f18149c = i;
    }

    /* renamed from: d */
    public static C3931fb m5573d() {
        return f18147a;
    }

    /* renamed from: d */
    private final void m5572d(int i) {
        if (i < 0 || i >= this.f18149c) {
            throw new IndexOutOfBoundsException(m5571e(i));
        }
    }

    /* renamed from: e */
    private final String m5571e(int i) {
        return new StringBuilder(35).append("Index:").append(i).append(", Size:").append(this.f18149c).toString();
    }

    /* renamed from: a */
    public final void m5576a(long j) {
        m5837q_();
        if (this.f18149c == this.f18148b.length) {
            long[] jArr = new long[((this.f18149c * 3) / 2) + 1];
            System.arraycopy(this.f18148b, 0, jArr, 0, this.f18149c);
            this.f18148b = jArr;
        }
        long[] jArr2 = this.f18148b;
        int i = this.f18149c;
        this.f18149c = i + 1;
        jArr2[i] = j;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3853cn, java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        long longValue = ((Long) obj).longValue();
        m5837q_();
        if (i < 0 || i > this.f18149c) {
            throw new IndexOutOfBoundsException(m5571e(i));
        }
        if (this.f18149c < this.f18148b.length) {
            System.arraycopy(this.f18148b, i, this.f18148b, i + 1, this.f18149c - i);
        } else {
            long[] jArr = new long[((this.f18149c * 3) / 2) + 1];
            System.arraycopy(this.f18148b, 0, jArr, 0, i);
            System.arraycopy(this.f18148b, i, jArr, i + 1, this.f18149c - i);
            this.f18148b = jArr;
        }
        this.f18148b[i] = longValue;
        this.f18149c++;
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3853cn, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* synthetic */ boolean add(Object obj) {
        m5576a(((Long) obj).longValue());
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3853cn, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Long> collection) {
        boolean z = false;
        m5837q_();
        C3908ef.m5612a(collection);
        if (!(collection instanceof C3931fb)) {
            z = super.addAll(collection);
        } else {
            C3931fb c3931fb = (C3931fb) collection;
            if (c3931fb.f18149c != 0) {
                if (Integer.MAX_VALUE - this.f18149c < c3931fb.f18149c) {
                    throw new OutOfMemoryError();
                }
                int i = this.f18149c + c3931fb.f18149c;
                if (i > this.f18148b.length) {
                    this.f18148b = Arrays.copyOf(this.f18148b, i);
                }
                System.arraycopy(c3931fb.f18148b, 0, this.f18148b, this.f18149c, c3931fb.f18149c);
                this.f18149c = i;
                this.modCount++;
                z = true;
            }
        }
        return z;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3915em
    /* renamed from: b */
    public final long mo5575b(int i) {
        m5572d(i);
        return this.f18148b[i];
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3915em
    /* renamed from: c */
    public final AbstractC3915em mo5476a(int i) {
        if (i < this.f18149c) {
            throw new IllegalArgumentException();
        }
        return new C3931fb(Arrays.copyOf(this.f18148b, i), this.f18149c);
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
        } else if (!(obj instanceof C3931fb)) {
            z = super.equals(obj);
        } else {
            C3931fb c3931fb = (C3931fb) obj;
            z = false;
            if (this.f18149c == c3931fb.f18149c) {
                long[] jArr = c3931fb.f18148b;
                int i = 0;
                while (true) {
                    if (i >= this.f18149c) {
                        z = true;
                        break;
                    }
                    z = false;
                    if (this.f18148b[i] != jArr[i]) {
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
        return Long.valueOf(mo5575b(i));
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3853cn, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f18149c; i2++) {
            i = (i * 31) + C3908ef.m5614a(this.f18148b[i2]);
        }
        return i;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        int i;
        if (!(obj instanceof Long)) {
            i = -1;
        } else {
            long longValue = ((Long) obj).longValue();
            int size = size();
            int i2 = 0;
            while (true) {
                i = -1;
                if (i2 >= size) {
                    break;
                } else if (this.f18148b[i2] == longValue) {
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
        m5572d(i);
        long j = this.f18148b[i];
        if (i < this.f18149c - 1) {
            System.arraycopy(this.f18148b, i + 1, this.f18148b, i, (this.f18149c - i) - 1);
        }
        this.f18149c--;
        this.modCount++;
        return Long.valueOf(j);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3853cn, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        boolean z;
        m5837q_();
        int i = 0;
        while (true) {
            z = false;
            if (i >= this.f18149c) {
                break;
            } else if (obj.equals(Long.valueOf(this.f18148b[i]))) {
                System.arraycopy(this.f18148b, i + 1, this.f18148b, i, (this.f18149c - i) - 1);
                this.f18149c--;
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
        System.arraycopy(this.f18148b, i2, this.f18148b, i, this.f18149c - i2);
        this.f18149c -= i2 - i;
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3853cn, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        long longValue = ((Long) obj).longValue();
        m5837q_();
        m5572d(i);
        long j = this.f18148b[i];
        this.f18148b[i] = longValue;
        return Long.valueOf(j);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f18149c;
    }
}
