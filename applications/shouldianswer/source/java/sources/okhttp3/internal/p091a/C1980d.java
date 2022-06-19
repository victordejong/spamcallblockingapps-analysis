package okhttp3.internal.p091a;

import java.io.Closeable;
import java.io.File;
import java.io.Flushable;
import java.io.IOException;
import java.util.LinkedHashMap;
import java.util.concurrent.Executor;
import java.util.regex.Pattern;
import okhttp3.internal.p094d.AbstractC2019a;
import p000a.AbstractC0007d;
/* renamed from: okhttp3.internal.a.d */
/* loaded from: classes-dex2jar.jar:okhttp3/internal/a/d.class */
public final class C1980d implements Closeable, Flushable {

    /* renamed from: b */
    final AbstractC2019a f4927b;

    /* renamed from: c */
    final int f4928c;

    /* renamed from: d */
    AbstractC0007d f4929d;

    /* renamed from: e */
    final LinkedHashMap<String, C1982b> f4930e;

    /* renamed from: f */
    int f4931f;

    /* renamed from: g */
    boolean f4932g;

    /* renamed from: h */
    boolean f4933h;

    /* renamed from: i */
    boolean f4934i;

    /* renamed from: k */
    private long f4935k;

    /* renamed from: l */
    private long f4936l;

    /* renamed from: m */
    private long f4937m;

    /* renamed from: n */
    private final Executor f4938n;

    /* renamed from: o */
    private final Runnable f4939o;

    /* renamed from: j */
    static final /* synthetic */ boolean f4926j = !C1980d.class.desiredAssertionStatus();

    /* renamed from: a */
    static final Pattern f4925a = Pattern.compile("[a-z0-9_-]{1,120}");

    /* renamed from: okhttp3.internal.a.d$a */
    /* loaded from: classes-dex2jar.jar:okhttp3/internal/a/d$a.class */
    public final class C1981a {

        /* renamed from: a */
        final C1982b f4940a;

        /* renamed from: b */
        final boolean[] f4941b;

        /* renamed from: c */
        final /* synthetic */ C1980d f4942c;

        /* renamed from: d */
        private boolean f4943d;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x003c -> B:8:0x002d). Please submit an issue!!! */
        /* renamed from: a */
        void m2404a() {
            if (this.f4940a.f4949f == this) {
                for (int i = 0; i < this.f4942c.f4928c; i++) {
                    try {
                        this.f4942c.f4927b.mo2259a(this.f4940a.f4947d[i]);
                    } catch (IOException e) {
                    }
                }
                this.f4940a.f4949f = null;
            }
        }

        /* renamed from: b */
        public void m2403b() {
            synchronized (this.f4942c) {
                if (this.f4943d) {
                    throw new IllegalStateException();
                }
                if (this.f4940a.f4949f == this) {
                    this.f4942c.m2409a(this, false);
                }
                this.f4943d = true;
            }
        }
    }

    /* renamed from: okhttp3.internal.a.d$b */
    /* loaded from: classes-dex2jar.jar:okhttp3/internal/a/d$b.class */
    public final class C1982b {

        /* renamed from: a */
        final String f4944a;

        /* renamed from: b */
        final long[] f4945b;

        /* renamed from: c */
        final File[] f4946c;

        /* renamed from: d */
        final File[] f4947d;

        /* renamed from: e */
        boolean f4948e;

        /* renamed from: f */
        C1981a f4949f;

        /* renamed from: g */
        long f4950g;

        /* renamed from: a */
        void m2402a(AbstractC0007d abstractC0007d) {
            for (long j : this.f4945b) {
                abstractC0007d.mo8084i(32).mo8082l(j);
            }
        }
    }

    /* renamed from: d */
    private void m2405d() {
        synchronized (this) {
            if (m2407b()) {
                throw new IllegalStateException("cache is closed");
            }
        }
    }

    /* renamed from: a */
    void m2409a(C1981a c1981a, boolean z) {
        synchronized (this) {
            C1982b c1982b = c1981a.f4940a;
            if (c1982b.f4949f == c1981a) {
                int i = 0;
                if (z) {
                    i = 0;
                    if (!c1982b.f4948e) {
                        int i2 = 0;
                        while (true) {
                            i = 0;
                            if (i2 >= this.f4928c) {
                                break;
                            } else if (!c1981a.f4941b[i2]) {
                                c1981a.m2403b();
                                throw new IllegalStateException("Newly created entry didn't create value for index " + i2);
                            } else if (!this.f4927b.mo2257b(c1982b.f4947d[i2])) {
                                c1981a.m2403b();
                                return;
                            } else {
                                i2++;
                            }
                        }
                    }
                }
                while (i < this.f4928c) {
                    File file = c1982b.f4947d[i];
                    if (!z) {
                        this.f4927b.mo2259a(file);
                    } else if (this.f4927b.mo2257b(file)) {
                        File file2 = c1982b.f4946c[i];
                        this.f4927b.mo2258a(file, file2);
                        long j = c1982b.f4945b[i];
                        long mo2256c = this.f4927b.mo2256c(file2);
                        c1982b.f4945b[i] = mo2256c;
                        this.f4936l = (this.f4936l - j) + mo2256c;
                    }
                    i++;
                }
                this.f4931f++;
                c1982b.f4949f = null;
                if (c1982b.f4948e || z) {
                    c1982b.f4948e = true;
                    this.f4929d.mo8089b("CLEAN").mo8084i(32);
                    this.f4929d.mo8089b(c1982b.f4944a);
                    c1982b.m2402a(this.f4929d);
                    this.f4929d.mo8084i(10);
                    if (z) {
                        long j2 = this.f4937m;
                        this.f4937m = 1 + j2;
                        c1982b.f4950g = j2;
                    }
                } else {
                    this.f4930e.remove(c1982b.f4944a);
                    this.f4929d.mo8089b("REMOVE").mo8084i(32);
                    this.f4929d.mo8089b(c1982b.f4944a);
                    this.f4929d.mo8084i(10);
                }
                this.f4929d.flush();
                if (this.f4936l > this.f4935k || m2410a()) {
                    this.f4938n.execute(this.f4939o);
                }
                return;
            }
            throw new IllegalStateException();
        }
    }

    /* renamed from: a */
    boolean m2410a() {
        int i = this.f4931f;
        return i >= 2000 && i >= this.f4930e.size();
    }

    /* renamed from: a */
    boolean m2408a(C1982b c1982b) {
        if (c1982b.f4949f != null) {
            c1982b.f4949f.m2404a();
        }
        for (int i = 0; i < this.f4928c; i++) {
            this.f4927b.mo2259a(c1982b.f4946c[i]);
            this.f4936l -= c1982b.f4945b[i];
            c1982b.f4945b[i] = 0;
        }
        this.f4931f++;
        this.f4929d.mo8089b("REMOVE").mo8084i(32).mo8089b(c1982b.f4944a).mo8084i(10);
        this.f4930e.remove(c1982b.f4944a);
        if (m2410a()) {
            this.f4938n.execute(this.f4939o);
            return true;
        }
        return true;
    }

    /* renamed from: b */
    public boolean m2407b() {
        boolean z;
        synchronized (this) {
            z = this.f4933h;
        }
        return z;
    }

    /* renamed from: c */
    void m2406c() {
        while (this.f4936l > this.f4935k) {
            m2408a(this.f4930e.values().iterator().next());
        }
        this.f4934i = false;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        C1982b[] c1982bArr;
        synchronized (this) {
            if (this.f4932g && !this.f4933h) {
                for (C1982b c1982b : (C1982b[]) this.f4930e.values().toArray(new C1982b[this.f4930e.size()])) {
                    if (c1982b.f4949f != null) {
                        c1982b.f4949f.m2403b();
                    }
                }
                m2406c();
                this.f4929d.close();
                this.f4929d = null;
                this.f4933h = true;
                return;
            }
            this.f4933h = true;
        }
    }

    @Override // java.io.Flushable
    public void flush() {
        synchronized (this) {
            if (!this.f4932g) {
                return;
            }
            m2405d();
            m2406c();
            this.f4929d.flush();
        }
    }
}
