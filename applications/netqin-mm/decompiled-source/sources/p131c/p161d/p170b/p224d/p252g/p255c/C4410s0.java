package p131c.p161d.p170b.p224d.p252g.p255c;

import com.google.android.gms.internal.clearcut.zzci;
import com.google.android.gms.internal.clearcut.zzcn;
import com.mopub.nativeads.MoPubNativeAdPositioning;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* renamed from: c.d.b.d.g.c.s0 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/c/s0.class */
public final class C4410s0 extends AbstractC4374l<Long> implements zzcn<Long>, RandomAccess {

    /* renamed from: d */
    public static final C4410s0 f16627d;

    /* renamed from: b */
    public long[] f16628b;

    /* renamed from: c */
    public int f16629c;

    static {
        C4410s0 s0Var = new C4410s0();
        f16627d = s0Var;
        s0Var.zzv();
    }

    public C4410s0() {
        this(new long[10], 0);
    }

    public C4410s0(long[] jArr, int i) {
        this.f16628b = jArr;
        this.f16629c = i;
    }

    /* renamed from: b */
    public static C4410s0 m25648b() {
        return f16627d;
    }

    /* renamed from: a */
    public final long m25651a(int i) {
        m25647f(i);
        return this.f16628b[i];
    }

    /* renamed from: a */
    public final void m25650a(int i, long j) {
        int i2;
        m25822a();
        if (i < 0 || i > (i2 = this.f16629c)) {
            throw new IndexOutOfBoundsException(m25646l(i));
        }
        long[] jArr = this.f16628b;
        if (i2 < jArr.length) {
            System.arraycopy(jArr, i, jArr, i + 1, i2 - i);
        } else {
            long[] jArr2 = new long[((i2 * 3) / 2) + 1];
            System.arraycopy(jArr, 0, jArr2, 0, i);
            System.arraycopy(this.f16628b, i, jArr2, i + 1, this.f16629c - i);
            this.f16628b = jArr2;
        }
        this.f16628b[i] = j;
        this.f16629c++;
        ((AbstractList) this).modCount++;
    }

    /* renamed from: a */
    public final void m25649a(long j) {
        m25650a(this.f16629c, j);
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        m25650a(i, ((Long) obj).longValue());
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p255c.AbstractC4374l, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Long> collection) {
        m25822a();
        zzci.m10701a(collection);
        if (!(collection instanceof C4410s0)) {
            return super.addAll(collection);
        }
        C4410s0 s0Var = (C4410s0) collection;
        int i = s0Var.f16629c;
        if (i == 0) {
            return false;
        }
        int i2 = this.f16629c;
        if (MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT - i2 >= i) {
            int i3 = i2 + i;
            long[] jArr = this.f16628b;
            if (i3 > jArr.length) {
                this.f16628b = Arrays.copyOf(jArr, i3);
            }
            System.arraycopy(s0Var.f16628b, 0, this.f16628b, this.f16629c, s0Var.f16629c);
            this.f16629c = i3;
            ((AbstractList) this).modCount++;
            return true;
        }
        throw new OutOfMemoryError();
    }

    @Override // com.google.android.gms.internal.clearcut.zzcn
    /* renamed from: c */
    public final /* synthetic */ zzcn<Long> mo10687c(int i) {
        if (i >= this.f16629c) {
            return new C4410s0(Arrays.copyOf(this.f16628b, i), this.f16629c);
        }
        throw new IllegalArgumentException();
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p255c.AbstractC4374l, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C4410s0)) {
            return super.equals(obj);
        }
        C4410s0 s0Var = (C4410s0) obj;
        if (this.f16629c != s0Var.f16629c) {
            return false;
        }
        long[] jArr = s0Var.f16628b;
        for (int i = 0; i < this.f16629c; i++) {
            if (this.f16628b[i] != jArr[i]) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: f */
    public final void m25647f(int i) {
        if (i < 0 || i >= this.f16629c) {
            throw new IndexOutOfBoundsException(m25646l(i));
        }
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        return Long.valueOf(m25651a(i));
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p255c.AbstractC4374l, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f16629c; i2++) {
            i = (i * 31) + zzci.m10703a(this.f16628b[i2]);
        }
        return i;
    }

    /* renamed from: l */
    public final String m25646l(int i) {
        int i2 = this.f16629c;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i);
        sb.append(", Size:");
        sb.append(i2);
        return sb.toString();
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        m25822a();
        m25647f(i);
        long[] jArr = this.f16628b;
        long j = jArr[i];
        int i2 = this.f16629c;
        if (i < i2 - 1) {
            System.arraycopy(jArr, i + 1, jArr, i, i2 - i);
        }
        this.f16629c--;
        ((AbstractList) this).modCount++;
        return Long.valueOf(j);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p255c.AbstractC4374l, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        m25822a();
        for (int i = 0; i < this.f16629c; i++) {
            if (obj.equals(Long.valueOf(this.f16628b[i]))) {
                long[] jArr = this.f16628b;
                System.arraycopy(jArr, i + 1, jArr, i, this.f16629c - i);
                this.f16629c--;
                ((AbstractList) this).modCount++;
                return true;
            }
        }
        return false;
    }

    @Override // java.util.AbstractList
    public final void removeRange(int i, int i2) {
        m25822a();
        if (i2 >= i) {
            long[] jArr = this.f16628b;
            System.arraycopy(jArr, i2, jArr, i, this.f16629c - i2);
            this.f16629c -= i2 - i;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        long longValue = ((Long) obj).longValue();
        m25822a();
        m25647f(i);
        long[] jArr = this.f16628b;
        long j = jArr[i];
        jArr[i] = longValue;
        return Long.valueOf(j);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f16629c;
    }
}
