package p081h.p203i.p204a.p224e.p259j.p271l;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* renamed from: h.i.a.e.j.l.ia */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/ia.class */
public final class C8169ia extends AbstractC8145h8<Long> implements AbstractC8409v9<Long>, AbstractC8109fb, RandomAccess {

    /* renamed from: b */
    public long[] f18918b;

    /* renamed from: c */
    public int f18919c;

    static {
        new C8169ia(new long[0], 0).mo18116e();
    }

    public C8169ia() {
        this(new long[10], 0);
    }

    public C8169ia(long[] jArr, int i) {
        this.f18918b = jArr;
        this.f18919c = i;
    }

    /* renamed from: a */
    public final void m18466a(long j) {
        m18479b();
        int i = this.f18919c;
        long[] jArr = this.f18918b;
        if (i == jArr.length) {
            long[] jArr2 = new long[((i * 3) / 2) + 1];
            System.arraycopy(jArr, 0, jArr2, 0, i);
            this.f18918b = jArr2;
        }
        long[] jArr3 = this.f18918b;
        int i2 = this.f18919c;
        this.f18919c = i2 + 1;
        jArr3[i2] = j;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        int i2;
        long longValue = ((Long) obj).longValue();
        m18479b();
        if (i < 0 || i > (i2 = this.f18919c)) {
            throw new IndexOutOfBoundsException(m18463i(i));
        }
        long[] jArr = this.f18918b;
        if (i2 < jArr.length) {
            System.arraycopy(jArr, i, jArr, i + 1, i2 - i);
        } else {
            long[] jArr2 = new long[((i2 * 3) / 2) + 1];
            System.arraycopy(jArr, 0, jArr2, 0, i);
            System.arraycopy(this.f18918b, i, jArr2, i + 1, this.f18919c - i);
            this.f18918b = jArr2;
        }
        this.f18918b[i] = longValue;
        this.f18919c++;
        ((AbstractList) this).modCount++;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8145h8, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* synthetic */ boolean add(Object obj) {
        m18466a(((Long) obj).longValue());
        return true;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8145h8, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Long> collection) {
        m18479b();
        C8302p9.m18205a(collection);
        if (!(collection instanceof C8169ia)) {
            return super.addAll(collection);
        }
        C8169ia iaVar = (C8169ia) collection;
        int i = iaVar.f18919c;
        if (i == 0) {
            return false;
        }
        int i2 = this.f18919c;
        if (Integer.MAX_VALUE - i2 >= i) {
            int i3 = i2 + i;
            long[] jArr = this.f18918b;
            if (i3 > jArr.length) {
                this.f18918b = Arrays.copyOf(jArr, i3);
            }
            System.arraycopy(iaVar.f18918b, 0, this.f18918b, this.f18919c, iaVar.f18919c);
            this.f18919c = i3;
            ((AbstractList) this).modCount++;
            return true;
        }
        throw new OutOfMemoryError();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8409v9
    /* renamed from: b */
    public final /* synthetic */ AbstractC8409v9<Long> mo18117b(int i) {
        if (i >= this.f18919c) {
            return new C8169ia(Arrays.copyOf(this.f18918b, i), this.f18919c);
        }
        throw new IllegalArgumentException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8145h8, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C8169ia)) {
            return super.equals(obj);
        }
        C8169ia iaVar = (C8169ia) obj;
        if (this.f18919c != iaVar.f18919c) {
            return false;
        }
        long[] jArr = iaVar.f18918b;
        for (int i = 0; i < this.f18919c; i++) {
            if (this.f18918b[i] != jArr[i]) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: g */
    public final long m18465g(int i) {
        m18464h(i);
        return this.f18918b[i];
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        return Long.valueOf(m18465g(i));
    }

    /* renamed from: h */
    public final void m18464h(int i) {
        if (i < 0 || i >= this.f18919c) {
            throw new IndexOutOfBoundsException(m18463i(i));
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8145h8, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f18919c; i2++) {
            i = (i * 31) + C8302p9.m18207a(this.f18918b[i2]);
        }
        return i;
    }

    /* renamed from: i */
    public final String m18463i(int i) {
        int i2 = this.f18919c;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i);
        sb.append(", Size:");
        sb.append(i2);
        return sb.toString();
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Long)) {
            return -1;
        }
        long longValue = ((Long) obj).longValue();
        int size = size();
        for (int i = 0; i < size; i++) {
            if (this.f18918b[i] == longValue) {
                return i;
            }
        }
        return -1;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        m18479b();
        m18464h(i);
        long[] jArr = this.f18918b;
        long j = jArr[i];
        int i2 = this.f18919c;
        if (i < i2 - 1) {
            System.arraycopy(jArr, i + 1, jArr, i, (i2 - i) - 1);
        }
        this.f18919c--;
        ((AbstractList) this).modCount++;
        return Long.valueOf(j);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8145h8, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        m18479b();
        for (int i = 0; i < this.f18919c; i++) {
            if (obj.equals(Long.valueOf(this.f18918b[i]))) {
                long[] jArr = this.f18918b;
                System.arraycopy(jArr, i + 1, jArr, i, (this.f18919c - i) - 1);
                this.f18919c--;
                ((AbstractList) this).modCount++;
                return true;
            }
        }
        return false;
    }

    @Override // java.util.AbstractList
    public final void removeRange(int i, int i2) {
        m18479b();
        if (i2 >= i) {
            long[] jArr = this.f18918b;
            System.arraycopy(jArr, i2, jArr, i, this.f18919c - i2);
            this.f18919c -= i2 - i;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        long longValue = ((Long) obj).longValue();
        m18479b();
        m18464h(i);
        long[] jArr = this.f18918b;
        long j = jArr[i];
        jArr[i] = longValue;
        return Long.valueOf(j);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f18919c;
    }
}
