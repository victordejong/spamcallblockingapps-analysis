package com.google.protobuf;

import android.support.p012v4.media.C0082b;
import com.google.android.gms.common.api.Api;
import com.google.protobuf.C1895k;
import java.nio.charset.Charset;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Objects;
import java.util.RandomAccess;
import p287x6.AbstractC4922t;
/* renamed from: com.google.protobuf.p */
/* loaded from: classes-dex2jar.jar:com/google/protobuf/p.class */
public final class C1910p extends AbstractC1864c<Long> implements RandomAccess, AbstractC4922t {

    /* renamed from: b */
    public long[] f7102b;

    /* renamed from: c */
    public int f7103c;

    static {
        new C1910p(new long[0], 0).f7039a = false;
    }

    public C1910p() {
        this.f7102b = new long[10];
        this.f7103c = 0;
    }

    public C1910p(long[] jArr, int i) {
        this.f7102b = jArr;
        this.f7103c = i;
    }

    @Override // java.util.AbstractList, java.util.List
    public void add(int i, Object obj) {
        int i2;
        long longValue = ((Long) obj).longValue();
        m4347a();
        if (i < 0 || i > (i2 = this.f7103c)) {
            throw new IndexOutOfBoundsException(m4252e(i));
        }
        long[] jArr = this.f7102b;
        if (i2 < jArr.length) {
            System.arraycopy(jArr, i, jArr, i + 1, i2 - i);
        } else {
            long[] jArr2 = new long[C0082b.m8760b(i2, 3, 2, 1)];
            System.arraycopy(jArr, 0, jArr2, 0, i);
            System.arraycopy(this.f7102b, i, jArr2, i + 1, this.f7103c - i);
            this.f7102b = jArr2;
        }
        this.f7102b[i] = longValue;
        this.f7103c++;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.protobuf.AbstractC1864c, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean add(Object obj) {
        m4255b(((Long) obj).longValue());
        return true;
    }

    @Override // com.google.protobuf.AbstractC1864c, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(Collection<? extends Long> collection) {
        m4347a();
        Charset charset = C1895k.f7092a;
        Objects.requireNonNull(collection);
        if (!(collection instanceof C1910p)) {
            return super.addAll(collection);
        }
        C1910p c1910p = (C1910p) collection;
        int i = c1910p.f7103c;
        if (i == 0) {
            return false;
        }
        int i2 = this.f7103c;
        if (Api.BaseClientBuilder.API_PRIORITY_OTHER - i2 < i) {
            throw new OutOfMemoryError();
        }
        int i3 = i2 + i;
        long[] jArr = this.f7102b;
        if (i3 > jArr.length) {
            this.f7102b = Arrays.copyOf(jArr, i3);
        }
        System.arraycopy(c1910p.f7102b, 0, this.f7102b, this.f7103c, c1910p.f7103c);
        this.f7103c = i3;
        ((AbstractList) this).modCount++;
        return true;
    }

    /* renamed from: b */
    public void m4255b(long j) {
        m4347a();
        int i = this.f7103c;
        long[] jArr = this.f7102b;
        if (i == jArr.length) {
            long[] jArr2 = new long[C0082b.m8760b(i, 3, 2, 1)];
            System.arraycopy(jArr, 0, jArr2, 0, i);
            this.f7102b = jArr2;
        }
        long[] jArr3 = this.f7102b;
        int i2 = this.f7103c;
        this.f7103c = i2 + 1;
        jArr3[i2] = j;
    }

    /* renamed from: c */
    public final void m4254c(int i) {
        if (i < 0 || i >= this.f7103c) {
            throw new IndexOutOfBoundsException(m4252e(i));
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    /* renamed from: d */
    public long m4253d(int i) {
        m4254c(i);
        return this.f7102b[i];
    }

    /* renamed from: e */
    public final String m4252e(int i) {
        StringBuilder m8751k = C0082b.m8751k("Index:", i, ", Size:");
        m8751k.append(this.f7103c);
        return m8751k.toString();
    }

    @Override // com.google.protobuf.AbstractC1864c, java.util.AbstractList, java.util.Collection, java.util.List
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C1910p)) {
            return super.equals(obj);
        }
        C1910p c1910p = (C1910p) obj;
        if (this.f7103c != c1910p.f7103c) {
            return false;
        }
        long[] jArr = c1910p.f7102b;
        for (int i = 0; i < this.f7103c; i++) {
            if (this.f7102b[i] != jArr[i]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public Object get(int i) {
        m4254c(i);
        return Long.valueOf(this.f7102b[i]);
    }

    @Override // com.google.protobuf.AbstractC1864c, java.util.AbstractList, java.util.Collection, java.util.List
    public int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f7103c; i2++) {
            i = (i * 31) + C1895k.m4267b(this.f7102b[i2]);
        }
        return i;
    }

    @Override // java.util.AbstractList, java.util.List
    public int indexOf(Object obj) {
        if (!(obj instanceof Long)) {
            return -1;
        }
        long longValue = ((Long) obj).longValue();
        int i = this.f7103c;
        for (int i2 = 0; i2 < i; i2++) {
            if (this.f7102b[i2] == longValue) {
                return i2;
            }
        }
        return -1;
    }

    @Override // com.google.protobuf.C1895k.AbstractC1899d
    /* renamed from: r */
    public C1895k.AbstractC1899d mo4205r(int i) {
        if (i >= this.f7103c) {
            return new C1910p(Arrays.copyOf(this.f7102b, i), this.f7103c);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.protobuf.AbstractC1864c, java.util.AbstractList, java.util.List
    public Object remove(int i) {
        m4347a();
        m4254c(i);
        long[] jArr = this.f7102b;
        long j = jArr[i];
        int i2 = this.f7103c;
        if (i < i2 - 1) {
            System.arraycopy(jArr, i + 1, jArr, i, (i2 - i) - 1);
        }
        this.f7103c--;
        ((AbstractList) this).modCount++;
        return Long.valueOf(j);
    }

    @Override // java.util.AbstractList
    public void removeRange(int i, int i2) {
        m4347a();
        if (i2 >= i) {
            long[] jArr = this.f7102b;
            System.arraycopy(jArr, i2, jArr, i, this.f7103c - i2);
            this.f7103c -= i2 - i;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // java.util.AbstractList, java.util.List
    public Object set(int i, Object obj) {
        long longValue = ((Long) obj).longValue();
        m4347a();
        m4254c(i);
        long[] jArr = this.f7102b;
        long j = jArr[i];
        jArr[i] = longValue;
        return Long.valueOf(j);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.f7103c;
    }
}
