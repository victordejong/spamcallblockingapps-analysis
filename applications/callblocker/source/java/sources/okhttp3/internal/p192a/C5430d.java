package okhttp3.internal.p192a;

import java.io.Closeable;
import java.io.File;
import java.io.Flushable;
import java.io.IOException;
import java.util.LinkedHashMap;
import java.util.concurrent.Executor;
import java.util.regex.Pattern;
import okhttp3.internal.p195d.AbstractC5469a;
import p000a.AbstractC0006d;
/* renamed from: okhttp3.internal.a.d */
/* loaded from: classes-dex2jar.jar:okhttp3/internal/a/d.class */
public final class C5430d implements Closeable, Flushable {

    /* renamed from: a */
    static final Pattern f22699a;

    /* renamed from: j */
    static final /* synthetic */ boolean f22700j;

    /* renamed from: b */
    final AbstractC5469a f22701b;

    /* renamed from: c */
    final int f22702c;

    /* renamed from: d */
    AbstractC0006d f22703d;

    /* renamed from: e */
    final LinkedHashMap<String, C5432b> f22704e;

    /* renamed from: f */
    int f22705f;

    /* renamed from: g */
    boolean f22706g;

    /* renamed from: h */
    boolean f22707h;

    /* renamed from: i */
    boolean f22708i;

    /* renamed from: k */
    private long f22709k;

    /* renamed from: l */
    private long f22710l;

    /* renamed from: m */
    private long f22711m;

    /* renamed from: n */
    private final Executor f22712n;

    /* renamed from: o */
    private final Runnable f22713o;

    /* renamed from: okhttp3.internal.a.d$a */
    /* loaded from: classes-dex2jar.jar:okhttp3/internal/a/d$a.class */
    public final class C5431a {

        /* renamed from: a */
        final C5432b f22714a;

        /* renamed from: b */
        final boolean[] f22715b;

        /* renamed from: c */
        final /* synthetic */ C5430d f22716c;

        /* renamed from: d */
        private boolean f22717d;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x003c -> B:8:0x002d). Please submit an issue!!! */
        /* renamed from: a */
        void m722a() {
            if (this.f22714a.f22723f == this) {
                for (int i = 0; i < this.f22716c.f22702c; i++) {
                    try {
                        this.f22716c.f22701b.mo577a(this.f22714a.f22721d[i]);
                    } catch (IOException e) {
                    }
                }
                this.f22714a.f22723f = null;
            }
        }

        /* renamed from: b */
        public void m721b() {
            synchronized (this.f22716c) {
                if (this.f22717d) {
                    throw new IllegalStateException();
                }
                if (this.f22714a.f22723f == this) {
                    this.f22716c.m727a(this, false);
                }
                this.f22717d = true;
            }
        }
    }

    /* renamed from: okhttp3.internal.a.d$b */
    /* loaded from: classes-dex2jar.jar:okhttp3/internal/a/d$b.class */
    public final class C5432b {

        /* renamed from: a */
        final String f22718a;

        /* renamed from: b */
        final long[] f22719b;

        /* renamed from: c */
        final File[] f22720c;

        /* renamed from: d */
        final File[] f22721d;

        /* renamed from: e */
        boolean f22722e;

        /* renamed from: f */
        C5431a f22723f;

        /* renamed from: g */
        long f22724g;

        /* renamed from: a */
        void m720a(AbstractC0006d abstractC0006d) {
            for (long j : this.f22719b) {
                abstractC0006d.mo22508i(32).mo22506l(j);
            }
        }
    }

    static {
        f22700j = !C5430d.class.desiredAssertionStatus();
        f22699a = Pattern.compile("[a-z0-9_-]{1,120}");
    }

    /* renamed from: d */
    private void m723d() {
        synchronized (this) {
            if (m725b()) {
                throw new IllegalStateException("cache is closed");
            }
        }
    }

    /* renamed from: a */
    void m727a(C5431a c5431a, boolean z) {
        synchronized (this) {
            C5432b c5432b = c5431a.f22714a;
            if (c5432b.f22723f != c5431a) {
                throw new IllegalStateException();
            }
            int i = 0;
            if (z) {
                i = 0;
                if (!c5432b.f22722e) {
                    int i2 = 0;
                    while (true) {
                        i = 0;
                        if (i2 >= this.f22702c) {
                            break;
                        } else if (!c5431a.f22715b[i2]) {
                            c5431a.m721b();
                            throw new IllegalStateException("Newly created entry didn't create value for index " + i2);
                        } else if (!this.f22701b.mo575b(c5432b.f22721d[i2])) {
                            c5431a.m721b();
                            break;
                        } else {
                            i2++;
                        }
                    }
                }
            }
            while (i < this.f22702c) {
                File file = c5432b.f22721d[i];
                if (!z) {
                    this.f22701b.mo577a(file);
                } else if (this.f22701b.mo575b(file)) {
                    File file2 = c5432b.f22720c[i];
                    this.f22701b.mo576a(file, file2);
                    long j = c5432b.f22719b[i];
                    long mo574c = this.f22701b.mo574c(file2);
                    c5432b.f22719b[i] = mo574c;
                    this.f22710l = (this.f22710l - j) + mo574c;
                }
                i++;
            }
            this.f22705f++;
            c5432b.f22723f = null;
            if (c5432b.f22722e || z) {
                c5432b.f22722e = true;
                this.f22703d.mo22513b("CLEAN").mo22508i(32);
                this.f22703d.mo22513b(c5432b.f22718a);
                c5432b.m720a(this.f22703d);
                this.f22703d.mo22508i(10);
                if (z) {
                    long j2 = this.f22711m;
                    this.f22711m = 1 + j2;
                    c5432b.f22724g = j2;
                }
            } else {
                this.f22704e.remove(c5432b.f22718a);
                this.f22703d.mo22513b("REMOVE").mo22508i(32);
                this.f22703d.mo22513b(c5432b.f22718a);
                this.f22703d.mo22508i(10);
            }
            this.f22703d.flush();
            if (this.f22710l > this.f22709k || m728a()) {
                this.f22712n.execute(this.f22713o);
            }
        }
    }

    /* renamed from: a */
    boolean m728a() {
        return this.f22705f >= 2000 && this.f22705f >= this.f22704e.size();
    }

    /* renamed from: a */
    boolean m726a(C5432b c5432b) {
        if (c5432b.f22723f != null) {
            c5432b.f22723f.m722a();
        }
        for (int i = 0; i < this.f22702c; i++) {
            this.f22701b.mo577a(c5432b.f22720c[i]);
            this.f22710l -= c5432b.f22719b[i];
            c5432b.f22719b[i] = 0;
        }
        this.f22705f++;
        this.f22703d.mo22513b("REMOVE").mo22508i(32).mo22513b(c5432b.f22718a).mo22508i(10);
        this.f22704e.remove(c5432b.f22718a);
        if (m728a()) {
            this.f22712n.execute(this.f22713o);
            return true;
        }
        return true;
    }

    /* renamed from: b */
    public boolean m725b() {
        boolean z;
        synchronized (this) {
            z = this.f22707h;
        }
        return z;
    }

    /* renamed from: c */
    void m724c() {
        while (this.f22710l > this.f22709k) {
            m726a(this.f22704e.values().iterator().next());
        }
        this.f22708i = false;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        C5432b[] c5432bArr;
        synchronized (this) {
            if (!this.f22706g || this.f22707h) {
                this.f22707h = true;
            } else {
                for (C5432b c5432b : (C5432b[]) this.f22704e.values().toArray(new C5432b[this.f22704e.size()])) {
                    if (c5432b.f22723f != null) {
                        c5432b.f22723f.m721b();
                    }
                }
                m724c();
                this.f22703d.close();
                this.f22703d = null;
                this.f22707h = true;
            }
        }
    }

    @Override // java.io.Flushable
    public void flush() {
        synchronized (this) {
            if (this.f22706g) {
                m723d();
                m724c();
                this.f22703d.flush();
            }
        }
    }
}
