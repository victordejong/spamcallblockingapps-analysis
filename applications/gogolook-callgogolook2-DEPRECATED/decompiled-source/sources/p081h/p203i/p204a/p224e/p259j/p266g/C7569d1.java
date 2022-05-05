package p081h.p203i.p204a.p224e.p259j.p266g;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* renamed from: h.i.a.e.j.g.d1 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/g/d1.class */
public final class C7569d1 extends AbstractC7692t<Float> implements AbstractC7626k1<Float>, RandomAccess {

    /* renamed from: b */
    public float[] f17807b;

    /* renamed from: c */
    public int f17808c;

    static {
        new C7569d1().mo19803k();
    }

    public C7569d1() {
        this(new float[10], 0);
    }

    public C7569d1(float[] fArr, int i) {
        this.f17807b = fArr;
        this.f17808c = i;
    }

    /* renamed from: a */
    public final void m20279a(float f) {
        m20278a(this.f17808c, f);
    }

    /* renamed from: a */
    public final void m20278a(int i, float f) {
        int i2;
        m19805b();
        if (i < 0 || i > (i2 = this.f17808c)) {
            throw new IndexOutOfBoundsException(m20276h(i));
        }
        float[] fArr = this.f17807b;
        if (i2 < fArr.length) {
            System.arraycopy(fArr, i, fArr, i + 1, i2 - i);
        } else {
            float[] fArr2 = new float[((i2 * 3) / 2) + 1];
            System.arraycopy(fArr, 0, fArr2, 0, i);
            System.arraycopy(this.f17807b, i, fArr2, i + 1, this.f17808c - i);
            this.f17807b = fArr2;
        }
        this.f17807b[i] = f;
        this.f17808c++;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        m20278a(i, ((Float) obj).floatValue());
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7692t, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Float> collection) {
        m19805b();
        C7602h1.m20132a(collection);
        if (!(collection instanceof C7569d1)) {
            return super.addAll(collection);
        }
        C7569d1 d1Var = (C7569d1) collection;
        int i = d1Var.f17808c;
        if (i == 0) {
            return false;
        }
        int i2 = this.f17808c;
        if (Integer.MAX_VALUE - i2 >= i) {
            int i3 = i2 + i;
            float[] fArr = this.f17807b;
            if (i3 > fArr.length) {
                this.f17807b = Arrays.copyOf(fArr, i3);
            }
            System.arraycopy(d1Var.f17807b, 0, this.f17807b, this.f17808c, d1Var.f17808c);
            this.f17808c = i3;
            ((AbstractList) this).modCount++;
            return true;
        }
        throw new OutOfMemoryError();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7626k1
    /* renamed from: c */
    public final /* synthetic */ AbstractC7626k1<Float> mo19631c(int i) {
        if (i >= this.f17808c) {
            return new C7569d1(Arrays.copyOf(this.f17807b, i), this.f17808c);
        }
        throw new IllegalArgumentException();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7692t, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C7569d1)) {
            return super.equals(obj);
        }
        C7569d1 d1Var = (C7569d1) obj;
        if (this.f17808c != d1Var.f17808c) {
            return false;
        }
        float[] fArr = d1Var.f17807b;
        for (int i = 0; i < this.f17808c; i++) {
            if (this.f17807b[i] != fArr[i]) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: g */
    public final void m20277g(int i) {
        if (i < 0 || i >= this.f17808c) {
            throw new IndexOutOfBoundsException(m20276h(i));
        }
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        m20277g(i);
        return Float.valueOf(this.f17807b[i]);
    }

    /* renamed from: h */
    public final String m20276h(int i) {
        int i2 = this.f17808c;
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
        for (int i2 = 0; i2 < this.f17808c; i2++) {
            i = (i * 31) + Float.floatToIntBits(this.f17807b[i2]);
        }
        return i;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        m19805b();
        m20277g(i);
        float[] fArr = this.f17807b;
        float f = fArr[i];
        int i2 = this.f17808c;
        if (i < i2 - 1) {
            System.arraycopy(fArr, i + 1, fArr, i, i2 - i);
        }
        this.f17808c--;
        ((AbstractList) this).modCount++;
        return Float.valueOf(f);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7692t, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        m19805b();
        for (int i = 0; i < this.f17808c; i++) {
            if (obj.equals(Float.valueOf(this.f17807b[i]))) {
                float[] fArr = this.f17807b;
                System.arraycopy(fArr, i + 1, fArr, i, this.f17808c - i);
                this.f17808c--;
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
            float[] fArr = this.f17807b;
            System.arraycopy(fArr, i2, fArr, i, this.f17808c - i2);
            this.f17808c -= i2 - i;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        float floatValue = ((Float) obj).floatValue();
        m19805b();
        m20277g(i);
        float[] fArr = this.f17807b;
        float f = fArr[i];
        fArr[i] = floatValue;
        return Float.valueOf(f);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f17808c;
    }
}
