package p081h.p203i.p204a.p224e.p259j.p276q;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* renamed from: h.i.a.e.j.q.l3 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/l3.class */
public final class C8664l3 extends AbstractC8690o2<Double> implements AbstractC8638i4<Double>, AbstractC8748u5, RandomAccess {

    /* renamed from: b */
    public double[] f19809b;

    /* renamed from: c */
    public int f19810c;

    static {
        new C8664l3().mo17285g();
    }

    public C8664l3() {
        this(new double[10], 0);
    }

    public C8664l3(double[] dArr, int i) {
        this.f19809b = dArr;
        this.f19810c = i;
    }

    /* renamed from: a */
    public final void m17421a(double d) {
        m17420a(this.f19810c, d);
    }

    /* renamed from: a */
    public final void m17420a(int i, double d) {
        int i2;
        m17286f();
        if (i < 0 || i > (i2 = this.f19810c)) {
            throw new IndexOutOfBoundsException(m17418h(i));
        }
        double[] dArr = this.f19809b;
        if (i2 < dArr.length) {
            System.arraycopy(dArr, i, dArr, i + 1, i2 - i);
        } else {
            double[] dArr2 = new double[((i2 * 3) / 2) + 1];
            System.arraycopy(dArr, 0, dArr2, 0, i);
            System.arraycopy(this.f19809b, i, dArr2, i + 1, this.f19810c - i);
            this.f19809b = dArr2;
        }
        this.f19809b[i] = d;
        this.f19810c++;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        m17420a(i, ((Double) obj).doubleValue());
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8690o2, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Double> collection) {
        m17286f();
        C8591e4.m17688a(collection);
        if (!(collection instanceof C8664l3)) {
            return super.addAll(collection);
        }
        C8664l3 l3Var = (C8664l3) collection;
        int i = l3Var.f19810c;
        if (i == 0) {
            return false;
        }
        int i2 = this.f19810c;
        if (Integer.MAX_VALUE - i2 >= i) {
            int i3 = i2 + i;
            double[] dArr = this.f19809b;
            if (i3 > dArr.length) {
                this.f19809b = Arrays.copyOf(dArr, i3);
            }
            System.arraycopy(l3Var.f19809b, 0, this.f19809b, this.f19810c, l3Var.f19810c);
            this.f19810c = i3;
            ((AbstractList) this).modCount++;
            return true;
        }
        throw new OutOfMemoryError();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8690o2, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C8664l3)) {
            return super.equals(obj);
        }
        C8664l3 l3Var = (C8664l3) obj;
        if (this.f19810c != l3Var.f19810c) {
            return false;
        }
        double[] dArr = l3Var.f19809b;
        for (int i = 0; i < this.f19810c; i++) {
            if (this.f19809b[i] != dArr[i]) {
                return false;
            }
        }
        return true;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8638i4
    /* renamed from: f */
    public final /* synthetic */ AbstractC8638i4<Double> mo16949f(int i) {
        if (i >= this.f19810c) {
            return new C8664l3(Arrays.copyOf(this.f19809b, i), this.f19810c);
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: g */
    public final void m17419g(int i) {
        if (i < 0 || i >= this.f19810c) {
            throw new IndexOutOfBoundsException(m17418h(i));
        }
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        m17419g(i);
        return Double.valueOf(this.f19809b[i]);
    }

    /* renamed from: h */
    public final String m17418h(int i) {
        int i2 = this.f19810c;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i);
        sb.append(", Size:");
        sb.append(i2);
        return sb.toString();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8690o2, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f19810c; i2++) {
            i = (i * 31) + C8591e4.m17690a(Double.doubleToLongBits(this.f19809b[i2]));
        }
        return i;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        m17286f();
        m17419g(i);
        double[] dArr = this.f19809b;
        double d = dArr[i];
        int i2 = this.f19810c;
        if (i < i2 - 1) {
            System.arraycopy(dArr, i + 1, dArr, i, i2 - i);
        }
        this.f19810c--;
        ((AbstractList) this).modCount++;
        return Double.valueOf(d);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8690o2, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        m17286f();
        for (int i = 0; i < this.f19810c; i++) {
            if (obj.equals(Double.valueOf(this.f19809b[i]))) {
                double[] dArr = this.f19809b;
                System.arraycopy(dArr, i + 1, dArr, i, this.f19810c - i);
                this.f19810c--;
                ((AbstractList) this).modCount++;
                return true;
            }
        }
        return false;
    }

    @Override // java.util.AbstractList
    public final void removeRange(int i, int i2) {
        m17286f();
        if (i2 >= i) {
            double[] dArr = this.f19809b;
            System.arraycopy(dArr, i2, dArr, i, this.f19810c - i2);
            this.f19810c -= i2 - i;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        double doubleValue = ((Double) obj).doubleValue();
        m17286f();
        m17419g(i);
        double[] dArr = this.f19809b;
        double d = dArr[i];
        dArr[i] = doubleValue;
        return Double.valueOf(d);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f19810c;
    }
}
