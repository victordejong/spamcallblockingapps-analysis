package com.bytedance.sdk.p127a.p129b.p130a.p135e;

import android.os.SystemClock;
import com.bytedance.sdk.p127a.p128a.AbstractC3971d;
import com.bytedance.sdk.p127a.p128a.AbstractC3972e;
import com.bytedance.sdk.p127a.p128a.C3969c;
import com.bytedance.sdk.p127a.p128a.C3973f;
import com.bytedance.sdk.p127a.p129b.p130a.AbstractRunnableC4005b;
import com.bytedance.sdk.p127a.p129b.p130a.C4015c;
import com.bytedance.sdk.p127a.p129b.p130a.p135e.C4065h;
import com.bytedance.sdk.p127a.p129b.p130a.p137g.C4090e;
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
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import okhttp3.internal.http2.Http2Connection;
import okhttp3.internal.http2.Settings;
/* renamed from: com.bytedance.sdk.a.b.a.e.g */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/e/g.class */
public final class C4050g implements Closeable {

    /* renamed from: a */
    static final ExecutorService f14708a = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60, TimeUnit.SECONDS, new SynchronousQueue(), C4015c.m36904a("OkHttp Http2Connection", true));

    /* renamed from: s */
    static final /* synthetic */ boolean f14709s = true;

    /* renamed from: b */
    final boolean f14710b;

    /* renamed from: c */
    final AbstractC4059b f14711c;

    /* renamed from: e */
    final String f14713e;

    /* renamed from: f */
    int f14714f;

    /* renamed from: g */
    int f14715g;

    /* renamed from: h */
    boolean f14716h;

    /* renamed from: i */
    final AbstractC4076m f14717i;

    /* renamed from: k */
    long f14719k;

    /* renamed from: m */
    final C4078n f14721m;

    /* renamed from: o */
    final Socket f14723o;

    /* renamed from: p */
    final C4072j f14724p;

    /* renamed from: q */
    final C4061c f14725q;

    /* renamed from: t */
    private final ExecutorService f14727t;

    /* renamed from: u */
    private Map<Integer, C4075l> f14728u;

    /* renamed from: v */
    private int f14729v;

    /* renamed from: d */
    final Map<Integer, C4068i> f14712d = new LinkedHashMap();

    /* renamed from: j */
    long f14718j = 0;

    /* renamed from: l */
    C4078n f14720l = new C4078n();

    /* renamed from: n */
    boolean f14722n = false;

    /* renamed from: r */
    final Set<Integer> f14726r = new LinkedHashSet();

    /* renamed from: com.bytedance.sdk.a.b.a.e.g$a */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/e/g$a.class */
    public static class C4058a {

        /* renamed from: a */
        Socket f14756a;

        /* renamed from: b */
        String f14757b;

        /* renamed from: c */
        AbstractC3972e f14758c;

        /* renamed from: d */
        AbstractC3971d f14759d;

        /* renamed from: e */
        AbstractC4059b f14760e = AbstractC4059b.f14763f;

        /* renamed from: f */
        AbstractC4076m f14761f = AbstractC4076m.f14825a;

        /* renamed from: g */
        boolean f14762g;

        public C4058a(boolean z) {
            this.f14762g = z;
        }

        /* renamed from: a */
        public C4058a m36773a(AbstractC4059b abstractC4059b) {
            this.f14760e = abstractC4059b;
            return this;
        }

        /* renamed from: a */
        public C4058a m36772a(Socket socket, String str, AbstractC3972e abstractC3972e, AbstractC3971d abstractC3971d) {
            this.f14756a = socket;
            this.f14757b = str;
            this.f14758c = abstractC3972e;
            this.f14759d = abstractC3971d;
            return this;
        }

        /* renamed from: a */
        public C4050g m36774a() {
            return new C4050g(this);
        }
    }

    /* renamed from: com.bytedance.sdk.a.b.a.e.g$b */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/e/g$b.class */
    public static abstract class AbstractC4059b {

        /* renamed from: f */
        public static final AbstractC4059b f14763f = new AbstractC4059b() { // from class: com.bytedance.sdk.a.b.a.e.g.b.1
            @Override // com.bytedance.sdk.p127a.p129b.p130a.p135e.C4050g.AbstractC4059b
            /* renamed from: a */
            public final void mo36770a(C4068i c4068i) throws IOException {
                c4068i.m36739a(EnumC4042b.REFUSED_STREAM);
            }
        };

        /* renamed from: a */
        public void mo36771a(C4050g c4050g) {
        }

        /* renamed from: a */
        public abstract void mo36770a(C4068i c4068i) throws IOException;
    }

    /* renamed from: com.bytedance.sdk.a.b.a.e.g$c */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/e/g$c.class */
    public class C4061c extends AbstractRunnableC4005b implements C4065h.AbstractC4067b {

        /* renamed from: a */
        final C4065h f14764a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C4061c(C4065h c4065h) {
            super("OkHttp %s", r8.f14713e);
            C4050g.this = r8;
            this.f14764a = c4065h;
        }

        /* renamed from: a */
        private void m36769a(final C4078n c4078n) {
            C4050g.f14708a.execute(new AbstractRunnableC4005b("OkHttp %s ACK Settings", new Object[]{C4050g.this.f14713e}) { // from class: com.bytedance.sdk.a.b.a.e.g.c.3
                @Override // com.bytedance.sdk.p127a.p129b.p130a.AbstractRunnableC4005b
                /* renamed from: b */
                public void mo36342b() {
                    try {
                        C4050g.this.f14724p.m36704a(c4078n);
                    } catch (IOException e) {
                    }
                }
            });
        }

        @Override // com.bytedance.sdk.p127a.p129b.p130a.p135e.C4065h.AbstractC4067b
        /* renamed from: a */
        public void mo36752a() {
        }

        @Override // com.bytedance.sdk.p127a.p129b.p130a.p135e.C4065h.AbstractC4067b
        /* renamed from: a */
        public void mo36751a(int i, int i2, int i3, boolean z) {
        }

        @Override // com.bytedance.sdk.p127a.p129b.p130a.p135e.C4065h.AbstractC4067b
        /* renamed from: a */
        public void mo36750a(int i, int i2, List<C4043c> list) {
            C4050g.this.m36793a(i2, list);
        }

        @Override // com.bytedance.sdk.p127a.p129b.p130a.p135e.C4065h.AbstractC4067b
        /* renamed from: a */
        public void mo36749a(int i, long j) {
            if (i == 0) {
                synchronized (C4050g.this) {
                    C4050g.this.f14719k += j;
                    C4050g.this.notifyAll();
                }
                return;
            }
            C4068i m36797a = C4050g.this.m36797a(i);
            if (m36797a == null) {
                return;
            }
            synchronized (m36797a) {
                m36797a.m36741a(j);
            }
        }

        @Override // com.bytedance.sdk.p127a.p129b.p130a.p135e.C4065h.AbstractC4067b
        /* renamed from: a */
        public void mo36748a(int i, EnumC4042b enumC4042b) {
            if (C4050g.this.m36775d(i)) {
                C4050g.this.m36777c(i, enumC4042b);
                return;
            }
            C4068i m36783b = C4050g.this.m36783b(i);
            if (m36783b == null) {
                return;
            }
            m36783b.m36734c(enumC4042b);
        }

        @Override // com.bytedance.sdk.p127a.p129b.p130a.p135e.C4065h.AbstractC4067b
        /* renamed from: a */
        public void mo36747a(int i, EnumC4042b enumC4042b, C3973f c3973f) {
            C4068i[] c4068iArr;
            c3973f.mo37026g();
            synchronized (C4050g.this) {
                c4068iArr = (C4068i[]) C4050g.this.f14712d.values().toArray(new C4068i[C4050g.this.f14712d.size()]);
                C4050g.this.f14716h = true;
            }
            for (C4068i c4068i : c4068iArr) {
                if (c4068i.m36742a() > i && c4068i.m36735c()) {
                    c4068i.m36734c(EnumC4042b.REFUSED_STREAM);
                    C4050g.this.m36783b(c4068i.m36742a());
                }
            }
        }

        @Override // com.bytedance.sdk.p127a.p129b.p130a.p135e.C4065h.AbstractC4067b
        /* renamed from: a */
        public void mo36746a(boolean z, int i, int i2) {
            if (!z) {
                C4050g.this.m36785a(true, i, i2, (C4075l) null);
                return;
            }
            C4075l m36778c = C4050g.this.m36778c(i);
            if (m36778c == null) {
                return;
            }
            m36778c.m36688b();
        }

        @Override // com.bytedance.sdk.p127a.p129b.p130a.p135e.C4065h.AbstractC4067b
        /* renamed from: a */
        public void mo36745a(boolean z, int i, int i2, List<C4043c> list) {
            if (C4050g.this.m36775d(i)) {
                C4050g.this.m36792a(i, list, z);
                return;
            }
            synchronized (C4050g.this) {
                C4068i m36797a = C4050g.this.m36797a(i);
                if (m36797a != null) {
                    m36797a.m36738a(list);
                    if (!z) {
                        return;
                    }
                    m36797a.m36727i();
                } else if (C4050g.this.f14716h) {
                } else {
                    if (i <= C4050g.this.f14714f) {
                        return;
                    }
                    if (i % 2 == C4050g.this.f14715g % 2) {
                        return;
                    }
                    final C4068i c4068i = new C4068i(i, C4050g.this, false, z, list);
                    C4050g.this.f14714f = i;
                    C4050g.this.f14712d.put(Integer.valueOf(i), c4068i);
                    C4050g.f14708a.execute(new AbstractRunnableC4005b("OkHttp %s stream %d", new Object[]{C4050g.this.f14713e, Integer.valueOf(i)}) { // from class: com.bytedance.sdk.a.b.a.e.g.c.1
                        @Override // com.bytedance.sdk.p127a.p129b.p130a.AbstractRunnableC4005b
                        /* renamed from: b */
                        public void mo36342b() {
                            try {
                                C4050g.this.f14711c.mo36770a(c4068i);
                            } catch (IOException e) {
                                C4090e m36643b = C4090e.m36643b();
                                m36643b.mo36651a(4, "Http2Connection.Listener failure for " + C4050g.this.f14713e, e);
                                try {
                                    c4068i.m36739a(EnumC4042b.PROTOCOL_ERROR);
                                } catch (IOException e2) {
                                }
                            }
                        }
                    });
                }
            }
        }

        @Override // com.bytedance.sdk.p127a.p129b.p130a.p135e.C4065h.AbstractC4067b
        /* renamed from: a */
        public void mo36744a(boolean z, int i, AbstractC3972e abstractC3972e, int i2) throws IOException {
            if (C4050g.this.m36775d(i)) {
                C4050g.this.m36795a(i, abstractC3972e, i2, z);
                return;
            }
            C4068i m36797a = C4050g.this.m36797a(i);
            if (m36797a == null) {
                C4050g.this.m36794a(i, EnumC4042b.PROTOCOL_ERROR);
                abstractC3972e.mo37053h(i2);
                return;
            }
            m36797a.m36740a(abstractC3972e, i2);
            if (!z) {
                return;
            }
            m36797a.m36727i();
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v46, types: [long] */
        @Override // com.bytedance.sdk.p127a.p129b.p130a.p135e.C4065h.AbstractC4067b
        /* renamed from: a */
        public void mo36743a(boolean z, C4078n c4078n) {
            C4068i[] c4068iArr;
            char c;
            int i;
            synchronized (C4050g.this) {
                int m36674d = C4050g.this.f14721m.m36674d();
                if (z) {
                    C4050g.this.f14721m.m36682a();
                }
                C4050g.this.f14721m.m36679a(c4078n);
                m36769a(c4078n);
                int m36674d2 = C4050g.this.f14721m.m36674d();
                c4068iArr = null;
                if (m36674d2 == -1 || m36674d2 == m36674d) {
                    c = 0;
                } else {
                    ?? r0 = m36674d2 - m36674d;
                    if (!C4050g.this.f14722n) {
                        C4050g.this.m36790a((long) r0);
                        C4050g.this.f14722n = true;
                    }
                    c = r0;
                    if (!C4050g.this.f14712d.isEmpty()) {
                        c4068iArr = (C4068i[]) C4050g.this.f14712d.values().toArray(new C4068i[C4050g.this.f14712d.size()]);
                        c = r0;
                    }
                }
                C4050g.f14708a.execute(new AbstractRunnableC4005b("OkHttp %s settings", C4050g.this.f14713e) { // from class: com.bytedance.sdk.a.b.a.e.g.c.2
                    @Override // com.bytedance.sdk.p127a.p129b.p130a.AbstractRunnableC4005b
                    /* renamed from: b */
                    public void mo36342b() {
                        C4050g.this.f14711c.mo36771a(C4050g.this);
                    }
                });
            }
            if (c4068iArr == null || c == 0) {
                return;
            }
            for (C4068i c4068i : c4068iArr) {
                synchronized (c4068i) {
                    c4068i.m36741a(c);
                }
            }
        }

        @Override // com.bytedance.sdk.p127a.p129b.p130a.AbstractRunnableC4005b
        /* renamed from: b */
        public void mo36342b() {
            EnumC4042b enumC4042b;
            C4050g c4050g;
            EnumC4042b enumC4042b2 = EnumC4042b.INTERNAL_ERROR;
            EnumC4042b enumC4042b3 = EnumC4042b.INTERNAL_ERROR;
            EnumC4042b enumC4042b4 = enumC4042b2;
            EnumC4042b enumC4042b5 = enumC4042b2;
            try {
                try {
                    try {
                        this.f14764a.m36765a(this);
                        do {
                        } while (this.f14764a.m36762a(false, (C4065h.AbstractC4067b) this));
                        enumC4042b = EnumC4042b.NO_ERROR;
                        enumC4042b4 = enumC4042b;
                        enumC4042b5 = enumC4042b;
                        EnumC4042b enumC4042b6 = EnumC4042b.CANCEL;
                        c4050g = C4050g.this;
                        enumC4042b4 = enumC4042b6;
                    } catch (IOException e) {
                        enumC4042b = EnumC4042b.PROTOCOL_ERROR;
                        enumC4042b4 = EnumC4042b.PROTOCOL_ERROR;
                        c4050g = C4050g.this;
                    }
                    c4050g.m36788a(enumC4042b, enumC4042b4);
                } catch (Throwable th) {
                    try {
                        C4050g.this.m36788a(enumC4042b4, enumC4042b3);
                    } catch (IOException e2) {
                    }
                    C4015c.m36914a(this.f14764a);
                    throw th;
                }
            } catch (IOException e3) {
            }
            C4015c.m36914a(this.f14764a);
        }
    }

    C4050g(C4058a c4058a) {
        C4078n c4078n = new C4078n();
        this.f14721m = c4078n;
        this.f14717i = c4058a.f14761f;
        boolean z = c4058a.f14762g;
        this.f14710b = z;
        this.f14711c = c4058a.f14760e;
        this.f14715g = c4058a.f14762g ? 1 : 2;
        if (c4058a.f14762g) {
            this.f14715g += 2;
        }
        this.f14729v = c4058a.f14762g ? 1 : 2;
        if (c4058a.f14762g) {
            this.f14720l.m36680a(7, Http2Connection.OKHTTP_CLIENT_WINDOW_SIZE);
        }
        String str = c4058a.f14757b;
        this.f14713e = str;
        this.f14727t = new ThreadPoolExecutor(0, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), C4015c.m36904a(C4015c.m36903a("OkHttp %s Push Observer", str), true));
        c4078n.m36680a(7, Settings.DEFAULT_INITIAL_WINDOW_SIZE);
        c4078n.m36680a(5, 16384);
        this.f14719k = c4078n.m36674d();
        this.f14723o = c4058a.f14756a;
        this.f14724p = new C4072j(c4058a.f14759d, z);
        this.f14725q = new C4061c(new C4065h(c4058a.f14758c, z));
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0061 A[Catch: all -> 0x00c2, TryCatch #1 {, blocks: (B:5:0x000f, B:25:0x0078, B:26:0x0088, B:28:0x008f, B:30:0x009c, B:36:0x00ac, B:37:0x00b7, B:38:0x00b8, B:7:0x0011, B:9:0x0017, B:11:0x003a, B:13:0x0043, B:18:0x0059, B:20:0x0061, B:22:0x0073, B:39:0x00bb, B:40:0x00c1), top: B:46:0x000f }] */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.bytedance.sdk.p127a.p129b.p130a.p135e.C4068i m36781b(int r8, java.util.List<com.bytedance.sdk.p127a.p129b.p130a.p135e.C4043c> r9, boolean r10) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 205
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.p127a.p129b.p130a.p135e.C4050g.m36781b(int, java.util.List, boolean):com.bytedance.sdk.a.b.a.e.i");
    }

    /* renamed from: a */
    public final int m36798a() {
        int m36675c;
        synchronized (this) {
            m36675c = this.f14721m.m36675c(Integer.MAX_VALUE);
        }
        return m36675c;
    }

    /* renamed from: a */
    final C4068i m36797a(int i) {
        C4068i c4068i;
        synchronized (this) {
            c4068i = this.f14712d.get(Integer.valueOf(i));
        }
        return c4068i;
    }

    /* renamed from: a */
    public final C4068i m36787a(List<C4043c> list, boolean z) throws IOException {
        return m36781b(0, list, z);
    }

    /* renamed from: a */
    public final void m36796a(final int i, final long j) {
        f14708a.execute(new AbstractRunnableC4005b("OkHttp Window Update %s stream %d", new Object[]{this.f14713e, Integer.valueOf(i)}) { // from class: com.bytedance.sdk.a.b.a.e.g.2
            @Override // com.bytedance.sdk.p127a.p129b.p130a.AbstractRunnableC4005b
            /* renamed from: b */
            public void mo36342b() {
                try {
                    C4050g.this.f14724p.m36708a(i, j);
                } catch (IOException e) {
                }
            }
        });
    }

    /* renamed from: a */
    final void m36795a(final int i, AbstractC3972e abstractC3972e, final int i2, final boolean z) throws IOException {
        final C3969c c3969c = new C3969c();
        long j = i2;
        abstractC3972e.mo37066a(j);
        abstractC3972e.mo36719a(c3969c, j);
        if (c3969c.m37124b() == j) {
            this.f14727t.execute(new AbstractRunnableC4005b("OkHttp %s Push Data[%s]", new Object[]{this.f14713e, Integer.valueOf(i)}) { // from class: com.bytedance.sdk.a.b.a.e.g.6
                @Override // com.bytedance.sdk.p127a.p129b.p130a.AbstractRunnableC4005b
                /* renamed from: b */
                public void mo36342b() {
                    try {
                        boolean mo36686a = C4050g.this.f14717i.mo36686a(i, c3969c, i2, z);
                        if (mo36686a) {
                            C4050g.this.f14724p.m36707a(i, EnumC4042b.CANCEL);
                        }
                        if (!mo36686a && !z) {
                            return;
                        }
                        synchronized (C4050g.this) {
                            C4050g.this.f14726r.remove(Integer.valueOf(i));
                        }
                    } catch (IOException e) {
                    }
                }
            });
            return;
        }
        throw new IOException(c3969c.m37124b() + " != " + i2);
    }

    /* renamed from: a */
    public final void m36794a(final int i, final EnumC4042b enumC4042b) {
        f14708a.execute(new AbstractRunnableC4005b("OkHttp %s stream %d", new Object[]{this.f14713e, Integer.valueOf(i)}) { // from class: com.bytedance.sdk.a.b.a.e.g.1
            @Override // com.bytedance.sdk.p127a.p129b.p130a.AbstractRunnableC4005b
            /* renamed from: b */
            public void mo36342b() {
                try {
                    C4050g.this.m36782b(i, enumC4042b);
                } catch (IOException e) {
                }
            }
        });
    }

    /* renamed from: a */
    final void m36793a(final int i, final List<C4043c> list) {
        synchronized (this) {
            if (this.f14726r.contains(Integer.valueOf(i))) {
                m36794a(i, EnumC4042b.PROTOCOL_ERROR);
                return;
            }
            this.f14726r.add(Integer.valueOf(i));
            this.f14727t.execute(new AbstractRunnableC4005b("OkHttp %s Push Request[%s]", new Object[]{this.f14713e, Integer.valueOf(i)}) { // from class: com.bytedance.sdk.a.b.a.e.g.4
                @Override // com.bytedance.sdk.p127a.p129b.p130a.AbstractRunnableC4005b
                /* renamed from: b */
                public void mo36342b() {
                    if (C4050g.this.f14717i.mo36684a(i, list)) {
                        try {
                            C4050g.this.f14724p.m36707a(i, EnumC4042b.CANCEL);
                            synchronized (C4050g.this) {
                                C4050g.this.f14726r.remove(Integer.valueOf(i));
                            }
                        } catch (IOException e) {
                        }
                    }
                }
            });
        }
    }

    /* renamed from: a */
    final void m36792a(final int i, final List<C4043c> list, final boolean z) {
        this.f14727t.execute(new AbstractRunnableC4005b("OkHttp %s Push Headers[%s]", new Object[]{this.f14713e, Integer.valueOf(i)}) { // from class: com.bytedance.sdk.a.b.a.e.g.5
            @Override // com.bytedance.sdk.p127a.p129b.p130a.AbstractRunnableC4005b
            /* renamed from: b */
            public void mo36342b() {
                boolean mo36683a = C4050g.this.f14717i.mo36683a(i, list, z);
                if (mo36683a) {
                    try {
                        C4050g.this.f14724p.m36707a(i, EnumC4042b.CANCEL);
                    } catch (IOException e) {
                        return;
                    }
                }
                if (!mo36683a && !z) {
                    return;
                }
                synchronized (C4050g.this) {
                    C4050g.this.f14726r.remove(Integer.valueOf(i));
                }
            }
        });
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0050, code lost:
        throw new java.io.IOException("stream closed");
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0053, code lost:
        r0 = java.lang.Math.min((int) java.lang.Math.min((long) r12, r0), r6.f14724p.m36696c());
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x006d, code lost:
        r0 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0070, code lost:
        r6.f14719k -= r0;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v26, types: [long] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m36791a(int r7, boolean r8, com.bytedance.sdk.p127a.p128a.C3969c r9, long r10) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 190
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.p127a.p129b.p130a.p135e.C4050g.m36791a(int, boolean, com.bytedance.sdk.a.a.c, long):void");
    }

    /* renamed from: a */
    final void m36790a(long j) {
        this.f14719k += j;
        if (j > 0) {
            notifyAll();
        }
    }

    /* renamed from: a */
    public final void m36789a(EnumC4042b enumC4042b) throws IOException {
        synchronized (this.f14724p) {
            synchronized (this) {
                if (this.f14716h) {
                    return;
                }
                this.f14716h = true;
                this.f14724p.m36706a(this.f14714f, enumC4042b, C4015c.f14574a);
            }
        }
    }

    /* renamed from: a */
    final void m36788a(EnumC4042b enumC4042b, EnumC4042b enumC4042b2) throws IOException {
        IOException e;
        C4068i[] c4068iArr;
        IOException e2;
        IOException iOException;
        if (f14709s || !Thread.holdsLock(this)) {
            C4075l[] c4075lArr = null;
            try {
                m36789a(enumC4042b);
                e = null;
            } catch (IOException e3) {
                e = e3;
            }
            synchronized (this) {
                if (!this.f14712d.isEmpty()) {
                    c4068iArr = (C4068i[]) this.f14712d.values().toArray(new C4068i[this.f14712d.size()]);
                    this.f14712d.clear();
                } else {
                    c4068iArr = null;
                }
                Map<Integer, C4075l> map = this.f14728u;
                if (map != null) {
                    c4075lArr = (C4075l[]) map.values().toArray(new C4075l[this.f14728u.size()]);
                    this.f14728u = null;
                }
            }
            IOException iOException2 = e;
            if (c4068iArr != null) {
                int length = c4068iArr.length;
                int i = 0;
                while (true) {
                    iOException2 = e;
                    if (i >= length) {
                        break;
                    }
                    try {
                        c4068iArr[i].m36739a(enumC4042b2);
                        iOException = e;
                    } catch (IOException e4) {
                        iOException = e;
                        if (e != null) {
                            iOException = e4;
                        }
                    }
                    i++;
                    e = iOException;
                }
            }
            if (c4075lArr != null) {
                for (C4075l c4075l : c4075lArr) {
                    c4075l.m36687c();
                }
            }
            try {
                this.f14724p.close();
                e2 = iOException2;
            } catch (IOException e5) {
                e2 = iOException2;
                if (iOException2 == null) {
                    e2 = e5;
                }
            }
            try {
                this.f14723o.close();
            } catch (IOException e6) {
                e2 = e6;
            }
            if (e2 != null) {
                throw e2;
            }
            return;
        }
        throw new AssertionError();
    }

    /* renamed from: a */
    final void m36786a(boolean z) throws IOException {
        if (z) {
            this.f14724p.m36712a();
            this.f14724p.m36697b(this.f14720l);
            int m36674d = this.f14720l.m36674d();
            if (m36674d != 65535) {
                this.f14724p.m36708a(0, m36674d - Settings.DEFAULT_INITIAL_WINDOW_SIZE);
            }
        }
        Thread thread = new Thread(this.f14725q);
        thread.setName("tt_pangle_thread_http2_connection" + SystemClock.uptimeMillis());
        thread.start();
    }

    /* renamed from: a */
    final void m36785a(final boolean z, final int i, final int i2, final C4075l c4075l) {
        f14708a.execute(new AbstractRunnableC4005b("OkHttp %s ping %08x%08x", new Object[]{this.f14713e, Integer.valueOf(i), Integer.valueOf(i2)}) { // from class: com.bytedance.sdk.a.b.a.e.g.3
            @Override // com.bytedance.sdk.p127a.p129b.p130a.AbstractRunnableC4005b
            /* renamed from: b */
            public void mo36342b() {
                try {
                    C4050g.this.m36780b(z, i, i2, c4075l);
                } catch (IOException e) {
                }
            }
        });
    }

    /* renamed from: b */
    public final C4068i m36783b(int i) {
        C4068i remove;
        synchronized (this) {
            remove = this.f14712d.remove(Integer.valueOf(i));
            notifyAll();
        }
        return remove;
    }

    /* renamed from: b */
    public final void m36784b() throws IOException {
        this.f14724p.m36699b();
    }

    /* renamed from: b */
    public final void m36782b(int i, EnumC4042b enumC4042b) throws IOException {
        this.f14724p.m36707a(i, enumC4042b);
    }

    /* renamed from: b */
    final void m36780b(boolean z, int i, int i2, C4075l c4075l) throws IOException {
        synchronized (this.f14724p) {
            if (c4075l != null) {
                c4075l.m36689a();
            }
            this.f14724p.m36703a(z, i, i2);
        }
    }

    /* renamed from: c */
    final C4075l m36778c(int i) {
        synchronized (this) {
            Map<Integer, C4075l> map = this.f14728u;
            if (map != null) {
                return map.remove(Integer.valueOf(i));
            }
            return null;
        }
    }

    /* renamed from: c */
    public final void m36779c() throws IOException {
        m36786a(true);
    }

    /* renamed from: c */
    final void m36777c(final int i, final EnumC4042b enumC4042b) {
        this.f14727t.execute(new AbstractRunnableC4005b("OkHttp %s Push Reset[%s]", new Object[]{this.f14713e, Integer.valueOf(i)}) { // from class: com.bytedance.sdk.a.b.a.e.g.7
            @Override // com.bytedance.sdk.p127a.p129b.p130a.AbstractRunnableC4005b
            /* renamed from: b */
            public void mo36342b() {
                C4050g.this.f14717i.mo36685a(i, enumC4042b);
                synchronized (C4050g.this) {
                    C4050g.this.f14726r.remove(Integer.valueOf(i));
                }
            }
        });
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        m36788a(EnumC4042b.NO_ERROR, EnumC4042b.CANCEL);
    }

    /* renamed from: d */
    public final boolean m36776d() {
        boolean z;
        synchronized (this) {
            z = this.f14716h;
        }
        return z;
    }

    /* renamed from: d */
    final boolean m36775d(int i) {
        return i != 0 && (i & 1) == 0;
    }
}
