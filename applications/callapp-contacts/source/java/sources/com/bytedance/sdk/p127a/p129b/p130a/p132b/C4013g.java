package com.bytedance.sdk.p127a.p129b.p130a.p132b;

import com.bytedance.sdk.p127a.p129b.AbstractC4109e;
import com.bytedance.sdk.p127a.p129b.AbstractC4127p;
import com.bytedance.sdk.p127a.p129b.AbstractC4137t;
import com.bytedance.sdk.p127a.p129b.C3994a;
import com.bytedance.sdk.p127a.p129b.C4102ac;
import com.bytedance.sdk.p127a.p129b.C4117j;
import com.bytedance.sdk.p127a.p129b.C4140v;
import com.bytedance.sdk.p127a.p129b.p130a.AbstractC3995a;
import com.bytedance.sdk.p127a.p129b.p130a.C4015c;
import com.bytedance.sdk.p127a.p129b.p130a.p132b.C4011f;
import com.bytedance.sdk.p127a.p129b.p130a.p133c.AbstractC4021c;
import com.bytedance.sdk.p127a.p129b.p130a.p135e.C4041a;
import com.bytedance.sdk.p127a.p129b.p130a.p135e.C4079o;
import com.bytedance.sdk.p127a.p129b.p130a.p135e.EnumC4042b;
import java.io.IOException;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.net.Socket;
import java.util.List;
/* renamed from: com.bytedance.sdk.a.b.a.b.g */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/b/g.class */
public final class C4013g {

    /* renamed from: d */
    static final /* synthetic */ boolean f14558d = true;

    /* renamed from: a */
    public final C3994a f14559a;

    /* renamed from: b */
    public final AbstractC4109e f14560b;

    /* renamed from: c */
    public final AbstractC4127p f14561c;

    /* renamed from: e */
    private C4011f.C4012a f14562e;

    /* renamed from: f */
    private C4102ac f14563f;

    /* renamed from: g */
    private final C4117j f14564g;

    /* renamed from: h */
    private final Object f14565h;

    /* renamed from: i */
    private final C4011f f14566i;

    /* renamed from: j */
    private int f14567j;

    /* renamed from: k */
    private C4008c f14568k;

    /* renamed from: l */
    private boolean f14569l;

    /* renamed from: m */
    private boolean f14570m;

    /* renamed from: n */
    private boolean f14571n;

    /* renamed from: o */
    private AbstractC4021c f14572o;

    /* renamed from: com.bytedance.sdk.a.b.a.b.g$a */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/b/g$a.class */
    public static final class C4014a extends WeakReference<C4013g> {

        /* renamed from: a */
        public final Object f14573a;

        C4014a(C4013g c4013g, Object obj) {
            super(c4013g);
            this.f14573a = obj;
        }
    }

    public C4013g(C4117j c4117j, C3994a c3994a, AbstractC4109e abstractC4109e, AbstractC4127p abstractC4127p, Object obj) {
        this.f14564g = c4117j;
        this.f14559a = c3994a;
        this.f14560b = abstractC4109e;
        this.f14561c = abstractC4127p;
        this.f14566i = new C4011f(c3994a, m36920g(), abstractC4109e, abstractC4127p);
        this.f14565h = obj;
    }

    /* renamed from: a */
    private C4008c m36934a(int i, int i2, int i3, boolean z) throws IOException {
        Socket m36921f;
        C4008c c4008c;
        C4008c c4008c2;
        boolean z2;
        C4102ac c4102ac;
        boolean z3;
        boolean z4;
        C4008c c4008c3;
        C4008c c4008c4;
        Socket socket;
        C4011f.C4012a c4012a;
        synchronized (this.f14564g) {
            if (this.f14570m) {
                throw new IllegalStateException("released");
            }
            if (this.f14572o != null) {
                throw new IllegalStateException("codec != null");
            }
            if (this.f14571n) {
                throw new IOException("Canceled");
            }
            C4008c c4008c5 = this.f14568k;
            m36921f = m36921f();
            c4008c = this.f14568k;
            if (c4008c != null) {
                c4008c5 = null;
            } else {
                c4008c = null;
            }
            c4008c2 = c4008c5;
            if (!this.f14569l) {
                c4008c2 = null;
            }
            if (c4008c == null) {
                AbstractC3995a.f14478a.mo36364a(this.f14564g, this.f14559a, this, null);
                C4008c c4008c6 = this.f14568k;
                if (c4008c6 != null) {
                    c4008c = c4008c6;
                    z2 = true;
                    c4102ac = null;
                } else {
                    c4102ac = this.f14563f;
                }
            } else {
                c4102ac = null;
            }
            z2 = false;
        }
        C4015c.m36902a(m36921f);
        if (c4008c2 != null) {
            this.f14561c.m36481b(this.f14560b, c4008c2);
        }
        if (z2) {
            this.f14561c.m36493a(this.f14560b, c4008c);
        }
        if (c4008c != null) {
            return c4008c;
        }
        if (c4102ac != null || ((c4012a = this.f14562e) != null && c4012a.m36938a())) {
            z3 = false;
        } else {
            this.f14562e = this.f14566i.m36941b();
            z3 = true;
        }
        synchronized (this.f14564g) {
            if (this.f14571n) {
                throw new IOException("Canceled");
            }
            C4008c c4008c7 = c4008c;
            z4 = z2;
            if (z3) {
                List<C4102ac> m36936c = this.f14562e.m36936c();
                int size = m36936c.size();
                int i4 = 0;
                while (true) {
                    c4008c7 = c4008c;
                    z4 = z2;
                    if (i4 >= size) {
                        break;
                    }
                    C4102ac c4102ac2 = m36936c.get(i4);
                    AbstractC3995a.f14478a.mo36364a(this.f14564g, this.f14559a, this, c4102ac2);
                    c4008c7 = this.f14568k;
                    if (c4008c7 != null) {
                        this.f14563f = c4102ac2;
                        z4 = true;
                        break;
                    }
                    i4++;
                }
            }
            c4008c3 = c4008c7;
            if (!z4) {
                C4102ac c4102ac3 = c4102ac;
                if (c4102ac == null) {
                    c4102ac3 = this.f14562e.m36937b();
                }
                this.f14563f = c4102ac3;
                this.f14567j = 0;
                C4008c c4008c8 = new C4008c(this.f14564g, c4102ac3);
                m36931a(c4008c8, false);
                c4008c3 = c4008c8;
            }
        }
        if (z4) {
            this.f14561c.m36493a(this.f14560b, c4008c3);
            return c4008c3;
        }
        c4008c3.m36965a(i, i2, i3, z, this.f14560b, this.f14561c);
        m36920g().m36951b(c4008c3.mo36538a());
        synchronized (this.f14564g) {
            this.f14569l = true;
            AbstractC3995a.f14478a.mo36360b(this.f14564g, c4008c3);
            c4008c4 = c4008c3;
            socket = null;
            if (c4008c3.m36954d()) {
                socket = AbstractC3995a.f14478a.mo36365a(this.f14564g, this.f14559a, this);
                c4008c4 = this.f14568k;
            }
        }
        C4015c.m36902a(socket);
        this.f14561c.m36493a(this.f14560b, c4008c4);
        return c4008c4;
    }

    /* renamed from: a */
    private C4008c m36933a(int i, int i2, int i3, boolean z, boolean z2) throws IOException {
        while (true) {
            C4008c m36934a = m36934a(i, i2, i3, z);
            synchronized (this.f14564g) {
                if (m36934a.f14532b == 0) {
                    return m36934a;
                }
                if (m36934a.m36957a(z2)) {
                    return m36934a;
                }
                m36923d();
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0066, code lost:
        if (r4.f14568k.f14531a != false) goto L25;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.net.Socket m36927a(boolean r5, boolean r6, boolean r7) {
        /*
            r4 = this;
            boolean r0 = com.bytedance.sdk.p127a.p129b.p130a.p132b.C4013g.f14558d
            if (r0 != 0) goto L1b
            r0 = r4
            com.bytedance.sdk.a.b.j r0 = r0.f14564g
            boolean r0 = java.lang.Thread.holdsLock(r0)
            if (r0 == 0) goto L13
            goto L1b
        L13:
            java.lang.AssertionError r0 = new java.lang.AssertionError
            r1 = r0
            r1.<init>()
            throw r0
        L1b:
            r0 = 0
            r8 = r0
            r0 = r7
            if (r0 == 0) goto L27
            r0 = r4
            r1 = 0
            r0.f14572o = r1
        L27:
            r0 = r6
            if (r0 == 0) goto L30
            r0 = r4
            r1 = 1
            r0.f14570m = r1
        L30:
            r0 = r4
            com.bytedance.sdk.a.b.a.b.c r0 = r0.f14568k
            r9 = r0
            r0 = r8
            r10 = r0
            r0 = r9
            if (r0 == 0) goto Laf
            r0 = r5
            if (r0 == 0) goto L49
            r0 = r9
            r1 = 1
            r0.f14531a = r1
        L49:
            r0 = r8
            r10 = r0
            r0 = r4
            com.bytedance.sdk.a.b.a.c.c r0 = r0.f14572o
            if (r0 != 0) goto Laf
            r0 = r4
            boolean r0 = r0.f14570m
            if (r0 != 0) goto L69
            r0 = r8
            r10 = r0
            r0 = r4
            com.bytedance.sdk.a.b.a.b.c r0 = r0.f14568k
            boolean r0 = r0.f14531a
            if (r0 == 0) goto Laf
        L69:
            r0 = r4
            r1 = r4
            com.bytedance.sdk.a.b.a.b.c r1 = r1.f14568k
            r0.m36925b(r1)
            r0 = r4
            com.bytedance.sdk.a.b.a.b.c r0 = r0.f14568k
            java.util.List<java.lang.ref.Reference<com.bytedance.sdk.a.b.a.b.g>> r0 = r0.f14534d
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto La7
            r0 = r4
            com.bytedance.sdk.a.b.a.b.c r0 = r0.f14568k
            long r1 = java.lang.System.nanoTime()
            r0.f14535e = r1
            com.bytedance.sdk.a.b.a.a r0 = com.bytedance.sdk.p127a.p129b.p130a.AbstractC3995a.f14478a
            r1 = r4
            com.bytedance.sdk.a.b.j r1 = r1.f14564g
            r2 = r4
            com.bytedance.sdk.a.b.a.b.c r2 = r2.f14568k
            boolean r0 = r0.mo36366a(r1, r2)
            if (r0 == 0) goto La7
            r0 = r4
            com.bytedance.sdk.a.b.a.b.c r0 = r0.f14568k
            java.net.Socket r0 = r0.m36956b()
            r10 = r0
            goto Laa
        La7:
            r0 = 0
            r10 = r0
        Laa:
            r0 = r4
            r1 = 0
            r0.f14568k = r1
        Laf:
            r0 = r10
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.p127a.p129b.p130a.p132b.C4013g.m36927a(boolean, boolean, boolean):java.net.Socket");
    }

    /* renamed from: b */
    private void m36925b(C4008c c4008c) {
        int size = c4008c.f14534d.size();
        for (int i = 0; i < size; i++) {
            if (c4008c.f14534d.get(i).get() == this) {
                c4008c.f14534d.remove(i);
                return;
            }
        }
        throw new IllegalStateException();
    }

    /* renamed from: f */
    private Socket m36921f() {
        if (f14558d || Thread.holdsLock(this.f14564g)) {
            C4008c c4008c = this.f14568k;
            if (c4008c != null && c4008c.f14531a) {
                return m36927a(false, false, true);
            }
            return null;
        }
        throw new AssertionError();
    }

    /* renamed from: g */
    private C4009d m36920g() {
        return AbstractC3995a.f14478a.mo36367a(this.f14564g);
    }

    /* renamed from: a */
    public final AbstractC4021c m36935a() {
        AbstractC4021c abstractC4021c;
        synchronized (this.f14564g) {
            abstractC4021c = this.f14572o;
        }
        return abstractC4021c;
    }

    /* renamed from: a */
    public final AbstractC4021c m36930a(C4140v c4140v, AbstractC4137t.AbstractC4138a abstractC4138a, boolean z) {
        try {
            AbstractC4021c m36958a = m36933a(abstractC4138a.mo36403b(), abstractC4138a.mo36402c(), abstractC4138a.mo36401d(), c4140v.m36378r(), z).m36958a(c4140v, abstractC4138a, this);
            synchronized (this.f14564g) {
                this.f14572o = m36958a;
            }
            return m36958a;
        } catch (IOException e) {
            throw new C4010e(e);
        }
    }

    /* renamed from: a */
    public final Socket m36932a(C4008c c4008c) {
        if (f14558d || Thread.holdsLock(this.f14564g)) {
            if (this.f14572o != null || this.f14568k.f14534d.size() != 1) {
                throw new IllegalStateException();
            }
            Reference<C4013g> reference = this.f14568k.f14534d.get(0);
            Socket m36927a = m36927a(true, false, false);
            this.f14568k = c4008c;
            c4008c.f14534d.add(reference);
            return m36927a;
        }
        throw new AssertionError();
    }

    /* renamed from: a */
    public final void m36931a(C4008c c4008c, boolean z) {
        if (f14558d || Thread.holdsLock(this.f14564g)) {
            if (this.f14568k != null) {
                throw new IllegalStateException();
            }
            this.f14568k = c4008c;
            this.f14569l = z;
            c4008c.f14534d.add(new C4014a(this, this.f14565h));
            return;
        }
        throw new AssertionError();
    }

    /* renamed from: a */
    public final void m36929a(IOException iOException) {
        boolean z;
        Socket m36927a;
        C4008c c4008c;
        synchronized (this.f14564g) {
            if (iOException instanceof C4079o) {
                C4079o c4079o = (C4079o) iOException;
                if (c4079o.f14828a == EnumC4042b.REFUSED_STREAM) {
                    this.f14567j++;
                }
                if (c4079o.f14828a != EnumC4042b.REFUSED_STREAM || this.f14567j > 1) {
                    this.f14563f = null;
                    z = true;
                }
                z = false;
            } else {
                C4008c c4008c2 = this.f14568k;
                if (c4008c2 != null && (!c4008c2.m36954d() || (iOException instanceof C4041a))) {
                    if (this.f14568k.f14532b == 0) {
                        C4102ac c4102ac = this.f14563f;
                        if (c4102ac != null && iOException != null) {
                            this.f14566i.m36945a(c4102ac, iOException);
                        }
                        this.f14563f = null;
                    }
                    z = true;
                }
                z = false;
            }
            C4008c c4008c3 = this.f14568k;
            m36927a = m36927a(z, false, true);
            c4008c = null;
            if (this.f14568k == null) {
                c4008c = !this.f14569l ? null : c4008c3;
            }
        }
        C4015c.m36902a(m36927a);
        if (c4008c != null) {
            this.f14561c.m36481b(this.f14560b, c4008c);
        }
    }

    /* renamed from: a */
    public final void m36928a(boolean z, AbstractC4021c abstractC4021c, long j, IOException iOException) {
        C4008c c4008c;
        Socket m36927a;
        boolean z2;
        this.f14561c.m36482b(this.f14560b, j);
        synchronized (this.f14564g) {
            if (abstractC4021c != null) {
                if (abstractC4021c == this.f14572o) {
                    if (!z) {
                        this.f14568k.f14532b++;
                    }
                    c4008c = this.f14568k;
                    m36927a = m36927a(z, false, true);
                    if (this.f14568k != null) {
                        c4008c = null;
                    }
                    z2 = this.f14570m;
                }
            }
            throw new IllegalStateException("expected " + this.f14572o + " but was " + abstractC4021c);
        }
        C4015c.m36902a(m36927a);
        if (c4008c != null) {
            this.f14561c.m36481b(this.f14560b, c4008c);
        }
        if (iOException != null) {
            this.f14561c.m36490a(this.f14560b, iOException);
        } else if (!z2) {
        } else {
            this.f14561c.m36476g(this.f14560b);
        }
    }

    /* renamed from: b */
    public final C4008c m36926b() {
        C4008c c4008c;
        synchronized (this) {
            c4008c = this.f14568k;
        }
        return c4008c;
    }

    /* renamed from: c */
    public final void m36924c() {
        C4008c c4008c;
        Socket m36927a;
        synchronized (this.f14564g) {
            c4008c = this.f14568k;
            m36927a = m36927a(false, true, false);
            if (this.f14568k != null) {
                c4008c = null;
            }
        }
        C4015c.m36902a(m36927a);
        if (c4008c != null) {
            this.f14561c.m36481b(this.f14560b, c4008c);
        }
    }

    /* renamed from: d */
    public final void m36923d() {
        C4008c c4008c;
        Socket m36927a;
        synchronized (this.f14564g) {
            c4008c = this.f14568k;
            m36927a = m36927a(true, false, false);
            if (this.f14568k != null) {
                c4008c = null;
            }
        }
        C4015c.m36902a(m36927a);
        if (c4008c != null) {
            this.f14561c.m36481b(this.f14560b, c4008c);
        }
    }

    /* renamed from: e */
    public final boolean m36922e() {
        if (this.f14563f == null) {
            C4011f.C4012a c4012a = this.f14562e;
            return (c4012a != null && c4012a.m36938a()) || this.f14566i.m36946a();
        }
        return true;
    }

    public final String toString() {
        C4008c m36926b = m36926b();
        return m36926b != null ? m36926b.toString() : this.f14559a.toString();
    }
}
