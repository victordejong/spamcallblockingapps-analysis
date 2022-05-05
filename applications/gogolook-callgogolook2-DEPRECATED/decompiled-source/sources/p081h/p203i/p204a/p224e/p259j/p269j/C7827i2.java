package p081h.p203i.p204a.p224e.p259j.p269j;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* renamed from: h.i.a.e.j.j.i2 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/j/i2.class */
public final class C7827i2 extends AbstractC7964z<Long> implements AbstractC7912s1<Long>, AbstractC7803f3, RandomAccess {

    /* renamed from: b */
    public long[] f18349b;

    /* renamed from: c */
    public int f18350c;

    static {
        new C7827i2().mo18745a();
    }

    public C7827i2() {
        this(new long[10], 0);
    }

    public C7827i2(long[] jArr, int i) {
        this.f18349b = jArr;
        this.f18350c = i;
    }

    /* renamed from: a */
    public final void m19349a(int i, long j) {
        int i2;
        m18744b();
        if (i < 0 || i > (i2 = this.f18350c)) {
            throw new IndexOutOfBoundsException(m19345i(i));
        }
        long[] jArr = this.f18349b;
        if (i2 < jArr.length) {
            System.arraycopy(jArr, i, jArr, i + 1, i2 - i);
        } else {
            long[] jArr2 = new long[((i2 * 3) / 2) + 1];
            System.arraycopy(jArr, 0, jArr2, 0, i);
            System.arraycopy(this.f18349b, i, jArr2, i + 1, this.f18350c - i);
            this.f18349b = jArr2;
        }
        this.f18349b[i] = j;
        this.f18350c++;
        ((AbstractList) this).modCount++;
    }

    /* renamed from: a */
    public final void m19348a(long j) {
        m19349a(this.f18350c, j);
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        m19349a(i, ((Long) obj).longValue());
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7964z, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Long> collection) {
        m18744b();
        C7891p1.m19105a(collection);
        if (!(collection instanceof C7827i2)) {
            return super.addAll(collection);
        }
        C7827i2 i2Var = (C7827i2) collection;
        int i = i2Var.f18350c;
        if (i == 0) {
            return false;
        }
        int i2 = this.f18350c;
        if (Integer.MAX_VALUE - i2 >= i) {
            int i3 = i2 + i;
            long[] jArr = this.f18349b;
            if (i3 > jArr.length) {
                this.f18349b = Arrays.copyOf(jArr, i3);
            }
            System.arraycopy(i2Var.f18349b, 0, this.f18349b, this.f18350c, i2Var.f18350c);
            this.f18350c = i3;
            ((AbstractList) this).modCount++;
            return true;
        }
        throw new OutOfMemoryError();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7912s1
    /* renamed from: c */
    public final /* synthetic */ AbstractC7912s1<Long> mo18849c(int i) {
        if (i >= this.f18350c) {
            return new C7827i2(Arrays.copyOf(this.f18349b, i), this.f18350c);
        }
        throw new IllegalArgumentException();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7964z, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C7827i2)) {
            return super.equals(obj);
        }
        C7827i2 i2Var = (C7827i2) obj;
        if (this.f18350c != i2Var.f18350c) {
            return false;
        }
        long[] jArr = i2Var.f18349b;
        for (int i = 0; i < this.f18350c; i++) {
            if (this.f18349b[i] != jArr[i]) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: g */
    public final long m19347g(int i) {
        m19346h(i);
        return this.f18349b[i];
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        return Long.valueOf(m19347g(i));
    }

    /* renamed from: h */
    public final void m19346h(int i) {
        if (i < 0 || i >= this.f18350c) {
            throw new IndexOutOfBoundsException(m19345i(i));
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7964z, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f18350c; i2++) {
            i = (i * 31) + C7891p1.m19107a(this.f18349b[i2]);
        }
        return i;
    }

    /* renamed from: i */
    public final String m19345i(int i) {
        int i2 = this.f18350c;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i);
        sb.append(", Size:");
        sb.append(i2);
        return sb.toString();
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        m18744b();
        m19346h(i);
        long[] jArr = this.f18349b;
        long j = jArr[i];
        int i2 = this.f18350c;
        if (i < i2 - 1) {
            System.arraycopy(jArr, i + 1, jArr, i, i2 - i);
        }
        this.f18350c--;
        ((AbstractList) this).modCount++;
        return Long.valueOf(j);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7964z, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        m18744b();
        for (int i = 0; i < this.f18350c; i++) {
            if (obj.equals(Long.valueOf(this.f18349b[i]))) {
                long[] jArr = this.f18349b;
                System.arraycopy(jArr, i + 1, jArr, i, this.f18350c - i);
                this.f18350c--;
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
            long[] jArr = this.f18349b;
            System.arraycopy(jArr, i2, jArr, i, this.f18350c - i2);
            this.f18350c -= i2 - i;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        long longValue = ((Long) obj).longValue();
        m18744b();
        m19346h(i);
        long[] jArr = this.f18349b;
        long j = jArr[i];
        jArr[i] = longValue;
        return Long.valueOf(j);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f18350c;
    }
}
