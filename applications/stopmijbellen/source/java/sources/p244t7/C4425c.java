package p244t7;

import java.io.InputStream;
import java.nio.ByteBuffer;
import p124i4.C3102d;
import p148k7.AbstractC3360m;
import p148k7.C3343h;
import p148k7.C3358l;
import p159l7.AbstractC3510a;
import p159l7.AbstractC3513c;
/* renamed from: t7.c */
/* loaded from: classes2-dex2jar.jar:t7/c.class */
public class C4425c implements AbstractC3360m {

    /* renamed from: a */
    public C3343h f13771a;

    /* renamed from: b */
    public InputStream f13772b;

    /* renamed from: c */
    public AbstractC3513c f13773c;

    /* renamed from: d */
    public int f13774d = 0;

    /* renamed from: e */
    public C3358l f13775e = new C3358l();

    /* renamed from: f */
    public Runnable f13776f = new RunnableC4426a();

    /* renamed from: g */
    public AbstractC3510a f13777g;

    /* renamed from: t7.c$a */
    /* loaded from: classes2-dex2jar.jar:t7/c$a.class */
    public class RunnableC4426a implements Runnable {

        /* renamed from: t7.c$a$a */
        /* loaded from: classes2-dex2jar.jar:t7/c$a$a.class */
        public class RunnableC4427a implements Runnable {
            public RunnableC4427a() {
                RunnableC4426a.this = r4;
            }

            @Override // java.lang.Runnable
            public void run() {
                C4425c c4425c = C4425c.this;
                C3102d.m2623p(c4425c, c4425c.f13775e);
            }
        }

        /* renamed from: t7.c$a$b */
        /* loaded from: classes2-dex2jar.jar:t7/c$a$b.class */
        public class RunnableC4428b implements Runnable {
            public RunnableC4428b() {
                RunnableC4426a.this = r4;
            }

            @Override // java.lang.Runnable
            public void run() {
                C4425c c4425c = C4425c.this;
                C3102d.m2623p(c4425c, c4425c.f13775e);
            }
        }

        public RunnableC4426a() {
            C4425c.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (!C4425c.this.f13775e.m2343j()) {
                    C4425c.this.f13771a.m2355k(new RunnableC4427a());
                    if (!C4425c.this.f13775e.m2343j()) {
                        return;
                    }
                }
                do {
                    ByteBuffer m2342k = C3358l.m2342k(Math.min(Math.max(C4425c.this.f13774d, 4096), 262144));
                    int read = C4425c.this.f13772b.read(m2342k.array());
                    if (-1 == read) {
                        C4425c c4425c = C4425c.this;
                        c4425c.f13771a.m2357i(new RunnableC4424b(c4425c, null), 0L);
                        return;
                    }
                    C4425c.this.f13774d = read * 2;
                    m2342k.limit(read);
                    C4425c.this.f13775e.m2352a(m2342k);
                    C4425c.this.f13771a.m2355k(new RunnableC4428b());
                } while (C4425c.this.f13775e.f11382c == 0);
            } catch (Exception e) {
                C4425c c4425c2 = C4425c.this;
                c4425c2.f13771a.m2357i(new RunnableC4424b(c4425c2, e), 0L);
            }
        }
    }

    public C4425c(C3343h c3343h, InputStream inputStream) {
        this.f13771a = c3343h;
        this.f13772b = inputStream;
        new Thread(this.f13776f).start();
    }

    @Override // p148k7.AbstractC3360m, p148k7.AbstractC3362o
    /* renamed from: a */
    public C3343h mo940a() {
        return this.f13771a;
    }

    @Override // p148k7.AbstractC3360m
    /* renamed from: b */
    public void mo939b(AbstractC3513c abstractC3513c) {
        this.f13773c = abstractC3513c;
    }

    @Override // p148k7.AbstractC3360m
    public void close() {
        this.f13771a.m2357i(new RunnableC4424b(this, null), 0L);
        try {
            this.f13772b.close();
        } catch (Exception e) {
        }
    }

    @Override // p148k7.AbstractC3360m
    /* renamed from: e */
    public boolean mo938e() {
        return false;
    }

    @Override // p148k7.AbstractC3360m
    /* renamed from: f */
    public String mo937f() {
        return null;
    }

    @Override // p148k7.AbstractC3360m
    /* renamed from: h */
    public void mo936h(AbstractC3510a abstractC3510a) {
        this.f13777g = abstractC3510a;
    }

    @Override // p148k7.AbstractC3360m
    /* renamed from: i */
    public AbstractC3513c mo935i() {
        return this.f13773c;
    }
}
