package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dnk.class */
public final class dnk extends dlq<Integer> implements dnn, dpf, RandomAccess {

    /* renamed from: a */
    private static final dnk f47291a;

    /* renamed from: b */
    private int[] f47292b;

    /* renamed from: c */
    private int f47293c;

    static {
        dnk dnkVar = new dnk(new int[0], 0);
        f47291a = dnkVar;
        dnkVar.mo16303b();
    }

    dnk() {
        this(new int[10], 0);
    }

    private dnk(int[] iArr, int i) {
        this.f47292b = iArr;
        this.f47293c = i;
    }

    /* renamed from: d */
    public static dnk m16308d() {
        return f47291a;
    }

    /* renamed from: e */
    private final void m16307e(int i) {
        if (i < 0 || i >= this.f47293c) {
            throw new IndexOutOfBoundsException(m16306f(i));
        }
    }

    /* renamed from: f */
    private final String m16306f(int i) {
        int i2 = this.f47293c;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i);
        sb.append(", Size:");
        sb.append(i2);
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.ads.dlq, java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        int i2;
        int intValue = ((Integer) obj).intValue();
        m16501c();
        if (i < 0 || i > (i2 = this.f47293c)) {
            throw new IndexOutOfBoundsException(m16306f(i));
        }
        int[] iArr = this.f47292b;
        if (i2 < iArr.length) {
            System.arraycopy(iArr, i, iArr, i + 1, i2 - i);
        } else {
            int[] iArr2 = new int[((i2 * 3) / 2) + 1];
            System.arraycopy(iArr, 0, iArr2, 0, i);
            System.arraycopy(this.f47292b, i, iArr2, i + 1, this.f47293c - i);
            this.f47292b = iArr2;
        }
        this.f47292b[i] = intValue;
        this.f47293c++;
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.ads.dlq, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* synthetic */ boolean add(Object obj) {
        mo16304d(((Integer) obj).intValue());
        return true;
    }

    @Override // com.google.android.gms.internal.ads.dlq, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Integer> collection) {
        m16501c();
        dnj.m16316a(collection);
        if (!(collection instanceof dnk)) {
            return super.addAll(collection);
        }
        dnk dnkVar = (dnk) collection;
        int i = dnkVar.f47293c;
        if (i == 0) {
            return false;
        }
        int i2 = this.f47293c;
        if (Integer.MAX_VALUE - i2 < i) {
            throw new OutOfMemoryError();
        }
        int i3 = i2 + i;
        int[] iArr = this.f47292b;
        if (i3 > iArr.length) {
            this.f47292b = Arrays.copyOf(iArr, i3);
        }
        System.arraycopy(dnkVar.f47292b, 0, this.f47292b, this.f47293c, dnkVar.f47293c);
        this.f47293c = i3;
        this.modCount++;
        return true;
    }

    @Override // com.google.android.gms.internal.ads.dnn
    /* renamed from: b */
    public final dnn mo16200a(int i) {
        if (i >= this.f47293c) {
            return new dnk(Arrays.copyOf(this.f47292b, i), this.f47293c);
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: c */
    public final int m16309c(int i) {
        m16307e(i);
        return this.f47292b[i];
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    @Override // com.google.android.gms.internal.ads.dnn
    /* renamed from: d */
    public final void mo16304d(int i) {
        m16501c();
        int i2 = this.f47293c;
        int[] iArr = this.f47292b;
        if (i2 == iArr.length) {
            int[] iArr2 = new int[((i2 * 3) / 2) + 1];
            System.arraycopy(iArr, 0, iArr2, 0, i2);
            this.f47292b = iArr2;
        }
        int[] iArr3 = this.f47292b;
        int i3 = this.f47293c;
        this.f47293c = i3 + 1;
        iArr3[i3] = i;
    }

    @Override // com.google.android.gms.internal.ads.dlq, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof dnk)) {
            return super.equals(obj);
        }
        dnk dnkVar = (dnk) obj;
        if (this.f47293c != dnkVar.f47293c) {
            return false;
        }
        int[] iArr = dnkVar.f47292b;
        for (int i = 0; i < this.f47293c; i++) {
            if (this.f47292b[i] != iArr[i]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        return Integer.valueOf(m16309c(i));
    }

    @Override // com.google.android.gms.internal.ads.dlq, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f47293c; i2++) {
            i = (i * 31) + this.f47292b[i2];
        }
        return i;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Integer)) {
            return -1;
        }
        int intValue = ((Integer) obj).intValue();
        int size = size();
        for (int i = 0; i < size; i++) {
            if (this.f47292b[i] == intValue) {
                return i;
            }
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.dlq, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        m16501c();
        m16307e(i);
        int[] iArr = this.f47292b;
        int i2 = iArr[i];
        int i3 = this.f47293c;
        if (i < i3 - 1) {
            System.arraycopy(iArr, i + 1, iArr, i, (i3 - i) - 1);
        }
        this.f47293c--;
        this.modCount++;
        return Integer.valueOf(i2);
    }

    @Override // java.util.AbstractList
    protected final void removeRange(int i, int i2) {
        m16501c();
        if (i2 >= i) {
            int[] iArr = this.f47292b;
            System.arraycopy(iArr, i2, iArr, i, this.f47293c - i2);
            this.f47293c -= i2 - i;
            this.modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // com.google.android.gms.internal.ads.dlq, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        int intValue = ((Integer) obj).intValue();
        m16501c();
        m16307e(i);
        int[] iArr = this.f47292b;
        int i2 = iArr[i];
        iArr[i] = intValue;
        return Integer.valueOf(i2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f47293c;
    }
}
