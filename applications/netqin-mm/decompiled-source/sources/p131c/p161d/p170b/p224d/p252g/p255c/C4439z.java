package p131c.p161d.p170b.p224d.p252g.p255c;

import com.google.android.gms.internal.clearcut.zzci;
import com.google.android.gms.internal.clearcut.zzcn;
import com.mopub.nativeads.MoPubNativeAdPositioning;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* renamed from: c.d.b.d.g.c.z */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/c/z.class */
public final class C4439z extends AbstractC4374l<Double> implements zzcn<Double>, RandomAccess {

    /* renamed from: b */
    public double[] f16659b;

    /* renamed from: c */
    public int f16660c;

    static {
        new C4439z().zzv();
    }

    public C4439z() {
        this(new double[10], 0);
    }

    public C4439z(double[] dArr, int i) {
        this.f16659b = dArr;
        this.f16660c = i;
    }

    /* renamed from: a */
    public final void m25576a(double d) {
        m25574a(this.f16660c, d);
    }

    /* renamed from: a */
    public final void m25575a(int i) {
        if (i < 0 || i >= this.f16660c) {
            throw new IndexOutOfBoundsException(m25573f(i));
        }
    }

    /* renamed from: a */
    public final void m25574a(int i, double d) {
        int i2;
        m25822a();
        if (i < 0 || i > (i2 = this.f16660c)) {
            throw new IndexOutOfBoundsException(m25573f(i));
        }
        double[] dArr = this.f16659b;
        if (i2 < dArr.length) {
            System.arraycopy(dArr, i, dArr, i + 1, i2 - i);
        } else {
            double[] dArr2 = new double[((i2 * 3) / 2) + 1];
            System.arraycopy(dArr, 0, dArr2, 0, i);
            System.arraycopy(this.f16659b, i, dArr2, i + 1, this.f16660c - i);
            this.f16659b = dArr2;
        }
        this.f16659b[i] = d;
        this.f16660c++;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        m25574a(i, ((Double) obj).doubleValue());
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p255c.AbstractC4374l, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Double> collection) {
        m25822a();
        zzci.m10701a(collection);
        if (!(collection instanceof C4439z)) {
            return super.addAll(collection);
        }
        C4439z zVar = (C4439z) collection;
        int i = zVar.f16660c;
        if (i == 0) {
            return false;
        }
        int i2 = this.f16660c;
        if (MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT - i2 >= i) {
            int i3 = i2 + i;
            double[] dArr = this.f16659b;
            if (i3 > dArr.length) {
                this.f16659b = Arrays.copyOf(dArr, i3);
            }
            System.arraycopy(zVar.f16659b, 0, this.f16659b, this.f16660c, zVar.f16660c);
            this.f16660c = i3;
            ((AbstractList) this).modCount++;
            return true;
        }
        throw new OutOfMemoryError();
    }

    @Override // com.google.android.gms.internal.clearcut.zzcn
    /* renamed from: c */
    public final /* synthetic */ zzcn<Double> mo10687c(int i) {
        if (i >= this.f16660c) {
            return new C4439z(Arrays.copyOf(this.f16659b, i), this.f16660c);
        }
        throw new IllegalArgumentException();
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p255c.AbstractC4374l, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C4439z)) {
            return super.equals(obj);
        }
        C4439z zVar = (C4439z) obj;
        if (this.f16660c != zVar.f16660c) {
            return false;
        }
        double[] dArr = zVar.f16659b;
        for (int i = 0; i < this.f16660c; i++) {
            if (this.f16659b[i] != dArr[i]) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: f */
    public final String m25573f(int i) {
        int i2 = this.f16660c;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i);
        sb.append(", Size:");
        sb.append(i2);
        return sb.toString();
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        m25575a(i);
        return Double.valueOf(this.f16659b[i]);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p255c.AbstractC4374l, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f16660c; i2++) {
            i = (i * 31) + zzci.m10703a(Double.doubleToLongBits(this.f16659b[i2]));
        }
        return i;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        m25822a();
        m25575a(i);
        double[] dArr = this.f16659b;
        double d = dArr[i];
        int i2 = this.f16660c;
        if (i < i2 - 1) {
            System.arraycopy(dArr, i + 1, dArr, i, i2 - i);
        }
        this.f16660c--;
        ((AbstractList) this).modCount++;
        return Double.valueOf(d);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p255c.AbstractC4374l, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        m25822a();
        for (int i = 0; i < this.f16660c; i++) {
            if (obj.equals(Double.valueOf(this.f16659b[i]))) {
                double[] dArr = this.f16659b;
                System.arraycopy(dArr, i + 1, dArr, i, this.f16660c - i);
                this.f16660c--;
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
            double[] dArr = this.f16659b;
            System.arraycopy(dArr, i2, dArr, i, this.f16660c - i2);
            this.f16660c -= i2 - i;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        double doubleValue = ((Double) obj).doubleValue();
        m25822a();
        m25575a(i);
        double[] dArr = this.f16659b;
        double d = dArr[i];
        dArr[i] = doubleValue;
        return Double.valueOf(d);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f16660c;
    }
}
