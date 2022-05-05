package p081h.p203i.p204a.p224e.p259j.p271l;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.RandomAccess;
/* renamed from: h.i.a.e.j.l.hb */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/hb.class */
public final class C8148hb<E> extends AbstractC8145h8<E> implements RandomAccess {

    /* renamed from: d */
    public static final C8148hb<Object> f18876d;

    /* renamed from: b */
    public E[] f18877b;

    /* renamed from: c */
    public int f18878c;

    static {
        C8148hb<Object> hbVar = new C8148hb<>(new Object[0], 0);
        f18876d = hbVar;
        hbVar.mo18116e();
    }

    public C8148hb(E[] eArr, int i) {
        this.f18877b = eArr;
        this.f18878c = i;
    }

    /* renamed from: c */
    public static <E> C8148hb<E> m18478c() {
        return (C8148hb<E>) f18876d;
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i, E e) {
        int i2;
        m18479b();
        if (i < 0 || i > (i2 = this.f18878c)) {
            throw new IndexOutOfBoundsException(m18476h(i));
        }
        E[] eArr = this.f18877b;
        if (i2 < eArr.length) {
            System.arraycopy(eArr, i, eArr, i + 1, i2 - i);
        } else {
            E[] eArr2 = (E[]) new Object[((i2 * 3) / 2) + 1];
            System.arraycopy(eArr, 0, eArr2, 0, i);
            System.arraycopy(this.f18877b, i, eArr2, i + 1, this.f18878c - i);
            this.f18877b = eArr2;
        }
        this.f18877b[i] = e;
        this.f18878c++;
        ((AbstractList) this).modCount++;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8145h8, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(E e) {
        m18479b();
        int i = this.f18878c;
        E[] eArr = this.f18877b;
        if (i == eArr.length) {
            this.f18877b = (E[]) Arrays.copyOf(eArr, ((i * 3) / 2) + 1);
        }
        E[] eArr2 = this.f18877b;
        int i2 = this.f18878c;
        this.f18878c = i2 + 1;
        eArr2[i2] = e;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8409v9
    /* renamed from: b */
    public final /* synthetic */ AbstractC8409v9 mo18117b(int i) {
        if (i >= this.f18878c) {
            return new C8148hb(Arrays.copyOf(this.f18877b, i), this.f18878c);
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: g */
    public final void m18477g(int i) {
        if (i < 0 || i >= this.f18878c) {
            throw new IndexOutOfBoundsException(m18476h(i));
        }
    }

    @Override // java.util.AbstractList, java.util.List
    public final E get(int i) {
        m18477g(i);
        return this.f18877b[i];
    }

    /* renamed from: h */
    public final String m18476h(int i) {
        int i2 = this.f18878c;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i);
        sb.append(", Size:");
        sb.append(i2);
        return sb.toString();
    }

    @Override // java.util.AbstractList, java.util.List
    public final E remove(int i) {
        m18479b();
        m18477g(i);
        E[] eArr = this.f18877b;
        E e = eArr[i];
        int i2 = this.f18878c;
        if (i < i2 - 1) {
            System.arraycopy(eArr, i + 1, eArr, i, (i2 - i) - 1);
        }
        this.f18878c--;
        ((AbstractList) this).modCount++;
        return e;
    }

    @Override // java.util.AbstractList, java.util.List
    public final E set(int i, E e) {
        m18479b();
        m18477g(i);
        E[] eArr = this.f18877b;
        E e2 = eArr[i];
        eArr[i] = e;
        ((AbstractList) this).modCount++;
        return e2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f18878c;
    }
}
