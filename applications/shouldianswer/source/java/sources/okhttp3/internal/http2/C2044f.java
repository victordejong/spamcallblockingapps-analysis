package okhttp3.internal.http2;

import com.google.android.gms.common.api.Api;
import java.io.Closeable;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.Socket;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import okhttp3.internal.AbstractRunnableC1984b;
import okhttp3.internal.C1999c;
import okhttp3.internal.http2.C2059g;
import okhttp3.internal.p095e.C2030f;
import p000a.AbstractC0007d;
import p000a.AbstractC0008e;
import p000a.C0005c;
import p000a.C0009f;
/* renamed from: okhttp3.internal.http2.f */
/* loaded from: classes-dex2jar.jar:okhttp3/internal/http2/f.class */
public final class C2044f implements Closeable {

    /* renamed from: r */
    static final /* synthetic */ boolean f5172r = !C2044f.class.desiredAssertionStatus();

    /* renamed from: s */
    private static final ExecutorService f5173s = new ThreadPoolExecutor(0, (int) Api.BaseClientBuilder.API_PRIORITY_OTHER, 60, TimeUnit.SECONDS, new SynchronousQueue(), C1999c.m2343a("OkHttp Http2Connection", true));

    /* renamed from: a */
    final boolean f5174a;

    /* renamed from: b */
    final AbstractC2052b f5175b;

    /* renamed from: d */
    final String f5177d;

    /* renamed from: e */
    int f5178e;

    /* renamed from: f */
    int f5179f;

    /* renamed from: g */
    boolean f5180g;

    /* renamed from: h */
    final AbstractC2069k f5181h;

    /* renamed from: j */
    long f5183j;

    /* renamed from: n */
    final Socket f5187n;

    /* renamed from: o */
    final C2066i f5188o;

    /* renamed from: p */
    final C2055d f5189p;

    /* renamed from: t */
    private final ScheduledExecutorService f5191t;

    /* renamed from: u */
    private final ExecutorService f5192u;

    /* renamed from: v */
    private boolean f5193v;

    /* renamed from: c */
    final Map<Integer, C2062h> f5176c = new LinkedHashMap();

    /* renamed from: i */
    long f5182i = 0;

    /* renamed from: k */
    C2071l f5184k = new C2071l();

    /* renamed from: l */
    final C2071l f5185l = new C2071l();

    /* renamed from: m */
    boolean f5186m = false;

    /* renamed from: q */
    final Set<Integer> f5190q = new LinkedHashSet();

    /* renamed from: okhttp3.internal.http2.f$a */
    /* loaded from: classes-dex2jar.jar:okhttp3/internal/http2/f$a.class */
    public static class C2051a {

        /* renamed from: a */
        Socket f5215a;

        /* renamed from: b */
        String f5216b;

        /* renamed from: c */
        AbstractC0008e f5217c;

        /* renamed from: d */
        AbstractC0007d f5218d;

        /* renamed from: e */
        AbstractC2052b f5219e = AbstractC2052b.f5223f;

        /* renamed from: f */
        AbstractC2069k f5220f = AbstractC2069k.f5286a;

        /* renamed from: g */
        boolean f5221g;

        /* renamed from: h */
        int f5222h;

        public C2051a(boolean z) {
            this.f5221g = z;
        }

        /* renamed from: a */
        public C2051a m2142a(int i) {
            this.f5222h = i;
            return this;
        }

        /* renamed from: a */
        public C2051a m2141a(Socket socket, String str, AbstractC0008e abstractC0008e, AbstractC0007d abstractC0007d) {
            this.f5215a = socket;
            this.f5216b = str;
            this.f5217c = abstractC0008e;
            this.f5218d = abstractC0007d;
            return this;
        }

        /* renamed from: a */
        public C2051a m2140a(AbstractC2052b abstractC2052b) {
            this.f5219e = abstractC2052b;
            return this;
        }

        /* renamed from: a */
        public C2044f m2143a() {
            return new C2044f(this);
        }
    }

    /* renamed from: okhttp3.internal.http2.f$b */
    /* loaded from: classes-dex2jar.jar:okhttp3/internal/http2/f$b.class */
    public static abstract class AbstractC2052b {

        /* renamed from: f */
        public static final AbstractC2052b f5223f = new AbstractC2052b() { // from class: okhttp3.internal.http2.f.b.1
            @Override // okhttp3.internal.http2.C2044f.AbstractC2052b
            /* renamed from: a */
            public void mo2138a(C2062h c2062h) {
                c2062h.m2106a(EnumC2036a.REFUSED_STREAM);
            }
        };

        /* renamed from: a */
        public void mo2139a(C2044f c2044f) {
        }

        /* renamed from: a */
        public abstract void mo2138a(C2062h c2062h);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: okhttp3.internal.http2.f$c */
    /* loaded from: classes-dex2jar.jar:okhttp3/internal/http2/f$c.class */
    public final class C2054c extends AbstractRunnableC1984b {

        /* renamed from: a */
        final boolean f5224a;

        /* renamed from: c */
        final int f5225c;

        /* renamed from: d */
        final int f5226d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2054c(boolean z, int i, int i2) {
            super("OkHttp %s ping %08x%08x", r8.f5177d, Integer.valueOf(i), Integer.valueOf(i2));
            C2044f.this = r8;
            this.f5224a = z;
            this.f5225c = i;
            this.f5226d = i2;
        }

        @Override // okhttp3.internal.AbstractRunnableC1984b
        /* renamed from: c */
        public void mo1824c() {
            C2044f.this.m2155a(this.f5224a, this.f5225c, this.f5226d);
        }
    }

    /* renamed from: okhttp3.internal.http2.f$d */
    /* loaded from: classes-dex2jar.jar:okhttp3/internal/http2/f$d.class */
    public class C2055d extends AbstractRunnableC1984b implements C2059g.AbstractC2061b {

        /* renamed from: a */
        final C2059g f5228a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2055d(C2059g c2059g) {
            super("OkHttp %s", r8.f5177d);
            C2044f.this = r8;
            this.f5228a = c2059g;
        }

        /* renamed from: a */
        private void m2137a(final C2071l c2071l) {
            try {
                C2044f.this.f5191t.execute(new AbstractRunnableC1984b("OkHttp %s ACK Settings", new Object[]{C2044f.this.f5177d}) { // from class: okhttp3.internal.http2.f.d.3
                    @Override // okhttp3.internal.AbstractRunnableC1984b
                    /* renamed from: c */
                    public void mo1824c() {
                        try {
                            C2044f.this.f5188o.m2072a(c2071l);
                        } catch (IOException e) {
                            C2044f.this.m2144f();
                        }
                    }
                });
            } catch (RejectedExecutionException e) {
            }
        }

        @Override // okhttp3.internal.http2.C2059g.AbstractC2061b
        /* renamed from: a */
        public void mo2120a() {
        }

        @Override // okhttp3.internal.http2.C2059g.AbstractC2061b
        /* renamed from: a */
        public void mo2119a(int i, int i2, int i3, boolean z) {
        }

        @Override // okhttp3.internal.http2.C2059g.AbstractC2061b
        /* renamed from: a */
        public void mo2118a(int i, int i2, List<C2037b> list) {
            C2044f.this.m2166a(i2, list);
        }

        @Override // okhttp3.internal.http2.C2059g.AbstractC2061b
        /* renamed from: a */
        public void mo2117a(int i, long j) {
            if (i == 0) {
                synchronized (C2044f.this) {
                    C2044f.this.f5183j += j;
                    C2044f.this.notifyAll();
                }
                return;
            }
            C2062h m2169a = C2044f.this.m2169a(i);
            if (m2169a == null) {
                return;
            }
            synchronized (m2169a) {
                m2169a.m2109a(j);
            }
        }

        @Override // okhttp3.internal.http2.C2059g.AbstractC2061b
        /* renamed from: a */
        public void mo2116a(int i, EnumC2036a enumC2036a) {
            if (C2044f.this.m2148c(i)) {
                C2044f.this.m2147c(i, enumC2036a);
                return;
            }
            C2062h m2153b = C2044f.this.m2153b(i);
            if (m2153b == null) {
                return;
            }
            m2153b.m2102c(enumC2036a);
        }

        @Override // okhttp3.internal.http2.C2059g.AbstractC2061b
        /* renamed from: a */
        public void mo2115a(int i, EnumC2036a enumC2036a, C0009f c0009f) {
            C2062h[] c2062hArr;
            c0009f.mo8038g();
            synchronized (C2044f.this) {
                c2062hArr = (C2062h[]) C2044f.this.f5176c.values().toArray(new C2062h[C2044f.this.f5176c.size()]);
                C2044f.this.f5180g = true;
            }
            for (C2062h c2062h : c2062hArr) {
                if (c2062h.m2110a() > i && c2062h.m2103c()) {
                    c2062h.m2102c(EnumC2036a.REFUSED_STREAM);
                    C2044f.this.m2153b(c2062h.m2110a());
                }
            }
        }

        @Override // okhttp3.internal.http2.C2059g.AbstractC2061b
        /* renamed from: a */
        public void mo2114a(boolean z, int i, int i2) {
            if (!z) {
                try {
                    C2044f.this.f5191t.execute(new C2054c(true, i, i2));
                    return;
                } catch (RejectedExecutionException e) {
                    return;
                }
            }
            synchronized (C2044f.this) {
                C2044f.this.f5193v = false;
                C2044f.this.notifyAll();
            }
        }

        @Override // okhttp3.internal.http2.C2059g.AbstractC2061b
        /* renamed from: a */
        public void mo2113a(boolean z, int i, int i2, List<C2037b> list) {
            if (C2044f.this.m2148c(i)) {
                C2044f.this.m2165a(i, list, z);
                return;
            }
            synchronized (C2044f.this) {
                C2062h m2169a = C2044f.this.m2169a(i);
                if (m2169a != null) {
                    m2169a.m2107a(list);
                    if (!z) {
                        return;
                    }
                    m2169a.m2095i();
                } else if (C2044f.this.f5180g) {
                } else {
                    if (i <= C2044f.this.f5178e) {
                        return;
                    }
                    if (i % 2 == C2044f.this.f5179f % 2) {
                        return;
                    }
                    final C2062h c2062h = new C2062h(i, C2044f.this, false, z, list);
                    C2044f.this.f5178e = i;
                    C2044f.this.f5176c.put(Integer.valueOf(i), c2062h);
                    C2044f.f5173s.execute(new AbstractRunnableC1984b("OkHttp %s stream %d", new Object[]{C2044f.this.f5177d, Integer.valueOf(i)}) { // from class: okhttp3.internal.http2.f.d.1
                        @Override // okhttp3.internal.AbstractRunnableC1984b
                        /* renamed from: c */
                        public void mo1824c() {
                            try {
                                C2044f.this.f5175b.mo2138a(c2062h);
                            } catch (IOException e) {
                                C2030f m2224c = C2030f.m2224c();
                                m2224c.mo2237a(4, "Http2Connection.Listener failure for " + C2044f.this.f5177d, e);
                                try {
                                    c2062h.m2106a(EnumC2036a.PROTOCOL_ERROR);
                                } catch (IOException e2) {
                                }
                            }
                        }
                    });
                }
            }
        }

        @Override // okhttp3.internal.http2.C2059g.AbstractC2061b
        /* renamed from: a */
        public void mo2112a(boolean z, int i, AbstractC0008e abstractC0008e, int i2) {
            if (C2044f.this.m2148c(i)) {
                C2044f.this.m2167a(i, abstractC0008e, i2, z);
                return;
            }
            C2062h m2169a = C2044f.this.m2169a(i);
            if (m2169a == null) {
                C2044f.this.m2164a(i, EnumC2036a.PROTOCOL_ERROR);
                abstractC0008e.mo8065h(i2);
                return;
            }
            m2169a.m2108a(abstractC0008e, i2);
            if (!z) {
                return;
            }
            m2169a.m2095i();
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v46, types: [long] */
        @Override // okhttp3.internal.http2.C2059g.AbstractC2061b
        /* renamed from: a */
        public void mo2111a(boolean z, C2071l c2071l) {
            C2062h[] c2062hArr;
            char c;
            int i;
            synchronized (C2044f.this) {
                int m2045d = C2044f.this.f5185l.m2045d();
                if (z) {
                    C2044f.this.f5185l.m2053a();
                }
                C2044f.this.f5185l.m2050a(c2071l);
                m2137a(c2071l);
                int m2045d2 = C2044f.this.f5185l.m2045d();
                c2062hArr = null;
                if (m2045d2 == -1 || m2045d2 == m2045d) {
                    c = 0;
                } else {
                    ?? r0 = m2045d2 - m2045d;
                    if (!C2044f.this.f5186m) {
                        C2044f.this.m2162a((long) r0);
                        C2044f.this.f5186m = true;
                    }
                    c = r0;
                    if (!C2044f.this.f5176c.isEmpty()) {
                        c2062hArr = (C2062h[]) C2044f.this.f5176c.values().toArray(new C2062h[C2044f.this.f5176c.size()]);
                        c = r0;
                    }
                }
                C2044f.f5173s.execute(new AbstractRunnableC1984b("OkHttp %s settings", C2044f.this.f5177d) { // from class: okhttp3.internal.http2.f.d.2
                    @Override // okhttp3.internal.AbstractRunnableC1984b
                    /* renamed from: c */
                    public void mo1824c() {
                        C2044f.this.f5175b.mo2139a(C2044f.this);
                    }
                });
            }
            if (c2062hArr == null || c == 0) {
                return;
            }
            for (C2062h c2062h : c2062hArr) {
                synchronized (c2062h) {
                    c2062h.m2109a(c);
                }
            }
        }

        @Override // okhttp3.internal.AbstractRunnableC1984b
        /* renamed from: c */
        protected void mo1824c() {
            EnumC2036a enumC2036a;
            C2044f c2044f;
            EnumC2036a enumC2036a2;
            EnumC2036a enumC2036a3 = EnumC2036a.INTERNAL_ERROR;
            EnumC2036a enumC2036a4 = EnumC2036a.INTERNAL_ERROR;
            EnumC2036a enumC2036a5 = enumC2036a3;
            EnumC2036a enumC2036a6 = enumC2036a3;
            try {
                try {
                    try {
                        this.f5228a.m2133a(this);
                        while (this.f5228a.m2130a(false, (C2059g.AbstractC2061b) this)) {
                        }
                        EnumC2036a enumC2036a7 = EnumC2036a.NO_ERROR;
                        enumC2036a6 = enumC2036a7;
                        EnumC2036a enumC2036a8 = EnumC2036a.CANCEL;
                        c2044f = C2044f.this;
                        enumC2036a = enumC2036a7;
                        enumC2036a2 = enumC2036a8;
                    } catch (IOException e) {
                        enumC2036a = EnumC2036a.PROTOCOL_ERROR;
                        enumC2036a5 = enumC2036a;
                        enumC2036a2 = EnumC2036a.PROTOCOL_ERROR;
                        c2044f = C2044f.this;
                    }
                    c2044f.m2159a(enumC2036a, enumC2036a2);
                } catch (IOException e2) {
                }
                C1999c.m2353a(this.f5228a);
            } catch (Throwable th) {
                try {
                    C2044f.this.m2159a(enumC2036a5, enumC2036a4);
                } catch (IOException e3) {
                }
                C1999c.m2353a(this.f5228a);
                throw th;
            }
        }
    }

    C2044f(C2051a c2051a) {
        this.f5181h = c2051a.f5220f;
        this.f5174a = c2051a.f5221g;
        this.f5175b = c2051a.f5219e;
        this.f5179f = c2051a.f5221g ? 1 : 2;
        if (c2051a.f5221g) {
            this.f5179f += 2;
        }
        if (c2051a.f5221g) {
            this.f5184k.m2051a(7, 16777216);
        }
        this.f5177d = c2051a.f5216b;
        this.f5191t = new ScheduledThreadPoolExecutor(1, C1999c.m2343a(C1999c.m2342a("OkHttp %s Writer", this.f5177d), false));
        if (c2051a.f5222h != 0) {
            this.f5191t.scheduleAtFixedRate(new C2054c(false, 0, 0), c2051a.f5222h, c2051a.f5222h, TimeUnit.MILLISECONDS);
        }
        this.f5192u = new ThreadPoolExecutor(0, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), C1999c.m2343a(C1999c.m2342a("OkHttp %s Push Observer", this.f5177d), true));
        this.f5185l.m2051a(7, 65535);
        this.f5185l.m2051a(5, 16384);
        this.f5183j = this.f5185l.m2045d();
        this.f5187n = c2051a.f5215a;
        this.f5188o = new C2066i(c2051a.f5218d, this.f5174a);
        this.f5189p = new C2055d(new C2059g(c2051a.f5217c, this.f5174a));
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0073 A[Catch: all -> 0x00d5, TryCatch #1 {, blocks: (B:5:0x000f, B:29:0x008a, B:30:0x009a, B:32:0x00a1, B:34:0x00ae, B:40:0x00be, B:41:0x00ca, B:42:0x00cb, B:7:0x0011, B:9:0x0019, B:11:0x0021, B:13:0x0027, B:15:0x004c, B:17:0x0055, B:22:0x006b, B:24:0x0073, B:26:0x0085, B:43:0x00ce, B:44:0x00d4), top: B:50:0x000f }] */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private okhttp3.internal.http2.C2062h m2152b(int r8, java.util.List<okhttp3.internal.http2.C2037b> r9, boolean r10) {
        /*
            Method dump skipped, instructions count: 224
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.http2.C2044f.m2152b(int, java.util.List, boolean):okhttp3.internal.http2.h");
    }

    /* renamed from: f */
    public void m2144f() {
        try {
            m2159a(EnumC2036a.PROTOCOL_ERROR, EnumC2036a.PROTOCOL_ERROR);
        } catch (IOException e) {
        }
    }

    /* renamed from: a */
    public int m2170a() {
        int m2046c;
        synchronized (this) {
            m2046c = this.f5185l.m2046c(Api.BaseClientBuilder.API_PRIORITY_OTHER);
        }
        return m2046c;
    }

    /* renamed from: a */
    C2062h m2169a(int i) {
        C2062h c2062h;
        synchronized (this) {
            c2062h = this.f5176c.get(Integer.valueOf(i));
        }
        return c2062h;
    }

    /* renamed from: a */
    public C2062h m2161a(List<C2037b> list, boolean z) {
        return m2152b(0, list, z);
    }

    /* renamed from: a */
    public void m2168a(final int i, final long j) {
        try {
            this.f5191t.execute(new AbstractRunnableC1984b("OkHttp Window Update %s stream %d", new Object[]{this.f5177d, Integer.valueOf(i)}) { // from class: okhttp3.internal.http2.f.2
                @Override // okhttp3.internal.AbstractRunnableC1984b
                /* renamed from: c */
                public void mo1824c() {
                    try {
                        C2044f.this.f5188o.m2076a(i, j);
                    } catch (IOException e) {
                        C2044f.this.m2144f();
                    }
                }
            });
        } catch (RejectedExecutionException e) {
        }
    }

    /* renamed from: a */
    void m2167a(final int i, AbstractC0008e abstractC0008e, final int i2, final boolean z) {
        final C0005c c0005c = new C0005c();
        long j = i2;
        abstractC0008e.mo8078a(j);
        abstractC0008e.mo2087a(c0005c, j);
        if (c0005c.m8137b() == j) {
            this.f5192u.execute(new AbstractRunnableC1984b("OkHttp %s Push Data[%s]", new Object[]{this.f5177d, Integer.valueOf(i)}) { // from class: okhttp3.internal.http2.f.5
                @Override // okhttp3.internal.AbstractRunnableC1984b
                /* renamed from: c */
                public void mo1824c() {
                    try {
                        boolean mo2057a = C2044f.this.f5181h.mo2057a(i, c0005c, i2, z);
                        if (mo2057a) {
                            C2044f.this.f5188o.m2075a(i, EnumC2036a.CANCEL);
                        }
                        if (!mo2057a && !z) {
                            return;
                        }
                        synchronized (C2044f.this) {
                            C2044f.this.f5190q.remove(Integer.valueOf(i));
                        }
                    } catch (IOException e) {
                    }
                }
            });
            return;
        }
        throw new IOException(c0005c.m8137b() + " != " + i2);
    }

    /* renamed from: a */
    void m2166a(final int i, final List<C2037b> list) {
        synchronized (this) {
            if (this.f5190q.contains(Integer.valueOf(i))) {
                m2164a(i, EnumC2036a.PROTOCOL_ERROR);
                return;
            }
            this.f5190q.add(Integer.valueOf(i));
            try {
                this.f5192u.execute(new AbstractRunnableC1984b("OkHttp %s Push Request[%s]", new Object[]{this.f5177d, Integer.valueOf(i)}) { // from class: okhttp3.internal.http2.f.3
                    @Override // okhttp3.internal.AbstractRunnableC1984b
                    /* renamed from: c */
                    public void mo1824c() {
                        if (C2044f.this.f5181h.mo2056a(i, list)) {
                            try {
                                C2044f.this.f5188o.m2075a(i, EnumC2036a.CANCEL);
                                synchronized (C2044f.this) {
                                    C2044f.this.f5190q.remove(Integer.valueOf(i));
                                }
                            } catch (IOException e) {
                            }
                        }
                    }
                });
            } catch (RejectedExecutionException e) {
            }
        }
    }

    /* renamed from: a */
    void m2165a(final int i, final List<C2037b> list, final boolean z) {
        try {
            this.f5192u.execute(new AbstractRunnableC1984b("OkHttp %s Push Headers[%s]", new Object[]{this.f5177d, Integer.valueOf(i)}) { // from class: okhttp3.internal.http2.f.4
                @Override // okhttp3.internal.AbstractRunnableC1984b
                /* renamed from: c */
                public void mo1824c() {
                    boolean mo2055a = C2044f.this.f5181h.mo2055a(i, list, z);
                    if (mo2055a) {
                        try {
                            C2044f.this.f5188o.m2075a(i, EnumC2036a.CANCEL);
                        } catch (IOException e) {
                            return;
                        }
                    }
                    if (mo2055a || z) {
                        synchronized (C2044f.this) {
                            C2044f.this.f5190q.remove(Integer.valueOf(i));
                        }
                    }
                }
            });
        } catch (RejectedExecutionException e) {
        }
    }

    /* renamed from: a */
    public void m2164a(final int i, final EnumC2036a enumC2036a) {
        try {
            this.f5191t.execute(new AbstractRunnableC1984b("OkHttp %s stream %d", new Object[]{this.f5177d, Integer.valueOf(i)}) { // from class: okhttp3.internal.http2.f.1
                @Override // okhttp3.internal.AbstractRunnableC1984b
                /* renamed from: c */
                public void mo1824c() {
                    try {
                        C2044f.this.m2151b(i, enumC2036a);
                    } catch (IOException e) {
                        C2044f.this.m2144f();
                    }
                }
            });
        } catch (RejectedExecutionException e) {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v25, types: [long] */
    /* renamed from: a */
    public void m2163a(int i, boolean z, C0005c c0005c, long j) {
        int min;
        long j2;
        char c = j;
        if (j == 0) {
            this.f5188o.m2069a(z, i, c0005c, 0);
            return;
        }
        while (c > 0) {
            synchronized (this) {
                while (this.f5183j <= 0) {
                    try {
                        if (!this.f5176c.containsKey(Integer.valueOf(i))) {
                            throw new IOException("stream closed");
                        }
                        wait();
                    } catch (InterruptedException e) {
                        throw new InterruptedIOException();
                    }
                }
                min = Math.min((int) Math.min((long) c, this.f5183j), this.f5188o.m2064c());
                j2 = min;
                this.f5183j -= j2;
            }
            c -= j2;
            this.f5188o.m2069a(z && c == 0, i, c0005c, min);
        }
    }

    /* renamed from: a */
    void m2162a(long j) {
        this.f5183j += j;
        if (j > 0) {
            notifyAll();
        }
    }

    /* renamed from: a */
    public void m2160a(EnumC2036a enumC2036a) {
        synchronized (this.f5188o) {
            synchronized (this) {
                if (this.f5180g) {
                    return;
                }
                this.f5180g = true;
                this.f5188o.m2074a(this.f5178e, enumC2036a, C1999c.f4982a);
            }
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(14:8|(3:55|9|10)|12|26|19|20|(8:22|(2:23|(6:25|53|26|27|62|32)(0))|33|34|59|39|41|(1:43)(2:44|45))(0)|51|33|34|59|39|41|(0)(0)) */
    /* JADX WARN: Can't wrap try/catch for region: R(16:8|55|9|10|12|26|19|20|(8:22|(2:23|(6:25|53|26|27|62|32)(0))|33|34|59|39|41|(1:43)(2:44|45))(0)|51|33|34|59|39|41|(0)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00a9, code lost:
        r5 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00aa, code lost:
        r4 = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00af, code lost:
        if (r7 == null) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00b2, code lost:
        r4 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00be, code lost:
        r4 = e;
     */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00d5 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00d6  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void m2159a(okhttp3.internal.http2.EnumC2036a r4, okhttp3.internal.http2.EnumC2036a r5) {
        /*
            Method dump skipped, instructions count: 221
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.http2.C2044f.m2159a(okhttp3.internal.http2.a, okhttp3.internal.http2.a):void");
    }

    /* renamed from: a */
    void m2156a(boolean z) {
        if (z) {
            this.f5188o.m2080a();
            this.f5188o.m2065b(this.f5184k);
            int m2045d = this.f5184k.m2045d();
            if (m2045d != 65535) {
                this.f5188o.m2076a(0, m2045d - 65535);
            }
        }
        new Thread(this.f5189p).start();
    }

    /* renamed from: a */
    void m2155a(boolean z, int i, int i2) {
        boolean z2;
        if (!z) {
            synchronized (this) {
                z2 = this.f5193v;
                this.f5193v = true;
            }
            if (z2) {
                m2144f();
                return;
            }
        }
        try {
            this.f5188o.m2071a(z, i, i2);
        } catch (IOException e) {
            m2144f();
        }
    }

    /* renamed from: b */
    public C2062h m2153b(int i) {
        C2062h remove;
        synchronized (this) {
            remove = this.f5176c.remove(Integer.valueOf(i));
            notifyAll();
        }
        return remove;
    }

    /* renamed from: b */
    public void m2154b() {
        this.f5188o.m2067b();
    }

    /* renamed from: b */
    public void m2151b(int i, EnumC2036a enumC2036a) {
        this.f5188o.m2075a(i, enumC2036a);
    }

    /* renamed from: c */
    public void m2149c() {
        m2156a(true);
    }

    /* renamed from: c */
    void m2147c(final int i, final EnumC2036a enumC2036a) {
        this.f5192u.execute(new AbstractRunnableC1984b("OkHttp %s Push Reset[%s]", new Object[]{this.f5177d, Integer.valueOf(i)}) { // from class: okhttp3.internal.http2.f.6
            @Override // okhttp3.internal.AbstractRunnableC1984b
            /* renamed from: c */
            public void mo1824c() {
                C2044f.this.f5181h.mo2054a(i, enumC2036a);
                synchronized (C2044f.this) {
                    C2044f.this.f5190q.remove(Integer.valueOf(i));
                }
            }
        });
    }

    /* renamed from: c */
    boolean m2148c(int i) {
        boolean z = true;
        if (i == 0 || (i & 1) != 0) {
            z = false;
        }
        return z;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        m2159a(EnumC2036a.NO_ERROR, EnumC2036a.CANCEL);
    }

    /* renamed from: d */
    public boolean m2146d() {
        boolean z;
        synchronized (this) {
            z = this.f5180g;
        }
        return z;
    }
}
