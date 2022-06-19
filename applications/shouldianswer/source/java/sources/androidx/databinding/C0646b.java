package androidx.databinding;

import java.util.ArrayList;
import java.util.List;
/* renamed from: androidx.databinding.b */
/* loaded from: classes-dex2jar.jar:androidx/databinding/b.class */
public class C0646b<C, T, A> implements Cloneable {

    /* renamed from: a */
    private List<C> f2121a;

    /* renamed from: b */
    private long f2122b;

    /* renamed from: c */
    private long[] f2123c;

    /* renamed from: d */
    private int f2124d;

    /* renamed from: e */
    private final AbstractC0647a<C, T, A> f2125e;

    /* renamed from: androidx.databinding.b$a */
    /* loaded from: classes-dex2jar.jar:androidx/databinding/b$a.class */
    public static abstract class AbstractC0647a<C, T, A> {
        /* renamed from: a */
        public abstract void mo5846a(C c, T t, int i, A a);
    }

    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    /* renamed from: a */
    private void m5852a(int i, long j) {
        char c = 0;
        for (int i2 = (i + 64) - 1; i2 >= i; i2--) {
            if ((j & c) != 0) {
                this.f2121a.remove(i2);
            }
            c >>>= 1;
        }
    }

    /* renamed from: a */
    private void m5850a(T t, int i, A a, int i2) {
        if (i2 < 0) {
            m5848b(t, i, a);
            return;
        }
        long j = this.f2123c[i2];
        int i3 = (i2 + 1) * 64;
        int min = Math.min(this.f2121a.size(), i3 + 64);
        m5850a(t, i, a, i2 - 1);
        m5849a(t, i, a, i3, min, j);
    }

    /* JADX WARN: Type inference failed for: r0v6, types: [long] */
    /* renamed from: a */
    private void m5849a(T t, int i, A a, int i2, int i3, long j) {
        char c = 1;
        while (i2 < i3) {
            if ((j & c) == 0) {
                this.f2125e.mo5846a(this.f2121a.get(i2), t, i, a);
            }
            c <<= 1;
            i2++;
        }
    }

    /* renamed from: a */
    private boolean m5853a(int i) {
        int i2;
        boolean z = true;
        if (i < 64) {
            if (((1 << i) & this.f2122b) == 0) {
                z = false;
            }
            return z;
        }
        long[] jArr = this.f2123c;
        if (jArr == null || (i2 = (i / 64) - 1) >= jArr.length) {
            return false;
        }
        return ((1 << (i % 64)) & jArr[i2]) != 0;
    }

    /* renamed from: b */
    private void m5848b(T t, int i, A a) {
        m5849a(t, i, a, 0, Math.min(64, this.f2121a.size()), this.f2122b);
    }

    /* renamed from: c */
    private void m5847c(T t, int i, A a) {
        int size = this.f2121a.size();
        long[] jArr = this.f2123c;
        int length = jArr == null ? -1 : jArr.length - 1;
        m5850a(t, i, a, length);
        m5849a(t, i, a, (length + 2) * 64, size, 0L);
    }

    /* renamed from: a */
    public C0646b<C, T, A> clone() {
        C0646b<C, T, A> c0646b;
        CloneNotSupportedException e;
        C0646b<C, T, A> c0646b2;
        synchronized (this) {
            try {
                c0646b2 = (C0646b) super.clone();
                try {
                    c0646b2.f2122b = 0L;
                    c0646b2.f2123c = null;
                    int i = 0;
                    c0646b2.f2124d = 0;
                    c0646b2.f2121a = new ArrayList();
                    int size = this.f2121a.size();
                    while (true) {
                        c0646b = c0646b2;
                        if (i >= size) {
                            break;
                        }
                        if (!m5853a(i)) {
                            c0646b2.f2121a.add(this.f2121a.get(i));
                        }
                        i++;
                    }
                } catch (CloneNotSupportedException e2) {
                    e = e2;
                    e.printStackTrace();
                    c0646b = c0646b2;
                    return c0646b;
                }
            } catch (CloneNotSupportedException e3) {
                e = e3;
                c0646b2 = null;
            }
        }
        return c0646b;
    }

    /* renamed from: a */
    public void m5851a(T t, int i, A a) {
        synchronized (this) {
            this.f2124d++;
            m5847c(t, i, a);
            this.f2124d--;
            if (this.f2124d == 0) {
                if (this.f2123c != null) {
                    for (int length = this.f2123c.length - 1; length >= 0; length--) {
                        long j = this.f2123c[length];
                        if (j != 0) {
                            m5852a((length + 1) * 64, j);
                            this.f2123c[length] = 0;
                        }
                    }
                }
                if (this.f2122b != 0) {
                    m5852a(0, this.f2122b);
                    this.f2122b = 0L;
                }
            }
        }
    }
}
