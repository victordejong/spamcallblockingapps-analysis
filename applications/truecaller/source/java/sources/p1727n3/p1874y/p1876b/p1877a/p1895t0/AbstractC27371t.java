package p1727n3.p1874y.p1876b.p1877a.p1895t0;

import android.os.Handler;
import java.io.IOException;
import p1727n3.p1874y.p1876b.p1877a.AbstractC27096l0;
import p1727n3.p1874y.p1876b.p1877a.p1903w0.AbstractC27401b;
import p1727n3.p1874y.p1876b.p1877a.p1903w0.AbstractC27404e0;
/* renamed from: n3.y.b.a.t0.t */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/t0/t.class */
public interface AbstractC27371t {

    /* renamed from: n3.y.b.a.t0.t$a */
    /* loaded from: classes-dex2jar.jar:n3/y/b/a/t0/t$a.class */
    public static final class C27372a {

        /* renamed from: a */
        public final Object f77037a;

        /* renamed from: b */
        public final int f77038b;

        /* renamed from: c */
        public final int f77039c;

        /* renamed from: d */
        public final long f77040d;

        /* renamed from: e */
        public final int f77041e;

        public C27372a(Object obj) {
            this.f77037a = obj;
            this.f77038b = -1;
            this.f77039c = -1;
            this.f77040d = -1L;
            this.f77041e = -1;
        }

        public C27372a(Object obj, int i, int i2, long j) {
            this.f77037a = obj;
            this.f77038b = i;
            this.f77039c = i2;
            this.f77040d = j;
            this.f77041e = -1;
        }

        public C27372a(Object obj, int i, int i2, long j, int i3) {
            this.f77037a = obj;
            this.f77038b = i;
            this.f77039c = i2;
            this.f77040d = j;
            this.f77041e = i3;
        }

        public C27372a(Object obj, long j) {
            this.f77037a = obj;
            this.f77038b = -1;
            this.f77039c = -1;
            this.f77040d = j;
            this.f77041e = -1;
        }

        public C27372a(Object obj, long j, int i) {
            this.f77037a = obj;
            this.f77038b = -1;
            this.f77039c = -1;
            this.f77040d = j;
            this.f77041e = i;
        }

        /* renamed from: a */
        public C27372a m438a(Object obj) {
            return this.f77037a.equals(obj) ? this : new C27372a(obj, this.f77038b, this.f77039c, this.f77040d, this.f77041e);
        }

        /* renamed from: b */
        public boolean m437b() {
            return this.f77038b != -1;
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (obj == null || C27372a.class != obj.getClass()) {
                return false;
            }
            C27372a c27372a = (C27372a) obj;
            if (!this.f77037a.equals(c27372a.f77037a) || this.f77038b != c27372a.f77038b || this.f77039c != c27372a.f77039c || this.f77040d != c27372a.f77040d || this.f77041e != c27372a.f77041e) {
                z = false;
            }
            return z;
        }

        public int hashCode() {
            return ((((((((this.f77037a.hashCode() + 527) * 31) + this.f77038b) * 31) + this.f77039c) * 31) + ((int) this.f77040d)) * 31) + this.f77041e;
        }
    }

    /* renamed from: n3.y.b.a.t0.t$b */
    /* loaded from: classes-dex2jar.jar:n3/y/b/a/t0/t$b.class */
    public interface AbstractC27373b {
        /* renamed from: a */
        void mo436a(AbstractC27371t abstractC27371t, AbstractC27096l0 abstractC27096l0);
    }

    /* renamed from: a */
    void m447a() throws IOException;

    /* renamed from: b */
    void mo446b(AbstractC27373b abstractC27373b, AbstractC27404e0 abstractC27404e0);

    /* renamed from: c */
    void m445c(s sVar);

    /* renamed from: d */
    void mo444d(AbstractC27373b abstractC27373b);

    /* renamed from: e */
    s m443e(C27372a c27372a, AbstractC27401b abstractC27401b, long j);

    /* renamed from: f */
    void mo442f(AbstractC27373b abstractC27373b);

    /* renamed from: g */
    void mo441g(Handler handler, AbstractC27331c0 abstractC27331c0);

    Object getTag();

    /* renamed from: h */
    void mo440h(AbstractC27331c0 abstractC27331c0);

    /* renamed from: i */
    void mo439i(AbstractC27373b abstractC27373b);
}
