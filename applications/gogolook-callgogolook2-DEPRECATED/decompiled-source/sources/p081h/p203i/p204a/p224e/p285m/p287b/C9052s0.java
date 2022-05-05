package p081h.p203i.p204a.p224e.p285m.p287b;

import android.app.Application;
import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.WorkerThread;
import com.google.android.gms.measurement.AppMeasurement;
import java.util.concurrent.atomic.AtomicReference;
import p081h.p203i.p204a.p224e.p235d.p236k.p237q.C6865f;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
import p081h.p203i.p204a.p224e.p235d.p249s.AbstractC7074f;
import p081h.p203i.p204a.p224e.p235d.p249s.C7077i;
import p081h.p203i.p204a.p224e.p235d.p251t.C7097c;
import p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8671m1;
/* renamed from: h.i.a.e.m.b.s0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/m/b/s0.class */
public class C9052s0 implements AbstractC9041q1 {

    /* renamed from: E */
    public static volatile C9052s0 f20592E;

    /* renamed from: A */
    public volatile Boolean f20593A;

    /* renamed from: B */
    public int f20594B;

    /* renamed from: C */
    public int f20595C;

    /* renamed from: a */
    public final Context f20597a;

    /* renamed from: b */
    public final String f20598b;

    /* renamed from: c */
    public final String f20599c;

    /* renamed from: d */
    public final String f20600d;

    /* renamed from: e */
    public final boolean f20601e;

    /* renamed from: f */
    public final C8996i4 f20602f;

    /* renamed from: h */
    public final C8943a0 f20604h;

    /* renamed from: i */
    public final C9027o f20605i;

    /* renamed from: j */
    public final C9028o0 f20606j;

    /* renamed from: k */
    public final C8995i3 f20607k;

    /* renamed from: m */
    public final C8959c4 f20609m;

    /* renamed from: n */
    public final C9015m f20610n;

    /* renamed from: p */
    public final C8982g2 f20612p;

    /* renamed from: q */
    public final C9053s1 f20613q;

    /* renamed from: s */
    public C9003k f20615s;

    /* renamed from: t */
    public C9000j2 f20616t;

    /* renamed from: u */
    public C9069u4 f20617u;

    /* renamed from: v */
    public C8991i f20618v;

    /* renamed from: w */
    public C8980g0 f20619w;

    /* renamed from: y */
    public Boolean f20621y;

    /* renamed from: z */
    public long f20622z;

    /* renamed from: x */
    public boolean f20620x = false;

    /* renamed from: o */
    public final AbstractC7074f f20611o = C7077i.m21148a();

    /* renamed from: D */
    public final long f20596D = this.f20611o.currentTimeMillis();

    /* renamed from: g */
    public final C9008k4 f20603g = new C9008k4(this);

    /* renamed from: r */
    public final C8942a f20614r = new C8942a(this);

    /* renamed from: l */
    public final AppMeasurement f20608l = new AppMeasurement(this);

    public C9052s0(C9047r1 r1Var) {
        C7021t.m21290a(r1Var);
        this.f20602f = new C8996i4(r1Var.f20584a);
        C8966e.m16681a(this.f20602f);
        this.f20597a = r1Var.f20584a;
        this.f20598b = r1Var.f20585b;
        this.f20599c = r1Var.f20586c;
        this.f20600d = r1Var.f20587d;
        this.f20601e = r1Var.f20588e;
        this.f20593A = r1Var.f20589f;
        AbstractC8671m1.m17413a(this.f20597a);
        C8943a0 a0Var = new C8943a0(this);
        a0Var.m16339r();
        this.f20604h = a0Var;
        C9027o oVar = new C9027o(this);
        oVar.m16339r();
        this.f20605i = oVar;
        C8959c4 c4Var = new C8959c4(this);
        c4Var.m16339r();
        this.f20609m = c4Var;
        C9015m mVar = new C9015m(this);
        mVar.m16339r();
        this.f20610n = mVar;
        C8982g2 g2Var = new C8982g2(this);
        g2Var.m16222z();
        this.f20612p = g2Var;
        C9053s1 s1Var = new C9053s1(this);
        s1Var.m16222z();
        this.f20613q = s1Var;
        C8995i3 i3Var = new C8995i3(this);
        i3Var.m16222z();
        this.f20607k = i3Var;
        C9028o0 o0Var = new C9028o0(this);
        o0Var.m16339r();
        this.f20606j = o0Var;
        if (this.f20597a.getApplicationContext() instanceof Application) {
            C9053s1 k = m16282k();
            if (k.getContext().getApplicationContext() instanceof Application) {
                Application application = (Application) k.getContext().getApplicationContext();
                if (k.f20623c == null) {
                    k.f20623c = new C8970e2(k, null);
                }
                application.unregisterActivityLifecycleCallbacks(k.f20623c);
                application.registerActivityLifecycleCallbacks(k.f20623c);
                k.mo16178c().m16389A().m16338a("Registered activity lifecycle callback");
            }
        } else {
            mo16178c().m16372v().m16338a("Application context is not an Application");
        }
        this.f20606j.m16364a(new RunnableC9058t0(this, r1Var));
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0013, code lost:
        if (r13.f20444f == null) goto L_0x0016;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static p081h.p203i.p204a.p224e.p285m.p287b.C9052s0 m16298a(android.content.Context r12, p081h.p203i.p204a.p224e.p285m.p287b.C8997j r13) {
        /*
            r0 = r13
            r14 = r0
            r0 = r13
            if (r0 == 0) goto L_0x0034
            r0 = r13
            java.lang.String r0 = r0.f20443e
            if (r0 == 0) goto L_0x0016
            r0 = r13
            r14 = r0
            r0 = r13
            java.lang.String r0 = r0.f20444f
            if (r0 != 0) goto L_0x0034
        L_0x0016:
            h.i.a.e.m.b.j r0 = new h.i.a.e.m.b.j
            r1 = r0
            r2 = r13
            long r2 = r2.f20439a
            r3 = r13
            long r3 = r3.f20440b
            r4 = r13
            boolean r4 = r4.f20441c
            r5 = r13
            java.lang.String r5 = r5.f20442d
            r6 = 0
            r7 = 0
            r8 = r13
            android.os.Bundle r8 = r8.f20445g
            r1.<init>(r2, r3, r4, r5, r6, r7, r8)
            r14 = r0
        L_0x0034:
            r0 = r12
            java.lang.Object r0 = p081h.p203i.p204a.p224e.p235d.p240n.C7021t.m21290a(r0)
            r0 = r12
            android.content.Context r0 = r0.getApplicationContext()
            java.lang.Object r0 = p081h.p203i.p204a.p224e.p235d.p240n.C7021t.m21290a(r0)
            h.i.a.e.m.b.s0 r0 = p081h.p203i.p204a.p224e.p285m.p287b.C9052s0.f20592E
            if (r0 != 0) goto L_0x0073
            java.lang.Class<h.i.a.e.m.b.s0> r0 = p081h.p203i.p204a.p224e.p285m.p287b.C9052s0.class
            monitor-enter(r0)
            h.i.a.e.m.b.s0 r0 = p081h.p203i.p204a.p224e.p285m.p287b.C9052s0.f20592E     // Catch: all -> 0x006d
            if (r0 != 0) goto L_0x0067
            h.i.a.e.m.b.r1 r0 = new h.i.a.e.m.b.r1     // Catch: all -> 0x006d
            r13 = r0
            r0 = r13
            r1 = r12
            r2 = r14
            r0.<init>(r1, r2)     // Catch: all -> 0x006d
            h.i.a.e.m.b.s0 r0 = new h.i.a.e.m.b.s0     // Catch: all -> 0x006d
            r12 = r0
            r0 = r12
            r1 = r13
            r0.<init>(r1)     // Catch: all -> 0x006d
            r0 = r12
            p081h.p203i.p204a.p224e.p285m.p287b.C9052s0.f20592E = r0     // Catch: all -> 0x006d
        L_0x0067:
            java.lang.Class<h.i.a.e.m.b.s0> r0 = p081h.p203i.p204a.p224e.p285m.p287b.C9052s0.class
            monitor-exit(r0)     // Catch: all -> 0x006d
            goto L_0x009a
        L_0x006d:
            r12 = move-exception
            java.lang.Class<h.i.a.e.m.b.s0> r0 = p081h.p203i.p204a.p224e.p285m.p287b.C9052s0.class
            monitor-exit(r0)     // Catch: all -> 0x006d
            r0 = r12
            throw r0
        L_0x0073:
            r0 = r14
            if (r0 == 0) goto L_0x009a
            r0 = r14
            android.os.Bundle r0 = r0.f20445g
            r12 = r0
            r0 = r12
            if (r0 == 0) goto L_0x009a
            r0 = r12
            java.lang.String r1 = "dataCollectionDefaultEnabled"
            boolean r0 = r0.containsKey(r1)
            if (r0 == 0) goto L_0x009a
            h.i.a.e.m.b.s0 r0 = p081h.p203i.p204a.p224e.p285m.p287b.C9052s0.f20592E
            r1 = r14
            android.os.Bundle r1 = r1.f20445g
            java.lang.String r2 = "dataCollectionDefaultEnabled"
            boolean r1 = r1.getBoolean(r2)
            r0.m16292a(r1)
        L_0x009a:
            h.i.a.e.m.b.s0 r0 = p081h.p203i.p204a.p224e.p285m.p287b.C9052s0.f20592E
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p204a.p224e.p285m.p287b.C9052s0.m16298a(android.content.Context, h.i.a.e.m.b.j):h.i.a.e.m.b.s0");
    }

    /* renamed from: a */
    public static void m16297a(C9029o1 o1Var) {
        if (o1Var == null) {
            throw new IllegalStateException("Component not created");
        }
    }

    /* renamed from: b */
    public static void m16291b(AbstractC9035p1 p1Var) {
        if (p1Var == null) {
            throw new IllegalStateException("Component not created");
        } else if (!p1Var.m16343m()) {
            String valueOf = String.valueOf(p1Var.getClass());
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 27);
            sb.append("Component not initialized: ");
            sb.append(valueOf);
            throw new IllegalStateException(sb.toString());
        }
    }

    /* renamed from: b */
    public static void m16290b(AbstractC9055s3 s3Var) {
        if (s3Var == null) {
            throw new IllegalStateException("Component not created");
        } else if (!s3Var.m16227u()) {
            String valueOf = String.valueOf(s3Var.getClass());
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 27);
            sb.append("Component not initialized: ");
            sb.append(valueOf);
            throw new IllegalStateException(sb.toString());
        }
    }

    /* renamed from: A */
    public final String m16306A() {
        return this.f20598b;
    }

    /* renamed from: B */
    public final String m16305B() {
        return this.f20599c;
    }

    /* renamed from: C */
    public final String m16304C() {
        return this.f20600d;
    }

    /* renamed from: D */
    public final boolean m16303D() {
        return this.f20601e;
    }

    @WorkerThread
    /* renamed from: E */
    public final boolean m16302E() {
        return this.f20593A != null && this.f20593A.booleanValue();
    }

    /* renamed from: F */
    public final long m16301F() {
        Long valueOf = Long.valueOf(m16273t().f20205j.m16696a());
        return valueOf.longValue() == 0 ? this.f20596D : Math.min(this.f20596D, valueOf.longValue());
    }

    /* renamed from: G */
    public final void m16300G() {
        this.f20595C++;
    }

    @WorkerThread
    /* renamed from: H */
    public final boolean m16299H() {
        m16286g();
        mo16214a().mo16328d();
        Boolean bool = this.f20621y;
        if (bool == null || this.f20622z == 0 || (bool != null && !bool.booleanValue() && Math.abs(this.f20611o.elapsedRealtime() - this.f20622z) > 1000)) {
            this.f20622z = this.f20611o.elapsedRealtime();
            this.f20621y = Boolean.valueOf(m16274s().m16708d("android.permission.INTERNET") && m16274s().m16708d("android.permission.ACCESS_NETWORK_STATE") && (C7097c.m21085b(this.f20597a).m21095a() || this.f20603g.m16484r() || (C8998j0.m16549a(this.f20597a) && C8959c4.m16739a(this.f20597a, false))));
            if (this.f20621y.booleanValue()) {
                boolean z = true;
                if (!m16274s().m16707d(m16281l().m16569A(), m16281l().m16567C())) {
                    z = !TextUtils.isEmpty(m16281l().m16567C());
                }
                this.f20621y = Boolean.valueOf(z);
            }
        }
        return this.f20621y.booleanValue();
    }

    @Override // p081h.p203i.p204a.p224e.p285m.p287b.AbstractC9041q1
    /* renamed from: a */
    public final C9028o0 mo16214a() {
        m16291b(this.f20606j);
        return this.f20606j;
    }

    /* renamed from: a */
    public final void m16296a(AbstractC9035p1 p1Var) {
        this.f20594B++;
    }

    @WorkerThread
    /* renamed from: a */
    public final void m16295a(C9047r1 r1Var) {
        C9039q qVar;
        String str;
        mo16214a().mo16328d();
        C9008k4.m16483s();
        C9069u4 u4Var = new C9069u4(this);
        u4Var.m16339r();
        this.f20617u = u4Var;
        C8991i iVar = new C8991i(this);
        iVar.m16222z();
        this.f20618v = iVar;
        C9003k kVar = new C9003k(this);
        kVar.m16222z();
        this.f20615s = kVar;
        C9000j2 j2Var = new C9000j2(this);
        j2Var.m16222z();
        this.f20616t = j2Var;
        this.f20609m.m16341o();
        this.f20604h.m16341o();
        this.f20619w = new C8980g0(this);
        this.f20618v.m16225w();
        mo16178c().m16369y().m16337a("App measurement is starting up, version", Long.valueOf(this.f20603g.m16490n()));
        mo16178c().m16369y().m16338a("To enable debug logging run: adb shell setprop log.tag.FA VERBOSE");
        String B = iVar.m16568B();
        if (TextUtils.isEmpty(this.f20598b)) {
            if (m16274s().m16711c(B)) {
                qVar = mo16178c().m16369y();
                str = "Faster debug mode event logging enabled. To disable, run:\n  adb shell setprop debug.firebase.analytics.app .none.";
            } else {
                qVar = mo16178c().m16369y();
                String valueOf = String.valueOf(B);
                str = valueOf.length() != 0 ? "To enable faster debug mode event logging run:\n  adb shell setprop debug.firebase.analytics.app ".concat(valueOf) : new String("To enable faster debug mode event logging run:\n  adb shell setprop debug.firebase.analytics.app ");
            }
            qVar.m16338a(str);
        }
        mo16178c().m16368z().m16338a("Debug-level message logging enabled");
        if (this.f20594B != this.f20595C) {
            mo16178c().m16375s().m16336a("Not all components initialized", Integer.valueOf(this.f20594B), Integer.valueOf(this.f20595C));
        }
        this.f20620x = true;
    }

    /* renamed from: a */
    public final void m16293a(AbstractC9055s3 s3Var) {
        this.f20594B++;
    }

    @WorkerThread
    /* renamed from: a */
    public final void m16292a(boolean z) {
        this.f20593A = Boolean.valueOf(z);
    }

    @Override // p081h.p203i.p204a.p224e.p285m.p287b.AbstractC9041q1
    /* renamed from: b */
    public final C8996i4 mo16187b() {
        return this.f20602f;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:23:? A[RETURN, SYNTHETIC] */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m16289b(boolean r8) {
        /*
            r7 = this;
            r0 = r7
            h.i.a.e.m.b.o0 r0 = r0.mo16214a()
            r0.mo16328d()
            r0 = r7
            h.i.a.e.m.b.a0 r0 = r0.m16273t()
            h.i.a.e.m.b.f0 r0 = r0.f20214s
            java.lang.String r0 = r0.m16663a()
            r9 = r0
            r0 = r8
            if (r0 != 0) goto L_0x005a
            r0 = r9
            if (r0 == 0) goto L_0x005a
            java.lang.String r0 = "unset"
            r1 = r9
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x003e
            r0 = r7
            h.i.a.e.m.b.s1 r0 = r0.m16282k()
            java.lang.String r1 = "app"
            java.lang.String r2 = "_ap"
            r3 = 0
            r4 = r7
            h.i.a.e.d.s.f r4 = r4.f20611o
            long r4 = r4.currentTimeMillis()
            r0.m16248a(r1, r2, r3, r4)
            goto L_0x005a
        L_0x003e:
            r0 = r7
            h.i.a.e.m.b.s1 r0 = r0.m16282k()
            java.lang.String r1 = "app"
            java.lang.String r2 = "_ap"
            r3 = r9
            r4 = r7
            h.i.a.e.d.s.f r4 = r4.f20611o
            long r4 = r4.currentTimeMillis()
            r0.m16248a(r1, r2, r3, r4)
            r0 = 0
            r10 = r0
            goto L_0x005c
        L_0x005a:
            r0 = 1
            r10 = r0
        L_0x005c:
            r0 = r10
            if (r0 == 0) goto L_0x00b7
            r0 = r7
            h.i.a.e.m.b.k4 r0 = r0.f20603g
            java.lang.String r1 = "google_analytics_default_allow_ad_personalization_signals"
            java.lang.Boolean r0 = r0.m16506b(r1)
            r11 = r0
            r0 = r11
            if (r0 == 0) goto L_0x00a0
            r0 = r7
            h.i.a.e.m.b.s1 r0 = r0.m16282k()
            r9 = r0
            r0 = r11
            boolean r0 = r0.booleanValue()
            if (r0 == 0) goto L_0x0084
            r0 = 1
            r12 = r0
            goto L_0x0087
        L_0x0084:
            r0 = 0
            r12 = r0
        L_0x0087:
            r0 = r9
            java.lang.String r1 = "auto"
            java.lang.String r2 = "_ap"
            r3 = r12
            java.lang.Long r3 = java.lang.Long.valueOf(r3)
            r4 = r7
            h.i.a.e.d.s.f r4 = r4.f20611o
            long r4 = r4.currentTimeMillis()
            r0.m16248a(r1, r2, r3, r4)
            return
        L_0x00a0:
            r0 = r7
            h.i.a.e.m.b.s1 r0 = r0.m16282k()
            java.lang.String r1 = "auto"
            java.lang.String r2 = "_ap"
            r3 = 0
            r4 = r7
            h.i.a.e.d.s.f r4 = r4.f20611o
            long r4 = r4.currentTimeMillis()
            r0.m16248a(r1, r2, r3, r4)
        L_0x00b7:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p204a.p224e.p285m.p287b.C9052s0.m16289b(boolean):void");
    }

    @Override // p081h.p203i.p204a.p224e.p285m.p287b.AbstractC9041q1
    /* renamed from: c */
    public final C9027o mo16178c() {
        m16291b(this.f20605i);
        return this.f20605i;
    }

    @WorkerThread
    /* renamed from: d */
    public final boolean m16288d() {
        boolean z;
        mo16214a().mo16328d();
        m16286g();
        if (this.f20603g.m16488o()) {
            return false;
        }
        Boolean p = this.f20603g.m16486p();
        if (p != null) {
            z = p.booleanValue();
        } else {
            boolean z2 = !C6865f.m21687b();
            z = z2;
            if (z2) {
                z = z2;
                if (this.f20593A != null) {
                    z = z2;
                    if (C8966e.f20318i0.m16678a().booleanValue()) {
                        z = this.f20593A.booleanValue();
                    }
                }
            }
        }
        return m16273t().m16756c(z);
    }

    @Override // p081h.p203i.p204a.p224e.p285m.p287b.AbstractC9041q1
    /* renamed from: e */
    public final AbstractC7074f mo16174e() {
        return this.f20611o;
    }

    @WorkerThread
    /* renamed from: f */
    public final void m16287f() {
        mo16214a().mo16328d();
        if (m16273t().f20200e.m16696a() == 0) {
            m16273t().f20200e.m16695a(this.f20611o.currentTimeMillis());
        }
        if (Long.valueOf(m16273t().f20205j.m16696a()).longValue() == 0) {
            mo16178c().m16389A().m16337a("Persisting first open", Long.valueOf(this.f20596D));
            m16273t().f20205j.m16695a(this.f20596D);
        }
        if (m16299H()) {
            if (!TextUtils.isEmpty(m16281l().m16569A()) || !TextUtils.isEmpty(m16281l().m16567C())) {
                m16274s();
                if (C8959c4.m16722a(m16281l().m16569A(), m16273t().m16752t(), m16281l().m16567C(), m16273t().m16751u())) {
                    mo16178c().m16369y().m16338a("Rechecking which service to use due to a GMP App Id change");
                    m16273t().m16749w();
                    if (this.f20603g.m16510a(C8966e.f20310e0)) {
                        m16278o().m16516B();
                    }
                    this.f20616t.m16547A();
                    this.f20616t.m16543E();
                    m16273t().f20205j.m16695a(this.f20596D);
                    m16273t().f20207l.m16662a(null);
                }
                m16273t().m16757c(m16281l().m16569A());
                m16273t().m16755d(m16281l().m16567C());
                if (this.f20603g.m16487o(m16281l().m16568B())) {
                    this.f20607k.m16555b(this.f20596D);
                }
            }
            m16282k().m16255a(m16273t().f20207l.m16663a());
            if (!TextUtils.isEmpty(m16281l().m16569A()) || !TextUtils.isEmpty(m16281l().m16567C())) {
                boolean d = m16288d();
                if (!m16273t().m16746z() && !this.f20603g.m16488o()) {
                    m16273t().m16754d(!d);
                }
                if (this.f20603g.m16501d(m16281l().m16568B(), C8966e.f20320j0)) {
                    m16289b(false);
                }
                if (!this.f20603g.m16496i(m16281l().m16568B()) || d) {
                    m16282k().m16261F();
                }
                m16280m().m16526a(new AtomicReference<>());
            }
        } else if (m16288d()) {
            if (!m16274s().m16708d("android.permission.INTERNET")) {
                mo16178c().m16375s().m16338a("App is missing INTERNET permission");
            }
            if (!m16274s().m16708d("android.permission.ACCESS_NETWORK_STATE")) {
                mo16178c().m16375s().m16338a("App is missing ACCESS_NETWORK_STATE permission");
            }
            if (!C7097c.m21085b(this.f20597a).m21095a() && !this.f20603g.m16484r()) {
                if (!C8998j0.m16549a(this.f20597a)) {
                    mo16178c().m16375s().m16338a("AppMeasurementReceiver not registered/enabled");
                }
                if (!C8959c4.m16739a(this.f20597a, false)) {
                    mo16178c().m16375s().m16338a("AppMeasurementService not registered/enabled");
                }
            }
            mo16178c().m16375s().m16338a("Uploading is not possible. App measurement disabled");
        }
    }

    /* renamed from: g */
    public final void m16286g() {
        if (!this.f20620x) {
            throw new IllegalStateException("AppMeasurement is not initialized");
        }
    }

    @Override // p081h.p203i.p204a.p224e.p285m.p287b.AbstractC9041q1
    public final Context getContext() {
        return this.f20597a;
    }

    /* renamed from: h */
    public final void m16285h() {
        throw new IllegalStateException("Unexpected call on client side");
    }

    /* renamed from: i */
    public final void m16284i() {
    }

    /* renamed from: j */
    public final C8942a m16283j() {
        C8942a aVar = this.f20614r;
        if (aVar != null) {
            return aVar;
        }
        throw new IllegalStateException("Component not created");
    }

    /* renamed from: k */
    public final C9053s1 m16282k() {
        m16290b(this.f20613q);
        return this.f20613q;
    }

    /* renamed from: l */
    public final C8991i m16281l() {
        m16290b(this.f20618v);
        return this.f20618v;
    }

    /* renamed from: m */
    public final C9000j2 m16280m() {
        m16290b(this.f20616t);
        return this.f20616t;
    }

    /* renamed from: n */
    public final C8982g2 m16279n() {
        m16290b(this.f20612p);
        return this.f20612p;
    }

    /* renamed from: o */
    public final C9003k m16278o() {
        m16290b(this.f20615s);
        return this.f20615s;
    }

    /* renamed from: p */
    public final C8995i3 m16277p() {
        m16290b(this.f20607k);
        return this.f20607k;
    }

    /* renamed from: q */
    public final C9069u4 m16276q() {
        m16291b(this.f20617u);
        return this.f20617u;
    }

    /* renamed from: r */
    public final C9015m m16275r() {
        m16297a((C9029o1) this.f20610n);
        return this.f20610n;
    }

    /* renamed from: s */
    public final C8959c4 m16274s() {
        m16297a((C9029o1) this.f20609m);
        return this.f20609m;
    }

    /* renamed from: t */
    public final C8943a0 m16273t() {
        m16297a((C9029o1) this.f20604h);
        return this.f20604h;
    }

    /* renamed from: u */
    public final C9008k4 m16272u() {
        return this.f20603g;
    }

    /* renamed from: v */
    public final C9027o m16271v() {
        C9027o oVar = this.f20605i;
        if (oVar == null || !oVar.m16343m()) {
            return null;
        }
        return this.f20605i;
    }

    /* renamed from: w */
    public final C8980g0 m16270w() {
        return this.f20619w;
    }

    /* renamed from: x */
    public final C9028o0 m16269x() {
        return this.f20606j;
    }

    /* renamed from: y */
    public final AppMeasurement m16268y() {
        return this.f20608l;
    }

    /* renamed from: z */
    public final boolean m16267z() {
        return TextUtils.isEmpty(this.f20598b);
    }
}
