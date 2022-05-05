package com.google.android.gms.measurement.internal;

import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.api.internal.GoogleServices;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.DefaultClock;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.android.gms.internal.measurement.zzae;
import com.google.android.gms.internal.measurement.zzdh;
import com.google.android.gms.internal.measurement.zzmj;
import com.google.android.gms.internal.measurement.zzmu;
import com.google.android.gms.internal.measurement.zzny;
import com.google.firebase.messaging.Constants;
import java.net.URL;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzfv.class */
public class zzfv implements zzgq {

    /* renamed from: H */
    private static volatile zzfv f9268H;

    /* renamed from: A */
    private volatile Boolean f9269A;
    @VisibleForTesting

    /* renamed from: B */
    private Boolean f9270B;
    @VisibleForTesting

    /* renamed from: C */
    private Boolean f9271C;

    /* renamed from: E */
    private int f9273E;
    @VisibleForTesting

    /* renamed from: G */
    final long f9275G;

    /* renamed from: a */
    private final Context f9276a;

    /* renamed from: b */
    private final String f9277b;

    /* renamed from: c */
    private final String f9278c;

    /* renamed from: d */
    private final String f9279d;

    /* renamed from: e */
    private final boolean f9280e;

    /* renamed from: f */
    private final zzx f9281f;

    /* renamed from: g */
    private final zzy f9282g;

    /* renamed from: h */
    private final zzfd f9283h;

    /* renamed from: i */
    private final zzer f9284i;

    /* renamed from: j */
    private final zzfo f9285j;

    /* renamed from: k */
    private final zzju f9286k;

    /* renamed from: l */
    private final zzkw f9287l;

    /* renamed from: m */
    private final zzep f9288m;

    /* renamed from: n */
    private final Clock f9289n;

    /* renamed from: o */
    private final zzij f9290o;

    /* renamed from: p */
    private final zzgy f9291p;

    /* renamed from: q */
    private final zza f9292q;

    /* renamed from: r */
    private final zzia f9293r;

    /* renamed from: s */
    private zzen f9294s;

    /* renamed from: t */
    private zzio f9295t;

    /* renamed from: u */
    private zzal f9296u;

    /* renamed from: v */
    private zzek f9297v;

    /* renamed from: w */
    private zzfi f9298w;

    /* renamed from: y */
    private Boolean f9300y;

    /* renamed from: z */
    private long f9301z;

    /* renamed from: x */
    private boolean f9299x = false;

    /* renamed from: F */
    private AtomicInteger f9274F = new AtomicInteger(0);

    /* renamed from: D */
    private volatile boolean f9272D = true;

    private zzfv(zzgz zzgzVar) {
        Bundle bundle;
        Preconditions.m14523k(zzgzVar);
        zzx zzxVar = new zzx(zzgzVar.f9385a);
        this.f9281f = zzxVar;
        zzeh.f9084a = zzxVar;
        this.f9276a = zzgzVar.f9385a;
        this.f9277b = zzgzVar.f9386b;
        this.f9278c = zzgzVar.f9387c;
        this.f9279d = zzgzVar.f9388d;
        this.f9280e = zzgzVar.f9392h;
        this.f9269A = zzgzVar.f9389e;
        zzae zzaeVar = zzgzVar.f9391g;
        if (!(zzaeVar == null || (bundle = zzaeVar.f8176l) == null)) {
            Object obj = bundle.get("measurementEnabled");
            if (obj instanceof Boolean) {
                this.f9270B = (Boolean) obj;
            }
            Object obj2 = zzaeVar.f8176l.get("measurementDeactivated");
            if (obj2 instanceof Boolean) {
                this.f9271C = (Boolean) obj2;
            }
        }
        zzdh.m12771h(this.f9276a);
        Clock c = DefaultClock.m14333c();
        this.f9289n = c;
        Long l = zzgzVar.f9393i;
        this.f9275G = l != null ? l.longValue() : c.mo14335a();
        this.f9282g = new zzy(this);
        zzfd zzfdVar = new zzfd(this);
        zzfdVar.m11309o();
        this.f9283h = zzfdVar;
        zzer zzerVar = new zzer(this);
        zzerVar.m11309o();
        this.f9284i = zzerVar;
        zzkw zzkwVar = new zzkw(this);
        zzkwVar.m11309o();
        this.f9287l = zzkwVar;
        zzep zzepVar = new zzep(this);
        zzepVar.m11309o();
        this.f9288m = zzepVar;
        this.f9292q = new zza(this);
        zzij zzijVar = new zzij(this);
        zzijVar.m11320w();
        this.f9290o = zzijVar;
        zzgy zzgyVar = new zzgy(this);
        zzgyVar.m11320w();
        this.f9291p = zzgyVar;
        zzju zzjuVar = new zzju(this);
        zzjuVar.m11320w();
        this.f9286k = zzjuVar;
        zzia zziaVar = new zzia(this);
        zziaVar.m11309o();
        this.f9293r = zziaVar;
        zzfo zzfoVar = new zzfo(this);
        zzfoVar.m11309o();
        this.f9285j = zzfoVar;
        zzae zzaeVar2 = zzgzVar.f9391g;
        boolean z = false;
        if (zzaeVar2 != null) {
            z = false;
            if (zzaeVar2.f8171g != 0) {
                z = true;
            }
        }
        if (this.f9276a.getApplicationContext() instanceof Application) {
            zzgy F = m11382F();
            if (F.mo11075f().getApplicationContext() instanceof Application) {
                Application application = (Application) F.mo11075f().getApplicationContext();
                if (F.f9371c == null) {
                    F.f9371c = new zzhz(F, null);
                }
                if (!z) {
                    application.unregisterActivityLifecycleCallbacks(F.f9371c);
                    application.registerActivityLifecycleCallbacks(F.f9371c);
                    F.mo11081c().m11552L().m11540a("Registered activity lifecycle callback");
                }
            }
        } else {
            mo11081c().m11557G().m11540a("Application context is not an Application");
        }
        this.f9285j.m11409x(new zzfx(this, zzgzVar));
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0013, code lost:
        if (r13.f8175k == null) goto L_0x0016;
     */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.measurement.internal.zzfv m11367d(android.content.Context r12, com.google.android.gms.internal.measurement.zzae r13, java.lang.Long r14) {
        /*
            r0 = r13
            r15 = r0
            r0 = r13
            if (r0 == 0) goto L_0x0034
            r0 = r13
            java.lang.String r0 = r0.f8174j
            if (r0 == 0) goto L_0x0016
            r0 = r13
            r15 = r0
            r0 = r13
            java.lang.String r0 = r0.f8175k
            if (r0 != 0) goto L_0x0034
        L_0x0016:
            com.google.android.gms.internal.measurement.zzae r0 = new com.google.android.gms.internal.measurement.zzae
            r1 = r0
            r2 = r13
            long r2 = r2.f8170f
            r3 = r13
            long r3 = r3.f8171g
            r4 = r13
            boolean r4 = r4.f8172h
            r5 = r13
            java.lang.String r5 = r5.f8173i
            r6 = 0
            r7 = 0
            r8 = r13
            android.os.Bundle r8 = r8.f8176l
            r1.<init>(r2, r3, r4, r5, r6, r7, r8)
            r15 = r0
        L_0x0034:
            r0 = r12
            java.lang.Object r0 = com.google.android.gms.common.internal.Preconditions.m14523k(r0)
            r0 = r12
            android.content.Context r0 = r0.getApplicationContext()
            java.lang.Object r0 = com.google.android.gms.common.internal.Preconditions.m14523k(r0)
            com.google.android.gms.measurement.internal.zzfv r0 = com.google.android.gms.measurement.internal.zzfv.f9268H
            if (r0 != 0) goto L_0x0074
            java.lang.Class<com.google.android.gms.measurement.internal.zzfv> r0 = com.google.android.gms.measurement.internal.zzfv.class
            monitor-enter(r0)
            com.google.android.gms.measurement.internal.zzfv r0 = com.google.android.gms.measurement.internal.zzfv.f9268H     // Catch: all -> 0x006e
            if (r0 != 0) goto L_0x0068
            com.google.android.gms.measurement.internal.zzgz r0 = new com.google.android.gms.measurement.internal.zzgz     // Catch: all -> 0x006e
            r13 = r0
            r0 = r13
            r1 = r12
            r2 = r15
            r3 = r14
            r0.<init>(r1, r2, r3)     // Catch: all -> 0x006e
            com.google.android.gms.measurement.internal.zzfv r0 = new com.google.android.gms.measurement.internal.zzfv     // Catch: all -> 0x006e
            r12 = r0
            r0 = r12
            r1 = r13
            r0.<init>(r1)     // Catch: all -> 0x006e
            r0 = r12
            com.google.android.gms.measurement.internal.zzfv.f9268H = r0     // Catch: all -> 0x006e
        L_0x0068:
            java.lang.Class<com.google.android.gms.measurement.internal.zzfv> r0 = com.google.android.gms.measurement.internal.zzfv.class
            monitor-exit(r0)     // Catch: all -> 0x006e
            goto L_0x009b
        L_0x006e:
            r12 = move-exception
            java.lang.Class<com.google.android.gms.measurement.internal.zzfv> r0 = com.google.android.gms.measurement.internal.zzfv.class
            monitor-exit(r0)     // Catch: all -> 0x006e
            r0 = r12
            throw r0
        L_0x0074:
            r0 = r15
            if (r0 == 0) goto L_0x009b
            r0 = r15
            android.os.Bundle r0 = r0.f8176l
            r12 = r0
            r0 = r12
            if (r0 == 0) goto L_0x009b
            r0 = r12
            java.lang.String r1 = "dataCollectionDefaultEnabled"
            boolean r0 = r0.containsKey(r1)
            if (r0 == 0) goto L_0x009b
            com.google.android.gms.measurement.internal.zzfv r0 = com.google.android.gms.measurement.internal.zzfv.f9268H
            r1 = r15
            android.os.Bundle r1 = r1.f8176l
            java.lang.String r2 = "dataCollectionDefaultEnabled"
            boolean r1 = r1.getBoolean(r2)
            r0.m11358o(r1)
        L_0x009b:
            com.google.android.gms.measurement.internal.zzfv r0 = com.google.android.gms.measurement.internal.zzfv.f9268H
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzfv.m11367d(android.content.Context, com.google.android.gms.internal.measurement.zzae, java.lang.Long):com.google.android.gms.measurement.internal.zzfv");
    }

    /* renamed from: k */
    private static void m11362k(zzgo zzgoVar) {
        if (zzgoVar == null) {
            throw new IllegalStateException("Component not created");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @WorkerThread
    /* renamed from: m */
    public final void m11360m(zzgz zzgzVar) {
        zzet zzetVar;
        String str;
        mo11083b().mo11316e();
        zzal zzalVar = new zzal(this);
        zzalVar.m11309o();
        this.f9296u = zzalVar;
        zzek zzekVar = new zzek(this, zzgzVar.f9390f);
        zzekVar.m11320w();
        this.f9297v = zzekVar;
        zzen zzenVar = new zzen(this);
        zzenVar.m11320w();
        this.f9294s = zzenVar;
        zzio zzioVar = new zzio(this);
        zzioVar.m11320w();
        this.f9295t = zzioVar;
        this.f9287l.m11308p();
        this.f9283h.m11308p();
        this.f9298w = new zzfi(this);
        this.f9297v.m11319x();
        mo11081c().m11554J().m11539b("App measurement initialized, version", 32053L);
        mo11081c().m11554J().m11540a("To enable debug logging run: adb shell setprop log.tag.FA VERBOSE");
        String B = zzekVar.m11590B();
        if (TextUtils.isEmpty(this.f9277b)) {
            if (m11381G().m11000B0(B)) {
                zzetVar = mo11081c().m11554J();
                str = "Faster debug mode event logging enabled. To disable, run:\n  adb shell setprop debug.firebase.analytics.app .none.";
            } else {
                zzetVar = mo11081c().m11554J();
                String valueOf = String.valueOf(B);
                str = valueOf.length() != 0 ? "To enable faster debug mode event logging run:\n  adb shell setprop debug.firebase.analytics.app ".concat(valueOf) : new String("To enable faster debug mode event logging run:\n  adb shell setprop debug.firebase.analytics.app ");
            }
            zzetVar.m11540a(str);
        }
        mo11081c().m11553K().m11540a("Debug-level message logging enabled");
        if (this.f9273E != this.f9274F.get()) {
            mo11081c().m11560D().m11538c("Not all components initialized", Integer.valueOf(this.f9273E), Integer.valueOf(this.f9274F.get()));
        }
        this.f9299x = true;
    }

    /* renamed from: w */
    private final zzia m11350w() {
        m11347z(this.f9293r);
        return this.f9293r;
    }

    /* renamed from: y */
    private static void m11348y(zzg zzgVar) {
        if (zzgVar == null) {
            throw new IllegalStateException("Component not created");
        } else if (!zzgVar.m11322u()) {
            String valueOf = String.valueOf(zzgVar.getClass());
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 27);
            sb.append("Component not initialized: ");
            sb.append(valueOf);
            throw new IllegalStateException(sb.toString());
        }
    }

    /* renamed from: z */
    private static void m11347z(zzgr zzgrVar) {
        if (zzgrVar == null) {
            throw new IllegalStateException("Component not created");
        } else if (!zzgrVar.m11307r()) {
            String valueOf = String.valueOf(zzgrVar.getClass());
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 27);
            sb.append("Component not initialized: ");
            sb.append(valueOf);
            throw new IllegalStateException(sb.toString());
        }
    }

    @WorkerThread
    /* renamed from: A */
    public final void m11387A(boolean z) {
        mo11083b().mo11316e();
        this.f9272D = z;
    }

    /* renamed from: B */
    public final zzer m11386B() {
        zzer zzerVar = this.f9284i;
        if (zzerVar == null || !zzerVar.m11307r()) {
            return null;
        }
        return this.f9284i;
    }

    /* renamed from: C */
    public final zzju m11385C() {
        m11348y(this.f9286k);
        return this.f9286k;
    }

    /* renamed from: D */
    public final zzfi m11384D() {
        return this.f9298w;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: E */
    public final zzfo m11383E() {
        return this.f9285j;
    }

    /* renamed from: F */
    public final zzgy m11382F() {
        m11348y(this.f9291p);
        return this.f9291p;
    }

    /* renamed from: G */
    public final zzkw m11381G() {
        m11362k(this.f9287l);
        return this.f9287l;
    }

    /* renamed from: H */
    public final zzep m11380H() {
        m11362k(this.f9288m);
        return this.f9288m;
    }

    /* renamed from: I */
    public final zzen m11379I() {
        m11348y(this.f9294s);
        return this.f9294s;
    }

    /* renamed from: J */
    public final boolean m11378J() {
        return TextUtils.isEmpty(this.f9277b);
    }

    /* renamed from: K */
    public final String m11377K() {
        return this.f9277b;
    }

    /* renamed from: L */
    public final String m11376L() {
        return this.f9278c;
    }

    /* renamed from: M */
    public final String m11375M() {
        return this.f9279d;
    }

    /* renamed from: N */
    public final boolean m11374N() {
        return this.f9280e;
    }

    /* renamed from: O */
    public final zzij m11373O() {
        m11348y(this.f9290o);
        return this.f9290o;
    }

    /* renamed from: P */
    public final zzio m11372P() {
        m11348y(this.f9295t);
        return this.f9295t;
    }

    /* renamed from: Q */
    public final zzal m11371Q() {
        m11347z(this.f9296u);
        return this.f9296u;
    }

    /* renamed from: R */
    public final zzek m11370R() {
        m11348y(this.f9297v);
        return this.f9297v;
    }

    /* renamed from: S */
    public final zza m11369S() {
        zza zzaVar = this.f9292q;
        if (zzaVar != null) {
            return zzaVar;
        }
        throw new IllegalStateException("Component not created");
    }

    @WorkerThread
    /* renamed from: T */
    public final boolean m11368T() {
        return this.f9269A != null && this.f9269A.booleanValue();
    }

    @Override // com.google.android.gms.measurement.internal.zzgq
    /* renamed from: a */
    public final Clock mo11085a() {
        return this.f9289n;
    }

    @Override // com.google.android.gms.measurement.internal.zzgq
    /* renamed from: b */
    public final zzfo mo11083b() {
        m11347z(this.f9285j);
        return this.f9285j;
    }

    @Override // com.google.android.gms.measurement.internal.zzgq
    /* renamed from: c */
    public final zzer mo11081c() {
        m11347z(this.f9284i);
        return this.f9284i;
    }

    /* renamed from: e */
    public final zzy m11366e() {
        return this.f9282g;
    }

    @Override // com.google.android.gms.measurement.internal.zzgq
    /* renamed from: f */
    public final Context mo11075f() {
        return this.f9276a;
    }

    @Override // com.google.android.gms.measurement.internal.zzgq
    /* renamed from: g */
    public final zzx mo11073g() {
        return this.f9281f;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @WorkerThread
    /* renamed from: h */
    public final void m11365h(zzae zzaeVar) {
        mo11083b().mo11316e();
        if (zzmj.m11898a() && this.f9282g.m10880r(zzat.f8902H0)) {
            zzad J = m11349x().m11453J();
            zzad zzadVar = J;
            if (zzaeVar != null) {
                zzadVar = J;
                if (zzaeVar.f8176l != null) {
                    zzadVar = J;
                    if (m11349x().m11447v(40)) {
                        zzad j = zzad.m11728j(zzaeVar.f8176l);
                        zzadVar = J;
                        if (!j.equals(zzad.f8841c)) {
                            m11382F().m11287J(j, 40, this.f9275G);
                            zzadVar = j;
                        }
                    }
                }
            }
            m11382F().m11288I(zzadVar);
        }
        if (m11349x().f9186e.m11433a() == 0) {
            m11349x().f9186e.m11432b(this.f9289n.mo14335a());
        }
        if (Long.valueOf(m11349x().f9191j.m11433a()).longValue() == 0) {
            mo11081c().m11552L().m11539b("Persisting first open", Long.valueOf(this.f9275G));
            m11349x().f9191j.m11432b(this.f9275G);
        }
        if (this.f9282g.m10880r(zzat.f8894D0)) {
            m11382F().f9382n.m10922c();
        }
        if (m11352u()) {
            if (!TextUtils.isEmpty(m11370R().m11589C()) || !TextUtils.isEmpty(m11370R().m11588D())) {
                m11381G();
                if (zzkw.m10957i0(m11370R().m11589C(), m11349x().m11459D(), m11370R().m11588D(), m11349x().m11458E())) {
                    mo11081c().m11554J().m11540a("Rechecking which service to use due to a GMP App Id change");
                    m11349x().m11456G();
                    m11379I().m11576G();
                    this.f9295t.m11182b0();
                    this.f9295t.m11184Z();
                    m11349x().f9191j.m11432b(this.f9275G);
                    m11349x().f9193l.m11427b(null);
                }
                m11349x().m11443z(m11370R().m11589C());
                m11349x().m11461B(m11370R().m11588D());
            }
            if (zzmj.m11898a() && this.f9282g.m10880r(zzat.f8902H0) && !m11349x().m11453J().m11721q()) {
                m11349x().f9193l.m11427b(null);
            }
            m11382F().m11277T(m11349x().f9193l.m11428a());
            if (zzmu.m11891a() && this.f9282g.m10880r(zzat.f8959p0) && !m11381G().m10980L0() && !TextUtils.isEmpty(m11349x().f9207z.m11428a())) {
                mo11081c().m11557G().m11540a("Remote config removed with active feature rollouts");
                m11349x().f9207z.m11427b(null);
            }
            if (!TextUtils.isEmpty(m11370R().m11589C()) || !TextUtils.isEmpty(m11370R().m11588D())) {
                boolean p = m11357p();
                if (!m11349x().m11451L() && !this.f9282g.m10899D()) {
                    m11349x().m11462A(!p);
                }
                if (p) {
                    m11382F().m11259l0();
                }
                m11385C().f9626d.m11126a();
                m11372P().m11193Q(new AtomicReference<>());
                if (zzny.m11870a() && this.f9282g.m10880r(zzat.f8979z0)) {
                    m11372P().m11206D(m11349x().f9183C.m11442a());
                }
            }
        } else if (m11357p()) {
            if (!m11381G().m10932y0("android.permission.INTERNET")) {
                mo11081c().m11560D().m11540a("App is missing INTERNET permission");
            }
            if (!m11381G().m10932y0("android.permission.ACCESS_NETWORK_STATE")) {
                mo11081c().m11560D().m11540a("App is missing ACCESS_NETWORK_STATE permission");
            }
            if (!Wrappers.m14278a(this.f9276a).m14281g() && !this.f9282g.m10887P()) {
                if (!zzfn.m11423b(this.f9276a)) {
                    mo11081c().m11560D().m11540a("AppMeasurementReceiver not registered/enabled");
                }
                if (!zzkw.m10968X(this.f9276a, false)) {
                    mo11081c().m11560D().m11540a("AppMeasurementService not registered/enabled");
                }
            }
            mo11081c().m11560D().m11540a("Uploading is not possible. App measurement disabled");
        }
        m11349x().f9201t.m11439a(this.f9282g.m10880r(zzat.f8926Y));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j */
    public final void m11363j(zzg zzgVar) {
        this.f9273E++;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: l */
    public final void m11361l(zzgr zzgrVar) {
        this.f9273E++;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: n */
    public final /* synthetic */ void m11359n(String str, int i, Throwable th, byte[] bArr, Map map) {
        List<ResolveInfo> queryIntentActivities;
        boolean z = true;
        if (!((i == 200 || i == 204 || i == 304) && th == null)) {
            mo11081c().m11557G().m11538c("Network Request for Deferred Deep Link failed. response, exception", Integer.valueOf(i), th);
            return;
        }
        m11349x().f9205x.m11439a(true);
        if (bArr.length == 0) {
            mo11081c().m11553K().m11540a("Deferred Deep Link response empty.");
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(new String(bArr));
            String optString = jSONObject.optString("deeplink", "");
            String optString2 = jSONObject.optString("gclid", "");
            double optDouble = jSONObject.optDouble("timestamp", 0.0d);
            if (TextUtils.isEmpty(optString)) {
                mo11081c().m11553K().m11540a("Deferred Deep Link is empty.");
                return;
            }
            zzkw G = m11381G();
            if (TextUtils.isEmpty(optString) || (queryIntentActivities = G.mo11075f().getPackageManager().queryIntentActivities(new Intent("android.intent.action.VIEW", Uri.parse(optString)), 0)) == null || queryIntentActivities.isEmpty()) {
                z = false;
            }
            if (!z) {
                mo11081c().m11557G().m11538c("Deferred Deep Link validation failed. gclid, deep link", optString2, optString);
                return;
            }
            Bundle bundle = new Bundle();
            bundle.putString("gclid", optString2);
            bundle.putString("_cis", "ddp");
            this.f9291p.m11273X("auto", Constants.ScionAnalytics.EVENT_FIREBASE_CAMPAIGN, bundle);
            zzkw G2 = m11381G();
            if (!TextUtils.isEmpty(optString) && G2.m10962d0(optString, optDouble)) {
                G2.mo11075f().sendBroadcast(new Intent("android.google.analytics.action.DEEPLINK_ACTION"));
            }
        } catch (JSONException e) {
            mo11081c().m11560D().m11539b("Failed to parse the Deferred Deep Link response. exception", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    /* renamed from: o */
    public final void m11358o(boolean z) {
        this.f9269A = Boolean.valueOf(z);
    }

    @WorkerThread
    /* renamed from: p */
    public final boolean m11357p() {
        return m11356q() == 0;
    }

    @WorkerThread
    /* renamed from: q */
    public final int m11356q() {
        mo11083b().mo11316e();
        if (this.f9282g.m10899D()) {
            return 1;
        }
        Boolean bool = this.f9271C;
        if (bool != null && bool.booleanValue()) {
            return 2;
        }
        if (zzmj.m11898a() && this.f9282g.m10880r(zzat.f8902H0) && !m11355r()) {
            return 8;
        }
        Boolean H = m11349x().m11455H();
        if (H != null) {
            return H.booleanValue() ? 0 : 3;
        }
        Boolean C = this.f9282g.m10900C("firebase_analytics_collection_enabled");
        if (C != null) {
            return C.booleanValue() ? 0 : 4;
        }
        Boolean bool2 = this.f9270B;
        if (bool2 != null) {
            return bool2.booleanValue() ? 0 : 5;
        }
        if (GoogleServices.m14886d()) {
            return 6;
        }
        return (!this.f9282g.m10880r(zzat.f8920S) || this.f9269A == null || this.f9269A.booleanValue()) ? 0 : 7;
    }

    @WorkerThread
    /* renamed from: r */
    public final boolean m11355r() {
        mo11083b().mo11316e();
        return this.f9272D;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: s */
    public final void m11354s() {
        throw new IllegalStateException("Unexpected call on client side");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: t */
    public final void m11353t() {
        this.f9274F.incrementAndGet();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @WorkerThread
    /* renamed from: u */
    public final boolean m11352u() {
        if (this.f9299x) {
            mo11083b().mo11316e();
            Boolean bool = this.f9300y;
            if (bool == null || this.f9301z == 0 || (bool != null && !bool.booleanValue() && Math.abs(this.f9289n.mo14334b() - this.f9301z) > 1000)) {
                this.f9301z = this.f9289n.mo14334b();
                Boolean valueOf = Boolean.valueOf(m11381G().m10932y0("android.permission.INTERNET") && m11381G().m10932y0("android.permission.ACCESS_NETWORK_STATE") && (Wrappers.m14278a(this.f9276a).m14281g() || this.f9282g.m10887P() || (zzfn.m11423b(this.f9276a) && zzkw.m10968X(this.f9276a, false))));
                this.f9300y = valueOf;
                if (valueOf.booleanValue()) {
                    boolean z = true;
                    if (!m11381G().m10958h0(m11370R().m11589C(), m11370R().m11588D(), m11370R().m11587E())) {
                        z = !TextUtils.isEmpty(m11370R().m11588D());
                    }
                    this.f9300y = Boolean.valueOf(z);
                }
            }
            return this.f9300y.booleanValue();
        }
        throw new IllegalStateException("AppMeasurement is not initialized");
    }

    @WorkerThread
    /* renamed from: v */
    public final void m11351v() {
        mo11083b().mo11316e();
        m11347z(m11350w());
        String B = m11370R().m11590B();
        Pair<String, Boolean> s = m11349x().m11450s(B);
        if (!this.f9282g.m10898E().booleanValue() || ((Boolean) s.second).booleanValue() || TextUtils.isEmpty((CharSequence) s.first)) {
            mo11081c().m11553K().m11540a("ADID unavailable to retrieve Deferred Deep Link. Skipping");
        } else if (!m11350w().m11239v()) {
            mo11081c().m11557G().m11540a("Network is not available for Deferred Deep Link request. Skipping");
        } else {
            zzkw G = m11381G();
            m11370R();
            URL H = G.m10989H(32053L, B, (String) s.first, m11349x().f9206y.m11433a() - 1);
            zzia w = m11350w();
            zzid zzfuVar = new zzid(this) { // from class: com.google.android.gms.measurement.internal.zzfu

                /* renamed from: a */
                private final zzfv f9267a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f9267a = this;
                }

                @Override // com.google.android.gms.measurement.internal.zzid
                /* renamed from: a */
                public final void mo11236a(String str, int i, Throwable th, byte[] bArr, Map map) {
                    this.f9267a.m11359n(str, i, th, bArr, map);
                }
            };
            w.mo11316e();
            w.m11310n();
            Preconditions.m14523k(H);
            Preconditions.m14523k(zzfuVar);
            w.mo11083b().m11419D(new zzic(w, B, H, null, null, zzfuVar));
        }
    }

    /* renamed from: x */
    public final zzfd m11349x() {
        m11362k(this.f9283h);
        return this.f9283h;
    }
}
