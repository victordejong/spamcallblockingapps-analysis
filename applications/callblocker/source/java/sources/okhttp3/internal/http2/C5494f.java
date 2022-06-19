package okhttp3.internal.http2;

import java.io.Closeable;
import java.io.IOException;
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
import okhttp3.internal.AbstractRunnableC5434b;
import okhttp3.internal.C5449c;
import okhttp3.internal.http2.C5509g;
import okhttp3.internal.p196e.C5480f;
import p000a.AbstractC0006d;
import p000a.AbstractC0007e;
import p000a.C0005c;
import p000a.C0008f;
/* renamed from: okhttp3.internal.http2.f */
/* loaded from: classes-dex2jar.jar:okhttp3/internal/http2/f.class */
public final class C5494f implements Closeable {

    /* renamed from: r */
    static final /* synthetic */ boolean f22946r;

    /* renamed from: s */
    private static final ExecutorService f22947s;

    /* renamed from: a */
    final boolean f22948a;

    /* renamed from: b */
    final AbstractC5502b f22949b;

    /* renamed from: d */
    final String f22951d;

    /* renamed from: e */
    int f22952e;

    /* renamed from: f */
    int f22953f;

    /* renamed from: g */
    boolean f22954g;

    /* renamed from: h */
    final AbstractC5519k f22955h;

    /* renamed from: j */
    long f22957j;

    /* renamed from: n */
    final Socket f22961n;

    /* renamed from: o */
    final C5516i f22962o;

    /* renamed from: p */
    final C5505d f22963p;

    /* renamed from: t */
    private final ScheduledExecutorService f22965t;

    /* renamed from: u */
    private final ExecutorService f22966u;

    /* renamed from: v */
    private boolean f22967v;

    /* renamed from: c */
    final Map<Integer, C5512h> f22950c = new LinkedHashMap();

    /* renamed from: i */
    long f22956i = 0;

    /* renamed from: k */
    C5521l f22958k = new C5521l();

    /* renamed from: l */
    final C5521l f22959l = new C5521l();

    /* renamed from: m */
    boolean f22960m = false;

    /* renamed from: q */
    final Set<Integer> f22964q = new LinkedHashSet();

    /* renamed from: okhttp3.internal.http2.f$a */
    /* loaded from: classes-dex2jar.jar:okhttp3/internal/http2/f$a.class */
    public static class C5501a {

        /* renamed from: a */
        Socket f22989a;

        /* renamed from: b */
        String f22990b;

        /* renamed from: c */
        AbstractC0007e f22991c;

        /* renamed from: d */
        AbstractC0006d f22992d;

        /* renamed from: e */
        AbstractC5502b f22993e = AbstractC5502b.f22997f;

        /* renamed from: f */
        AbstractC5519k f22994f = AbstractC5519k.f23060a;

        /* renamed from: g */
        boolean f22995g;

        /* renamed from: h */
        int f22996h;

        public C5501a(boolean z) {
            this.f22995g = z;
        }

        /* renamed from: a */
        public C5501a m459a(int i) {
            this.f22996h = i;
            return this;
        }

        /* renamed from: a */
        public C5501a m458a(Socket socket, String str, AbstractC0007e abstractC0007e, AbstractC0006d abstractC0006d) {
            this.f22989a = socket;
            this.f22990b = str;
            this.f22991c = abstractC0007e;
            this.f22992d = abstractC0006d;
            return this;
        }

        /* renamed from: a */
        public C5501a m457a(AbstractC5502b abstractC5502b) {
            this.f22993e = abstractC5502b;
            return this;
        }

        /* renamed from: a */
        public C5494f m460a() {
            return new C5494f(this);
        }
    }

    /* renamed from: okhttp3.internal.http2.f$b */
    /* loaded from: classes-dex2jar.jar:okhttp3/internal/http2/f$b.class */
    public static abstract class AbstractC5502b {

        /* renamed from: f */
        public static final AbstractC5502b f22997f = new AbstractC5502b() { // from class: okhttp3.internal.http2.f.b.1
            @Override // okhttp3.internal.http2.C5494f.AbstractC5502b
            /* renamed from: a */
            public void mo455a(C5512h c5512h) {
                c5512h.m423a(EnumC5486a.REFUSED_STREAM);
            }
        };

        /* renamed from: a */
        public void mo456a(C5494f c5494f) {
        }

        /* renamed from: a */
        public abstract void mo455a(C5512h c5512h);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: okhttp3.internal.http2.f$c */
    /* loaded from: classes-dex2jar.jar:okhttp3/internal/http2/f$c.class */
    public final class C5504c extends AbstractRunnableC5434b {

        /* renamed from: a */
        final boolean f22998a;

        /* renamed from: c */
        final int f22999c;

        /* renamed from: d */
        final int f23000d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C5504c(boolean z, int i, int i2) {
            super("OkHttp %s ping %08x%08x", r8.f22951d, Integer.valueOf(i), Integer.valueOf(i2));
            C5494f.this = r8;
            this.f22998a = z;
            this.f22999c = i;
            this.f23000d = i2;
        }

        @Override // okhttp3.internal.AbstractRunnableC5434b
        /* renamed from: c */
        public void mo144c() {
            C5494f.this.m472a(this.f22998a, this.f22999c, this.f23000d);
        }
    }

    /* renamed from: okhttp3.internal.http2.f$d */
    /* loaded from: classes-dex2jar.jar:okhttp3/internal/http2/f$d.class */
    public class C5505d extends AbstractRunnableC5434b implements C5509g.AbstractC5511b {

        /* renamed from: a */
        final C5509g f23002a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C5505d(C5509g c5509g) {
            super("OkHttp %s", r8.f22951d);
            C5494f.this = r8;
            this.f23002a = c5509g;
        }

        /* renamed from: a */
        private void m454a(final C5521l c5521l) {
            try {
                C5494f.this.f22965t.execute(new AbstractRunnableC5434b("OkHttp %s ACK Settings", new Object[]{C5494f.this.f22951d}) { // from class: okhttp3.internal.http2.f.d.3
                    @Override // okhttp3.internal.AbstractRunnableC5434b
                    /* renamed from: c */
                    public void mo144c() {
                        try {
                            C5494f.this.f22962o.m390a(c5521l);
                        } catch (IOException e) {
                            C5494f.this.m461f();
                        }
                    }
                });
            } catch (RejectedExecutionException e) {
            }
        }

        @Override // okhttp3.internal.http2.C5509g.AbstractC5511b
        /* renamed from: a */
        public void mo437a() {
        }

        @Override // okhttp3.internal.http2.C5509g.AbstractC5511b
        /* renamed from: a */
        public void mo436a(int i, int i2, int i3, boolean z) {
        }

        @Override // okhttp3.internal.http2.C5509g.AbstractC5511b
        /* renamed from: a */
        public void mo435a(int i, int i2, List<C5487b> list) {
            C5494f.this.m483a(i2, list);
        }

        @Override // okhttp3.internal.http2.C5509g.AbstractC5511b
        /* renamed from: a */
        public void mo434a(int i, long j) {
            if (i == 0) {
                synchronized (C5494f.this) {
                    C5494f.this.f22957j += j;
                    C5494f.this.notifyAll();
                }
                return;
            }
            C5512h m486a = C5494f.this.m486a(i);
            if (m486a == null) {
                return;
            }
            synchronized (m486a) {
                m486a.m426a(j);
            }
        }

        @Override // okhttp3.internal.http2.C5509g.AbstractC5511b
        /* renamed from: a */
        public void mo433a(int i, EnumC5486a enumC5486a) {
            if (C5494f.this.m465c(i)) {
                C5494f.this.m464c(i, enumC5486a);
                return;
            }
            C5512h m470b = C5494f.this.m470b(i);
            if (m470b == null) {
                return;
            }
            m470b.m419c(enumC5486a);
        }

        @Override // okhttp3.internal.http2.C5509g.AbstractC5511b
        /* renamed from: a */
        public void mo432a(int i, EnumC5486a enumC5486a, C0008f c0008f) {
            C5512h[] c5512hArr;
            if (c0008f.mo22462g() > 0) {
            }
            synchronized (C5494f.this) {
                c5512hArr = (C5512h[]) C5494f.this.f22950c.values().toArray(new C5512h[C5494f.this.f22950c.size()]);
                C5494f.this.f22954g = true;
            }
            for (C5512h c5512h : c5512hArr) {
                if (c5512h.m427a() > i && c5512h.m420c()) {
                    c5512h.m419c(EnumC5486a.REFUSED_STREAM);
                    C5494f.this.m470b(c5512h.m427a());
                }
            }
        }

        @Override // okhttp3.internal.http2.C5509g.AbstractC5511b
        /* renamed from: a */
        public void mo431a(boolean z, int i, int i2) {
            if (!z) {
                try {
                    C5494f.this.f22965t.execute(new C5504c(true, i, i2));
                    return;
                } catch (RejectedExecutionException e) {
                    return;
                }
            }
            synchronized (C5494f.this) {
                C5494f.this.f22967v = false;
                C5494f.this.notifyAll();
            }
        }

        @Override // okhttp3.internal.http2.C5509g.AbstractC5511b
        /* renamed from: a */
        public void mo430a(boolean z, int i, int i2, List<C5487b> list) {
            if (C5494f.this.m465c(i)) {
                C5494f.this.m482a(i, list, z);
                return;
            }
            synchronized (C5494f.this) {
                C5512h m486a = C5494f.this.m486a(i);
                if (m486a != null) {
                    m486a.m424a(list);
                    if (z) {
                        m486a.m412i();
                    }
                } else if (!C5494f.this.f22954g) {
                    if (i > C5494f.this.f22952e) {
                        if (i % 2 != C5494f.this.f22953f % 2) {
                            final C5512h c5512h = new C5512h(i, C5494f.this, false, z, list);
                            C5494f.this.f22952e = i;
                            C5494f.this.f22950c.put(Integer.valueOf(i), c5512h);
                            C5494f.f22947s.execute(new AbstractRunnableC5434b("OkHttp %s stream %d", new Object[]{C5494f.this.f22951d, Integer.valueOf(i)}) { // from class: okhttp3.internal.http2.f.d.1
                                @Override // okhttp3.internal.AbstractRunnableC5434b
                                /* renamed from: c */
                                public void mo144c() {
                                    try {
                                        C5494f.this.f22949b.mo455a(c5512h);
                                    } catch (IOException e) {
                                        C5480f.m541c().mo554a(4, "Http2Connection.Listener failure for " + C5494f.this.f22951d, e);
                                        try {
                                            c5512h.m423a(EnumC5486a.PROTOCOL_ERROR);
                                        } catch (IOException e2) {
                                        }
                                    }
                                }
                            });
                        }
                    }
                }
            }
        }

        @Override // okhttp3.internal.http2.C5509g.AbstractC5511b
        /* renamed from: a */
        public void mo429a(boolean z, int i, AbstractC0007e abstractC0007e, int i2) {
            if (C5494f.this.m465c(i)) {
                C5494f.this.m484a(i, abstractC0007e, i2, z);
                return;
            }
            C5512h m486a = C5494f.this.m486a(i);
            if (m486a == null) {
                C5494f.this.m481a(i, EnumC5486a.PROTOCOL_ERROR);
                abstractC0007e.mo22488h(i2);
                return;
            }
            m486a.m425a(abstractC0007e, i2);
            if (!z) {
                return;
            }
            m486a.m412i();
        }

        /* JADX WARN: Type inference failed for: r0v43, types: [long] */
        @Override // okhttp3.internal.http2.C5509g.AbstractC5511b
        /* renamed from: a */
        public void mo428a(boolean z, C5521l c5521l) {
            C5512h[] c5512hArr;
            char c;
            synchronized (C5494f.this) {
                int m363d = C5494f.this.f22959l.m363d();
                if (z) {
                    C5494f.this.f22959l.m371a();
                }
                C5494f.this.f22959l.m368a(c5521l);
                m454a(c5521l);
                int m363d2 = C5494f.this.f22959l.m363d();
                if (m363d2 == -1 || m363d2 == m363d) {
                    c5512hArr = null;
                    c = 0;
                } else {
                    c = m363d2 - m363d;
                    if (!C5494f.this.f22960m) {
                        C5494f.this.m479a((long) c);
                        C5494f.this.f22960m = true;
                    }
                    c5512hArr = !C5494f.this.f22950c.isEmpty() ? (C5512h[]) C5494f.this.f22950c.values().toArray(new C5512h[C5494f.this.f22950c.size()]) : null;
                }
                C5494f.f22947s.execute(new AbstractRunnableC5434b("OkHttp %s settings", C5494f.this.f22951d) { // from class: okhttp3.internal.http2.f.d.2
                    @Override // okhttp3.internal.AbstractRunnableC5434b
                    /* renamed from: c */
                    public void mo144c() {
                        C5494f.this.f22949b.mo456a(C5494f.this);
                    }
                });
            }
            if (c5512hArr == null || c == 0) {
                return;
            }
            for (C5512h c5512h : c5512hArr) {
                synchronized (c5512h) {
                    c5512h.m426a(c);
                }
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r8v11 */
        /* JADX WARN: Type inference failed for: r8v12, types: [java.io.IOException] */
        /* JADX WARN: Type inference failed for: r8v13 */
        /* JADX WARN: Type inference failed for: r8v2 */
        @Override // okhttp3.internal.AbstractRunnableC5434b
        /* renamed from: c */
        protected void mo144c() {
            Throwable th;
            EnumC5486a enumC5486a;
            EnumC5486a enumC5486a2 = EnumC5486a.INTERNAL_ERROR;
            EnumC5486a enumC5486a3 = EnumC5486a.INTERNAL_ERROR;
            EnumC5486a enumC5486a4 = enumC5486a2;
            EnumC5486a e = enumC5486a2;
            try {
                try {
                    this.f23002a.m450a(this);
                    do {
                    } while (this.f23002a.m447a(false, (C5509g.AbstractC5511b) this));
                    EnumC5486a enumC5486a5 = EnumC5486a.NO_ERROR;
                    enumC5486a4 = enumC5486a5;
                    e = enumC5486a5;
                    try {
                        C5494f.this.m476a(enumC5486a5, EnumC5486a.CANCEL);
                    } catch (IOException e2) {
                        e = e2;
                    }
                    C5449c.m673a(this.f23002a);
                } catch (IOException e3) {
                    enumC5486a = EnumC5486a.PROTOCOL_ERROR;
                    try {
                        try {
                            C5494f.this.m476a(enumC5486a, EnumC5486a.PROTOCOL_ERROR);
                        } catch (IOException e4) {
                        }
                        C5449c.m673a(this.f23002a);
                    } catch (Throwable th2) {
                        th = th2;
                        try {
                            C5494f.this.m476a(enumC5486a, enumC5486a3);
                        } catch (IOException e5) {
                        }
                        C5449c.m673a(this.f23002a);
                        throw th;
                    }
                }
            } catch (Throwable th3) {
                enumC5486a = e;
                th = th3;
                C5494f.this.m476a(enumC5486a, enumC5486a3);
                C5449c.m673a(this.f23002a);
                throw th;
            }
        }
    }

    static {
        f22946r = !C5494f.class.desiredAssertionStatus();
        f22947s = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60L, TimeUnit.SECONDS, new SynchronousQueue(), C5449c.m663a("OkHttp Http2Connection", true));
    }

    C5494f(C5501a c5501a) {
        this.f22955h = c5501a.f22994f;
        this.f22948a = c5501a.f22995g;
        this.f22949b = c5501a.f22993e;
        this.f22953f = c5501a.f22995g ? 1 : 2;
        if (c5501a.f22995g) {
            this.f22953f += 2;
        }
        if (c5501a.f22995g) {
            this.f22958k.m369a(7, 16777216);
        }
        this.f22951d = c5501a.f22990b;
        this.f22965t = new ScheduledThreadPoolExecutor(1, C5449c.m663a(C5449c.m662a("OkHttp %s Writer", this.f22951d), false));
        if (c5501a.f22996h != 0) {
            this.f22965t.scheduleAtFixedRate(new C5504c(false, 0, 0), c5501a.f22996h, c5501a.f22996h, TimeUnit.MILLISECONDS);
        }
        this.f22966u = new ThreadPoolExecutor(0, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), C5449c.m663a(C5449c.m662a("OkHttp %s Push Observer", this.f22951d), true));
        this.f22959l.m369a(7, 65535);
        this.f22959l.m369a(5, 16384);
        this.f22957j = this.f22959l.m363d();
        this.f22961n = c5501a.f22989a;
        this.f22962o = new C5516i(c5501a.f22992d, this.f22948a);
        this.f22963p = new C5505d(new C5509g(c5501a.f22991c, this.f22948a));
    }

    /* renamed from: b */
    private C5512h m469b(int i, List<C5487b> list, boolean z) {
        int i2;
        C5512h c5512h;
        boolean z2 = false;
        boolean z3 = !z;
        synchronized (this.f22962o) {
            synchronized (this) {
                if (this.f22953f > 1073741823) {
                    m477a(EnumC5486a.REFUSED_STREAM);
                }
                if (this.f22954g) {
                    throw new ConnectionShutdownException();
                }
                i2 = this.f22953f;
                this.f22953f += 2;
                c5512h = new C5512h(i2, this, z3, false, list);
                if (!z || this.f22957j == 0 || c5512h.f23022b == 0) {
                    z2 = true;
                }
                if (c5512h.m422b()) {
                    this.f22950c.put(Integer.valueOf(i2), c5512h);
                }
            }
            if (i == 0) {
                this.f22962o.m388a(z3, i2, i, list);
            } else if (this.f22948a) {
                throw new IllegalArgumentException("client streams shouldn't have associated stream IDs");
            } else {
                this.f22962o.m395a(i, i2, list);
            }
        }
        if (z2) {
            this.f22962o.m385b();
        }
        return c5512h;
    }

    /* renamed from: f */
    public void m461f() {
        try {
            m476a(EnumC5486a.PROTOCOL_ERROR, EnumC5486a.PROTOCOL_ERROR);
        } catch (IOException e) {
        }
    }

    /* renamed from: a */
    public int m487a() {
        int m364c;
        synchronized (this) {
            m364c = this.f22959l.m364c(Integer.MAX_VALUE);
        }
        return m364c;
    }

    /* renamed from: a */
    C5512h m486a(int i) {
        C5512h c5512h;
        synchronized (this) {
            c5512h = this.f22950c.get(Integer.valueOf(i));
        }
        return c5512h;
    }

    /* renamed from: a */
    public C5512h m478a(List<C5487b> list, boolean z) {
        return m469b(0, list, z);
    }

    /* renamed from: a */
    public void m485a(final int i, final long j) {
        try {
            this.f22965t.execute(new AbstractRunnableC5434b("OkHttp Window Update %s stream %d", new Object[]{this.f22951d, Integer.valueOf(i)}) { // from class: okhttp3.internal.http2.f.2
                @Override // okhttp3.internal.AbstractRunnableC5434b
                /* renamed from: c */
                public void mo144c() {
                    try {
                        C5494f.this.f22962o.m394a(i, j);
                    } catch (IOException e) {
                        C5494f.this.m461f();
                    }
                }
            });
        } catch (RejectedExecutionException e) {
        }
    }

    /* renamed from: a */
    void m484a(final int i, AbstractC0007e abstractC0007e, final int i2, final boolean z) {
        final C0005c c0005c = new C0005c();
        abstractC0007e.mo22502a(i2);
        abstractC0007e.mo90a(c0005c, i2);
        if (c0005c.m22562b() != i2) {
            throw new IOException(c0005c.m22562b() + " != " + i2);
        }
        this.f22966u.execute(new AbstractRunnableC5434b("OkHttp %s Push Data[%s]", new Object[]{this.f22951d, Integer.valueOf(i)}) { // from class: okhttp3.internal.http2.f.5
            @Override // okhttp3.internal.AbstractRunnableC5434b
            /* renamed from: c */
            public void mo144c() {
                try {
                    boolean mo375a = C5494f.this.f22955h.mo375a(i, c0005c, i2, z);
                    if (mo375a) {
                        C5494f.this.f22962o.m393a(i, EnumC5486a.CANCEL);
                    }
                    if (!mo375a && !z) {
                        return;
                    }
                    synchronized (C5494f.this) {
                        C5494f.this.f22964q.remove(Integer.valueOf(i));
                    }
                } catch (IOException e) {
                }
            }
        });
    }

    /* renamed from: a */
    void m483a(final int i, final List<C5487b> list) {
        synchronized (this) {
            if (this.f22964q.contains(Integer.valueOf(i))) {
                m481a(i, EnumC5486a.PROTOCOL_ERROR);
                return;
            }
            this.f22964q.add(Integer.valueOf(i));
            try {
                this.f22966u.execute(new AbstractRunnableC5434b("OkHttp %s Push Request[%s]", new Object[]{this.f22951d, Integer.valueOf(i)}) { // from class: okhttp3.internal.http2.f.3
                    @Override // okhttp3.internal.AbstractRunnableC5434b
                    /* renamed from: c */
                    public void mo144c() {
                        if (C5494f.this.f22955h.mo374a(i, list)) {
                            try {
                                C5494f.this.f22962o.m393a(i, EnumC5486a.CANCEL);
                                synchronized (C5494f.this) {
                                    C5494f.this.f22964q.remove(Integer.valueOf(i));
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
    void m482a(final int i, final List<C5487b> list, final boolean z) {
        try {
            this.f22966u.execute(new AbstractRunnableC5434b("OkHttp %s Push Headers[%s]", new Object[]{this.f22951d, Integer.valueOf(i)}) { // from class: okhttp3.internal.http2.f.4
                @Override // okhttp3.internal.AbstractRunnableC5434b
                /* renamed from: c */
                public void mo144c() {
                    boolean mo373a = C5494f.this.f22955h.mo373a(i, list, z);
                    if (mo373a) {
                        try {
                            C5494f.this.f22962o.m393a(i, EnumC5486a.CANCEL);
                        } catch (IOException e) {
                            return;
                        }
                    }
                    if (mo373a || z) {
                        synchronized (C5494f.this) {
                            C5494f.this.f22964q.remove(Integer.valueOf(i));
                        }
                    }
                }
            });
        } catch (RejectedExecutionException e) {
        }
    }

    /* renamed from: a */
    public void m481a(final int i, final EnumC5486a enumC5486a) {
        try {
            this.f22965t.execute(new AbstractRunnableC5434b("OkHttp %s stream %d", new Object[]{this.f22951d, Integer.valueOf(i)}) { // from class: okhttp3.internal.http2.f.1
                @Override // okhttp3.internal.AbstractRunnableC5434b
                /* renamed from: c */
                public void mo144c() {
                    try {
                        C5494f.this.m468b(i, enumC5486a);
                    } catch (IOException e) {
                        C5494f.this.m461f();
                    }
                }
            });
        } catch (RejectedExecutionException e) {
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0090, code lost:
        throw new java.io.IOException("stream closed");
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0017, code lost:
        r0 = java.lang.Math.min((int) java.lang.Math.min((long) r12, r6.f22957j), r6.f22962o.m382c());
        r6.f22957j -= r0;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v21, types: [long] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m480a(int r7, boolean r8, p000a.C0005c r9, long r10) {
        /*
            r6 = this;
            r0 = r10
            r12 = r0
            r0 = r10
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L62
            r0 = r6
            okhttp3.internal.http2.i r0 = r0.f22962o
            r1 = r8
            r2 = r7
            r3 = r9
            r4 = 0
            r0.m387a(r1, r2, r3, r4)
        L16:
            return
        L17:
            r0 = r12
            r1 = r6
            long r1 = r1.f22957j     // Catch: java.lang.Throwable -> L9c
            long r0 = java.lang.Math.min(r0, r1)     // Catch: java.lang.Throwable -> L9c
            int r0 = (int) r0     // Catch: java.lang.Throwable -> L9c
            r1 = r6
            okhttp3.internal.http2.i r1 = r1.f22962o     // Catch: java.lang.Throwable -> L9c
            int r1 = r1.m382c()     // Catch: java.lang.Throwable -> L9c
            int r0 = java.lang.Math.min(r0, r1)     // Catch: java.lang.Throwable -> L9c
            r14 = r0
            r0 = r6
            r1 = r6
            long r1 = r1.f22957j     // Catch: java.lang.Throwable -> L9c
            r2 = r14
            long r2 = (long) r2     // Catch: java.lang.Throwable -> L9c
            long r1 = r1 - r2
            r0.f22957j = r1     // Catch: java.lang.Throwable -> L9c
            r0 = r6
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L9c
            r0 = r12
            r1 = r14
            long r1 = (long) r1
            long r0 = r0 - r1
            r12 = r0
            r0 = r6
            okhttp3.internal.http2.i r0 = r0.f22962o
            r15 = r0
            r0 = r8
            if (r0 == 0) goto La8
            r0 = r12
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto La8
            r0 = 1
            r16 = r0
        L57:
            r0 = r15
            r1 = r16
            r2 = r7
            r3 = r9
            r4 = r14
            r0.m387a(r1, r2, r3, r4)
        L62:
            r0 = r12
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L16
            r0 = r6
            monitor-enter(r0)
        L6b:
            r0 = r6
            long r0 = r0.f22957j     // Catch: java.lang.InterruptedException -> L91 java.lang.Throwable -> L9c
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 > 0) goto L17
            r0 = r6
            java.util.Map<java.lang.Integer, okhttp3.internal.http2.h> r0 = r0.f22950c     // Catch: java.lang.InterruptedException -> L91 java.lang.Throwable -> L9c
            r1 = r7
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)     // Catch: java.lang.InterruptedException -> L91 java.lang.Throwable -> L9c
            boolean r0 = r0.containsKey(r1)     // Catch: java.lang.InterruptedException -> L91 java.lang.Throwable -> L9c
            if (r0 != 0) goto La1
            java.io.IOException r0 = new java.io.IOException     // Catch: java.lang.InterruptedException -> L91 java.lang.Throwable -> L9c
            r9 = r0
            r0 = r9
            java.lang.String r1 = "stream closed"
            r0.<init>(r1)     // Catch: java.lang.InterruptedException -> L91 java.lang.Throwable -> L9c
            r0 = r9
            throw r0     // Catch: java.lang.InterruptedException -> L91 java.lang.Throwable -> L9c
        L91:
            r9 = move-exception
            java.io.InterruptedIOException r0 = new java.io.InterruptedIOException     // Catch: java.lang.Throwable -> L9c
            r9 = r0
            r0 = r9
            r0.<init>()     // Catch: java.lang.Throwable -> L9c
            r0 = r9
            throw r0     // Catch: java.lang.Throwable -> L9c
        L9c:
            r9 = move-exception
            r0 = r6
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L9c
            r0 = r9
            throw r0
        La1:
            r0 = r6
            r0.wait()     // Catch: java.lang.InterruptedException -> L91 java.lang.Throwable -> L9c
            goto L6b
        La8:
            r0 = 0
            r16 = r0
            goto L57
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.http2.C5494f.m480a(int, boolean, a.c, long):void");
    }

    /* renamed from: a */
    void m479a(long j) {
        this.f22957j += j;
        if (j > 0) {
            notifyAll();
        }
    }

    /* renamed from: a */
    public void m477a(EnumC5486a enumC5486a) {
        synchronized (this.f22962o) {
            synchronized (this) {
                if (this.f22954g) {
                    return;
                }
                this.f22954g = true;
                this.f22962o.m392a(this.f22952e, enumC5486a, C5449c.f22756a);
            }
        }
    }

    /* renamed from: a */
    void m476a(EnumC5486a enumC5486a, EnumC5486a enumC5486a2) {
        C5512h[] c5512hArr;
        IOException e;
        IOException iOException;
        if (f22946r || !Thread.holdsLock(this)) {
            try {
                m477a(enumC5486a);
                e = null;
            } catch (IOException e2) {
                e = e2;
            }
            synchronized (this) {
                if (!this.f22950c.isEmpty()) {
                    c5512hArr = (C5512h[]) this.f22950c.values().toArray(new C5512h[this.f22950c.size()]);
                    this.f22950c.clear();
                } else {
                    c5512hArr = null;
                }
            }
            IOException iOException2 = e;
            if (c5512hArr != null) {
                int length = c5512hArr.length;
                int i = 0;
                while (i < length) {
                    try {
                        c5512hArr[i].m423a(enumC5486a2);
                        iOException = e;
                    } catch (IOException e3) {
                        iOException = e;
                        if (e != null) {
                            iOException = e3;
                        }
                    }
                    i++;
                    e = iOException;
                }
                iOException2 = e;
            }
            try {
                this.f22962o.close();
                e = iOException2;
            } catch (IOException e4) {
                e = e4;
                if (iOException2 != null) {
                    e = iOException2;
                }
            }
            try {
                this.f22961n.close();
            } catch (IOException e5) {
                e = e5;
            }
            this.f22965t.shutdown();
            this.f22966u.shutdown();
            if (e == null) {
                return;
            }
            throw e;
        }
        throw new AssertionError();
    }

    /* renamed from: a */
    void m473a(boolean z) {
        if (z) {
            this.f22962o.m398a();
            this.f22962o.m383b(this.f22958k);
            int m363d = this.f22958k.m363d();
            if (m363d != 65535) {
                this.f22962o.m394a(0, m363d - 65535);
            }
        }
        new Thread(this.f22963p).start();
    }

    /* renamed from: a */
    void m472a(boolean z, int i, int i2) {
        boolean z2;
        if (!z) {
            synchronized (this) {
                z2 = this.f22967v;
                this.f22967v = true;
            }
            if (z2) {
                m461f();
                return;
            }
        }
        try {
            this.f22962o.m389a(z, i, i2);
        } catch (IOException e) {
            m461f();
        }
    }

    /* renamed from: b */
    public C5512h m470b(int i) {
        C5512h remove;
        synchronized (this) {
            remove = this.f22950c.remove(Integer.valueOf(i));
            notifyAll();
        }
        return remove;
    }

    /* renamed from: b */
    public void m471b() {
        this.f22962o.m385b();
    }

    /* renamed from: b */
    public void m468b(int i, EnumC5486a enumC5486a) {
        this.f22962o.m393a(i, enumC5486a);
    }

    /* renamed from: c */
    public void m466c() {
        m473a(true);
    }

    /* renamed from: c */
    void m464c(final int i, final EnumC5486a enumC5486a) {
        this.f22966u.execute(new AbstractRunnableC5434b("OkHttp %s Push Reset[%s]", new Object[]{this.f22951d, Integer.valueOf(i)}) { // from class: okhttp3.internal.http2.f.6
            @Override // okhttp3.internal.AbstractRunnableC5434b
            /* renamed from: c */
            public void mo144c() {
                C5494f.this.f22955h.mo372a(i, enumC5486a);
                synchronized (C5494f.this) {
                    C5494f.this.f22964q.remove(Integer.valueOf(i));
                }
            }
        });
    }

    /* renamed from: c */
    boolean m465c(int i) {
        return i != 0 && (i & 1) == 0;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        m476a(EnumC5486a.NO_ERROR, EnumC5486a.CANCEL);
    }

    /* renamed from: d */
    public boolean m463d() {
        boolean z;
        synchronized (this) {
            z = this.f22954g;
        }
        return z;
    }
}
