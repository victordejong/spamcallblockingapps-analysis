package com.google.android.gms.measurement.internal;

import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ResolveInfo;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import com.google.android.gms.common.internal.C6155o;
import com.google.android.gms.common.p272k.C6198c;
import com.google.android.gms.common.util.AbstractC6227e;
import com.google.android.gms.common.util.C6230h;
import com.google.android.gms.internal.measurement.AbstractC7607x3;
import com.google.android.gms.internal.measurement.C7382g9;
import com.google.android.gms.internal.measurement.C7466m9;
import com.google.android.gms.internal.measurement.C7508p9;
import com.google.android.gms.internal.measurement.zzz;
import java.net.URL;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import org.checkerframework.dataflow.qual.Pure;
import org.checkerframework.dataflow.qual.SideEffectFree;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.google.android.gms.measurement.internal.s4 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/s4.class */
public final class C7858s4 implements AbstractC7815o5 {

    /* renamed from: a */
    private static volatile C7858s4 f35634a;

    /* renamed from: A */
    private Boolean f35635A;

    /* renamed from: B */
    private long f35636B;

    /* renamed from: C */
    private volatile Boolean f35637C;

    /* renamed from: D */
    protected Boolean f35638D;

    /* renamed from: E */
    protected Boolean f35639E;

    /* renamed from: G */
    private int f35641G;

    /* renamed from: I */
    final long f35643I;

    /* renamed from: b */
    private final Context f35644b;

    /* renamed from: c */
    private final String f35645c;

    /* renamed from: d */
    private final String f35646d;

    /* renamed from: e */
    private final String f35647e;

    /* renamed from: f */
    private final boolean f35648f;

    /* renamed from: g */
    private final C7775ka f35649g;

    /* renamed from: h */
    private final C7692e f35650h;

    /* renamed from: i */
    private final C7697e4 f35651i;

    /* renamed from: j */
    private final C7813o3 f35652j;

    /* renamed from: k */
    private final C7825p4 f35653k;

    /* renamed from: l */
    private final C7939z8 f35654l;

    /* renamed from: m */
    private final C7885u9 f35655m;

    /* renamed from: n */
    private final C7756j3 f35656n;

    /* renamed from: o */
    private final AbstractC6227e f35657o;

    /* renamed from: p */
    private final C7772k7 f35658p;

    /* renamed from: q */
    private final C7893v6 f35659q;

    /* renamed from: r */
    private final C7647a2 f35660r;

    /* renamed from: s */
    private final C7937z6 f35661s;

    /* renamed from: t */
    private final String f35662t;

    /* renamed from: u */
    private C7744i3 f35663u;

    /* renamed from: v */
    private C7773k8 f35664v;

    /* renamed from: w */
    private C7787m f35665w;

    /* renamed from: x */
    private C7720g3 f35666x;

    /* renamed from: y */
    private C7733h4 f35667y;

    /* renamed from: z */
    private boolean f35668z = false;

    /* renamed from: H */
    private final AtomicInteger f35642H = new AtomicInteger(0);

    /* renamed from: F */
    private volatile boolean f35640F = true;

    /* JADX WARN: Type inference failed for: r0v95, types: [long] */
    /* JADX WARN: Type inference failed for: r0v97, types: [long] */
    C7858s4(C7892v5 c7892v5) {
        Bundle bundle;
        boolean z = false;
        C6155o.m17018j(c7892v5);
        C7775ka c7775ka = new C7775ka(c7892v5.f35737a);
        this.f35649g = c7775ka;
        C7933z2.f35838a = c7775ka;
        Context context = c7892v5.f35737a;
        this.f35644b = context;
        this.f35645c = c7892v5.f35738b;
        this.f35646d = c7892v5.f35739c;
        this.f35647e = c7892v5.f35740d;
        this.f35648f = c7892v5.f35744h;
        this.f35637C = c7892v5.f35741e;
        this.f35662t = c7892v5.f35746j;
        zzz zzzVar = c7892v5.f35743g;
        if (zzzVar != null && (bundle = zzzVar.f34954j) != null) {
            Object obj = bundle.get("measurementEnabled");
            if (obj instanceof Boolean) {
                this.f35638D = (Boolean) obj;
            }
            Object obj2 = zzzVar.f34954j.get("measurementDeactivated");
            if (obj2 instanceof Boolean) {
                this.f35639E = (Boolean) obj2;
            }
        }
        AbstractC7607x3.m6774b(context);
        AbstractC6227e m16804d = C6230h.m16804d();
        this.f35657o = m16804d;
        Long l = c7892v5.f35745i;
        this.f35643I = l != null ? l.longValue() : m16804d.mo16807a();
        this.f35650h = new C7692e(this);
        C7697e4 c7697e4 = new C7697e4(this);
        c7697e4.m6208k();
        this.f35651i = c7697e4;
        C7813o3 c7813o3 = new C7813o3(this);
        c7813o3.m6208k();
        this.f35652j = c7813o3;
        C7885u9 c7885u9 = new C7885u9(this);
        c7885u9.m6208k();
        this.f35655m = c7885u9;
        C7756j3 c7756j3 = new C7756j3(this);
        c7756j3.m6208k();
        this.f35656n = c7756j3;
        this.f35660r = new C7647a2(this);
        C7772k7 c7772k7 = new C7772k7(this);
        c7772k7.m6571i();
        this.f35658p = c7772k7;
        C7893v6 c7893v6 = new C7893v6(this);
        c7893v6.m6571i();
        this.f35659q = c7893v6;
        C7939z8 c7939z8 = new C7939z8(this);
        c7939z8.m6571i();
        this.f35654l = c7939z8;
        C7937z6 c7937z6 = new C7937z6(this);
        c7937z6.m6208k();
        this.f35661s = c7937z6;
        C7825p4 c7825p4 = new C7825p4(this);
        c7825p4.m6208k();
        this.f35653k = c7825p4;
        zzz zzzVar2 = c7892v5.f35743g;
        z = (zzzVar2 == null || zzzVar2.f34949e == 0) ? true : z;
        if (context.getApplicationContext() instanceof Application) {
            C7893v6 m6044F = m6044F();
            if (m6044F.f35460a.f35644b.getApplicationContext() instanceof Application) {
                Application application = (Application) m6044F.f35460a.f35644b.getApplicationContext();
                if (m6044F.f35747c == null) {
                    m6044F.f35747c = new C7882u6(m6044F, null);
                }
                if (z) {
                    application.unregisterActivityLifecycleCallbacks(m6044F.f35747c);
                    application.registerActivityLifecycleCallbacks(m6044F.f35747c);
                    m6044F.f35460a.mo6047C().m6187u().m6216a("Registered activity lifecycle callback");
                }
            }
        } else {
            mo6047C().m6192p().m6216a("Application context is not an Application");
        }
        c7825p4.m6109p(new RunnableC7847r4(this, c7892v5));
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0013, code lost:
        if (r14.f34953i == null) goto L8;
     */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.measurement.internal.C7858s4 m6025f(android.content.Context r13, com.google.android.gms.internal.measurement.zzz r14, java.lang.Long r15) {
        /*
            r0 = r14
            r16 = r0
            r0 = r14
            if (r0 == 0) goto L35
            r0 = r14
            java.lang.String r0 = r0.f34952h
            if (r0 == 0) goto L16
            r0 = r14
            r16 = r0
            r0 = r14
            java.lang.String r0 = r0.f34953i
            if (r0 != 0) goto L35
        L16:
            com.google.android.gms.internal.measurement.zzz r0 = new com.google.android.gms.internal.measurement.zzz
            r1 = r0
            r2 = r14
            long r2 = r2.f34948d
            r3 = r14
            long r3 = r3.f34949e
            r4 = r14
            boolean r4 = r4.f34950f
            r5 = r14
            java.lang.String r5 = r5.f34951g
            r6 = 0
            r7 = 0
            r8 = r14
            android.os.Bundle r8 = r8.f34954j
            r9 = 0
            r1.<init>(r2, r3, r4, r5, r6, r7, r8, r9)
            r16 = r0
        L35:
            r0 = r13
            java.lang.Object r0 = com.google.android.gms.common.internal.C6155o.m17018j(r0)
            r0 = r13
            android.content.Context r0 = r0.getApplicationContext()
            java.lang.Object r0 = com.google.android.gms.common.internal.C6155o.m17018j(r0)
            com.google.android.gms.measurement.internal.s4 r0 = com.google.android.gms.measurement.internal.C7858s4.f35634a
            if (r0 != 0) goto L75
            java.lang.Class<com.google.android.gms.measurement.internal.s4> r0 = com.google.android.gms.measurement.internal.C7858s4.class
            monitor-enter(r0)
            com.google.android.gms.measurement.internal.s4 r0 = com.google.android.gms.measurement.internal.C7858s4.f35634a     // Catch: java.lang.Throwable -> L6f
            if (r0 != 0) goto L69
            com.google.android.gms.measurement.internal.v5 r0 = new com.google.android.gms.measurement.internal.v5     // Catch: java.lang.Throwable -> L6f
            r14 = r0
            r0 = r14
            r1 = r13
            r2 = r16
            r3 = r15
            r0.<init>(r1, r2, r3)     // Catch: java.lang.Throwable -> L6f
            com.google.android.gms.measurement.internal.s4 r0 = new com.google.android.gms.measurement.internal.s4     // Catch: java.lang.Throwable -> L6f
            r13 = r0
            r0 = r13
            r1 = r14
            r0.<init>(r1)     // Catch: java.lang.Throwable -> L6f
            r0 = r13
            com.google.android.gms.measurement.internal.C7858s4.f35634a = r0     // Catch: java.lang.Throwable -> L6f
        L69:
            java.lang.Class<com.google.android.gms.measurement.internal.s4> r0 = com.google.android.gms.measurement.internal.C7858s4.class
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L6f
            goto La6
        L6f:
            r13 = move-exception
            java.lang.Class<com.google.android.gms.measurement.internal.s4> r0 = com.google.android.gms.measurement.internal.C7858s4.class
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L6f
            r0 = r13
            throw r0
        L75:
            r0 = r16
            if (r0 == 0) goto La6
            r0 = r16
            android.os.Bundle r0 = r0.f34954j
            r13 = r0
            r0 = r13
            if (r0 == 0) goto La6
            r0 = r13
            java.lang.String r1 = "dataCollectionDefaultEnabled"
            boolean r0 = r0.containsKey(r1)
            if (r0 == 0) goto La6
            com.google.android.gms.measurement.internal.s4 r0 = com.google.android.gms.measurement.internal.C7858s4.f35634a
            java.lang.Object r0 = com.google.android.gms.common.internal.C6155o.m17018j(r0)
            com.google.android.gms.measurement.internal.s4 r0 = com.google.android.gms.measurement.internal.C7858s4.f35634a
            r1 = r16
            android.os.Bundle r1 = r1.f34954j
            java.lang.String r2 = "dataCollectionDefaultEnabled"
            boolean r1 = r1.getBoolean(r2)
            java.lang.Boolean r1 = java.lang.Boolean.valueOf(r1)
            r0.f35637C = r1
        La6:
            com.google.android.gms.measurement.internal.s4 r0 = com.google.android.gms.measurement.internal.C7858s4.f35634a
            java.lang.Object r0 = com.google.android.gms.common.internal.C6155o.m17018j(r0)
            com.google.android.gms.measurement.internal.s4 r0 = com.google.android.gms.measurement.internal.C7858s4.f35634a
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.C7858s4.m6025f(android.content.Context, com.google.android.gms.internal.measurement.zzz, java.lang.Long):com.google.android.gms.measurement.internal.s4");
    }

    /* renamed from: r */
    public static /* synthetic */ void m6013r(C7858s4 c7858s4, C7892v5 c7892v5) {
        c7858s4.mo6029b().mo6113f();
        c7858s4.f35650h.m6482j();
        C7787m c7787m = new C7787m(c7858s4);
        c7787m.m6208k();
        c7858s4.f35665w = c7787m;
        C7720g3 c7720g3 = new C7720g3(c7858s4, c7892v5.f35742f);
        c7720g3.m6571i();
        c7858s4.f35666x = c7720g3;
        C7744i3 c7744i3 = new C7744i3(c7858s4);
        c7744i3.m6571i();
        c7858s4.f35663u = c7744i3;
        C7773k8 c7773k8 = new C7773k8(c7858s4);
        c7773k8.m6571i();
        c7858s4.f35664v = c7773k8;
        c7858s4.f35655m.m6207l();
        c7858s4.f35651i.m6207l();
        c7858s4.f35667y = new C7733h4(c7858s4);
        c7858s4.f35666x.m6570j();
        C7791m3 m6189s = c7858s4.mo6047C().m6189s();
        c7858s4.f35650h.m6478n();
        m6189s.m6215b("App measurement initialized, version", 39065L);
        c7858s4.mo6047C().m6189s().m6216a("To enable debug logging run: adb shell setprop log.tag.FA VERBOSE");
        String m6430n = c7720g3.m6430n();
        if (TextUtils.isEmpty(c7858s4.f35645c)) {
            if (c7858s4.m6043G().m5994H(m6430n)) {
                c7858s4.mo6047C().m6189s().m6216a("Faster debug mode event logging enabled. To disable, run:\n  adb shell setprop debug.firebase.analytics.app .none.");
            } else {
                C7791m3 m6189s2 = c7858s4.mo6047C().m6189s();
                String valueOf = String.valueOf(m6430n);
                m6189s2.m6216a(valueOf.length() != 0 ? "To enable faster debug mode event logging run:\n  adb shell setprop debug.firebase.analytics.app ".concat(valueOf) : new String("To enable faster debug mode event logging run:\n  adb shell setprop debug.firebase.analytics.app "));
            }
        }
        c7858s4.mo6047C().m6188t().m6216a("Debug-level message logging enabled");
        if (c7858s4.f35641G != c7858s4.f35642H.get()) {
            c7858s4.mo6047C().m6195m().m6214c("Not all components initialized", Integer.valueOf(c7858s4.f35641G), Integer.valueOf(c7858s4.f35642H.get()));
        }
        c7858s4.f35668z = true;
    }

    /* renamed from: s */
    public static final void m6012s() {
        throw new IllegalStateException("Unexpected call on client side");
    }

    /* renamed from: t */
    private static final void m6011t(C7793m5 c7793m5) {
        if (c7793m5 != null) {
            return;
        }
        throw new IllegalStateException("Component not created");
    }

    /* renamed from: u */
    private static final void m6010u(AbstractC7673c4 abstractC7673c4) {
        if (abstractC7673c4 != null) {
            if (abstractC7673c4.m6573g()) {
                return;
            }
            String valueOf = String.valueOf(abstractC7673c4.getClass());
            StringBuilder sb = new StringBuilder(valueOf.length() + 27);
            sb.append("Component not initialized: ");
            sb.append(valueOf);
            throw new IllegalStateException(sb.toString());
        }
        throw new IllegalStateException("Component not created");
    }

    /* renamed from: v */
    private static final void m6009v(AbstractC7804n5 abstractC7804n5) {
        if (abstractC7804n5 != null) {
            if (abstractC7804n5.m6210i()) {
                return;
            }
            String valueOf = String.valueOf(abstractC7804n5.getClass());
            StringBuilder sb = new StringBuilder(valueOf.length() + 27);
            sb.append("Component not initialized: ");
            sb.append(valueOf);
            throw new IllegalStateException(sb.toString());
        }
        throw new IllegalStateException("Component not created");
    }

    /* renamed from: A */
    public final C7813o3 m6049A() {
        C7813o3 c7813o3 = this.f35652j;
        if (c7813o3 == null || !c7813o3.m6210i()) {
            return null;
        }
        return this.f35652j;
    }

    @Pure
    /* renamed from: B */
    public final C7939z8 m6048B() {
        m6010u(this.f35654l);
        return this.f35654l;
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC7815o5
    @Pure
    /* renamed from: C */
    public final C7813o3 mo6047C() {
        m6009v(this.f35652j);
        return this.f35652j;
    }

    @SideEffectFree
    /* renamed from: D */
    public final C7733h4 m6046D() {
        return this.f35667y;
    }

    @SideEffectFree
    /* renamed from: E */
    public final C7825p4 m6045E() {
        return this.f35653k;
    }

    @Pure
    /* renamed from: F */
    public final C7893v6 m6044F() {
        m6010u(this.f35659q);
        return this.f35659q;
    }

    @Pure
    /* renamed from: G */
    public final C7885u9 m6043G() {
        m6011t(this.f35655m);
        return this.f35655m;
    }

    @Pure
    /* renamed from: H */
    public final C7756j3 m6042H() {
        m6011t(this.f35656n);
        return this.f35656n;
    }

    @Pure
    /* renamed from: I */
    public final C7744i3 m6041I() {
        m6010u(this.f35663u);
        return this.f35663u;
    }

    @Pure
    /* renamed from: J */
    public final C7937z6 m6040J() {
        m6009v(this.f35661s);
        return this.f35661s;
    }

    @Pure
    /* renamed from: K */
    public final boolean m6039K() {
        return TextUtils.isEmpty(this.f35645c);
    }

    @Pure
    /* renamed from: L */
    public final String m6038L() {
        return this.f35645c;
    }

    @Pure
    /* renamed from: M */
    public final String m6037M() {
        return this.f35646d;
    }

    @Pure
    /* renamed from: N */
    public final String m6036N() {
        return this.f35647e;
    }

    @Pure
    /* renamed from: O */
    public final boolean m6035O() {
        return this.f35648f;
    }

    @Pure
    /* renamed from: P */
    public final String m6034P() {
        return this.f35662t;
    }

    @Pure
    /* renamed from: Q */
    public final C7772k7 m6033Q() {
        m6010u(this.f35658p);
        return this.f35658p;
    }

    @Pure
    /* renamed from: R */
    public final C7773k8 m6032R() {
        m6010u(this.f35664v);
        return this.f35664v;
    }

    @Pure
    /* renamed from: S */
    public final C7787m m6031S() {
        m6009v(this.f35665w);
        return this.f35665w;
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC7815o5
    @Pure
    /* renamed from: a */
    public final Context mo6030a() {
        return this.f35644b;
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC7815o5
    @Pure
    /* renamed from: b */
    public final C7825p4 mo6029b() {
        m6009v(this.f35653k);
        return this.f35653k;
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC7815o5
    @Pure
    /* renamed from: c */
    public final C7775ka mo6028c() {
        return this.f35649g;
    }

    @Pure
    /* renamed from: d */
    public final C7720g3 m6027d() {
        m6010u(this.f35666x);
        return this.f35666x;
    }

    @Pure
    /* renamed from: e */
    public final C7647a2 m6026e() {
        C7647a2 c7647a2 = this.f35660r;
        if (c7647a2 != null) {
            return c7647a2;
        }
        throw new IllegalStateException("Component not created");
    }

    /* renamed from: g */
    public final void m6024g(boolean z) {
        this.f35637C = Boolean.valueOf(z);
    }

    /* renamed from: h */
    public final boolean m6023h() {
        return this.f35637C != null && this.f35637C.booleanValue();
    }

    /* renamed from: i */
    public final boolean m6022i() {
        return m6021j() == 0;
    }

    /* renamed from: j */
    public final int m6021j() {
        mo6029b().mo6113f();
        if (this.f35650h.m6467z()) {
            return 1;
        }
        Boolean bool = this.f35639E;
        if (bool != null && bool.booleanValue()) {
            return 2;
        }
        C7382g9.m7385a();
        if (this.f35650h.m6471u(null, C7672c3.f35107w0)) {
            mo6029b().mo6113f();
            if (!this.f35640F) {
                return 8;
            }
        }
        Boolean m6462p = m6005z().m6462p();
        if (m6462p != null) {
            return m6462p.booleanValue() ? 0 : 3;
        }
        C7692e c7692e = this.f35650h;
        C7775ka c7775ka = c7692e.f35460a.f35649g;
        Boolean m6469w = c7692e.m6469w("firebase_analytics_collection_enabled");
        if (m6469w != null) {
            return m6469w.booleanValue() ? 0 : 4;
        }
        Boolean bool2 = this.f35638D;
        return bool2 != null ? bool2.booleanValue() ? 0 : 5 : (!this.f35650h.m6471u(null, C7672c3.f35056U) || this.f35637C == null || this.f35637C.booleanValue()) ? 0 : 7;
    }

    /* renamed from: k */
    public final void m6020k(boolean z) {
        mo6029b().mo6113f();
        this.f35640F = z;
    }

    /* renamed from: l */
    public final boolean m6019l() {
        mo6029b().mo6113f();
        return this.f35640F;
    }

    /* renamed from: m */
    public final void m6018m() {
        this.f35641G++;
    }

    /* renamed from: n */
    public final void m6017n() {
        this.f35642H.incrementAndGet();
    }

    /* renamed from: o */
    public final boolean m6016o() {
        if (this.f35668z) {
            mo6029b().mo6113f();
            Boolean bool = this.f35635A;
            if (bool == null || this.f35636B == 0 || (!bool.booleanValue() && Math.abs(this.f35657o.mo16806b() - this.f35636B) > 1000)) {
                this.f35636B = this.f35657o.mo16806b();
                Boolean valueOf = Boolean.valueOf(m6043G().m5997E("android.permission.INTERNET") && m6043G().m5997E("android.permission.ACCESS_NETWORK_STATE") && (C6198c.m16885a(this.f35644b).m16887g() || this.f35650h.m6487H() || (C7885u9.m5975a0(this.f35644b) && C7885u9.m5998D(this.f35644b, false))));
                this.f35635A = valueOf;
                if (valueOf.booleanValue()) {
                    boolean z = true;
                    if (!m6043G().m5962m(m6027d().m6429o(), m6027d().m6428p(), m6027d().m6427q())) {
                        z = !TextUtils.isEmpty(m6027d().m6428p());
                    }
                    this.f35635A = Boolean.valueOf(z);
                }
            }
            return this.f35635A.booleanValue();
        }
        throw new IllegalStateException("AppMeasurement is not initialized");
    }

    /* renamed from: p */
    public final void m6015p() {
        mo6029b().mo6113f();
        m6009v(m6040J());
        String m6430n = m6027d().m6430n();
        Pair<String, Boolean> m6465m = m6005z().m6465m(m6430n);
        if (!this.f35650h.m6493A() || ((Boolean) m6465m.second).booleanValue() || TextUtils.isEmpty((CharSequence) m6465m.first)) {
            mo6047C().m6188t().m6216a("ADID unavailable to retrieve Deferred Deep Link. Skipping");
            return;
        }
        C7937z6 m6040J = m6040J();
        m6040J.m6209j();
        ConnectivityManager connectivityManager = (ConnectivityManager) m6040J.f35460a.f35644b.getSystemService("connectivity");
        NetworkInfo networkInfo = null;
        if (connectivityManager != null) {
            try {
                networkInfo = connectivityManager.getActiveNetworkInfo();
            } catch (SecurityException e) {
                networkInfo = null;
            }
        }
        if (networkInfo == null || !networkInfo.isConnected()) {
            mo6047C().m6192p().m6216a("Network is not available for Deferred Deep Link request. Skipping");
            return;
        }
        C7885u9 m6043G = m6043G();
        m6027d().f35460a.f35650h.m6478n();
        URL m5976Z = m6043G.m5976Z(39065L, m6430n, (String) m6465m.first, m6005z().f35210t.m6588a() - 1);
        if (m5976Z == null) {
            return;
        }
        C7937z6 m6040J2 = m6040J();
        C7836q4 c7836q4 = new C7836q4(this);
        m6040J2.mo6113f();
        m6040J2.m6209j();
        C6155o.m17018j(m5976Z);
        C6155o.m17018j(c7836q4);
        m6040J2.f35460a.mo6029b().m6106s(new RunnableC7926y6(m6040J2, m6430n, m5976Z, null, null, c7836q4, null));
    }

    /* renamed from: q */
    public final /* synthetic */ void m6014q(String str, int i, Throwable th, byte[] bArr, Map map) {
        List<ResolveInfo> queryIntentActivities;
        int i2 = i;
        if (i != 200) {
            i2 = i;
            if (i != 204) {
                i2 = i;
                if (i == 304) {
                    i2 = 304;
                }
                mo6047C().m6192p().m6214c("Network Request for Deferred Deep Link failed. response, exception", Integer.valueOf(i2), th);
            }
        }
        if (th == null) {
            m6005z().f35209s.m5886b(true);
            if (bArr == null || bArr.length == 0) {
                mo6047C().m6188t().m6216a("Deferred Deep Link response empty.");
                return;
            }
            try {
                JSONObject jSONObject = new JSONObject(new String(bArr));
                String optString = jSONObject.optString("deeplink", "");
                String optString2 = jSONObject.optString("gclid", "");
                double optDouble = jSONObject.optDouble("timestamp", 0.0d);
                if (TextUtils.isEmpty(optString)) {
                    mo6047C().m6188t().m6216a("Deferred Deep Link is empty.");
                    return;
                }
                C7885u9 m6043G = m6043G();
                C7858s4 c7858s4 = m6043G.f35460a;
                if (!TextUtils.isEmpty(optString) && (queryIntentActivities = m6043G.f35460a.f35644b.getPackageManager().queryIntentActivities(new Intent("android.intent.action.VIEW", Uri.parse(optString)), 0)) != null && !queryIntentActivities.isEmpty()) {
                    Bundle bundle = new Bundle();
                    bundle.putString("gclid", optString2);
                    bundle.putString("_cis", "ddp");
                    this.f35659q.m5917X("auto", "_cmp", bundle);
                    C7885u9 m6043G2 = m6043G();
                    if (TextUtils.isEmpty(optString)) {
                        return;
                    }
                    try {
                        SharedPreferences.Editor edit = m6043G2.f35460a.f35644b.getSharedPreferences("google.analytics.deferred.deeplink.prefs", 0).edit();
                        edit.putString("deeplink", optString);
                        edit.putLong("timestamp", Double.doubleToRawLongBits(optDouble));
                        if (!edit.commit()) {
                            return;
                        }
                        m6043G2.f35460a.f35644b.sendBroadcast(new Intent("android.google.analytics.action.DEEPLINK_ACTION"));
                        return;
                    } catch (Exception e) {
                        m6043G2.f35460a.mo6047C().m6195m().m6215b("Failed to persist Deferred Deep Link. exception", e);
                        return;
                    }
                }
                mo6047C().m6192p().m6214c("Deferred Deep Link validation failed. gclid, deep link", optString2, optString);
                return;
            } catch (JSONException e2) {
                mo6047C().m6195m().m6215b("Failed to parse the Deferred Deep Link response. exception", e2);
                return;
            }
        }
        mo6047C().m6192p().m6214c("Network Request for Deferred Deep Link failed. response, exception", Integer.valueOf(i2), th);
    }

    /* renamed from: w */
    public final void m6008w(zzz zzzVar) {
        C7704f c7704f;
        C7704f c7704f2;
        mo6029b().mo6113f();
        C7382g9.m7385a();
        C7692e c7692e = this.f35650h;
        C7648a3<Boolean> c7648a3 = C7672c3.f35107w0;
        if (c7692e.m6471u(null, c7648a3)) {
            C7704f m6460r = m6005z().m6460r();
            C7697e4 m6005z = m6005z();
            C7858s4 c7858s4 = m6005z.f35460a;
            m6005z.mo6113f();
            int i = 100;
            int i2 = m6005z.m6464n().getInt("consent_source", 100);
            C7692e c7692e2 = this.f35650h;
            C7648a3<Boolean> c7648a32 = C7672c3.f35109x0;
            if (c7692e2.m6471u(null, c7648a32)) {
                C7692e c7692e3 = this.f35650h;
                C7858s4 c7858s42 = c7692e3.f35460a;
                C7382g9.m7385a();
                Boolean m6469w = !c7692e3.m6471u(null, c7648a32) ? null : c7692e3.m6469w("google_analytics_default_allow_ad_storage");
                C7692e c7692e4 = this.f35650h;
                C7858s4 c7858s43 = c7692e4.f35460a;
                C7382g9.m7385a();
                Boolean m6469w2 = !c7692e4.m6471u(null, c7648a32) ? null : c7692e4.m6469w("google_analytics_default_allow_analytics_storage");
                if (!(m6469w == null && m6469w2 == null) && m6005z().m6461q(-10)) {
                    c7704f2 = new C7704f(m6469w, m6469w2);
                    i = -10;
                } else {
                    if (TextUtils.isEmpty(m6027d().m6429o()) || !(i2 == 0 || i2 == 30 || i2 == 10 || i2 == 30 || i2 == 30 || i2 == 40)) {
                        C7508p9.m7024a();
                        if ((!this.f35650h.m6471u(null, C7672c3.f35043H0) || TextUtils.isEmpty(m6027d().m6429o())) && zzzVar != null && zzzVar.f34954j != null && m6005z().m6461q(30)) {
                            c7704f2 = C7704f.m6449b(zzzVar.f34954j);
                            if (!c7704f2.equals(C7704f.f35238a)) {
                                i = 30;
                            }
                        }
                    } else {
                        m6044F().m5919V(C7704f.f35238a, -10, this.f35643I);
                    }
                    c7704f2 = null;
                }
                c7704f = m6460r;
                if (c7704f2 != null) {
                    m6044F().m5919V(c7704f2, i, this.f35643I);
                    c7704f = c7704f2;
                }
                m6044F().m5918W(c7704f);
            } else {
                c7704f = m6460r;
                if (zzzVar != null) {
                    c7704f = m6460r;
                    if (zzzVar.f34954j != null) {
                        c7704f = m6460r;
                        if (m6005z().m6461q(30)) {
                            c7704f2 = C7704f.m6449b(zzzVar.f34954j);
                            c7704f = m6460r;
                            if (!c7704f2.equals(C7704f.f35238a)) {
                                m6044F().m5919V(c7704f2, 30, this.f35643I);
                                c7704f = c7704f2;
                            }
                        }
                    }
                }
                m6044F().m5918W(c7704f);
            }
        }
        if (m6005z().f35196f.m6588a() == 0) {
            mo6047C().m6187u().m6215b("Persisting first open", Long.valueOf(this.f35643I));
            m6005z().f35196f.m6587b(this.f35643I);
        }
        m6044F().f35758n.m6561c();
        if (m6016o()) {
            if (!TextUtils.isEmpty(m6027d().m6429o()) || !TextUtils.isEmpty(m6027d().m6428p())) {
                C7885u9 m6043G = m6043G();
                String m6429o = m6027d().m6429o();
                C7697e4 m6005z2 = m6005z();
                m6005z2.mo6113f();
                String string = m6005z2.m6464n().getString("gmp_app_id", null);
                String m6428p = m6027d().m6428p();
                C7697e4 m6005z3 = m6005z();
                m6005z3.mo6113f();
                if (m6043G.m5960n(m6429o, string, m6428p, m6005z3.m6464n().getString("admob_app_id", null))) {
                    mo6047C().m6189s().m6216a("Rechecking which service to use due to a GMP App Id change");
                    C7697e4 m6005z4 = m6005z();
                    m6005z4.mo6113f();
                    Boolean m6462p = m6005z4.m6462p();
                    SharedPreferences.Editor edit = m6005z4.m6464n().edit();
                    edit.clear();
                    edit.apply();
                    if (m6462p != null) {
                        m6005z4.m6463o(m6462p);
                    }
                    m6041I().m6363m();
                    this.f35664v.m6264r();
                    this.f35664v.m6268n();
                    m6005z().f35196f.m6587b(this.f35643I);
                    m6005z().f35198h.m6557b(null);
                }
                C7697e4 m6005z5 = m6005z();
                String m6429o2 = m6027d().m6429o();
                m6005z5.mo6113f();
                SharedPreferences.Editor edit2 = m6005z5.m6464n().edit();
                edit2.putString("gmp_app_id", m6429o2);
                edit2.apply();
                C7697e4 m6005z6 = m6005z();
                String m6428p2 = m6027d().m6428p();
                m6005z6.mo6113f();
                SharedPreferences.Editor edit3 = m6005z6.m6464n().edit();
                edit3.putString("admob_app_id", m6428p2);
                edit3.apply();
            }
            C7382g9.m7385a();
            if (this.f35650h.m6471u(null, c7648a3) && !m6005z().m6460r().m6443h()) {
                m6005z().f35198h.m6557b(null);
            }
            m6044F().m5907p(m6005z().f35198h.m6558a());
            C7466m9.m7102a();
            if (this.f35650h.m6471u(null, C7672c3.f35091o0)) {
                try {
                    m6043G().f35460a.f35644b.getClassLoader().loadClass("com.google.firebase.remoteconfig.FirebaseRemoteConfig");
                } catch (ClassNotFoundException e) {
                    if (!TextUtils.isEmpty(m6005z().f35211u.m6558a())) {
                        mo6047C().m6192p().m6216a("Remote config removed with active feature rollouts");
                        m6005z().f35211u.m6557b(null);
                    }
                }
            }
            if (!TextUtils.isEmpty(m6027d().m6429o()) || !TextUtils.isEmpty(m6027d().m6428p())) {
                boolean m6022i = m6022i();
                if (!m6005z().m6458t() && !this.f35650h.m6467z()) {
                    m6005z().m6459s(!m6022i);
                }
                if (m6022i) {
                    m6044F().m5904s();
                }
                m6048B().f35855d.m5883a();
                m6032R().m6273T(new AtomicReference<>());
                m6032R().m6269m(m6005z().f35214x.m5880a());
            }
        } else if (m6022i()) {
            if (!m6043G().m5997E("android.permission.INTERNET")) {
                mo6047C().m6195m().m6216a("App is missing INTERNET permission");
            }
            if (!m6043G().m5997E("android.permission.ACCESS_NETWORK_STATE")) {
                mo6047C().m6195m().m6216a("App is missing ACCESS_NETWORK_STATE permission");
            }
            if (!C6198c.m16885a(this.f35644b).m16887g() && !this.f35650h.m6487H()) {
                if (!C7885u9.m5975a0(this.f35644b)) {
                    mo6047C().m6195m().m6216a("AppMeasurementReceiver not registered/enabled");
                }
                if (!C7885u9.m5998D(this.f35644b, false)) {
                    mo6047C().m6195m().m6216a("AppMeasurementService not registered/enabled");
                }
            }
            mo6047C().m6195m().m6216a("Uploading is not possible. App measurement disabled");
        }
        m6005z().f35205o.m5886b(true);
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC7815o5
    @Pure
    /* renamed from: x */
    public final AbstractC6227e mo6007x() {
        return this.f35657o;
    }

    @Pure
    /* renamed from: y */
    public final C7692e m6006y() {
        return this.f35650h;
    }

    @Pure
    /* renamed from: z */
    public final C7697e4 m6005z() {
        m6011t(this.f35651i);
        return this.f35651i;
    }
}
