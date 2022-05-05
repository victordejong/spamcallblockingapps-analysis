package p081h.p203i.p204a.p224e.p259j.p276q;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* renamed from: h.i.a.e.j.q.y4 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/y4.class */
public final class C8787y4 extends AbstractC8690o2<Long> implements AbstractC8638i4<Long>, AbstractC8748u5, RandomAccess {

    /* renamed from: b */
    public long[] f20148b;

    /* renamed from: c */
    public int f20149c;

    static {
        new C8787y4().mo17285g();
    }

    public C8787y4() {
        this(new long[10], 0);
    }

    public C8787y4(long[] jArr, int i) {
        this.f20148b = jArr;
        this.f20149c = i;
    }

    /* renamed from: a */
    public final void m16998a(int i, long j) {
        int i2;
        m17286f();
        if (i < 0 || i > (i2 = this.f20149c)) {
            throw new IndexOutOfBoundsException(m16994i(i));
        }
        long[] jArr = this.f20148b;
        if (i2 < jArr.length) {
            System.arraycopy(jArr, i, jArr, i + 1, i2 - i);
        } else {
            long[] jArr2 = new long[((i2 * 3) / 2) + 1];
            System.arraycopy(jArr, 0, jArr2, 0, i);
            System.arraycopy(this.f20148b, i, jArr2, i + 1, this.f20149c - i);
            this.f20148b = jArr2;
        }
        this.f20148b[i] = j;
        this.f20149c++;
        ((AbstractList) this).modCount++;
    }

    /* renamed from: a */
    public final void m16997a(long j) {
        m16998a(this.f20149c, j);
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        m16998a(i, ((Long) obj).longValue());
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8690o2, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Long> collection) {
        m17286f();
        C8591e4.m17688a(collection);
        if (!(collection instanceof C8787y4)) {
            return super.addAll(collection);
        }
        C8787y4 y4Var = (C8787y4) collection;
        int i = y4Var.f20149c;
        if (i == 0) {
            return false;
        }
        int i2 = this.f20149c;
        if (Integer.MAX_VALUE - i2 >= i) {
            int i3 = i2 + i;
            long[] jArr = this.f20148b;
            if (i3 > jArr.length) {
                this.f20148b = Arrays.copyOf(jArr, i3);
            }
            System.arraycopy(y4Var.f20148b, 0, this.f20148b, this.f20149c, y4Var.f20149c);
            this.f20149c = i3;
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
        if (!(obj instanceof C8787y4)) {
            return super.equals(obj);
        }
        C8787y4 y4Var = (C8787y4) obj;
        if (this.f20149c != y4Var.f20149c) {
            return false;
        }
        long[] jArr = y4Var.f20148b;
        for (int i = 0; i < this.f20149c; i++) {
            if (this.f20148b[i] != jArr[i]) {
                return false;
            }
        }
        return true;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8638i4
    /* renamed from: f */
    public final /* synthetic */ AbstractC8638i4<Long> mo16949f(int i) {
        if (i >= this.f20149c) {
            return new C8787y4(Arrays.copyOf(this.f20148b, i), this.f20149c);
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: g */
    public final long m16996g(int i) {
        m16995h(i);
        return this.f20148b[i];
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        return Long.valueOf(m16996g(i));
    }

    /* renamed from: h */
    public final void m16995h(int i) {
        if (i < 0 || i >= this.f20149c) {
            throw new IndexOutOfBoundsException(m16994i(i));
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8690o2, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f20149c; i2++) {
            i = (i * 31) + C8591e4.m17690a(this.f20148b[i2]);
        }
        return i;
    }

    /* renamed from: i */
    public final String m16994i(int i) {
        int i2 = this.f20149c;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i);
        sb.append(", Size:");
        sb.append(i2);
        return sb.toString();
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        m17286f();
        m16995h(i);
        long[] jArr = this.f20148b;
        long j = jArr[i];
        int i2 = this.f20149c;
        if (i < i2 - 1) {
            System.arraycopy(jArr, i + 1, jArr, i, i2 - i);
        }
        this.f20149c--;
        ((AbstractList) this).modCount++;
        return Long.valueOf(j);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8690o2, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        m17286f();
        for (int i = 0; i < this.f20149c; i++) {
            if (obj.equals(Long.valueOf(this.f20148b[i]))) {
                long[] jArr = this.f20148b;
                System.arraycopy(jArr, i + 1, jArr, i, this.f20149c - i);
                this.f20149c--;
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
            long[] jArr = this.f20148b;
            System.arraycopy(jArr, i2, jArr, i, this.f20149c - i2);
            this.f20149c -= i2 - i;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        long longValue = ((Long) obj).longValue();
        m17286f();
        m16995h(i);
        long[] jArr = this.f20148b;
        long j = jArr[i];
        jArr[i] = longValue;
        return Long.valueOf(j);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f20149c;
    }
}
