package p081h.p203i.p204a.p224e.p259j.p269j;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* renamed from: h.i.a.e.j.j.w0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/j/w0.class */
public final class C7944w0 extends AbstractC7964z<Double> implements AbstractC7912s1<Double>, AbstractC7803f3, RandomAccess {

    /* renamed from: b */
    public double[] f18636b;

    /* renamed from: c */
    public int f18637c;

    static {
        new C7944w0().mo18745a();
    }

    public C7944w0() {
        this(new double[10], 0);
    }

    public C7944w0(double[] dArr, int i) {
        this.f18636b = dArr;
        this.f18637c = i;
    }

    /* renamed from: a */
    public final void m18851a(double d) {
        m18850a(this.f18637c, d);
    }

    /* renamed from: a */
    public final void m18850a(int i, double d) {
        int i2;
        m18744b();
        if (i < 0 || i > (i2 = this.f18637c)) {
            throw new IndexOutOfBoundsException(m18847h(i));
        }
        double[] dArr = this.f18636b;
        if (i2 < dArr.length) {
            System.arraycopy(dArr, i, dArr, i + 1, i2 - i);
        } else {
            double[] dArr2 = new double[((i2 * 3) / 2) + 1];
            System.arraycopy(dArr, 0, dArr2, 0, i);
            System.arraycopy(this.f18636b, i, dArr2, i + 1, this.f18637c - i);
            this.f18636b = dArr2;
        }
        this.f18636b[i] = d;
        this.f18637c++;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        m18850a(i, ((Double) obj).doubleValue());
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7964z, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Double> collection) {
        m18744b();
        C7891p1.m19105a(collection);
        if (!(collection instanceof C7944w0)) {
            return super.addAll(collection);
        }
        C7944w0 w0Var = (C7944w0) collection;
        int i = w0Var.f18637c;
        if (i == 0) {
            return false;
        }
        int i2 = this.f18637c;
        if (Integer.MAX_VALUE - i2 >= i) {
            int i3 = i2 + i;
            double[] dArr = this.f18636b;
            if (i3 > dArr.length) {
                this.f18636b = Arrays.copyOf(dArr, i3);
            }
            System.arraycopy(w0Var.f18636b, 0, this.f18636b, this.f18637c, w0Var.f18637c);
            this.f18637c = i3;
            ((AbstractList) this).modCount++;
            return true;
        }
        throw new OutOfMemoryError();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7912s1
    /* renamed from: c */
    public final /* synthetic */ AbstractC7912s1<Double> mo18849c(int i) {
        if (i >= this.f18637c) {
            return new C7944w0(Arrays.copyOf(this.f18636b, i), this.f18637c);
        }
        throw new IllegalArgumentException();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7964z, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C7944w0)) {
            return super.equals(obj);
        }
        C7944w0 w0Var = (C7944w0) obj;
        if (this.f18637c != w0Var.f18637c) {
            return false;
        }
        double[] dArr = w0Var.f18636b;
        for (int i = 0; i < this.f18637c; i++) {
            if (this.f18636b[i] != dArr[i]) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: g */
    public final void m18848g(int i) {
        if (i < 0 || i >= this.f18637c) {
            throw new IndexOutOfBoundsException(m18847h(i));
        }
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        m18848g(i);
        return Double.valueOf(this.f18636b[i]);
    }

    /* renamed from: h */
    public final String m18847h(int i) {
        int i2 = this.f18637c;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i);
        sb.append(", Size:");
        sb.append(i2);
        return sb.toString();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7964z, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f18637c; i2++) {
            i = (i * 31) + C7891p1.m19107a(Double.doubleToLongBits(this.f18636b[i2]));
        }
        return i;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        m18744b();
        m18848g(i);
        double[] dArr = this.f18636b;
        double d = dArr[i];
        int i2 = this.f18637c;
        if (i < i2 - 1) {
            System.arraycopy(dArr, i + 1, dArr, i, i2 - i);
        }
        this.f18637c--;
        ((AbstractList) this).modCount++;
        return Double.valueOf(d);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7964z, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        m18744b();
        for (int i = 0; i < this.f18637c; i++) {
            if (obj.equals(Double.valueOf(this.f18636b[i]))) {
                double[] dArr = this.f18636b;
                System.arraycopy(dArr, i + 1, dArr, i, this.f18637c - i);
                this.f18637c--;
                ((AbstractList) this).modCount++;
                return true;
            }
        }
        return false;
    }

    @Override // java.util.AbstractList
    public final void removeRange(int i, int i2) {
        m18744b();
        if (i2 >= i) {
            double[] dArr = this.f18636b;
            System.arraycopy(dArr, i2, dArr, i, this.f18637c - i2);
            this.f18637c -= i2 - i;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        double doubleValue = ((Double) obj).doubleValue();
        m18744b();
        m18848g(i);
        double[] dArr = this.f18636b;
        double d = dArr[i];
        dArr[i] = doubleValue;
        return Double.valueOf(d);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f18637c;
    }
}
