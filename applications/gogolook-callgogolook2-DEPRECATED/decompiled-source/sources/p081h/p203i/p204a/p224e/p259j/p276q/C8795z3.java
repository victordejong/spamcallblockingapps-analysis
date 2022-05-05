package p081h.p203i.p204a.p224e.p259j.p276q;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* renamed from: h.i.a.e.j.q.z3 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/z3.class */
public final class C8795z3 extends AbstractC8690o2<Float> implements AbstractC8638i4<Float>, AbstractC8748u5, RandomAccess {

    /* renamed from: b */
    public float[] f20155b;

    /* renamed from: c */
    public int f20156c;

    static {
        new C8795z3().mo17285g();
    }

    public C8795z3() {
        this(new float[10], 0);
    }

    public C8795z3(float[] fArr, int i) {
        this.f20155b = fArr;
        this.f20156c = i;
    }

    /* renamed from: a */
    public final void m16951a(float f) {
        m16950a(this.f20156c, f);
    }

    /* renamed from: a */
    public final void m16950a(int i, float f) {
        int i2;
        m17286f();
        if (i < 0 || i > (i2 = this.f20156c)) {
            throw new IndexOutOfBoundsException(m16947h(i));
        }
        float[] fArr = this.f20155b;
        if (i2 < fArr.length) {
            System.arraycopy(fArr, i, fArr, i + 1, i2 - i);
        } else {
            float[] fArr2 = new float[((i2 * 3) / 2) + 1];
            System.arraycopy(fArr, 0, fArr2, 0, i);
            System.arraycopy(this.f20155b, i, fArr2, i + 1, this.f20156c - i);
            this.f20155b = fArr2;
        }
        this.f20155b[i] = f;
        this.f20156c++;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        m16950a(i, ((Float) obj).floatValue());
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8690o2, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Float> collection) {
        m17286f();
        C8591e4.m17688a(collection);
        if (!(collection instanceof C8795z3)) {
            return super.addAll(collection);
        }
        C8795z3 z3Var = (C8795z3) collection;
        int i = z3Var.f20156c;
        if (i == 0) {
            return false;
        }
        int i2 = this.f20156c;
        if (Integer.MAX_VALUE - i2 >= i) {
            int i3 = i2 + i;
            float[] fArr = this.f20155b;
            if (i3 > fArr.length) {
                this.f20155b = Arrays.copyOf(fArr, i3);
            }
            System.arraycopy(z3Var.f20155b, 0, this.f20155b, this.f20156c, z3Var.f20156c);
            this.f20156c = i3;
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
        if (!(obj instanceof C8795z3)) {
            return super.equals(obj);
        }
        C8795z3 z3Var = (C8795z3) obj;
        if (this.f20156c != z3Var.f20156c) {
            return false;
        }
        float[] fArr = z3Var.f20155b;
        for (int i = 0; i < this.f20156c; i++) {
            if (this.f20155b[i] != fArr[i]) {
                return false;
            }
        }
        return true;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8638i4
    /* renamed from: f */
    public final /* synthetic */ AbstractC8638i4<Float> mo16949f(int i) {
        if (i >= this.f20156c) {
            return new C8795z3(Arrays.copyOf(this.f20155b, i), this.f20156c);
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: g */
    public final void m16948g(int i) {
        if (i < 0 || i >= this.f20156c) {
            throw new IndexOutOfBoundsException(m16947h(i));
        }
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        m16948g(i);
        return Float.valueOf(this.f20155b[i]);
    }

    /* renamed from: h */
    public final String m16947h(int i) {
        int i2 = this.f20156c;
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
        for (int i2 = 0; i2 < this.f20156c; i2++) {
            i = (i * 31) + Float.floatToIntBits(this.f20155b[i2]);
        }
        return i;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        m17286f();
        m16948g(i);
        float[] fArr = this.f20155b;
        float f = fArr[i];
        int i2 = this.f20156c;
        if (i < i2 - 1) {
            System.arraycopy(fArr, i + 1, fArr, i, i2 - i);
        }
        this.f20156c--;
        ((AbstractList) this).modCount++;
        return Float.valueOf(f);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8690o2, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        m17286f();
        for (int i = 0; i < this.f20156c; i++) {
            if (obj.equals(Float.valueOf(this.f20155b[i]))) {
                float[] fArr = this.f20155b;
                System.arraycopy(fArr, i + 1, fArr, i, this.f20156c - i);
                this.f20156c--;
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
            float[] fArr = this.f20155b;
            System.arraycopy(fArr, i2, fArr, i, this.f20156c - i2);
            this.f20156c -= i2 - i;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        float floatValue = ((Float) obj).floatValue();
        m17286f();
        m16948g(i);
        float[] fArr = this.f20155b;
        float f = fArr[i];
        fArr[i] = floatValue;
        return Float.valueOf(f);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f20156c;
    }
}
