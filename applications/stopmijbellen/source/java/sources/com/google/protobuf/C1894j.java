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
/* renamed from: com.google.protobuf.j */
/* loaded from: classes-dex2jar.jar:com/google/protobuf/j.class */
public final class C1894j extends AbstractC1864c<Integer> implements C1895k.AbstractC1898c, RandomAccess, AbstractC4922t {

    /* renamed from: d */
    public static final C1894j f7089d;

    /* renamed from: b */
    public int[] f7090b;

    /* renamed from: c */
    public int f7091c;

    static {
        C1894j c1894j = new C1894j(new int[0], 0);
        f7089d = c1894j;
        c1894j.f7039a = false;
    }

    public C1894j() {
        this.f7090b = new int[10];
        this.f7091c = 0;
    }

    public C1894j(int[] iArr, int i) {
        this.f7090b = iArr;
        this.f7091c = i;
    }

    @Override // java.util.AbstractList, java.util.List
    public void add(int i, Object obj) {
        int i2;
        int intValue = ((Integer) obj).intValue();
        m4347a();
        if (i < 0 || i > (i2 = this.f7091c)) {
            throw new IndexOutOfBoundsException(m4270e(i));
        }
        int[] iArr = this.f7090b;
        if (i2 < iArr.length) {
            System.arraycopy(iArr, i, iArr, i + 1, i2 - i);
        } else {
            int[] iArr2 = new int[C0082b.m8760b(i2, 3, 2, 1)];
            System.arraycopy(iArr, 0, iArr2, 0, i);
            System.arraycopy(this.f7090b, i, iArr2, i + 1, this.f7091c - i);
            this.f7090b = iArr2;
        }
        this.f7090b[i] = intValue;
        this.f7091c++;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.protobuf.AbstractC1864c, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean add(Object obj) {
        m4273b(((Integer) obj).intValue());
        return true;
    }

    @Override // com.google.protobuf.AbstractC1864c, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(Collection<? extends Integer> collection) {
        m4347a();
        Charset charset = C1895k.f7092a;
        Objects.requireNonNull(collection);
        if (!(collection instanceof C1894j)) {
            return super.addAll(collection);
        }
        C1894j c1894j = (C1894j) collection;
        int i = c1894j.f7091c;
        if (i == 0) {
            return false;
        }
        int i2 = this.f7091c;
        if (Api.BaseClientBuilder.API_PRIORITY_OTHER - i2 < i) {
            throw new OutOfMemoryError();
        }
        int i3 = i2 + i;
        int[] iArr = this.f7090b;
        if (i3 > iArr.length) {
            this.f7090b = Arrays.copyOf(iArr, i3);
        }
        System.arraycopy(c1894j.f7090b, 0, this.f7090b, this.f7091c, c1894j.f7091c);
        this.f7091c = i3;
        ((AbstractList) this).modCount++;
        return true;
    }

    /* renamed from: b */
    public void m4273b(int i) {
        m4347a();
        int i2 = this.f7091c;
        int[] iArr = this.f7090b;
        if (i2 == iArr.length) {
            int[] iArr2 = new int[C0082b.m8760b(i2, 3, 2, 1)];
            System.arraycopy(iArr, 0, iArr2, 0, i2);
            this.f7090b = iArr2;
        }
        int[] iArr3 = this.f7090b;
        int i3 = this.f7091c;
        this.f7091c = i3 + 1;
        iArr3[i3] = i;
    }

    /* renamed from: c */
    public final void m4272c(int i) {
        if (i < 0 || i >= this.f7091c) {
            throw new IndexOutOfBoundsException(m4270e(i));
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    /* renamed from: d */
    public int m4271d(int i) {
        m4272c(i);
        return this.f7090b[i];
    }

    /* renamed from: e */
    public final String m4270e(int i) {
        StringBuilder m8751k = C0082b.m8751k("Index:", i, ", Size:");
        m8751k.append(this.f7091c);
        return m8751k.toString();
    }

    @Override // com.google.protobuf.AbstractC1864c, java.util.AbstractList, java.util.Collection, java.util.List
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C1894j)) {
            return super.equals(obj);
        }
        C1894j c1894j = (C1894j) obj;
        if (this.f7091c != c1894j.f7091c) {
            return false;
        }
        int[] iArr = c1894j.f7090b;
        for (int i = 0; i < this.f7091c; i++) {
            if (this.f7090b[i] != iArr[i]) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: f */
    public C1895k.AbstractC1898c mo4205r(int i) {
        if (i >= this.f7091c) {
            return new C1894j(Arrays.copyOf(this.f7090b, i), this.f7091c);
        }
        throw new IllegalArgumentException();
    }

    @Override // java.util.AbstractList, java.util.List
    public Object get(int i) {
        m4272c(i);
        return Integer.valueOf(this.f7090b[i]);
    }

    @Override // com.google.protobuf.AbstractC1864c, java.util.AbstractList, java.util.Collection, java.util.List
    public int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f7091c; i2++) {
            i = (i * 31) + this.f7090b[i2];
        }
        return i;
    }

    @Override // java.util.AbstractList, java.util.List
    public int indexOf(Object obj) {
        if (!(obj instanceof Integer)) {
            return -1;
        }
        int intValue = ((Integer) obj).intValue();
        int i = this.f7091c;
        for (int i2 = 0; i2 < i; i2++) {
            if (this.f7090b[i2] == intValue) {
                return i2;
            }
        }
        return -1;
    }

    @Override // com.google.protobuf.AbstractC1864c, java.util.AbstractList, java.util.List
    public Object remove(int i) {
        m4347a();
        m4272c(i);
        int[] iArr = this.f7090b;
        int i2 = iArr[i];
        int i3 = this.f7091c;
        if (i < i3 - 1) {
            System.arraycopy(iArr, i + 1, iArr, i, (i3 - i) - 1);
        }
        this.f7091c--;
        ((AbstractList) this).modCount++;
        return Integer.valueOf(i2);
    }

    @Override // java.util.AbstractList
    public void removeRange(int i, int i2) {
        m4347a();
        if (i2 >= i) {
            int[] iArr = this.f7090b;
            System.arraycopy(iArr, i2, iArr, i, this.f7091c - i2);
            this.f7091c -= i2 - i;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // java.util.AbstractList, java.util.List
    public Object set(int i, Object obj) {
        int intValue = ((Integer) obj).intValue();
        m4347a();
        m4272c(i);
        int[] iArr = this.f7090b;
        int i2 = iArr[i];
        iArr[i] = intValue;
        return Integer.valueOf(i2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.f7091c;
    }
}
