package p131c.p161d.p170b.p224d.p252g.p258f;

import com.google.android.gms.internal.measurement.zzia;
import com.google.android.gms.internal.measurement.zzig;
import com.mopub.nativeads.MoPubNativeAdPositioning;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* renamed from: c.d.b.d.g.f.j2 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/f/j2.class */
public final class C4519j2 extends AbstractC4498g2<Boolean> implements zzig<Boolean>, AbstractC4507h4, RandomAccess {

    /* renamed from: b */
    public boolean[] f16780b;

    /* renamed from: c */
    public int f16781c;

    static {
        new C4519j2(new boolean[0], 0).mo9631H();
    }

    public C4519j2() {
        this(new boolean[10], 0);
    }

    public C4519j2(boolean[] zArr, int i) {
        this.f16780b = zArr;
        this.f16781c = i;
    }

    /* renamed from: a */
    public final void m25444a(boolean z) {
        m25475a();
        int i = this.f16781c;
        boolean[] zArr = this.f16780b;
        if (i == zArr.length) {
            boolean[] zArr2 = new boolean[((i * 3) / 2) + 1];
            System.arraycopy(zArr, 0, zArr2, 0, i);
            this.f16780b = zArr2;
        }
        boolean[] zArr3 = this.f16780b;
        int i2 = this.f16781c;
        this.f16781c = i2 + 1;
        zArr3[i2] = z;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        int i2;
        boolean booleanValue = ((Boolean) obj).booleanValue();
        m25475a();
        if (i < 0 || i > (i2 = this.f16781c)) {
            throw new IndexOutOfBoundsException(zzc(i));
        }
        boolean[] zArr = this.f16780b;
        if (i2 < zArr.length) {
            System.arraycopy(zArr, i, zArr, i + 1, i2 - i);
        } else {
            boolean[] zArr2 = new boolean[((i2 * 3) / 2) + 1];
            System.arraycopy(zArr, 0, zArr2, 0, i);
            System.arraycopy(this.f16780b, i, zArr2, i + 1, this.f16781c - i);
            this.f16780b = zArr2;
        }
        this.f16780b[i] = booleanValue;
        this.f16781c++;
        ((AbstractList) this).modCount++;
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4498g2, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* synthetic */ boolean add(Object obj) {
        m25444a(((Boolean) obj).booleanValue());
        return true;
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4498g2, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Boolean> collection) {
        m25475a();
        zzia.m9638a(collection);
        if (!(collection instanceof C4519j2)) {
            return super.addAll(collection);
        }
        C4519j2 j2Var = (C4519j2) collection;
        int i = j2Var.f16781c;
        if (i == 0) {
            return false;
        }
        int i2 = this.f16781c;
        if (MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT - i2 >= i) {
            int i3 = i2 + i;
            boolean[] zArr = this.f16780b;
            if (i3 > zArr.length) {
                this.f16780b = Arrays.copyOf(zArr, i3);
            }
            System.arraycopy(j2Var.f16780b, 0, this.f16780b, this.f16781c, j2Var.f16781c);
            this.f16781c = i3;
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
        if (!(obj instanceof C4519j2)) {
            return super.equals(obj);
        }
        C4519j2 j2Var = (C4519j2) obj;
        if (this.f16781c != j2Var.f16781c) {
            return false;
        }
        boolean[] zArr = j2Var.f16780b;
        for (int i = 0; i < this.f16781c; i++) {
            if (this.f16780b[i] != zArr[i]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        zzb(i);
        return Boolean.valueOf(this.f16780b[i]);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4498g2, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f16781c; i2++) {
            i = (i * 31) + zzia.m9635a(this.f16780b[i2]);
        }
        return i;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Boolean)) {
            return -1;
        }
        boolean booleanValue = ((Boolean) obj).booleanValue();
        int size = size();
        for (int i = 0; i < size; i++) {
            if (this.f16780b[i] == booleanValue) {
                return i;
            }
        }
        return -1;
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4498g2, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        m25475a();
        zzb(i);
        boolean[] zArr = this.f16780b;
        boolean z = zArr[i];
        int i2 = this.f16781c;
        if (i < i2 - 1) {
            System.arraycopy(zArr, i + 1, zArr, i, (i2 - i) - 1);
        }
        this.f16781c--;
        ((AbstractList) this).modCount++;
        return Boolean.valueOf(z);
    }

    @Override // java.util.AbstractList
    public final void removeRange(int i, int i2) {
        m25475a();
        if (i2 >= i) {
            boolean[] zArr = this.f16780b;
            System.arraycopy(zArr, i2, zArr, i, this.f16781c - i2);
            this.f16781c -= i2 - i;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        boolean booleanValue = ((Boolean) obj).booleanValue();
        m25475a();
        zzb(i);
        boolean[] zArr = this.f16780b;
        boolean z = zArr[i];
        zArr[i] = booleanValue;
        return Boolean.valueOf(z);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f16781c;
    }

    @Override // com.google.android.gms.internal.measurement.zzig
    public final /* synthetic */ zzig<Boolean> zza(int i) {
        if (i >= this.f16781c) {
            return new C4519j2(Arrays.copyOf(this.f16780b, i), this.f16781c);
        }
        throw new IllegalArgumentException();
    }

    public final void zzb(int i) {
        if (i < 0 || i >= this.f16781c) {
            throw new IndexOutOfBoundsException(zzc(i));
        }
    }

    public final String zzc(int i) {
        int i2 = this.f16781c;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i);
        sb.append(", Size:");
        sb.append(i2);
        return sb.toString();
    }
}
