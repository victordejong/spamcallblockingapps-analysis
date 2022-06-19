package p1727n3.p1874y.p1876b.p1877a.p1895t0;

import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import androidx.media2.exoplayer.external.Format;
import java.io.IOException;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.CopyOnWriteArrayList;
import p1727n3.p1874y.p1876b.p1877a.C27073c;
import p1727n3.p1874y.p1876b.p1877a.p1895t0.AbstractC27331c0;
import p1727n3.p1874y.p1876b.p1877a.p1895t0.AbstractC27371t;
import p1727n3.p1874y.p1876b.p1877a.p1903w0.C27409k;
/* renamed from: n3.y.b.a.t0.c0 */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/t0/c0.class */
public interface AbstractC27331c0 {

    /* renamed from: n3.y.b.a.t0.c0$a */
    /* loaded from: classes-dex2jar.jar:n3/y/b/a/t0/c0$a.class */
    public static final class C27332a {

        /* renamed from: a */
        public final int f76877a;

        /* renamed from: b */
        public final AbstractC27371t.C27372a f76878b;

        /* renamed from: c */
        public final CopyOnWriteArrayList<C27333a> f76879c;

        /* renamed from: d */
        public final long f76880d;

        /* renamed from: n3.y.b.a.t0.c0$a$a */
        /* loaded from: classes-dex2jar.jar:n3/y/b/a/t0/c0$a$a.class */
        public static final class C27333a {

            /* renamed from: a */
            public final Handler f76881a;

            /* renamed from: b */
            public final AbstractC27331c0 f76882b;

            public C27333a(Handler handler, AbstractC27331c0 abstractC27331c0) {
                this.f76881a = handler;
                this.f76882b = abstractC27331c0;
            }
        }

        public C27332a() {
            this.f76879c = new CopyOnWriteArrayList<>();
            this.f76877a = 0;
            this.f76878b = null;
            this.f76880d = 0L;
        }

        public C27332a(CopyOnWriteArrayList<C27333a> copyOnWriteArrayList, int i, AbstractC27371t.C27372a c27372a, long j) {
            this.f76879c = copyOnWriteArrayList;
            this.f76877a = i;
            this.f76878b = c27372a;
            this.f76880d = j;
        }

        /* JADX WARN: Type inference failed for: r0v8, types: [long] */
        /* renamed from: a */
        public final long m519a(long j) {
            long m947b = C27073c.m947b(j);
            char c = 1;
            if (m947b != -9223372036854775807L) {
                c = this.f76880d + m947b;
            }
            return c;
        }

        /* renamed from: b */
        public void m518b(int i, Format format, int i2, Object obj, long j) {
            m517c(new C27335c(1, i, format, i2, obj, m519a(j), -9223372036854775807L));
        }

        /* renamed from: c */
        public void m517c(C27335c c27335c) {
            Iterator<C27333a> it = this.f76879c.iterator();
            while (it.hasNext()) {
                C27333a next = it.next();
                m502r(next.f76881a, new Runnable(this, next.f76882b, c27335c) { // from class: n3.y.b.a.t0.b0

                    /* renamed from: a */
                    public final AbstractC27331c0.C27332a f76874a;

                    /* renamed from: b */
                    public final AbstractC27331c0 f76875b;

                    /* renamed from: c */
                    public final AbstractC27331c0.C27335c f76876c;

                    {
                        this.f76874a = this;
                        this.f76875b = abstractC27331c0;
                        this.f76876c = c27335c;
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        AbstractC27331c0.C27332a c27332a = this.f76874a;
                        this.f76875b.mo527A(c27332a.f76877a, c27332a.f76878b, this.f76876c);
                    }
                });
            }
        }

        /* renamed from: d */
        public void m516d(C27334b c27334b, C27335c c27335c) {
            Iterator<C27333a> it = this.f76879c.iterator();
            while (it.hasNext()) {
                C27333a next = it.next();
                m502r(next.f76881a, new Runnable(this, next.f76882b, c27334b, c27335c) { // from class: n3.y.b.a.t0.y

                    /* renamed from: a */
                    public final AbstractC27331c0.C27332a f77056a;

                    /* renamed from: b */
                    public final AbstractC27331c0 f77057b;

                    /* renamed from: c */
                    public final AbstractC27331c0.C27334b f77058c;

                    /* renamed from: d */
                    public final AbstractC27331c0.C27335c f77059d;

                    {
                        this.f77056a = this;
                        this.f77057b = abstractC27331c0;
                        this.f77058c = c27334b;
                        this.f77059d = c27335c;
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        AbstractC27331c0.C27332a c27332a = this.f77056a;
                        this.f77057b.mo525m(c27332a.f76877a, c27332a.f76878b, this.f77058c, this.f77059d);
                    }
                });
            }
        }

        /* renamed from: e */
        public void m515e(C27409k c27409k, Uri uri, Map<String, List<String>> map, int i, int i2, Format format, int i3, Object obj, long j, long j2, long j3, long j4, long j5) {
            m516d(new C27334b(c27409k, uri, map, j3, j4, j5), new C27335c(i, i2, format, i3, obj, m519a(j), m519a(j2)));
        }

        /* renamed from: f */
        public void m514f(C27409k c27409k, Uri uri, Map<String, List<String>> map, int i, long j, long j2, long j3) {
            m515e(c27409k, uri, map, i, -1, null, 0, null, -9223372036854775807L, -9223372036854775807L, j, j2, j3);
        }

        /* renamed from: g */
        public void m513g(C27334b c27334b, C27335c c27335c) {
            Iterator<C27333a> it = this.f76879c.iterator();
            while (it.hasNext()) {
                C27333a next = it.next();
                m502r(next.f76881a, new Runnable(this, next.f76882b, c27334b, c27335c) { // from class: n3.y.b.a.t0.x

                    /* renamed from: a */
                    public final AbstractC27331c0.C27332a f77052a;

                    /* renamed from: b */
                    public final AbstractC27331c0 f77053b;

                    /* renamed from: c */
                    public final AbstractC27331c0.C27334b f77054c;

                    /* renamed from: d */
                    public final AbstractC27331c0.C27335c f77055d;

                    {
                        this.f77052a = this;
                        this.f77053b = abstractC27331c0;
                        this.f77054c = c27334b;
                        this.f77055d = c27335c;
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        AbstractC27331c0.C27332a c27332a = this.f77052a;
                        this.f77053b.mo522t(c27332a.f76877a, c27332a.f76878b, this.f77054c, this.f77055d);
                    }
                });
            }
        }

        /* renamed from: h */
        public void m512h(C27409k c27409k, Uri uri, Map<String, List<String>> map, int i, int i2, Format format, int i3, Object obj, long j, long j2, long j3, long j4, long j5) {
            m513g(new C27334b(c27409k, uri, map, j3, j4, j5), new C27335c(i, i2, format, i3, obj, m519a(j), m519a(j2)));
        }

        /* renamed from: i */
        public void m511i(C27409k c27409k, Uri uri, Map<String, List<String>> map, int i, long j, long j2, long j3) {
            m512h(c27409k, uri, map, i, -1, null, 0, null, -9223372036854775807L, -9223372036854775807L, j, j2, j3);
        }

        /* renamed from: j */
        public void m510j(C27334b c27334b, C27335c c27335c, IOException iOException, boolean z) {
            Iterator<C27333a> it = this.f76879c.iterator();
            while (it.hasNext()) {
                C27333a next = it.next();
                m502r(next.f76881a, new Runnable(this, next.f76882b, c27334b, c27335c, iOException, z) { // from class: n3.y.b.a.t0.z

                    /* renamed from: a */
                    public final AbstractC27331c0.C27332a f77060a;

                    /* renamed from: b */
                    public final AbstractC27331c0 f77061b;

                    /* renamed from: c */
                    public final AbstractC27331c0.C27334b f77062c;

                    /* renamed from: d */
                    public final AbstractC27331c0.C27335c f77063d;

                    /* renamed from: e */
                    public final IOException f77064e;

                    /* renamed from: f */
                    public final boolean f77065f;

                    {
                        this.f77060a = this;
                        this.f77061b = abstractC27331c0;
                        this.f77062c = c27334b;
                        this.f77063d = c27335c;
                        this.f77064e = iOException;
                        this.f77065f = z;
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        AbstractC27331c0.C27332a c27332a = this.f77060a;
                        this.f77061b.mo521w(c27332a.f76877a, c27332a.f76878b, this.f77062c, this.f77063d, this.f77064e, this.f77065f);
                    }
                });
            }
        }

        /* renamed from: k */
        public void m509k(C27409k c27409k, Uri uri, Map<String, List<String>> map, int i, int i2, Format format, int i3, Object obj, long j, long j2, long j3, long j4, long j5, IOException iOException, boolean z) {
            m510j(new C27334b(c27409k, uri, map, j3, j4, j5), new C27335c(i, i2, format, i3, obj, m519a(j), m519a(j2)), iOException, z);
        }

        /* renamed from: l */
        public void m508l(C27409k c27409k, Uri uri, Map<String, List<String>> map, int i, long j, long j2, long j3, IOException iOException, boolean z) {
            m509k(c27409k, uri, map, i, -1, null, 0, null, -9223372036854775807L, -9223372036854775807L, j, j2, j3, iOException, z);
        }

        /* renamed from: m */
        public void m507m(C27334b c27334b, C27335c c27335c) {
            Iterator<C27333a> it = this.f76879c.iterator();
            while (it.hasNext()) {
                C27333a next = it.next();
                m502r(next.f76881a, new Runnable(this, next.f76882b, c27334b, c27335c) { // from class: n3.y.b.a.t0.w

                    /* renamed from: a */
                    public final AbstractC27331c0.C27332a f77048a;

                    /* renamed from: b */
                    public final AbstractC27331c0 f77049b;

                    /* renamed from: c */
                    public final AbstractC27331c0.C27334b f77050c;

                    /* renamed from: d */
                    public final AbstractC27331c0.C27335c f77051d;

                    {
                        this.f77048a = this;
                        this.f77049b = abstractC27331c0;
                        this.f77050c = c27334b;
                        this.f77051d = c27335c;
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        AbstractC27331c0.C27332a c27332a = this.f77048a;
                        this.f77049b.mo523s(c27332a.f76877a, c27332a.f76878b, this.f77050c, this.f77051d);
                    }
                });
            }
        }

        /* renamed from: n */
        public void m506n(C27409k c27409k, int i, int i2, Format format, int i3, Object obj, long j, long j2, long j3) {
            m507m(new C27334b(c27409k, c27409k.f77127a, Collections.emptyMap(), j3, 0L, 0L), new C27335c(i, i2, format, i3, obj, m519a(j), m519a(j2)));
        }

        /* renamed from: o */
        public void m505o(C27409k c27409k, int i, long j) {
            m506n(c27409k, i, -1, null, 0, null, -9223372036854775807L, -9223372036854775807L, j);
        }

        /* renamed from: p */
        public void m504p() {
            AbstractC27371t.C27372a c27372a = this.f76878b;
            Objects.requireNonNull(c27372a);
            Iterator<C27333a> it = this.f76879c.iterator();
            while (it.hasNext()) {
                C27333a next = it.next();
                m502r(next.f76881a, new Runnable(this, next.f76882b, c27372a) { // from class: n3.y.b.a.t0.u

                    /* renamed from: a */
                    public final AbstractC27331c0.C27332a f77042a;

                    /* renamed from: b */
                    public final AbstractC27331c0 f77043b;

                    /* renamed from: c */
                    public final AbstractC27371t.C27372a f77044c;

                    {
                        this.f77042a = this;
                        this.f77043b = abstractC27331c0;
                        this.f77044c = c27372a;
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        AbstractC27331c0.C27332a c27332a = this.f77042a;
                        this.f77043b.mo526l(c27332a.f76877a, this.f77044c);
                    }
                });
            }
        }

        /* renamed from: q */
        public void m503q() {
            AbstractC27371t.C27372a c27372a = this.f76878b;
            Objects.requireNonNull(c27372a);
            Iterator<C27333a> it = this.f76879c.iterator();
            while (it.hasNext()) {
                C27333a next = it.next();
                m502r(next.f76881a, new Runnable(this, next.f76882b, c27372a) { // from class: n3.y.b.a.t0.v

                    /* renamed from: a */
                    public final AbstractC27331c0.C27332a f77045a;

                    /* renamed from: b */
                    public final AbstractC27331c0 f77046b;

                    /* renamed from: c */
                    public final AbstractC27371t.C27372a f77047c;

                    {
                        this.f77045a = this;
                        this.f77046b = abstractC27331c0;
                        this.f77047c = c27372a;
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        AbstractC27331c0.C27332a c27332a = this.f77045a;
                        this.f77046b.mo524r(c27332a.f76877a, this.f77047c);
                    }
                });
            }
        }

        /* renamed from: r */
        public final void m502r(Handler handler, Runnable runnable) {
            if (handler.getLooper() == Looper.myLooper()) {
                runnable.run();
            } else {
                handler.post(runnable);
            }
        }

        /* renamed from: s */
        public void m501s() {
            AbstractC27371t.C27372a c27372a = this.f76878b;
            Objects.requireNonNull(c27372a);
            Iterator<C27333a> it = this.f76879c.iterator();
            while (it.hasNext()) {
                C27333a next = it.next();
                m502r(next.f76881a, new Runnable(this, next.f76882b, c27372a) { // from class: n3.y.b.a.t0.a0

                    /* renamed from: a */
                    public final AbstractC27331c0.C27332a f76866a;

                    /* renamed from: b */
                    public final AbstractC27331c0 f76867b;

                    /* renamed from: c */
                    public final AbstractC27371t.C27372a f76868c;

                    {
                        this.f76866a = this;
                        this.f76867b = abstractC27331c0;
                        this.f76868c = c27372a;
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        AbstractC27331c0.C27332a c27332a = this.f76866a;
                        this.f76867b.mo520z(c27332a.f76877a, this.f76868c);
                    }
                });
            }
        }
    }

    /* renamed from: n3.y.b.a.t0.c0$b */
    /* loaded from: classes-dex2jar.jar:n3/y/b/a/t0/c0$b.class */
    public static final class C27334b {

        /* renamed from: a */
        public final Map<String, List<String>> f76883a;

        public C27334b(C27409k c27409k, Uri uri, Map<String, List<String>> map, long j, long j2, long j3) {
            this.f76883a = map;
        }
    }

    /* renamed from: n3.y.b.a.t0.c0$c */
    /* loaded from: classes-dex2jar.jar:n3/y/b/a/t0/c0$c.class */
    public static final class C27335c {

        /* renamed from: a */
        public final int f76884a;

        /* renamed from: b */
        public final int f76885b;

        /* renamed from: c */
        public final Format f76886c;

        /* renamed from: d */
        public final int f76887d;

        /* renamed from: e */
        public final Object f76888e;

        /* renamed from: f */
        public final long f76889f;

        /* renamed from: g */
        public final long f76890g;

        public C27335c(int i, int i2, Format format, int i3, Object obj, long j, long j2) {
            this.f76884a = i;
            this.f76885b = i2;
            this.f76886c = format;
            this.f76887d = i3;
            this.f76888e = obj;
            this.f76889f = j;
            this.f76890g = j2;
        }
    }

    /* renamed from: A */
    void mo527A(int i, AbstractC27371t.C27372a c27372a, C27335c c27335c);

    /* renamed from: l */
    void mo526l(int i, AbstractC27371t.C27372a c27372a);

    /* renamed from: m */
    void mo525m(int i, AbstractC27371t.C27372a c27372a, C27334b c27334b, C27335c c27335c);

    /* renamed from: r */
    void mo524r(int i, AbstractC27371t.C27372a c27372a);

    /* renamed from: s */
    void mo523s(int i, AbstractC27371t.C27372a c27372a, C27334b c27334b, C27335c c27335c);

    /* renamed from: t */
    void mo522t(int i, AbstractC27371t.C27372a c27372a, C27334b c27334b, C27335c c27335c);

    /* renamed from: w */
    void mo521w(int i, AbstractC27371t.C27372a c27372a, C27334b c27334b, C27335c c27335c, IOException iOException, boolean z);

    /* renamed from: z */
    void mo520z(int i, AbstractC27371t.C27372a c27372a);
}
