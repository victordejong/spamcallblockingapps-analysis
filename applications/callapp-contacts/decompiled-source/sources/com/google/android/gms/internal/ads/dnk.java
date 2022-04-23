package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dnk.class */
public final class dnk extends dlq<Integer> implements dnn, dpf, RandomAccess {

    /* renamed from: a  reason: collision with root package name */
    private static final dnk f27005a;

    /* renamed from: b  reason: collision with root package name */
    private int[] f27006b;

    /* renamed from: c  reason: collision with root package name */
    private int f27007c;

    static {
        dnk dnkVar = new dnk(new int[0], 0);
        f27005a = dnkVar;
        dnkVar.b();
    }

    dnk() {
        this(new int[10], 0);
    }

    private dnk(int[] iArr, int i) {
        this.f27006b = iArr;
        this.f27007c = i;
    }

    public static dnk d() {
        return f27005a;
    }

    private final void e(int i) {
        if (i < 0 || i >= this.f27007c) {
            throw new IndexOutOfBoundsException(f(i));
        }
    }

    private final String f(int i) {
        int i2 = this.f27007c;
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
        c();
        if (i < 0 || i > (i2 = this.f27007c)) {
            throw new IndexOutOfBoundsException(f(i));
        }
        int[] iArr = this.f27006b;
        if (i2 < iArr.length) {
            System.arraycopy(iArr, i, iArr, i + 1, i2 - i);
        } else {
            int[] iArr2 = new int[((i2 * 3) / 2) + 1];
            System.arraycopy(iArr, 0, iArr2, 0, i);
            System.arraycopy(this.f27006b, i, iArr2, i + 1, this.f27007c - i);
            this.f27006b = iArr2;
        }
        this.f27006b[i] = intValue;
        this.f27007c++;
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.ads.dlq, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* synthetic */ boolean add(Object obj) {
        d(((Integer) obj).intValue());
        return true;
    }

    @Override // com.google.android.gms.internal.ads.dlq, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Integer> collection) {
        c();
        dnj.a(collection);
        if (!(collection instanceof dnk)) {
            return super.addAll(collection);
        }
        dnk dnkVar = (dnk) collection;
        int i = dnkVar.f27007c;
        if (i == 0) {
            return false;
        }
        int i2 = this.f27007c;
        if (Integer.MAX_VALUE - i2 >= i) {
            int i3 = i2 + i;
            int[] iArr = this.f27006b;
            if (i3 > iArr.length) {
                this.f27006b = Arrays.copyOf(iArr, i3);
            }
            System.arraycopy(dnkVar.f27006b, 0, this.f27006b, this.f27007c, dnkVar.f27007c);
            this.f27007c = i3;
            this.modCount++;
            return true;
        }
        throw new OutOfMemoryError();
    }

    @Override // com.google.android.gms.internal.ads.dnn
    /* renamed from: b */
    public final dnn a(int i) {
        if (i >= this.f27007c) {
            return new dnk(Arrays.copyOf(this.f27006b, i), this.f27007c);
        }
        throw new IllegalArgumentException();
    }

    public final int c(int i) {
        e(i);
        return this.f27006b[i];
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    @Override // com.google.android.gms.internal.ads.dnn
    public final void d(int i) {
        c();
        int i2 = this.f27007c;
        int[] iArr = this.f27006b;
        if (i2 == iArr.length) {
            int[] iArr2 = new int[((i2 * 3) / 2) + 1];
            System.arraycopy(iArr, 0, iArr2, 0, i2);
            this.f27006b = iArr2;
        }
        int[] iArr3 = this.f27006b;
        int i3 = this.f27007c;
        this.f27007c = i3 + 1;
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
        if (this.f27007c != dnkVar.f27007c) {
            return false;
        }
        int[] iArr = dnkVar.f27006b;
        for (int i = 0; i < this.f27007c; i++) {
            if (this.f27006b[i] != iArr[i]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        return Integer.valueOf(c(i));
    }

    @Override // com.google.android.gms.internal.ads.dlq, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f27007c; i2++) {
            i = (i * 31) + this.f27006b[i2];
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
            if (this.f27006b[i] == intValue) {
                return i;
            }
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.dlq, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        c();
        e(i);
        int[] iArr = this.f27006b;
        int i2 = iArr[i];
        int i3 = this.f27007c;
        if (i < i3 - 1) {
            System.arraycopy(iArr, i + 1, iArr, i, (i3 - i) - 1);
        }
        this.f27007c--;
        this.modCount++;
        return Integer.valueOf(i2);
    }

    @Override // java.util.AbstractList
    protected final void removeRange(int i, int i2) {
        c();
        if (i2 >= i) {
            int[] iArr = this.f27006b;
            System.arraycopy(iArr, i2, iArr, i, this.f27007c - i2);
            this.f27007c -= i2 - i;
            this.modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // com.google.android.gms.internal.ads.dlq, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        int intValue = ((Integer) obj).intValue();
        c();
        e(i);
        int[] iArr = this.f27006b;
        int i2 = iArr[i];
        iArr[i] = intValue;
        return Integer.valueOf(i2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f27007c;
    }
}
