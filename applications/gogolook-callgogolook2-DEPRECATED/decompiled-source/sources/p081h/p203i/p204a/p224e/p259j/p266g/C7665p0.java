package p081h.p203i.p204a.p224e.p259j.p266g;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* renamed from: h.i.a.e.j.g.p0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/g/p0.class */
public final class C7665p0 extends AbstractC7692t<Double> implements AbstractC7626k1<Double>, RandomAccess {

    /* renamed from: b */
    public double[] f18009b;

    /* renamed from: c */
    public int f18010c;

    static {
        new C7665p0().mo19803k();
    }

    public C7665p0() {
        this(new double[10], 0);
    }

    public C7665p0(double[] dArr, int i) {
        this.f18009b = dArr;
        this.f18010c = i;
    }

    /* renamed from: a */
    public final void m19871a(double d) {
        m19870a(this.f18010c, d);
    }

    /* renamed from: a */
    public final void m19870a(int i, double d) {
        int i2;
        m19805b();
        if (i < 0 || i > (i2 = this.f18010c)) {
            throw new IndexOutOfBoundsException(m19868h(i));
        }
        double[] dArr = this.f18009b;
        if (i2 < dArr.length) {
            System.arraycopy(dArr, i, dArr, i + 1, i2 - i);
        } else {
            double[] dArr2 = new double[((i2 * 3) / 2) + 1];
            System.arraycopy(dArr, 0, dArr2, 0, i);
            System.arraycopy(this.f18009b, i, dArr2, i + 1, this.f18010c - i);
            this.f18009b = dArr2;
        }
        this.f18009b[i] = d;
        this.f18010c++;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        m19870a(i, ((Double) obj).doubleValue());
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7692t, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Double> collection) {
        m19805b();
        C7602h1.m20132a(collection);
        if (!(collection instanceof C7665p0)) {
            return super.addAll(collection);
        }
        C7665p0 p0Var = (C7665p0) collection;
        int i = p0Var.f18010c;
        if (i == 0) {
            return false;
        }
        int i2 = this.f18010c;
        if (Integer.MAX_VALUE - i2 >= i) {
            int i3 = i2 + i;
            double[] dArr = this.f18009b;
            if (i3 > dArr.length) {
                this.f18009b = Arrays.copyOf(dArr, i3);
            }
            System.arraycopy(p0Var.f18009b, 0, this.f18009b, this.f18010c, p0Var.f18010c);
            this.f18010c = i3;
            ((AbstractList) this).modCount++;
            return true;
        }
        throw new OutOfMemoryError();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7626k1
    /* renamed from: c */
    public final /* synthetic */ AbstractC7626k1<Double> mo19631c(int i) {
        if (i >= this.f18010c) {
            return new C7665p0(Arrays.copyOf(this.f18009b, i), this.f18010c);
        }
        throw new IllegalArgumentException();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7692t, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C7665p0)) {
            return super.equals(obj);
        }
        C7665p0 p0Var = (C7665p0) obj;
        if (this.f18010c != p0Var.f18010c) {
            return false;
        }
        double[] dArr = p0Var.f18009b;
        for (int i = 0; i < this.f18010c; i++) {
            if (this.f18009b[i] != dArr[i]) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: g */
    public final void m19869g(int i) {
        if (i < 0 || i >= this.f18010c) {
            throw new IndexOutOfBoundsException(m19868h(i));
        }
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        m19869g(i);
        return Double.valueOf(this.f18009b[i]);
    }

    /* renamed from: h */
    public final String m19868h(int i) {
        int i2 = this.f18010c;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i);
        sb.append(", Size:");
        sb.append(i2);
        return sb.toString();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7692t, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f18010c; i2++) {
            i = (i * 31) + C7602h1.m20134a(Double.doubleToLongBits(this.f18009b[i2]));
        }
        return i;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        m19805b();
        m19869g(i);
        double[] dArr = this.f18009b;
        double d = dArr[i];
        int i2 = this.f18010c;
        if (i < i2 - 1) {
            System.arraycopy(dArr, i + 1, dArr, i, i2 - i);
        }
        this.f18010c--;
        ((AbstractList) this).modCount++;
        return Double.valueOf(d);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7692t, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        m19805b();
        for (int i = 0; i < this.f18010c; i++) {
            if (obj.equals(Double.valueOf(this.f18009b[i]))) {
                double[] dArr = this.f18009b;
                System.arraycopy(dArr, i + 1, dArr, i, this.f18010c - i);
                this.f18010c--;
                ((AbstractList) this).modCount++;
                return true;
            }
        }
        return false;
    }

    @Override // java.util.AbstractList
    public final void removeRange(int i, int i2) {
        m19805b();
        if (i2 >= i) {
            double[] dArr = this.f18009b;
            System.arraycopy(dArr, i2, dArr, i, this.f18010c - i2);
            this.f18010c -= i2 - i;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        double doubleValue = ((Double) obj).doubleValue();
        m19805b();
        m19869g(i);
        double[] dArr = this.f18009b;
        double d = dArr[i];
        dArr[i] = doubleValue;
        return Double.valueOf(d);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f18010c;
    }
}
