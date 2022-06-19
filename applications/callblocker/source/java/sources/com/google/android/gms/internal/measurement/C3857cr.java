package com.google.android.gms.internal.measurement;

import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* renamed from: com.google.android.gms.internal.measurement.cr */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/cr.class */
final class C3857cr extends AbstractC3853cn<Boolean> implements AbstractC3914el<Boolean>, AbstractC3957ga, RandomAccess {

    /* renamed from: a */
    private static final C3857cr f17936a;

    /* renamed from: b */
    private boolean[] f17937b;

    /* renamed from: c */
    private int f17938c;

    static {
        C3857cr c3857cr = new C3857cr(new boolean[0], 0);
        f17936a = c3857cr;
        c3857cr.mo5597b();
    }

    C3857cr() {
        this(new boolean[10], 0);
    }

    private C3857cr(boolean[] zArr, int i) {
        this.f17937b = zArr;
        this.f17938c = i;
    }

    /* renamed from: b */
    private final void m5815b(int i) {
        if (i < 0 || i >= this.f17938c) {
            throw new IndexOutOfBoundsException(m5814c(i));
        }
    }

    /* renamed from: c */
    private final String m5814c(int i) {
        return new StringBuilder(35).append("Index:").append(i).append(", Size:").append(this.f17938c).toString();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3914el
    /* renamed from: a */
    public final /* synthetic */ AbstractC3914el<Boolean> mo5476a(int i) {
        if (i < this.f17938c) {
            throw new IllegalArgumentException();
        }
        return new C3857cr(Arrays.copyOf(this.f17937b, i), this.f17938c);
    }

    /* renamed from: a */
    public final void m5816a(boolean z) {
        m5837q_();
        if (this.f17938c == this.f17937b.length) {
            boolean[] zArr = new boolean[((this.f17938c * 3) / 2) + 1];
            System.arraycopy(this.f17937b, 0, zArr, 0, this.f17938c);
            this.f17937b = zArr;
        }
        boolean[] zArr2 = this.f17937b;
        int i = this.f17938c;
        this.f17938c = i + 1;
        zArr2[i] = z;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3853cn, java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        boolean booleanValue = ((Boolean) obj).booleanValue();
        m5837q_();
        if (i < 0 || i > this.f17938c) {
            throw new IndexOutOfBoundsException(m5814c(i));
        }
        if (this.f17938c < this.f17937b.length) {
            System.arraycopy(this.f17937b, i, this.f17937b, i + 1, this.f17938c - i);
        } else {
            boolean[] zArr = new boolean[((this.f17938c * 3) / 2) + 1];
            System.arraycopy(this.f17937b, 0, zArr, 0, i);
            System.arraycopy(this.f17937b, i, zArr, i + 1, this.f17938c - i);
            this.f17937b = zArr;
        }
        this.f17937b[i] = booleanValue;
        this.f17938c++;
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3853cn, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* synthetic */ boolean add(Object obj) {
        m5816a(((Boolean) obj).booleanValue());
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3853cn, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Boolean> collection) {
        boolean z = false;
        m5837q_();
        C3908ef.m5612a(collection);
        if (!(collection instanceof C3857cr)) {
            z = super.addAll(collection);
        } else {
            C3857cr c3857cr = (C3857cr) collection;
            if (c3857cr.f17938c != 0) {
                if (Integer.MAX_VALUE - this.f17938c < c3857cr.f17938c) {
                    throw new OutOfMemoryError();
                }
                int i = this.f17938c + c3857cr.f17938c;
                if (i > this.f17937b.length) {
                    this.f17937b = Arrays.copyOf(this.f17937b, i);
                }
                System.arraycopy(c3857cr.f17937b, 0, this.f17937b, this.f17938c, c3857cr.f17938c);
                this.f17938c = i;
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
        } else if (!(obj instanceof C3857cr)) {
            z = super.equals(obj);
        } else {
            C3857cr c3857cr = (C3857cr) obj;
            z = false;
            if (this.f17938c == c3857cr.f17938c) {
                boolean[] zArr = c3857cr.f17937b;
                int i = 0;
                while (true) {
                    if (i >= this.f17938c) {
                        z = true;
                        break;
                    }
                    z = false;
                    if (this.f17937b[i] != zArr[i]) {
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
        m5815b(i);
        return Boolean.valueOf(this.f17937b[i]);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3853cn, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f17938c; i2++) {
            i = (i * 31) + C3908ef.m5609a(this.f17937b[i2]);
        }
        return i;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        int i;
        if (!(obj instanceof Boolean)) {
            i = -1;
        } else {
            boolean booleanValue = ((Boolean) obj).booleanValue();
            int size = size();
            int i2 = 0;
            while (true) {
                i = -1;
                if (i2 >= size) {
                    break;
                } else if (this.f17937b[i2] == booleanValue) {
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
        m5815b(i);
        boolean z = this.f17937b[i];
        if (i < this.f17938c - 1) {
            System.arraycopy(this.f17937b, i + 1, this.f17937b, i, (this.f17938c - i) - 1);
        }
        this.f17938c--;
        this.modCount++;
        return Boolean.valueOf(z);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3853cn, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        boolean z;
        m5837q_();
        int i = 0;
        while (true) {
            z = false;
            if (i >= this.f17938c) {
                break;
            } else if (obj.equals(Boolean.valueOf(this.f17937b[i]))) {
                System.arraycopy(this.f17937b, i + 1, this.f17937b, i, (this.f17938c - i) - 1);
                this.f17938c--;
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
        System.arraycopy(this.f17937b, i2, this.f17937b, i, this.f17938c - i2);
        this.f17938c -= i2 - i;
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3853cn, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        boolean booleanValue = ((Boolean) obj).booleanValue();
        m5837q_();
        m5815b(i);
        boolean z = this.f17937b[i];
        this.f17937b[i] = booleanValue;
        return Boolean.valueOf(z);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f17938c;
    }
}
