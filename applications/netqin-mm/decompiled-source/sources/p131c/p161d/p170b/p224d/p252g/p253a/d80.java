package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzekb;
import com.google.android.gms.internal.ads.zzekh;
import com.mopub.nativeads.MoPubNativeAdPositioning;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* renamed from: c.d.b.d.g.a.d80 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/d80.class */
public final class d80 extends t60<Long> implements zzekh, w80, RandomAccess {

    /* renamed from: d */
    public static final d80 f12634d;

    /* renamed from: b */
    public long[] f12635b;

    /* renamed from: c */
    public int f12636c;

    static {
        d80 d80Var = new d80(new long[0], 0);
        f12634d = d80Var;
        d80Var.mo12361A();
    }

    public d80() {
        this(new long[10], 0);
    }

    public d80(long[] jArr, int i) {
        this.f12635b = jArr;
        this.f12636c = i;
    }

    /* renamed from: b */
    public static d80 m27073b() {
        return f12634d;
    }

    /* renamed from: a */
    public final long m27075a(int i) {
        m27072f(i);
        return this.f12635b[i];
    }

    /* renamed from: a */
    public final void m27074a(long j) {
        m26328a();
        int i = this.f12636c;
        long[] jArr = this.f12635b;
        if (i == jArr.length) {
            long[] jArr2 = new long[((i * 3) / 2) + 1];
            System.arraycopy(jArr, 0, jArr2, 0, i);
            this.f12635b = jArr2;
        }
        long[] jArr3 = this.f12635b;
        int i2 = this.f12636c;
        this.f12636c = i2 + 1;
        jArr3[i2] = j;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        int i2;
        long longValue = ((Long) obj).longValue();
        m26328a();
        if (i < 0 || i > (i2 = this.f12636c)) {
            throw new IndexOutOfBoundsException(m27071l(i));
        }
        long[] jArr = this.f12635b;
        if (i2 < jArr.length) {
            System.arraycopy(jArr, i, jArr, i + 1, i2 - i);
        } else {
            long[] jArr2 = new long[((i2 * 3) / 2) + 1];
            System.arraycopy(jArr, 0, jArr2, 0, i);
            System.arraycopy(this.f12635b, i, jArr2, i + 1, this.f12636c - i);
            this.f12635b = jArr2;
        }
        this.f12635b[i] = longValue;
        this.f12636c++;
        ((AbstractList) this).modCount++;
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.t60, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* synthetic */ boolean add(Object obj) {
        m27074a(((Long) obj).longValue());
        return true;
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.t60, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Long> collection) {
        m26328a();
        zzekb.m12372a(collection);
        if (!(collection instanceof d80)) {
            return super.addAll(collection);
        }
        d80 d80Var = (d80) collection;
        int i = d80Var.f12636c;
        if (i == 0) {
            return false;
        }
        int i2 = this.f12636c;
        if (MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT - i2 >= i) {
            int i3 = i2 + i;
            long[] jArr = this.f12635b;
            if (i3 > jArr.length) {
                this.f12635b = Arrays.copyOf(jArr, i3);
            }
            System.arraycopy(d80Var.f12635b, 0, this.f12635b, this.f12636c, d80Var.f12636c);
            this.f12636c = i3;
            ((AbstractList) this).modCount++;
            return true;
        }
        throw new OutOfMemoryError();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.t60, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof d80)) {
            return super.equals(obj);
        }
        d80 d80Var = (d80) obj;
        if (this.f12636c != d80Var.f12636c) {
            return false;
        }
        long[] jArr = d80Var.f12635b;
        for (int i = 0; i < this.f12636c; i++) {
            if (this.f12635b[i] != jArr[i]) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: f */
    public final void m27072f(int i) {
        if (i < 0 || i >= this.f12636c) {
            throw new IndexOutOfBoundsException(m27071l(i));
        }
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        return Long.valueOf(m27075a(i));
    }

    @Override // com.google.android.gms.internal.ads.zzekh
    /* renamed from: h */
    public final zzekh mo12357e(int i) {
        if (i >= this.f12636c) {
            return new d80(Arrays.copyOf(this.f12635b, i), this.f12636c);
        }
        throw new IllegalArgumentException();
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.t60, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f12636c; i2++) {
            i = (i * 31) + zzekb.m12374a(this.f12635b[i2]);
        }
        return i;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Long)) {
            return -1;
        }
        long longValue = ((Long) obj).longValue();
        int size = size();
        for (int i = 0; i < size; i++) {
            if (this.f12635b[i] == longValue) {
                return i;
            }
        }
        return -1;
    }

    /* renamed from: l */
    public final String m27071l(int i) {
        int i2 = this.f12636c;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i);
        sb.append(", Size:");
        sb.append(i2);
        return sb.toString();
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        m26328a();
        m27072f(i);
        long[] jArr = this.f12635b;
        long j = jArr[i];
        int i2 = this.f12636c;
        if (i < i2 - 1) {
            System.arraycopy(jArr, i + 1, jArr, i, (i2 - i) - 1);
        }
        this.f12636c--;
        ((AbstractList) this).modCount++;
        return Long.valueOf(j);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.t60, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        m26328a();
        for (int i = 0; i < this.f12636c; i++) {
            if (obj.equals(Long.valueOf(this.f12635b[i]))) {
                long[] jArr = this.f12635b;
                System.arraycopy(jArr, i + 1, jArr, i, (this.f12636c - i) - 1);
                this.f12636c--;
                ((AbstractList) this).modCount++;
                return true;
            }
        }
        return false;
    }

    @Override // java.util.AbstractList
    public final void removeRange(int i, int i2) {
        m26328a();
        if (i2 >= i) {
            long[] jArr = this.f12635b;
            System.arraycopy(jArr, i2, jArr, i, this.f12636c - i2);
            this.f12636c -= i2 - i;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        long longValue = ((Long) obj).longValue();
        m26328a();
        m27072f(i);
        long[] jArr = this.f12635b;
        long j = jArr[i];
        jArr[i] = longValue;
        return Long.valueOf(j);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f12636c;
    }
}
