package p573f.p577r;

import java.util.Arrays;
import java.util.Iterator;
import java.util.RandomAccess;
import kotlin.TypeCastException;
import p573f.p590w.p592c.C10059q;
import p573f.p595z.C10084f;
/* renamed from: f.r.f0 */
/* loaded from: classes2-dex2jar.jar:f/r/f0.class */
public final class C9964f0<T> extends AbstractC9952c<T> implements RandomAccess {

    /* renamed from: b */
    public final int f37148b;

    /* renamed from: c */
    public int f37149c;

    /* renamed from: d */
    public int f37150d;

    /* renamed from: e */
    public final Object[] f37151e;

    /* renamed from: f.r.f0$a */
    /* loaded from: classes2-dex2jar.jar:f/r/f0$a.class */
    public static final class C9965a extends AbstractC9950b<T> {

        /* renamed from: c */
        public int f37152c;

        /* renamed from: d */
        public int f37153d;

        public C9965a() {
            this.f37152c = C9964f0.this.size();
            this.f37153d = C9964f0.this.f37149c;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // p573f.p577r.AbstractC9950b
        /* renamed from: a */
        public void mo1723a() {
            if (this.f37152c == 0) {
                m1741b();
                return;
            }
            m1742a(C9964f0.this.f37151e[this.f37153d]);
            this.f37153d = (this.f37153d + 1) % C9964f0.this.f37148b;
            this.f37152c--;
        }
    }

    public C9964f0(int i) {
        this(new Object[i], 0);
    }

    public C9964f0(Object[] objArr, int i) {
        C10059q.m1637b(objArr, "buffer");
        this.f37151e = objArr;
        boolean z = true;
        if (i >= 0) {
            if (i > this.f37151e.length) {
                z = false;
            }
            if (z) {
                this.f37148b = this.f37151e.length;
                this.f37150d = i;
                return;
            }
            throw new IllegalArgumentException(("ring buffer filled size: " + i + " cannot be larger than the buffer size: " + this.f37151e.length).toString());
        }
        throw new IllegalArgumentException(("ring buffer filled size should not be negative but it is " + i).toString());
    }

    @Override // kotlin.collections.AbstractCollection
    /* renamed from: a */
    public int mo38a() {
        return this.f37150d;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public final C9964f0<T> m1729a(int i) {
        Object[] objArr;
        int i2 = this.f37148b;
        int b = C10084f.m1569b(i2 + (i2 >> 1) + 1, i);
        if (this.f37149c == 0) {
            objArr = Arrays.copyOf(this.f37151e, b);
            C10059q.m1642a((Object) objArr, "java.util.Arrays.copyOf(this, newSize)");
        } else {
            objArr = toArray(new Object[b]);
        }
        return new C9964f0<>(objArr, size());
    }

    @Override // kotlin.collections.AbstractCollection, java.util.Collection, java.util.List
    public final void add(T t) {
        if (!m1727b()) {
            this.f37151e[(this.f37149c + size()) % this.f37148b] = t;
            this.f37150d = size() + 1;
            return;
        }
        throw new IllegalStateException("ring buffer is full");
    }

    /* renamed from: b */
    public final boolean m1727b() {
        return size() == this.f37148b;
    }

    /* renamed from: f */
    public final void m1724f(int i) {
        boolean z = true;
        if (i >= 0) {
            if (i > size()) {
                z = false;
            }
            if (!z) {
                throw new IllegalArgumentException(("n shouldn't be greater than the buffer size: n = " + i + ", size = " + size()).toString());
            } else if (i > 0) {
                int i2 = this.f37149c;
                int i3 = (i2 + i) % this.f37148b;
                if (i2 > i3) {
                    C9966g.m1720a(this.f37151e, null, i2, this.f37148b);
                    C9966g.m1720a(this.f37151e, null, 0, i3);
                } else {
                    C9966g.m1720a(this.f37151e, null, i2, i3);
                }
                this.f37149c = i3;
                this.f37150d = size() - i;
            }
        } else {
            throw new IllegalArgumentException(("n shouldn't be negative but it is " + i).toString());
        }
    }

    @Override // p573f.p577r.AbstractC9952c, java.util.List
    public T get(int i) {
        AbstractC9952c.f37141a.m1739a(i, size());
        return (T) this.f37151e[(this.f37149c + i) % this.f37148b];
    }

    @Override // p573f.p577r.AbstractC9952c, java.util.Collection, java.lang.Iterable, java.util.List
    public Iterator<T> iterator() {
        return new C9965a();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.collections.AbstractCollection, java.util.Collection, java.util.List
    public Object[] toArray() {
        return toArray(new Object[size()]);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.collections.AbstractCollection, java.util.Collection, java.util.List
    public <T> T[] toArray(T[] tArr) {
        int i;
        int i2;
        C10059q.m1637b(tArr, "array");
        T[] tArr2 = tArr;
        if (tArr.length < size()) {
            tArr2 = (T[]) Arrays.copyOf(tArr, size());
            C10059q.m1642a((Object) tArr2, "java.util.Arrays.copyOf(this, newSize)");
        }
        int size = size();
        int i3 = this.f37149c;
        int i4 = 0;
        while (true) {
            i = 0;
            i2 = i4;
            if (i4 >= size) {
                break;
            }
            i = 0;
            i2 = i4;
            if (i3 >= this.f37148b) {
                break;
            }
            tArr2[i4] = this.f37151e[i3];
            i4++;
            i3++;
        }
        while (i2 < size) {
            tArr2[i2] = this.f37151e[i];
            i2++;
            i++;
        }
        if (tArr2.length > size()) {
            tArr2[size()] = null;
        }
        if (tArr2 != null) {
            return tArr2;
        }
        throw new TypeCastException("null cannot be cast to non-null type kotlin.Array<T>");
    }
}
