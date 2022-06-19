package okhttp3.internal.connection;

import java.io.IOException;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.net.Socket;
import okhttp3.AbstractC5415e;
import okhttp3.AbstractC5532p;
import okhttp3.AbstractC5544u;
import okhttp3.C5399a;
import okhttp3.C5408ae;
import okhttp3.C5522j;
import okhttp3.C5550x;
import okhttp3.internal.AbstractC5424a;
import okhttp3.internal.C5449c;
import okhttp3.internal.connection.C5464e;
import okhttp3.internal.http2.ConnectionShutdownException;
import okhttp3.internal.http2.EnumC5486a;
import okhttp3.internal.http2.StreamResetException;
import okhttp3.internal.p193b.AbstractC5438c;
/* renamed from: okhttp3.internal.connection.f */
/* loaded from: classes-dex2jar.jar:okhttp3/internal/connection/f.class */
public final class C5466f {

    /* renamed from: d */
    static final /* synthetic */ boolean f22833d;

    /* renamed from: a */
    public final C5399a f22834a;

    /* renamed from: b */
    public final AbstractC5415e f22835b;

    /* renamed from: c */
    public final AbstractC5532p f22836c;

    /* renamed from: e */
    private C5464e.C5465a f22837e;

    /* renamed from: f */
    private C5408ae f22838f;

    /* renamed from: g */
    private final C5522j f22839g;

    /* renamed from: h */
    private final Object f22840h;

    /* renamed from: i */
    private final C5464e f22841i;

    /* renamed from: j */
    private int f22842j;

    /* renamed from: k */
    private C5462c f22843k;

    /* renamed from: l */
    private boolean f22844l;

    /* renamed from: m */
    private boolean f22845m;

    /* renamed from: n */
    private boolean f22846n;

    /* renamed from: o */
    private AbstractC5438c f22847o;

    /* renamed from: okhttp3.internal.connection.f$a */
    /* loaded from: classes-dex2jar.jar:okhttp3/internal/connection/f$a.class */
    public static final class C5467a extends WeakReference<C5466f> {

        /* renamed from: a */
        public final Object f22848a;

        C5467a(C5466f c5466f, Object obj) {
            super(c5466f);
            this.f22848a = obj;
        }
    }

    static {
        f22833d = !C5466f.class.desiredAssertionStatus();
    }

    public C5466f(C5522j c5522j, C5399a c5399a, AbstractC5415e abstractC5415e, AbstractC5532p abstractC5532p, Object obj) {
        this.f22839g = c5522j;
        this.f22834a = c5399a;
        this.f22835b = abstractC5415e;
        this.f22836c = abstractC5532p;
        this.f22841i = new C5464e(c5399a, m579i(), abstractC5415e, abstractC5532p);
        this.f22840h = obj;
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0061, code lost:
        if (r4.f22843k.f22808a != false) goto L25;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.net.Socket m588a(boolean r5, boolean r6, boolean r7) {
        /*
            r4 = this;
            r0 = 0
            r8 = r0
            boolean r0 = okhttp3.internal.connection.C5466f.f22833d
            if (r0 != 0) goto L1b
            r0 = r4
            okhttp3.j r0 = r0.f22839g
            boolean r0 = java.lang.Thread.holdsLock(r0)
            if (r0 != 0) goto L1b
            java.lang.AssertionError r0 = new java.lang.AssertionError
            r1 = r0
            r1.<init>()
            throw r0
        L1b:
            r0 = r7
            if (r0 == 0) goto L24
            r0 = r4
            r1 = 0
            r0.f22847o = r1
        L24:
            r0 = r6
            if (r0 == 0) goto L2d
            r0 = r4
            r1 = 1
            r0.f22845m = r1
        L2d:
            r0 = r8
            r9 = r0
            r0 = r4
            okhttp3.internal.connection.c r0 = r0.f22843k
            if (r0 == 0) goto La4
            r0 = r5
            if (r0 == 0) goto L44
            r0 = r4
            okhttp3.internal.connection.c r0 = r0.f22843k
            r1 = 1
            r0.f22808a = r1
        L44:
            r0 = r8
            r9 = r0
            r0 = r4
            okhttp3.internal.b.c r0 = r0.f22847o
            if (r0 != 0) goto La4
            r0 = r4
            boolean r0 = r0.f22845m
            if (r0 != 0) goto L64
            r0 = r8
            r9 = r0
            r0 = r4
            okhttp3.internal.connection.c r0 = r0.f22843k
            boolean r0 = r0.f22808a
            if (r0 == 0) goto La4
        L64:
            r0 = r4
            r1 = r4
            okhttp3.internal.connection.c r1 = r1.f22843k
            r0.m586b(r1)
            r0 = r4
            okhttp3.internal.connection.c r0 = r0.f22843k
            java.util.List<java.lang.ref.Reference<okhttp3.internal.connection.f>> r0 = r0.f22811d
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto La7
            r0 = r4
            okhttp3.internal.connection.c r0 = r0.f22843k
            long r1 = java.lang.System.nanoTime()
            r0.f22812e = r1
            okhttp3.internal.a r0 = okhttp3.internal.AbstractC5424a.f22678a
            r1 = r4
            okhttp3.j r1 = r1.f22839g
            r2 = r4
            okhttp3.internal.connection.c r2 = r2.f22843k
            boolean r0 = r0.mo168a(r1, r2)
            if (r0 == 0) goto La7
            r0 = r4
            okhttp3.internal.connection.c r0 = r0.f22843k
            java.net.Socket r0 = r0.m614c()
            r9 = r0
        L9f:
            r0 = r4
            r1 = 0
            r0.f22843k = r1
        La4:
            r0 = r9
            return r0
        La7:
            r0 = 0
            r9 = r0
            goto L9f
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.connection.C5466f.m588a(boolean, boolean, boolean):java.net.Socket");
    }

    /* JADX WARN: Code restructure failed: missing block: B:62:0x011f, code lost:
        if (r9.f22837e.m599a() == false) goto L63;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private okhttp3.internal.connection.C5462c m595a(int r10, int r11, int r12, int r13, boolean r14) {
        /*
            Method dump skipped, instructions count: 659
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.connection.C5466f.m595a(int, int, int, int, boolean):okhttp3.internal.connection.c");
    }

    /* renamed from: a */
    private C5462c m594a(int i, int i2, int i3, int i4, boolean z, boolean z2) {
        C5462c m595a;
        while (true) {
            m595a = m595a(i, i2, i3, i4, z);
            synchronized (this.f22839g) {
                if (m595a.f22809b != 0) {
                    if (m595a.m616a(z2)) {
                        break;
                    }
                    m583e();
                } else {
                    break;
                }
            }
        }
        return m595a;
    }

    /* renamed from: b */
    private void m586b(C5462c c5462c) {
        int size = c5462c.f22811d.size();
        for (int i = 0; i < size; i++) {
            if (c5462c.f22811d.get(i).get() == this) {
                c5462c.f22811d.remove(i);
                return;
            }
        }
        throw new IllegalStateException();
    }

    /* renamed from: h */
    private Socket m580h() {
        if (f22833d || Thread.holdsLock(this.f22839g)) {
            C5462c c5462c = this.f22843k;
            return (c5462c == null || !c5462c.f22808a) ? null : m588a(false, false, true);
        }
        throw new AssertionError();
    }

    /* renamed from: i */
    private C5463d m579i() {
        return AbstractC5424a.f22678a.mo171a(this.f22839g);
    }

    /* renamed from: a */
    public Socket m592a(C5462c c5462c) {
        if (f22833d || Thread.holdsLock(this.f22839g)) {
            if (this.f22847o != null || this.f22843k.f22811d.size() != 1) {
                throw new IllegalStateException();
            }
            Reference<C5466f> reference = this.f22843k.f22811d.get(0);
            Socket m588a = m588a(true, false, false);
            this.f22843k = c5462c;
            c5462c.f22811d.add(reference);
            return m588a;
        }
        throw new AssertionError();
    }

    /* renamed from: a */
    public AbstractC5438c m596a() {
        AbstractC5438c abstractC5438c;
        synchronized (this.f22839g) {
            abstractC5438c = this.f22847o;
        }
        return abstractC5438c;
    }

    /* renamed from: a */
    public AbstractC5438c m590a(C5550x c5550x, AbstractC5544u.AbstractC5545a abstractC5545a, boolean z) {
        try {
            AbstractC5438c m617a = m594a(abstractC5545a.mo213b(), abstractC5545a.mo212c(), abstractC5545a.mo211d(), c5550x.m196d(), c5550x.m181s(), z).m617a(c5550x, abstractC5545a, this);
            synchronized (this.f22839g) {
                this.f22847o = m617a;
            }
            return m617a;
        } catch (IOException e) {
            throw new RouteException(e);
        }
    }

    /* renamed from: a */
    public void m593a(IOException iOException) {
        C5462c c5462c;
        Socket m588a;
        boolean z = false;
        synchronized (this.f22839g) {
            if (iOException instanceof StreamResetException) {
                StreamResetException streamResetException = (StreamResetException) iOException;
                if (streamResetException.f22881a == EnumC5486a.REFUSED_STREAM) {
                    this.f22842j++;
                }
                if (streamResetException.f22881a != EnumC5486a.REFUSED_STREAM || this.f22842j > 1) {
                    this.f22838f = null;
                    z = true;
                }
            } else if (this.f22843k == null || (this.f22843k.m612e() && !(iOException instanceof ConnectionShutdownException))) {
                z = false;
            } else {
                z = true;
                if (this.f22843k.f22809b == 0) {
                    if (this.f22838f != null && iOException != null) {
                        this.f22841i.m604a(this.f22838f, iOException);
                    }
                    this.f22838f = null;
                    z = true;
                }
            }
            c5462c = this.f22843k;
            m588a = m588a(z, false, true);
            if (this.f22843k != null || !this.f22844l) {
                c5462c = null;
            }
        }
        C5449c.m661a(m588a);
        if (c5462c != null) {
            this.f22836c.m298b(this.f22835b, c5462c);
        }
    }

    /* renamed from: a */
    public void m591a(C5462c c5462c, boolean z) {
        if (f22833d || Thread.holdsLock(this.f22839g)) {
            if (this.f22843k != null) {
                throw new IllegalStateException();
            }
            this.f22843k = c5462c;
            this.f22844l = z;
            c5462c.f22811d.add(new C5467a(this, this.f22840h));
            return;
        }
        throw new AssertionError();
    }

    /* renamed from: a */
    public void m589a(boolean z, AbstractC5438c abstractC5438c, long j, IOException iOException) {
        C5462c c5462c;
        Socket m588a;
        boolean z2;
        this.f22836c.m299b(this.f22835b, j);
        synchronized (this.f22839g) {
            if (abstractC5438c != null) {
                if (abstractC5438c == this.f22847o) {
                    if (!z) {
                        this.f22843k.f22809b++;
                    }
                    c5462c = this.f22843k;
                    m588a = m588a(z, false, true);
                    if (this.f22843k != null) {
                        c5462c = null;
                    }
                    z2 = this.f22845m;
                }
            }
            throw new IllegalStateException("expected " + this.f22847o + " but was " + abstractC5438c);
        }
        C5449c.m661a(m588a);
        if (c5462c != null) {
            this.f22836c.m298b(this.f22835b, c5462c);
        }
        if (iOException != null) {
            this.f22836c.m311a(this.f22835b, iOException);
        } else if (!z2) {
        } else {
            this.f22836c.m293g(this.f22835b);
        }
    }

    /* renamed from: b */
    public C5408ae m587b() {
        return this.f22838f;
    }

    /* renamed from: c */
    public C5462c m585c() {
        C5462c c5462c;
        synchronized (this) {
            c5462c = this.f22843k;
        }
        return c5462c;
    }

    /* renamed from: d */
    public void m584d() {
        C5462c c5462c;
        Socket m588a;
        synchronized (this.f22839g) {
            c5462c = this.f22843k;
            m588a = m588a(false, true, false);
            if (this.f22843k != null) {
                c5462c = null;
            }
        }
        C5449c.m661a(m588a);
        if (c5462c != null) {
            this.f22836c.m298b(this.f22835b, c5462c);
        }
    }

    /* renamed from: e */
    public void m583e() {
        C5462c c5462c;
        Socket m588a;
        synchronized (this.f22839g) {
            c5462c = this.f22843k;
            m588a = m588a(true, false, false);
            if (this.f22843k != null) {
                c5462c = null;
            }
        }
        C5449c.m661a(m588a);
        if (c5462c != null) {
            this.f22836c.m298b(this.f22835b, c5462c);
        }
    }

    /* renamed from: f */
    public void m582f() {
        AbstractC5438c abstractC5438c;
        C5462c c5462c;
        synchronized (this.f22839g) {
            this.f22846n = true;
            abstractC5438c = this.f22847o;
            c5462c = this.f22843k;
        }
        if (abstractC5438c != null) {
            abstractC5438c.mo489c();
        } else if (c5462c == null) {
        } else {
            c5462c.m615b();
        }
    }

    /* renamed from: g */
    public boolean m581g() {
        return this.f22838f != null || (this.f22837e != null && this.f22837e.m599a()) || this.f22841i.m607a();
    }

    public String toString() {
        C5462c m585c = m585c();
        return m585c != null ? m585c.toString() : this.f22834a.toString();
    }
}
