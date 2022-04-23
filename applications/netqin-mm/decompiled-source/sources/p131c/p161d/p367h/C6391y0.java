package p131c.p161d.p367h;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.RandomAccess;
/* renamed from: c.d.h.y0 */
/* loaded from: classes2-dex2jar.jar:c/d/h/y0.class */
public final class C6391y0<E> extends AbstractC6285c<E> implements RandomAccess {

    /* renamed from: d */
    public static final C6391y0<Object> f20055d;

    /* renamed from: b */
    public E[] f20056b;

    /* renamed from: c */
    public int f20057c;

    static {
        C6391y0<Object> y0Var = new C6391y0<>(new Object[0], 0);
        f20055d = y0Var;
        y0Var.mo20999l();
    }

    public C6391y0(E[] eArr, int i) {
        this.f20056b = eArr;
        this.f20057c = i;
    }

    /* renamed from: b */
    public static <E> C6391y0<E> m20997b() {
        return (C6391y0<E>) f20055d;
    }

    /* renamed from: l */
    public static <E> E[] m20994l(int i) {
        return (E[]) new Object[i];
    }

    /* renamed from: a */
    public final void m20998a(int i) {
        if (i < 0 || i >= this.f20057c) {
            throw new IndexOutOfBoundsException(m20995f(i));
        }
    }

    @Override // java.util.AbstractList, java.util.List
    public void add(int i, E e) {
        int i2;
        m21675a();
        if (i < 0 || i > (i2 = this.f20057c)) {
            throw new IndexOutOfBoundsException(m20995f(i));
        }
        E[] eArr = this.f20056b;
        if (i2 < eArr.length) {
            System.arraycopy(eArr, i, eArr, i + 1, i2 - i);
        } else {
            E[] eArr2 = (E[]) m20994l(((i2 * 3) / 2) + 1);
            System.arraycopy(this.f20056b, 0, eArr2, 0, i);
            System.arraycopy(this.f20056b, i, eArr2, i + 1, this.f20057c - i);
            this.f20056b = eArr2;
        }
        this.f20056b[i] = e;
        this.f20057c++;
        ((AbstractList) this).modCount++;
    }

    @Override // p131c.p161d.p367h.AbstractC6285c, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean add(E e) {
        m21675a();
        int i = this.f20057c;
        E[] eArr = this.f20056b;
        if (i == eArr.length) {
            this.f20056b = (E[]) Arrays.copyOf(eArr, ((i * 3) / 2) + 1);
        }
        E[] eArr2 = this.f20056b;
        int i2 = this.f20057c;
        this.f20057c = i2 + 1;
        eArr2[i2] = e;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // p131c.p161d.p367h.C6381y.AbstractC6390i
    /* renamed from: b */
    public C6391y0<E> mo20996b(int i) {
        if (i >= this.f20057c) {
            return new C6391y0<>(Arrays.copyOf(this.f20056b, i), this.f20057c);
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: f */
    public final String m20995f(int i) {
        return "Index:" + i + ", Size:" + this.f20057c;
    }

    @Override // java.util.AbstractList, java.util.List
    public E get(int i) {
        m20998a(i);
        return this.f20056b[i];
    }

    @Override // java.util.AbstractList, java.util.List
    public E remove(int i) {
        m21675a();
        m20998a(i);
        E[] eArr = this.f20056b;
        E e = eArr[i];
        int i2 = this.f20057c;
        if (i < i2 - 1) {
            System.arraycopy(eArr, i + 1, eArr, i, (i2 - i) - 1);
        }
        this.f20057c--;
        ((AbstractList) this).modCount++;
        return e;
    }

    @Override // java.util.AbstractList, java.util.List
    public E set(int i, E e) {
        m21675a();
        m20998a(i);
        E[] eArr = this.f20056b;
        E e2 = eArr[i];
        eArr[i] = e;
        ((AbstractList) this).modCount++;
        return e2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.f20057c;
    }
}
