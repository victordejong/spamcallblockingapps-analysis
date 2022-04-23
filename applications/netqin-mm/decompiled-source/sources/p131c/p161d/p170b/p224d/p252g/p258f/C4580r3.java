package p131c.p161d.p170b.p224d.p252g.p258f;

import com.google.android.gms.internal.measurement.zzia;
import com.google.android.gms.internal.measurement.zzih;
import com.mopub.nativeads.MoPubNativeAdPositioning;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* renamed from: c.d.b.d.g.f.r3 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/f/r3.class */
public final class C4580r3 extends AbstractC4498g2<Long> implements zzih, AbstractC4507h4, RandomAccess {

    /* renamed from: d */
    public static final C4580r3 f16862d;

    /* renamed from: b */
    public long[] f16863b;

    /* renamed from: c */
    public int f16864c;

    static {
        C4580r3 r3Var = new C4580r3(new long[0], 0);
        f16862d = r3Var;
        r3Var.mo9631H();
    }

    public C4580r3() {
        this(new long[10], 0);
    }

    public C4580r3(long[] jArr, int i) {
        this.f16863b = jArr;
        this.f16864c = i;
    }

    /* renamed from: b */
    public static C4580r3 m25250b() {
        return f16862d;
    }

    /* renamed from: a */
    public final void m25252a(int i) {
        if (i < 0 || i >= this.f16864c) {
            throw new IndexOutOfBoundsException(m25249f(i));
        }
    }

    /* renamed from: a */
    public final void m25251a(long j) {
        m25475a();
        int i = this.f16864c;
        long[] jArr = this.f16863b;
        if (i == jArr.length) {
            long[] jArr2 = new long[((i * 3) / 2) + 1];
            System.arraycopy(jArr, 0, jArr2, 0, i);
            this.f16863b = jArr2;
        }
        long[] jArr3 = this.f16863b;
        int i2 = this.f16864c;
        this.f16864c = i2 + 1;
        jArr3[i2] = j;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        int i2;
        long longValue = ((Long) obj).longValue();
        m25475a();
        if (i < 0 || i > (i2 = this.f16864c)) {
            throw new IndexOutOfBoundsException(m25249f(i));
        }
        long[] jArr = this.f16863b;
        if (i2 < jArr.length) {
            System.arraycopy(jArr, i, jArr, i + 1, i2 - i);
        } else {
            long[] jArr2 = new long[((i2 * 3) / 2) + 1];
            System.arraycopy(jArr, 0, jArr2, 0, i);
            System.arraycopy(this.f16863b, i, jArr2, i + 1, this.f16864c - i);
            this.f16863b = jArr2;
        }
        this.f16863b[i] = longValue;
        this.f16864c++;
        ((AbstractList) this).modCount++;
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4498g2, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* synthetic */ boolean add(Object obj) {
        m25251a(((Long) obj).longValue());
        return true;
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4498g2, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Long> collection) {
        m25475a();
        zzia.m9638a(collection);
        if (!(collection instanceof C4580r3)) {
            return super.addAll(collection);
        }
        C4580r3 r3Var = (C4580r3) collection;
        int i = r3Var.f16864c;
        if (i == 0) {
            return false;
        }
        int i2 = this.f16864c;
        if (MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT - i2 >= i) {
            int i3 = i2 + i;
            long[] jArr = this.f16863b;
            if (i3 > jArr.length) {
                this.f16863b = Arrays.copyOf(jArr, i3);
            }
            System.arraycopy(r3Var.f16863b, 0, this.f16863b, this.f16864c, r3Var.f16864c);
            this.f16864c = i3;
            ((AbstractList) this).modCount++;
            return true;
        }
        throw new OutOfMemoryError();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4498g2, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C4580r3)) {
            return super.equals(obj);
        }
        C4580r3 r3Var = (C4580r3) obj;
        if (this.f16864c != r3Var.f16864c) {
            return false;
        }
        long[] jArr = r3Var.f16863b;
        for (int i = 0; i < this.f16864c; i++) {
            if (this.f16863b[i] != jArr[i]) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: f */
    public final String m25249f(int i) {
        int i2 = this.f16864c;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i);
        sb.append(", Size:");
        sb.append(i2);
        return sb.toString();
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        return Long.valueOf(zzb(i));
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4498g2, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f16864c; i2++) {
            i = (i * 31) + zzia.m9640a(this.f16863b[i2]);
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
            if (this.f16863b[i] == longValue) {
                return i;
            }
        }
        return -1;
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4498g2, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        m25475a();
        m25252a(i);
        long[] jArr = this.f16863b;
        long j = jArr[i];
        int i2 = this.f16864c;
        if (i < i2 - 1) {
            System.arraycopy(jArr, i + 1, jArr, i, (i2 - i) - 1);
        }
        this.f16864c--;
        ((AbstractList) this).modCount++;
        return Long.valueOf(j);
    }

    @Override // java.util.AbstractList
    public final void removeRange(int i, int i2) {
        m25475a();
        if (i2 >= i) {
            long[] jArr = this.f16863b;
            System.arraycopy(jArr, i2, jArr, i, this.f16864c - i2);
            this.f16864c -= i2 - i;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        long longValue = ((Long) obj).longValue();
        m25475a();
        m25252a(i);
        long[] jArr = this.f16863b;
        long j = jArr[i];
        jArr[i] = longValue;
        return Long.valueOf(j);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f16864c;
    }

    @Override // com.google.android.gms.internal.measurement.zzih
    public final long zzb(int i) {
        m25252a(i);
        return this.f16863b[i];
    }

    @Override // com.google.android.gms.internal.measurement.zzih
    /* renamed from: zzc */
    public final zzih zza(int i) {
        if (i >= this.f16864c) {
            return new C4580r3(Arrays.copyOf(this.f16863b, i), this.f16864c);
        }
        throw new IllegalArgumentException();
    }
}
