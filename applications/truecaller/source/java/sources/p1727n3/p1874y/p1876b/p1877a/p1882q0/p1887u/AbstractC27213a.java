package p1727n3.p1874y.p1876b.p1877a.p1882q0.p1887u;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import p1727n3.p1874y.p1876b.p1877a.p1904x0.C27434m;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.y.b.a.q0.u.a */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/q0/u/a.class */
public abstract class AbstractC27213a {

    /* renamed from: a */
    public final int f76258a;

    /* renamed from: n3.y.b.a.q0.u.a$a */
    /* loaded from: classes-dex2jar.jar:n3/y/b/a/q0/u/a$a.class */
    public static final class C27214a extends AbstractC27213a {

        /* renamed from: b */
        public final long f76259b;

        /* renamed from: c */
        public final List<C27215b> f76260c = new ArrayList();

        /* renamed from: d */
        public final List<C27214a> f76261d = new ArrayList();

        public C27214a(int i, long j) {
            super(i);
            this.f76259b = j;
        }

        /* renamed from: b */
        public C27214a m700b(int i) {
            int size = this.f76261d.size();
            for (int i2 = 0; i2 < size; i2++) {
                C27214a c27214a = this.f76261d.get(i2);
                if (c27214a.f76258a == i) {
                    return c27214a;
                }
            }
            return null;
        }

        /* renamed from: c */
        public C27215b m699c(int i) {
            int size = this.f76260c.size();
            for (int i2 = 0; i2 < size; i2++) {
                C27215b c27215b = this.f76260c.get(i2);
                if (c27215b.f76258a == i) {
                    return c27215b;
                }
            }
            return null;
        }

        @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.p1887u.AbstractC27213a
        public String toString() {
            String m701a = AbstractC27213a.m701a(this.f76258a);
            String arrays = Arrays.toString(this.f76260c.toArray());
            String arrays2 = Arrays.toString(this.f76261d.toArray());
            StringBuilder m8736A = C22128a.m8736A(C22128a.m8623f2(arrays2, C22128a.m8623f2(arrays, C22128a.m8623f2(m701a, 22))), m701a, " leaves: ", arrays, " containers: ");
            m8736A.append(arrays2);
            return m8736A.toString();
        }
    }

    /* renamed from: n3.y.b.a.q0.u.a$b */
    /* loaded from: classes-dex2jar.jar:n3/y/b/a/q0/u/a$b.class */
    public static final class C27215b extends AbstractC27213a {

        /* renamed from: b */
        public final C27434m f76262b;

        public C27215b(int i, C27434m c27434m) {
            super(i);
            this.f76262b = c27434m;
        }
    }

    public AbstractC27213a(int i) {
        this.f76258a = i;
    }

    /* renamed from: a */
    public static String m701a(int i) {
        StringBuilder sb = new StringBuilder(4);
        sb.append((char) ((i >> 24) & 255));
        sb.append((char) ((i >> 16) & 255));
        sb.append((char) ((i >> 8) & 255));
        sb.append((char) (i & 255));
        return sb.toString();
    }

    public String toString() {
        return m701a(this.f76258a);
    }
}
