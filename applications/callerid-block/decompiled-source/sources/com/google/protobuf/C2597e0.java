package com.google.protobuf;

import com.google.protobuf.C2665x;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* renamed from: com.google.protobuf.e0 */
/* loaded from: classes2-dex2jar.jar:com/google/protobuf/e0.class */
final class C2597e0 extends AbstractC2576c<Long> implements C2665x.AbstractC2673h, RandomAccess, AbstractC2662v0 {

    /* renamed from: e */
    private static final C2597e0 f11082e;

    /* renamed from: c */
    private long[] f11083c;

    /* renamed from: d */
    private int f11084d;

    static {
        C2597e0 e0Var = new C2597e0(new long[0], 0);
        f11082e = e0Var;
        e0Var.mo2236h();
    }

    C2597e0() {
        this(new long[10], 0);
    }

    private C2597e0(long[] jArr, int i) {
        this.f11083c = jArr;
        this.f11084d = i;
    }

    /* renamed from: B */
    private String m2771B(int i) {
        return "Index:" + i + ", Size:" + this.f11084d;
    }

    /* renamed from: p */
    private void m2764p(int i, long j) {
        int i2;
        m2894a();
        if (i < 0 || i > (i2 = this.f11084d)) {
            throw new IndexOutOfBoundsException(m2771B(i));
        }
        long[] jArr = this.f11083c;
        if (i2 < jArr.length) {
            System.arraycopy(jArr, i, jArr, i + 1, i2 - i);
        } else {
            long[] jArr2 = new long[((i2 * 3) / 2) + 1];
            System.arraycopy(jArr, 0, jArr2, 0, i);
            System.arraycopy(this.f11083c, i, jArr2, i + 1, this.f11084d - i);
            this.f11083c = jArr2;
        }
        this.f11083c[i] = j;
        this.f11084d++;
        ((AbstractList) this).modCount++;
    }

    /* renamed from: u */
    private void m2762u(int i) {
        if (i < 0 || i >= this.f11084d) {
            throw new IndexOutOfBoundsException(m2771B(i));
        }
    }

    /* renamed from: A */
    public long m2772A(int i) {
        m2762u(i);
        return this.f11083c[i];
    }

    /* renamed from: C */
    public C2665x.AbstractC2673h mo2235d(int i) {
        if (i >= this.f11084d) {
            return new C2597e0(Arrays.copyOf(this.f11083c, i), this.f11084d);
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: F */
    public Long remove(int i) {
        m2894a();
        m2762u(i);
        long[] jArr = this.f11083c;
        long j = jArr[i];
        int i2 = this.f11084d;
        if (i < i2 - 1) {
            System.arraycopy(jArr, i + 1, jArr, i, (i2 - i) - 1);
        }
        this.f11084d--;
        ((AbstractList) this).modCount++;
        return Long.valueOf(j);
    }

    /* renamed from: G */
    public Long set(int i, Long l) {
        return Long.valueOf(m2767I(i, l.longValue()));
    }

    /* renamed from: I */
    public long m2767I(int i, long j) {
        m2894a();
        m2762u(i);
        long[] jArr = this.f11083c;
        long j2 = jArr[i];
        jArr[i] = j;
        return j2;
    }

    @Override // com.google.protobuf.AbstractC2576c, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(Collection<? extends Long> collection) {
        m2894a();
        C2665x.m2251a(collection);
        if (!(collection instanceof C2597e0)) {
            return super.addAll(collection);
        }
        C2597e0 e0Var = (C2597e0) collection;
        int i = e0Var.f11084d;
        if (i == 0) {
            return false;
        }
        int i2 = this.f11084d;
        if (Integer.MAX_VALUE - i2 >= i) {
            int i3 = i2 + i;
            long[] jArr = this.f11083c;
            if (i3 > jArr.length) {
                this.f11083c = Arrays.copyOf(jArr, i3);
            }
            System.arraycopy(e0Var.f11083c, 0, this.f11083c, this.f11084d, e0Var.f11084d);
            this.f11084d = i3;
            ((AbstractList) this).modCount++;
            return true;
        }
        throw new OutOfMemoryError();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    @Override // com.google.protobuf.AbstractC2576c, java.util.AbstractList, java.util.Collection, java.util.List
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C2597e0)) {
            return super.equals(obj);
        }
        C2597e0 e0Var = (C2597e0) obj;
        if (this.f11084d != e0Var.f11084d) {
            return false;
        }
        long[] jArr = e0Var.f11083c;
        for (int i = 0; i < this.f11084d; i++) {
            if (this.f11083c[i] != jArr[i]) {
                return false;
            }
        }
        return true;
    }

    @Override // com.google.protobuf.AbstractC2576c, java.util.AbstractList, java.util.Collection, java.util.List
    public int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f11084d; i2++) {
            i = (i * 31) + C2665x.m2246f(this.f11083c[i2]);
        }
        return i;
    }

    @Override // java.util.AbstractList, java.util.List
    public int indexOf(Object obj) {
        if (!(obj instanceof Long)) {
            return -1;
        }
        long longValue = ((Long) obj).longValue();
        int size = size();
        for (int i = 0; i < size; i++) {
            if (this.f11083c[i] == longValue) {
                return i;
            }
        }
        return -1;
    }

    /* renamed from: j */
    public void add(int i, Long l) {
        m2764p(i, l.longValue());
    }

    /* renamed from: k */
    public boolean add(Long l) {
        m2763r(l.longValue());
        return true;
    }

    /* renamed from: r */
    public void m2763r(long j) {
        m2894a();
        int i = this.f11084d;
        long[] jArr = this.f11083c;
        if (i == jArr.length) {
            long[] jArr2 = new long[((i * 3) / 2) + 1];
            System.arraycopy(jArr, 0, jArr2, 0, i);
            this.f11083c = jArr2;
        }
        long[] jArr3 = this.f11083c;
        int i2 = this.f11084d;
        this.f11084d = i2 + 1;
        jArr3[i2] = j;
    }

    @Override // java.util.AbstractList
    protected void removeRange(int i, int i2) {
        m2894a();
        if (i2 >= i) {
            long[] jArr = this.f11083c;
            System.arraycopy(jArr, i2, jArr, i, this.f11084d - i2);
            this.f11084d -= i2 - i;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.f11084d;
    }

    /* renamed from: x */
    public Long get(int i) {
        return Long.valueOf(m2772A(i));
    }
}
