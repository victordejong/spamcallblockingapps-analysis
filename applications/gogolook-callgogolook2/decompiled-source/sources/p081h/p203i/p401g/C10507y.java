package p081h.p203i.p401g;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
import p081h.p203i.p401g.C10516z;
/* renamed from: h.i.g.y */
/* loaded from: classes2-dex2jar.jar:h/i/g/y.class */
public final class C10507y extends AbstractC10239d<Integer> implements C10516z.AbstractC10519c, RandomAccess, AbstractC10464t0 {

    /* renamed from: d */
    public static final C10507y f23884d = new C10507y(new int[0], 0);

    /* renamed from: b */
    public int[] f23885b;

    /* renamed from: c */
    public int f23886c;

    static {
        f23884d.mo11536d();
    }

    public C10507y() {
        this(new int[10], 0);
    }

    public C10507y(int[] iArr, int i) {
        this.f23885b = iArr;
        this.f23886c = i;
    }

    /* renamed from: q */
    public static C10507y m11572q() {
        return f23884d;
    }

    /* renamed from: a */
    public final void m11579a(int i, int i2) {
        int i3;
        m13038b();
        if (i < 0 || i > (i3 = this.f23886c)) {
            throw new IndexOutOfBoundsException(m11573h(i));
        }
        int[] iArr = this.f23885b;
        if (i3 < iArr.length) {
            System.arraycopy(iArr, i, iArr, i + 1, i3 - i);
        } else {
            int[] iArr2 = new int[((i3 * 3) / 2) + 1];
            System.arraycopy(iArr, 0, iArr2, 0, i);
            System.arraycopy(this.f23885b, i, iArr2, i + 1, this.f23886c - i);
            this.f23885b = iArr2;
        }
        this.f23885b[i] = i2;
        this.f23886c++;
        ((AbstractList) this).modCount++;
    }

    /* renamed from: a */
    public void add(int i, Integer num) {
        m11579a(i, num.intValue());
    }

    /* renamed from: a */
    public boolean add(Integer num) {
        mo11537e(num.intValue());
        return true;
    }

    @Override // p081h.p203i.p401g.AbstractC10239d, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(Collection<? extends Integer> collection) {
        m13038b();
        C10516z.m11545a(collection);
        if (!(collection instanceof C10507y)) {
            return super.addAll(collection);
        }
        C10507y yVar = (C10507y) collection;
        int i = yVar.f23886c;
        if (i == 0) {
            return false;
        }
        int i2 = this.f23886c;
        if (Integer.MAX_VALUE - i2 >= i) {
            int i3 = i2 + i;
            int[] iArr = this.f23885b;
            if (i3 > iArr.length) {
                this.f23885b = Arrays.copyOf(iArr, i3);
            }
            System.arraycopy(yVar.f23885b, 0, this.f23885b, this.f23886c, yVar.f23886c);
            this.f23886c = i3;
            ((AbstractList) this).modCount++;
            return true;
        }
        throw new OutOfMemoryError();
    }

    /* renamed from: b */
    public int m11576b(int i, int i2) {
        m13038b();
        m11574g(i);
        int[] iArr = this.f23885b;
        int i3 = iArr[i];
        iArr[i] = i2;
        return i3;
    }

    /* renamed from: b */
    public Integer set(int i, Integer num) {
        return Integer.valueOf(m11576b(i, num.intValue()));
    }

    @Override // p081h.p203i.p401g.C10516z.AbstractC10519c
    /* renamed from: d */
    public C10516z.AbstractC10519c mo11538d(int i) {
        if (i >= this.f23886c) {
            return new C10507y(Arrays.copyOf(this.f23885b, i), this.f23886c);
        }
        throw new IllegalArgumentException();
    }

    @Override // p081h.p203i.p401g.C10516z.AbstractC10519c
    /* renamed from: e */
    public void mo11537e(int i) {
        m13038b();
        int i2 = this.f23886c;
        int[] iArr = this.f23885b;
        if (i2 == iArr.length) {
            int[] iArr2 = new int[((i2 * 3) / 2) + 1];
            System.arraycopy(iArr, 0, iArr2, 0, i2);
            this.f23885b = iArr2;
        }
        int[] iArr3 = this.f23885b;
        int i3 = this.f23886c;
        this.f23886c = i3 + 1;
        iArr3[i3] = i;
    }

    @Override // p081h.p203i.p401g.AbstractC10239d, java.util.AbstractList, java.util.Collection, java.util.List
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C10507y)) {
            return super.equals(obj);
        }
        C10507y yVar = (C10507y) obj;
        if (this.f23886c != yVar.f23886c) {
            return false;
        }
        int[] iArr = yVar.f23885b;
        for (int i = 0; i < this.f23886c; i++) {
            if (this.f23885b[i] != iArr[i]) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: g */
    public final void m11574g(int i) {
        if (i < 0 || i >= this.f23886c) {
            throw new IndexOutOfBoundsException(m11573h(i));
        }
    }

    @Override // java.util.AbstractList, java.util.List
    public Integer get(int i) {
        return Integer.valueOf(getInt(i));
    }

    @Override // p081h.p203i.p401g.C10516z.AbstractC10519c
    public int getInt(int i) {
        m11574g(i);
        return this.f23885b[i];
    }

    /* renamed from: h */
    public final String m11573h(int i) {
        return "Index:" + i + ", Size:" + this.f23886c;
    }

    @Override // p081h.p203i.p401g.AbstractC10239d, java.util.AbstractList, java.util.Collection, java.util.List
    public int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f23886c; i2++) {
            i = (i * 31) + this.f23885b[i2];
        }
        return i;
    }

    @Override // java.util.AbstractList, java.util.List
    public Integer remove(int i) {
        m13038b();
        m11574g(i);
        int[] iArr = this.f23885b;
        int i2 = iArr[i];
        int i3 = this.f23886c;
        if (i < i3 - 1) {
            System.arraycopy(iArr, i + 1, iArr, i, (i3 - i) - 1);
        }
        this.f23886c--;
        ((AbstractList) this).modCount++;
        return Integer.valueOf(i2);
    }

    @Override // p081h.p203i.p401g.AbstractC10239d, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean remove(Object obj) {
        m13038b();
        for (int i = 0; i < this.f23886c; i++) {
            if (obj.equals(Integer.valueOf(this.f23885b[i]))) {
                int[] iArr = this.f23885b;
                System.arraycopy(iArr, i + 1, iArr, i, (this.f23886c - i) - 1);
                this.f23886c--;
                ((AbstractList) this).modCount++;
                return true;
            }
        }
        return false;
    }

    @Override // java.util.AbstractList
    public void removeRange(int i, int i2) {
        m13038b();
        if (i2 >= i) {
            int[] iArr = this.f23885b;
            System.arraycopy(iArr, i2, iArr, i, this.f23886c - i2);
            this.f23886c -= i2 - i;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.f23886c;
    }
}
