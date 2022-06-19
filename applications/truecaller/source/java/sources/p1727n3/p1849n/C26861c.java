package p1727n3.p1849n;

import java.util.ArrayList;
import java.util.List;
/* renamed from: n3.n.c */
/* loaded from: classes-dex2jar.jar:n3/n/c.class */
public class C26861c<C, T, A> implements Cloneable {

    /* renamed from: a */
    public List<C> f75129a = new ArrayList();

    /* renamed from: b */
    public long f75130b = 0;

    /* renamed from: c */
    public long[] f75131c;

    /* renamed from: d */
    public int f75132d;

    /* renamed from: e */
    public final AbstractC26862a<C, T, A> f75133e;

    /* renamed from: n3.n.c$a */
    /* loaded from: classes-dex2jar.jar:n3/n/c$a.class */
    public static abstract class AbstractC26862a<C, T, A> {
        /* renamed from: a */
        public abstract void mo1243a(C c, T t, int i, A a);
    }

    public C26861c(AbstractC26862a<C, T, A> abstractC26862a) {
        this.f75133e = abstractC26862a;
    }

    /* renamed from: a */
    public void m1266a(C c) {
        synchronized (this) {
            if (c == null) {
                throw new IllegalArgumentException("callback cannot be null");
            }
            int lastIndexOf = this.f75129a.lastIndexOf(c);
            if (lastIndexOf < 0 || m1265b(lastIndexOf)) {
                this.f75129a.add(c);
            }
        }
    }

    /* renamed from: b */
    public final boolean m1265b(int i) {
        int i2;
        boolean z = true;
        if (i < 64) {
            if (((1 << i) & this.f75130b) == 0) {
                z = false;
            }
            return z;
        }
        long[] jArr = this.f75131c;
        if (jArr == null || (i2 = (i / 64) - 1) >= jArr.length) {
            return false;
        }
        return ((1 << (i % 64)) & jArr[i2]) != 0;
    }

    /* renamed from: c */
    public void m1264c(T t, int i, A a) {
        synchronized (this) {
            this.f75132d++;
            int size = this.f75129a.size();
            long[] jArr = this.f75131c;
            int length = jArr == null ? -1 : jArr.length - 1;
            m1262f(t, i, null, length);
            m1263e(t, i, null, (length + 2) * 64, size, 0L);
            int i2 = this.f75132d - 1;
            this.f75132d = i2;
            if (i2 == 0) {
                long[] jArr2 = this.f75131c;
                if (jArr2 != null) {
                    for (int length2 = jArr2.length - 1; length2 >= 0; length2--) {
                        long j = this.f75131c[length2];
                        if (j != 0) {
                            m1260h((length2 + 1) * 64, j);
                            this.f75131c[length2] = 0;
                        }
                    }
                }
                long j2 = this.f75130b;
                if (j2 != 0) {
                    m1260h(0, j2);
                    this.f75130b = 0L;
                }
            }
        }
    }

    public Object clone() throws CloneNotSupportedException {
        C26861c c26861c;
        CloneNotSupportedException e;
        C26861c c26861c2;
        synchronized (this) {
            try {
                c26861c2 = (C26861c) super.clone();
                try {
                    c26861c2.f75130b = 0L;
                    c26861c2.f75131c = null;
                    int i = 0;
                    c26861c2.f75132d = 0;
                    c26861c2.f75129a = new ArrayList();
                    int size = this.f75129a.size();
                    while (true) {
                        c26861c = c26861c2;
                        if (i >= size) {
                            break;
                        }
                        if (!m1265b(i)) {
                            c26861c2.f75129a.add(this.f75129a.get(i));
                        }
                        i++;
                    }
                } catch (CloneNotSupportedException e2) {
                    e = e2;
                    e.printStackTrace();
                    c26861c = c26861c2;
                    return c26861c;
                }
            } catch (CloneNotSupportedException e3) {
                e = e3;
                c26861c2 = null;
            }
        }
        return c26861c;
    }

    /* JADX WARN: Type inference failed for: r0v6, types: [long] */
    /* renamed from: e */
    public final void m1263e(T t, int i, A a, int i2, int i3, long j) {
        char c = 1;
        while (i2 < i3) {
            if ((j & c) == 0) {
                this.f75133e.mo1243a(this.f75129a.get(i2), t, i, a);
            }
            c <<= 1;
            i2++;
        }
    }

    /* renamed from: f */
    public final void m1262f(T t, int i, A a, int i2) {
        if (i2 < 0) {
            m1263e(t, i, a, 0, Math.min(64, this.f75129a.size()), this.f75130b);
            return;
        }
        long j = this.f75131c[i2];
        int i3 = (i2 + 1) * 64;
        int min = Math.min(this.f75129a.size(), i3 + 64);
        m1262f(t, i, a, i2 - 1);
        m1263e(t, i, a, i3, min, j);
    }

    /* renamed from: g */
    public void m1261g(C c) {
        synchronized (this) {
            if (this.f75132d == 0) {
                this.f75129a.remove(c);
            } else {
                int lastIndexOf = this.f75129a.lastIndexOf(c);
                if (lastIndexOf >= 0) {
                    m1259i(lastIndexOf);
                }
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    /* renamed from: h */
    public final void m1260h(int i, long j) {
        char c = 0;
        for (int i2 = (i + 64) - 1; i2 >= i; i2--) {
            if ((j & c) != 0) {
                this.f75129a.remove(i2);
            }
            c >>>= 1;
        }
    }

    /* renamed from: i */
    public final void m1259i(int i) {
        if (i < 64) {
            this.f75130b = (1 << i) | this.f75130b;
            return;
        }
        int i2 = (i / 64) - 1;
        long[] jArr = this.f75131c;
        if (jArr == null) {
            this.f75131c = new long[this.f75129a.size() / 64];
        } else if (jArr.length <= i2) {
            long[] jArr2 = new long[this.f75129a.size() / 64];
            long[] jArr3 = this.f75131c;
            System.arraycopy(jArr3, 0, jArr2, 0, jArr3.length);
            this.f75131c = jArr2;
        }
        long[] jArr4 = this.f75131c;
        jArr4[i2] = (1 << (i % 64)) | jArr4[i2];
    }
}
