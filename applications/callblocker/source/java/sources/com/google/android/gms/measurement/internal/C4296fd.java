package com.google.android.gms.measurement.internal;

import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import com.google.android.gms.common.api.internal.C2552g;
import com.google.android.gms.common.internal.C2662s;
import com.google.android.gms.common.p132c.C2586c;
import com.google.android.gms.common.util.AbstractC2708e;
import com.google.android.gms.common.util.C2711h;
import com.google.android.gms.internal.measurement.AbstractC3821bj;
import com.google.android.gms.internal.measurement.C3811b;
import com.google.android.gms.internal.measurement.C4035iu;
import java.net.URL;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.google.android.gms.measurement.internal.fd */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/fd.class */
public class C4296fd implements AbstractC4321gb {

    /* renamed from: b */
    private static volatile C4296fd f18847b;

    /* renamed from: A */
    private Boolean f18848A;

    /* renamed from: B */
    private long f18849B;

    /* renamed from: C */
    private volatile Boolean f18850C;

    /* renamed from: D */
    private Boolean f18851D;

    /* renamed from: E */
    private Boolean f18852E;

    /* renamed from: F */
    private int f18853F;

    /* renamed from: a */
    final long f18855a;

    /* renamed from: c */
    private final Context f18856c;

    /* renamed from: d */
    private final String f18857d;

    /* renamed from: e */
    private final String f18858e;

    /* renamed from: f */
    private final String f18859f;

    /* renamed from: g */
    private final boolean f18860g;

    /* renamed from: h */
    private final C4439kk f18861h;

    /* renamed from: i */
    private final C4184b f18862i;

    /* renamed from: j */
    private final C4277el f18863j;

    /* renamed from: k */
    private final C4263dy f18864k;

    /* renamed from: l */
    private final C4293fa f18865l;

    /* renamed from: m */
    private final C4399iz f18866m;

    /* renamed from: n */
    private final C4424jw f18867n;

    /* renamed from: o */
    private final C4261dw f18868o;

    /* renamed from: p */
    private final AbstractC2708e f18869p;

    /* renamed from: q */
    private final C4361ho f18870q;

    /* renamed from: r */
    private final C4330gk f18871r;

    /* renamed from: s */
    private final C4159ab f18872s;

    /* renamed from: t */
    private final C4356hj f18873t;

    /* renamed from: u */
    private C4259du f18874u;

    /* renamed from: v */
    private C4367hu f18875v;

    /* renamed from: w */
    private C4444l f18876w;

    /* renamed from: x */
    private C4260dv f18877x;

    /* renamed from: y */
    private C4286eu f18878y;

    /* renamed from: z */
    private boolean f18879z = false;

    /* renamed from: G */
    private AtomicInteger f18854G = new AtomicInteger(0);

    /* JADX WARN: Type inference failed for: r0v24, types: [long] */
    /* JADX WARN: Type inference failed for: r0v98, types: [long] */
    private C4296fd(C4326gg c4326gg) {
        C2662s.m13981a(c4326gg);
        this.f18861h = new C4439kk(c4326gg.f18980a);
        C4253do.f18684a = this.f18861h;
        this.f18856c = c4326gg.f18980a;
        this.f18857d = c4326gg.f18981b;
        this.f18858e = c4326gg.f18982c;
        this.f18859f = c4326gg.f18983d;
        this.f18860g = c4326gg.f18987h;
        this.f18850C = c4326gg.f18984e;
        C3811b c3811b = c4326gg.f18986g;
        if (c3811b != null && c3811b.f17876g != null) {
            Object obj = c3811b.f17876g.get("measurementEnabled");
            if (obj instanceof Boolean) {
                this.f18851D = (Boolean) obj;
            }
            Object obj2 = c3811b.f17876g.get("measurementDeactivated");
            if (obj2 instanceof Boolean) {
                this.f18852E = (Boolean) obj2;
            }
        }
        AbstractC3821bj.m5877a(this.f18856c);
        this.f18869p = C2711h.m13859d();
        this.f18855a = c4326gg.f18988i != null ? c4326gg.f18988i.longValue() : this.f18869p.mo13862a();
        this.f18862i = new C4184b(this);
        C4277el c4277el = new C4277el(this);
        c4277el.m4444B();
        this.f18863j = c4277el;
        C4263dy c4263dy = new C4263dy(this);
        c4263dy.m4444B();
        this.f18864k = c4263dy;
        C4424jw c4424jw = new C4424jw(this);
        c4424jw.m4444B();
        this.f18867n = c4424jw;
        C4261dw c4261dw = new C4261dw(this);
        c4261dw.m4444B();
        this.f18868o = c4261dw;
        this.f18872s = new C4159ab(this);
        C4361ho c4361ho = new C4361ho(this);
        c4361ho.m4710j();
        this.f18870q = c4361ho;
        C4330gk c4330gk = new C4330gk(this);
        c4330gk.m4710j();
        this.f18871r = c4330gk;
        C4399iz c4399iz = new C4399iz(this);
        c4399iz.m4710j();
        this.f18866m = c4399iz;
        C4356hj c4356hj = new C4356hj(this);
        c4356hj.m4444B();
        this.f18873t = c4356hj;
        C4293fa c4293fa = new C4293fa(this);
        c4293fa.m4444B();
        this.f18865l = c4293fa;
        boolean z = !(c4326gg.f18986g != null && (c4326gg.f18986g.f17871b > 0L ? 1 : (c4326gg.f18986g.f17871b == 0L ? 0 : -1)) != 0);
        C4439kk c4439kk = this.f18861h;
        if (this.f18856c.getApplicationContext() instanceof Application) {
            C4330gk m4548h = m4548h();
            if (m4548h.mo4034r().getApplicationContext() instanceof Application) {
                Application application = (Application) m4548h.mo4034r().getApplicationContext();
                if (m4548h.f18995a == null) {
                    m4548h.f18995a = new C4350hd(m4548h, null);
                }
                if (z) {
                    application.unregisterActivityLifecycleCallbacks(m4548h.f18995a);
                    application.registerActivityLifecycleCallbacks(m4548h.f18995a);
                    m4548h.mo4030v().m4657j().m4654a("Registered activity lifecycle callback");
                }
            }
        } else {
            mo4030v().m4662e().m4654a("Application context is not an Application");
        }
        this.f18865l.m4587a(new RunnableC4298ff(this, c4326gg));
    }

    /* renamed from: I */
    private final C4356hj m4567I() {
        m4554b(this.f18873t);
        return this.f18873t;
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0013, code lost:
        if (r13.f17875f == null) goto L8;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.measurement.internal.C4296fd m4565a(android.content.Context r12, com.google.android.gms.internal.measurement.C3811b r13, java.lang.Long r14) {
        /*
            r0 = r13
            r15 = r0
            r0 = r13
            if (r0 == 0) goto L34
            r0 = r13
            java.lang.String r0 = r0.f17874e
            if (r0 == 0) goto L16
            r0 = r13
            r15 = r0
            r0 = r13
            java.lang.String r0 = r0.f17875f
            if (r0 != 0) goto L34
        L16:
            com.google.android.gms.internal.measurement.b r0 = new com.google.android.gms.internal.measurement.b
            r1 = r0
            r2 = r13
            long r2 = r2.f17870a
            r3 = r13
            long r3 = r3.f17871b
            r4 = r13
            boolean r4 = r4.f17872c
            r5 = r13
            java.lang.String r5 = r5.f17873d
            r6 = 0
            r7 = 0
            r8 = r13
            android.os.Bundle r8 = r8.f17876g
            r1.<init>(r2, r3, r4, r5, r6, r7, r8)
            r15 = r0
        L34:
            r0 = r12
            java.lang.Object r0 = com.google.android.gms.common.internal.C2662s.m13981a(r0)
            r0 = r12
            android.content.Context r0 = r0.getApplicationContext()
            java.lang.Object r0 = com.google.android.gms.common.internal.C2662s.m13981a(r0)
            com.google.android.gms.measurement.internal.fd r0 = com.google.android.gms.measurement.internal.C4296fd.f18847b
            if (r0 != 0) goto L75
            java.lang.Class<com.google.android.gms.measurement.internal.fd> r0 = com.google.android.gms.measurement.internal.C4296fd.class
            monitor-enter(r0)
            com.google.android.gms.measurement.internal.fd r0 = com.google.android.gms.measurement.internal.C4296fd.f18847b     // Catch: java.lang.Throwable -> L6f
            if (r0 != 0) goto L68
            com.google.android.gms.measurement.internal.gg r0 = new com.google.android.gms.measurement.internal.gg     // Catch: java.lang.Throwable -> L6f
            r13 = r0
            r0 = r13
            r1 = r12
            r2 = r15
            r3 = r14
            r0.<init>(r1, r2, r3)     // Catch: java.lang.Throwable -> L6f
            com.google.android.gms.measurement.internal.fd r0 = new com.google.android.gms.measurement.internal.fd     // Catch: java.lang.Throwable -> L6f
            r12 = r0
            r0 = r12
            r1 = r13
            r0.<init>(r1)     // Catch: java.lang.Throwable -> L6f
            r0 = r12
            com.google.android.gms.measurement.internal.C4296fd.f18847b = r0     // Catch: java.lang.Throwable -> L6f
        L68:
            java.lang.Class<com.google.android.gms.measurement.internal.fd> r0 = com.google.android.gms.measurement.internal.C4296fd.class
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L6f
        L6b:
            com.google.android.gms.measurement.internal.fd r0 = com.google.android.gms.measurement.internal.C4296fd.f18847b     // Catch: java.lang.Throwable -> L6f
            return r0
        L6f:
            r12 = move-exception
            java.lang.Class<com.google.android.gms.measurement.internal.fd> r0 = com.google.android.gms.measurement.internal.C4296fd.class
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L6f
            r0 = r12
            throw r0
        L75:
            r0 = r15
            if (r0 == 0) goto L6b
            r0 = r15
            android.os.Bundle r0 = r0.f17876g
            if (r0 == 0) goto L6b
            r0 = r15
            android.os.Bundle r0 = r0.f17876g
            java.lang.String r1 = "dataCollectionDefaultEnabled"
            boolean r0 = r0.containsKey(r1)
            if (r0 == 0) goto L6b
            com.google.android.gms.measurement.internal.fd r0 = com.google.android.gms.measurement.internal.C4296fd.f18847b
            r1 = r15
            android.os.Bundle r1 = r1.f17876g
            java.lang.String r2 = "dataCollectionDefaultEnabled"
            boolean r1 = r1.getBoolean(r2)
            r0.m4557a(r1)
            goto L6b
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.C4296fd.m4565a(android.content.Context, com.google.android.gms.internal.measurement.b, java.lang.Long):com.google.android.gms.measurement.internal.fd");
    }

    /* renamed from: a */
    public static C4296fd m4564a(Context context, String str, String str2, Bundle bundle) {
        return m4565a(context, new C3811b(0L, 0L, true, null, null, null, bundle), null);
    }

    /* renamed from: a */
    private static void m4560a(C4318fz c4318fz) {
        if (c4318fz == null) {
            throw new IllegalStateException("Component not created");
        }
    }

    /* renamed from: a */
    public final void m4559a(C4326gg c4326gg) {
        C4266ea m4659h;
        String concat;
        mo4031u().mo4037o();
        C4444l c4444l = new C4444l(this);
        c4444l.m4444B();
        this.f18876w = c4444l;
        C4260dv c4260dv = new C4260dv(this, c4326gg.f18985f);
        c4260dv.m4710j();
        this.f18877x = c4260dv;
        C4259du c4259du = new C4259du(this);
        c4259du.m4710j();
        this.f18874u = c4259du;
        C4367hu c4367hu = new C4367hu(this);
        c4367hu.m4710j();
        this.f18875v = c4367hu;
        this.f18867n.m4443C();
        this.f18863j.m4443C();
        this.f18878y = new C4286eu(this);
        this.f18877x.m4709k();
        mo4030v().m4659h().m4653a("App measurement initialized, version", Long.valueOf(this.f18862i.m4798b()));
        C4439kk c4439kk = this.f18861h;
        mo4030v().m4659h().m4654a("To enable debug logging run: adb shell setprop log.tag.FA VERBOSE");
        C4439kk c4439kk2 = this.f18861h;
        String m4693B = c4260dv.m4693B();
        if (TextUtils.isEmpty(this.f18857d)) {
            if (m4547i().m4083f(m4693B)) {
                m4659h = mo4030v().m4659h();
                concat = "Faster debug mode event logging enabled. To disable, run:\n  adb shell setprop debug.firebase.analytics.app .none.";
            } else {
                m4659h = mo4030v().m4659h();
                String valueOf = String.valueOf(m4693B);
                concat = valueOf.length() != 0 ? "To enable faster debug mode event logging run:\n  adb shell setprop debug.firebase.analytics.app ".concat(valueOf) : new String("To enable faster debug mode event logging run:\n  adb shell setprop debug.firebase.analytics.app ");
            }
            m4659h.m4654a(concat);
        }
        mo4030v().m4658i().m4654a("Debug-level message logging enabled");
        if (this.f18853F != this.f18854G.get()) {
            mo4030v().m4655x_().m4652a("Not all components initialized", Integer.valueOf(this.f18853F), Integer.valueOf(this.f18854G.get()));
        }
        this.f18879z = true;
    }

    /* renamed from: b */
    private static void m4555b(AbstractC4243de abstractC4243de) {
        if (abstractC4243de == null) {
            throw new IllegalStateException("Component not created");
        }
        if (abstractC4243de.m4712h()) {
            return;
        }
        String valueOf = String.valueOf(abstractC4243de.getClass());
        throw new IllegalStateException(new StringBuilder(String.valueOf(valueOf).length() + 27).append("Component not initialized: ").append(valueOf).toString());
    }

    /* renamed from: b */
    private static void m4554b(AbstractC4317fy abstractC4317fy) {
        if (abstractC4317fy == null) {
            throw new IllegalStateException("Component not created");
        }
        if (abstractC4317fy.m4442z()) {
            return;
        }
        String valueOf = String.valueOf(abstractC4317fy.getClass());
        throw new IllegalStateException(new StringBuilder(String.valueOf(valueOf).length() + 27).append("Component not initialized: ").append(valueOf).toString());
    }

    /* renamed from: A */
    public final boolean m4575A() {
        return this.f18850C != null && this.f18850C.booleanValue();
    }

    /* renamed from: B */
    public final boolean m4574B() {
        return m4573C() == 0;
    }

    /* renamed from: C */
    public final int m4573C() {
        int i;
        mo4031u().mo4037o();
        if (this.f18862i.m4792d()) {
            i = 1;
        } else if (this.f18852E == null || !this.f18852E.booleanValue()) {
            Boolean m4629h = m4553c().m4629h();
            if (m4629h != null) {
                i = 0;
                if (!m4629h.booleanValue()) {
                    i = 3;
                }
            } else {
                C4184b c4184b = this.f18862i;
                c4184b.mo4026y();
                Boolean m4791d = c4184b.m4791d("firebase_analytics_collection_enabled");
                if (m4791d != null) {
                    i = 0;
                    if (!m4791d.booleanValue()) {
                        i = 4;
                    }
                } else if (this.f18851D != null) {
                    i = 0;
                    if (!this.f18851D.booleanValue()) {
                        i = 5;
                    }
                } else if (C2552g.m14247b()) {
                    i = 6;
                } else {
                    i = 0;
                    if (this.f18862i.m4804a(C4452t.f19409S)) {
                        i = 0;
                        if (this.f18850C != null) {
                            i = 0;
                            if (!this.f18850C.booleanValue()) {
                                i = 7;
                            }
                        }
                    }
                }
            }
        } else {
            i = 2;
        }
        return i;
    }

    /* renamed from: D */
    public final void m4572D() {
        C4439kk c4439kk = this.f18861h;
    }

    /* renamed from: E */
    public final void m4571E() {
        C4439kk c4439kk = this.f18861h;
        throw new IllegalStateException("Unexpected call on client side");
    }

    /* renamed from: F */
    public final void m4570F() {
        this.f18854G.incrementAndGet();
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x00eb, code lost:
        if (android.text.TextUtils.isEmpty(m4536x().m4691D()) == false) goto L35;
     */
    /* renamed from: G */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m4569G() {
        /*
            Method dump skipped, instructions count: 261
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.C4296fd.m4569G():boolean");
    }

    /* renamed from: H */
    public final void m4568H() {
        mo4031u().mo4037o();
        m4554b(m4567I());
        String m4693B = m4536x().m4693B();
        Pair<String, Boolean> m4641a = m4553c().m4641a(m4693B);
        if (!this.f18862i.m4789e().booleanValue() || ((Boolean) m4641a.second).booleanValue() || TextUtils.isEmpty((CharSequence) m4641a.first)) {
            mo4030v().m4658i().m4654a("ADID unavailable to retrieve Deferred Deep Link. Skipping");
        } else if (!m4567I().m4372c()) {
            mo4030v().m4662e().m4654a("Network is not available for Deferred Deep Link request. Skipping");
        } else {
            URL m4143a = m4547i().m4143a(m4536x().mo4027x().m4798b(), m4693B, (String) m4641a.first, m4553c().f18779u.m4624a() - 1);
            C4356hj m4567I = m4567I();
            AbstractC4355hi abstractC4355hi = new AbstractC4355hi(this) { // from class: com.google.android.gms.measurement.internal.fh

                /* renamed from: a */
                private final C4296fd f18919a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f18919a = this;
                }

                @Override // com.google.android.gms.measurement.internal.AbstractC4355hi
                /* renamed from: a */
                public final void mo4376a(String str, int i, Throwable th, byte[] bArr, Map map) {
                    this.f18919a.m4558a(str, i, th, bArr, map);
                }
            };
            m4567I.mo4037o();
            m4567I.m4445A();
            C2662s.m13981a(m4143a);
            C2662s.m13981a(abstractC4355hi);
            m4567I.mo4031u().m4582b(new RunnableC4358hl(m4567I, m4693B, m4143a, null, null, abstractC4355hi));
        }
    }

    /* renamed from: a */
    public final void m4566a() {
        boolean z = false;
        mo4031u().mo4037o();
        if (m4553c().f18761c.m4624a() == 0) {
            m4553c().f18761c.m4623a(this.f18869p.mo13862a());
        }
        if (Long.valueOf(m4553c().f18766h.m4624a()).longValue() == 0) {
            mo4030v().m4657j().m4653a("Persisting first open", Long.valueOf(this.f18855a));
            m4553c().f18766h.m4623a(this.f18855a);
        }
        if (this.f18862i.m4804a(C4452t.f19433aP)) {
            C4439kk c4439kk = this.f18861h;
            m4548h().f18996b.m4071b();
        }
        if (m4569G()) {
            C4439kk c4439kk2 = this.f18861h;
            if (!TextUtils.isEmpty(m4536x().m4692C()) || !TextUtils.isEmpty(m4536x().m4691D())) {
                m4547i();
                if (C4424jw.m4109a(m4536x().m4692C(), m4553c().m4634d(), m4536x().m4691D(), m4553c().m4632e())) {
                    mo4030v().m4659h().m4654a("Rechecking which service to use due to a GMP App Id change");
                    m4553c().m4630g();
                    m4545k().m4705B();
                    this.f18875v.m4341H();
                    this.f18875v.m4343F();
                    m4553c().f18766h.m4623a(this.f18855a);
                    m4553c().f18768j.m4618a(null);
                }
                m4553c().m4636c(m4536x().m4692C());
                m4553c().m4633d(m4536x().m4691D());
            }
            m4548h().m4410a(m4553c().f18768j.m4619a());
            C4439kk c4439kk3 = this.f18861h;
            if (C4035iu.m5067b() && this.f18862i.m4804a(C4452t.f19461av) && !m4547i().m4080h() && !TextUtils.isEmpty(m4553c().f18780v.m4619a())) {
                mo4030v().m4662e().m4654a("Remote config removed with active feature rollouts");
                m4553c().f18780v.m4618a(null);
            }
            if (!TextUtils.isEmpty(m4536x().m4692C()) || !TextUtils.isEmpty(m4536x().m4691D())) {
                boolean m4574B = m4574B();
                if (!m4553c().m4627j() && !this.f18862i.m4792d()) {
                    C4277el m4553c = m4553c();
                    if (!m4574B) {
                        z = true;
                    }
                    m4553c.m4635c(z);
                }
                if (m4574B) {
                    m4548h().m4423I();
                }
                m4551e().f19199a.m4256a();
                m4538t().m4319a(new AtomicReference<>());
            }
        } else if (m4574B()) {
            if (!m4547i().m4087d("android.permission.INTERNET")) {
                mo4030v().m4655x_().m4654a("App is missing INTERNET permission");
            }
            if (!m4547i().m4087d("android.permission.ACCESS_NETWORK_STATE")) {
                mo4030v().m4655x_().m4654a("App is missing ACCESS_NETWORK_STATE permission");
            }
            C4439kk c4439kk4 = this.f18861h;
            if (!C2586c.m14193a(this.f18856c).m14202a() && !this.f18862i.m4777k()) {
                if (!C4287ev.m4609a(this.f18856c)) {
                    mo4030v().m4655x_().m4654a("AppMeasurementReceiver not registered/enabled");
                }
                if (!C4424jw.m4141a(this.f18856c, false)) {
                    mo4030v().m4655x_().m4654a("AppMeasurementService not registered/enabled");
                }
            }
            mo4030v().m4655x_().m4654a("Uploading is not possible. App measurement disabled");
        }
        m4553c().f18773o.m4625a(this.f18862i.m4804a(C4452t.f19416Z));
        m4553c().f18774p.m4625a(this.f18862i.m4804a(C4452t.f19440aa));
    }

    /* renamed from: a */
    public final void m4563a(AbstractC4243de abstractC4243de) {
        this.f18853F++;
    }

    /* renamed from: a */
    public final void m4561a(AbstractC4317fy abstractC4317fy) {
        this.f18853F++;
    }

    /* renamed from: a */
    public final /* synthetic */ void m4558a(String str, int i, Throwable th, byte[] bArr, Map map) {
        List<ResolveInfo> queryIntentActivities;
        if (!((i == 200 || i == 204 || i == 304) && th == null)) {
            mo4030v().m4662e().m4652a("Network Request for Deferred Deep Link failed. response, exception", Integer.valueOf(i), th);
            return;
        }
        m4553c().f18778t.m4625a(true);
        if (bArr.length == 0) {
            mo4030v().m4658i().m4654a("Deferred Deep Link response empty.");
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(new String(bArr));
            String optString = jSONObject.optString("deeplink", "");
            String optString2 = jSONObject.optString("gclid", "");
            double optDouble = jSONObject.optDouble("timestamp", 0.0d);
            if (TextUtils.isEmpty(optString)) {
                mo4030v().m4658i().m4654a("Deferred Deep Link is empty.");
                return;
            }
            C4424jw m4547i = m4547i();
            m4547i.mo4039m();
            if (!(!TextUtils.isEmpty(optString) && (queryIntentActivities = m4547i.mo4034r().getPackageManager().queryIntentActivities(new Intent("android.intent.action.VIEW", Uri.parse(optString)), 0)) != null && !queryIntentActivities.isEmpty())) {
                mo4030v().m4662e().m4652a("Deferred Deep Link validation failed. gclid, deep link", optString2, optString);
                return;
            }
            Bundle bundle = new Bundle();
            bundle.putString("gclid", optString2);
            bundle.putString("_cis", "ddp");
            this.f18871r.m4405a("auto", "_cmp", bundle);
            C4424jw m4547i2 = m4547i();
            if (TextUtils.isEmpty(optString) || !m4547i2.m4121a(optString, optDouble)) {
                return;
            }
            m4547i2.mo4034r().sendBroadcast(new Intent("android.google.analytics.action.DEEPLINK_ACTION"));
        } catch (JSONException e) {
            mo4030v().m4655x_().m4653a("Failed to parse the Deferred Deep Link response. exception", e);
        }
    }

    /* renamed from: a */
    public final void m4557a(boolean z) {
        this.f18850C = Boolean.valueOf(z);
    }

    /* renamed from: b */
    public final C4184b m4556b() {
        return this.f18862i;
    }

    /* renamed from: c */
    public final C4277el m4553c() {
        m4560a((C4318fz) this.f18863j);
        return this.f18863j;
    }

    /* renamed from: d */
    public final C4263dy m4552d() {
        return (this.f18864k == null || !this.f18864k.m4442z()) ? null : this.f18864k;
    }

    /* renamed from: e */
    public final C4399iz m4551e() {
        m4555b(this.f18866m);
        return this.f18866m;
    }

    /* renamed from: f */
    public final C4286eu m4550f() {
        return this.f18878y;
    }

    /* renamed from: g */
    public final C4293fa m4549g() {
        return this.f18865l;
    }

    /* renamed from: h */
    public final C4330gk m4548h() {
        m4555b(this.f18871r);
        return this.f18871r;
    }

    /* renamed from: i */
    public final C4424jw m4547i() {
        m4560a((C4318fz) this.f18867n);
        return this.f18867n;
    }

    /* renamed from: j */
    public final C4261dw m4546j() {
        m4560a((C4318fz) this.f18868o);
        return this.f18868o;
    }

    /* renamed from: k */
    public final C4259du m4545k() {
        m4555b(this.f18874u);
        return this.f18874u;
    }

    /* renamed from: l */
    public final boolean m4544l() {
        return TextUtils.isEmpty(this.f18857d);
    }

    /* renamed from: m */
    public final String m4543m() {
        return this.f18857d;
    }

    /* renamed from: n */
    public final String m4542n() {
        return this.f18858e;
    }

    /* renamed from: o */
    public final String m4541o() {
        return this.f18859f;
    }

    /* renamed from: p */
    public final boolean m4540p() {
        return this.f18860g;
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC4321gb
    /* renamed from: q */
    public final AbstractC2708e mo4035q() {
        return this.f18869p;
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC4321gb
    /* renamed from: r */
    public final Context mo4034r() {
        return this.f18856c;
    }

    /* renamed from: s */
    public final C4361ho m4539s() {
        m4555b(this.f18870q);
        return this.f18870q;
    }

    /* renamed from: t */
    public final C4367hu m4538t() {
        m4555b(this.f18875v);
        return this.f18875v;
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC4321gb
    /* renamed from: u */
    public final C4293fa mo4031u() {
        m4554b(this.f18865l);
        return this.f18865l;
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC4321gb
    /* renamed from: v */
    public final C4263dy mo4030v() {
        m4554b(this.f18864k);
        return this.f18864k;
    }

    /* renamed from: w */
    public final C4444l m4537w() {
        m4554b(this.f18876w);
        return this.f18876w;
    }

    /* renamed from: x */
    public final C4260dv m4536x() {
        m4555b(this.f18877x);
        return this.f18877x;
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC4321gb
    /* renamed from: y */
    public final C4439kk mo4026y() {
        return this.f18861h;
    }

    /* renamed from: z */
    public final C4159ab m4535z() {
        if (this.f18872s == null) {
            throw new IllegalStateException("Component not created");
        }
        return this.f18872s;
    }
}
