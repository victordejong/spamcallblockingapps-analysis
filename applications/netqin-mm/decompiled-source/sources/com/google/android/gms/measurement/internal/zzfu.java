package com.google.android.gms.measurement.internal;

import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import com.google.android.gms.common.api.internal.GoogleServices;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.DefaultClock;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.android.gms.internal.measurement.zzae;
import com.google.android.gms.internal.measurement.zzdh;
import com.google.android.gms.internal.measurement.zzml;
import com.google.android.gms.measurement.internal.zzfu;
import com.integralads.avid.library.mopub.utils.AvidJSONUtil;
import java.net.URL;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONException;
import org.json.JSONObject;
import p131c.p161d.p170b.p224d.p260i.p261a.AbstractC4747l4;
import p131c.p161d.p170b.p224d.p260i.p261a.AbstractC4765n4;
import p131c.p161d.p170b.p224d.p260i.p261a.AbstractC4784p5;
import p131c.p161d.p170b.p224d.p260i.p261a.AbstractC4827u3;
import p131c.p161d.p170b.p224d.p260i.p261a.C4737k3;
import p131c.p161d.p170b.p224d.p260i.p261a.C4748l5;
import p131c.p161d.p170b.p224d.p260i.p261a.C4756m4;
import p131c.p161d.p170b.p224d.p260i.p261a.C4871z2;
import p131c.p161d.p170b.p224d.p260i.p261a.RunnableC4800r3;
import p131c.p161d.p170b.p224d.p260i.p261a.RunnableC4802r5;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzfu.class */
public class zzfu implements AbstractC4765n4 {

    /* renamed from: H */
    public static volatile zzfu f30000H;

    /* renamed from: A */
    public volatile Boolean f30001A;
    @VisibleForTesting

    /* renamed from: B */
    public Boolean f30002B;
    @VisibleForTesting

    /* renamed from: C */
    public Boolean f30003C;

    /* renamed from: E */
    public int f30005E;
    @VisibleForTesting

    /* renamed from: G */
    public final long f30007G;

    /* renamed from: a */
    public final Context f30008a;

    /* renamed from: b */
    public final String f30009b;

    /* renamed from: c */
    public final String f30010c;

    /* renamed from: d */
    public final String f30011d;

    /* renamed from: e */
    public final boolean f30012e;

    /* renamed from: f */
    public final zzw f30013f;

    /* renamed from: g */
    public final zzab f30014g;

    /* renamed from: h */
    public final C4737k3 f30015h;

    /* renamed from: i */
    public final zzeq f30016i;

    /* renamed from: j */
    public final zzfr f30017j;

    /* renamed from: k */
    public final zzjx f30018k;

    /* renamed from: l */
    public final zzkv f30019l;

    /* renamed from: m */
    public final zzeo f30020m;

    /* renamed from: n */
    public final Clock f30021n;

    /* renamed from: o */
    public final zzii f30022o;

    /* renamed from: p */
    public final zzhb f30023p;

    /* renamed from: q */
    public final zza f30024q;

    /* renamed from: r */
    public final zzid f30025r;

    /* renamed from: s */
    public zzem f30026s;

    /* renamed from: t */
    public zzir f30027t;

    /* renamed from: u */
    public zzak f30028u;

    /* renamed from: v */
    public zzen f30029v;

    /* renamed from: w */
    public zzfl f30030w;

    /* renamed from: y */
    public Boolean f30032y;

    /* renamed from: z */
    public long f30033z;

    /* renamed from: x */
    public boolean f30031x = false;

    /* renamed from: F */
    public AtomicInteger f30006F = new AtomicInteger(0);

    /* renamed from: D */
    public volatile boolean f30004D = true;

    public zzfu(zzgy zzgyVar) {
        Bundle bundle;
        Preconditions.m17288a(zzgyVar);
        zzw zzwVar = new zzw(zzgyVar.f30047a);
        this.f30013f = zzwVar;
        C4871z2.f17489a = zzwVar;
        this.f30008a = zzgyVar.f30047a;
        this.f30009b = zzgyVar.f30048b;
        this.f30010c = zzgyVar.f30049c;
        this.f30011d = zzgyVar.f30050d;
        this.f30012e = zzgyVar.f30054h;
        this.f30001A = zzgyVar.f30051e;
        zzae zzaeVar = zzgyVar.f30053g;
        if (!(zzaeVar == null || (bundle = zzaeVar.f29408g) == null)) {
            Object obj = bundle.get("measurementEnabled");
            if (obj instanceof Boolean) {
                this.f30002B = (Boolean) obj;
            }
            Object obj2 = zzaeVar.f29408g.get("measurementDeactivated");
            if (obj2 instanceof Boolean) {
                this.f30003C = (Boolean) obj2;
            }
        }
        zzdh.m9845a(this.f30008a);
        Clock d = DefaultClock.m17089d();
        this.f30021n = d;
        Long l = zzgyVar.f30055i;
        this.f30007G = l != null ? l.longValue() : d.mo17091b();
        this.f30014g = new zzab(this);
        C4737k3 k3Var = new C4737k3(this);
        k3Var.m24908m();
        this.f30015h = k3Var;
        zzeq zzeqVar = new zzeq(this);
        zzeqVar.m24908m();
        this.f30016i = zzeqVar;
        zzkv zzkvVar = new zzkv(this);
        zzkvVar.m24908m();
        this.f30019l = zzkvVar;
        zzeo zzeoVar = new zzeo(this);
        zzeoVar.m24908m();
        this.f30020m = zzeoVar;
        this.f30024q = new zza(this);
        zzii zziiVar = new zzii(this);
        zziiVar.m24875u();
        this.f30022o = zziiVar;
        zzhb zzhbVar = new zzhb(this);
        zzhbVar.m24875u();
        this.f30023p = zzhbVar;
        zzjx zzjxVar = new zzjx(this);
        zzjxVar.m24875u();
        this.f30018k = zzjxVar;
        zzid zzidVar = new zzid(this);
        zzidVar.m24908m();
        this.f30025r = zzidVar;
        zzfr zzfrVar = new zzfr(this);
        zzfrVar.m24908m();
        this.f30017j = zzfrVar;
        zzae zzaeVar2 = zzgyVar.f30053g;
        boolean z = false;
        if (zzaeVar2 != null) {
            z = false;
            if (zzaeVar2.f29403b != 0) {
                z = true;
            }
        }
        if (this.f30008a.getApplicationContext() instanceof Application) {
            zzhb r = m9045r();
            if (r.mo8846B().getApplicationContext() instanceof Application) {
                Application application = (Application) r.mo8846B().getApplicationContext();
                if (r.f30056c == null) {
                    r.f30056c = new C4748l5(r, null);
                }
                if (!z) {
                    application.unregisterActivityLifecycleCallbacks(r.f30056c);
                    application.registerActivityLifecycleCallbacks(r.f30056c);
                    r.mo8789p().m9144y().m9143a("Registered activity lifecycle callback");
                }
            }
        } else {
            mo8789p().m9149t().m9143a("Application context is not an Application");
        }
        this.f30017j.m9093a(new RunnableC4800r3(this, zzgyVar));
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0013, code lost:
        if (r13.f29407f == null) goto L_0x0016;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.measurement.internal.zzfu m9071a(android.content.Context r12, com.google.android.gms.internal.measurement.zzae r13, java.lang.Long r14) {
        /*
            r0 = r13
            r15 = r0
            r0 = r13
            if (r0 == 0) goto L_0x0034
            r0 = r13
            java.lang.String r0 = r0.f29406e
            if (r0 == 0) goto L_0x0016
            r0 = r13
            r15 = r0
            r0 = r13
            java.lang.String r0 = r0.f29407f
            if (r0 != 0) goto L_0x0034
        L_0x0016:
            com.google.android.gms.internal.measurement.zzae r0 = new com.google.android.gms.internal.measurement.zzae
            r1 = r0
            r2 = r13
            long r2 = r2.f29402a
            r3 = r13
            long r3 = r3.f29403b
            r4 = r13
            boolean r4 = r4.f29404c
            r5 = r13
            java.lang.String r5 = r5.f29405d
            r6 = 0
            r7 = 0
            r8 = r13
            android.os.Bundle r8 = r8.f29408g
            r1.<init>(r2, r3, r4, r5, r6, r7, r8)
            r15 = r0
        L_0x0034:
            r0 = r12
            java.lang.Object r0 = com.google.android.gms.common.internal.Preconditions.m17288a(r0)
            r0 = r12
            android.content.Context r0 = r0.getApplicationContext()
            java.lang.Object r0 = com.google.android.gms.common.internal.Preconditions.m17288a(r0)
            com.google.android.gms.measurement.internal.zzfu r0 = com.google.android.gms.measurement.internal.zzfu.f30000H
            if (r0 != 0) goto L_0x0074
            java.lang.Class<com.google.android.gms.measurement.internal.zzfu> r0 = com.google.android.gms.measurement.internal.zzfu.class
            monitor-enter(r0)
            com.google.android.gms.measurement.internal.zzfu r0 = com.google.android.gms.measurement.internal.zzfu.f30000H     // Catch: all -> 0x006e
            if (r0 != 0) goto L_0x0068
            com.google.android.gms.measurement.internal.zzgy r0 = new com.google.android.gms.measurement.internal.zzgy     // Catch: all -> 0x006e
            r13 = r0
            r0 = r13
            r1 = r12
            r2 = r15
            r3 = r14
            r0.<init>(r1, r2, r3)     // Catch: all -> 0x006e
            com.google.android.gms.measurement.internal.zzfu r0 = new com.google.android.gms.measurement.internal.zzfu     // Catch: all -> 0x006e
            r12 = r0
            r0 = r12
            r1 = r13
            r0.<init>(r1)     // Catch: all -> 0x006e
            r0 = r12
            com.google.android.gms.measurement.internal.zzfu.f30000H = r0     // Catch: all -> 0x006e
        L_0x0068:
            java.lang.Class<com.google.android.gms.measurement.internal.zzfu> r0 = com.google.android.gms.measurement.internal.zzfu.class
            monitor-exit(r0)     // Catch: all -> 0x006e
            goto L_0x009b
        L_0x006e:
            r12 = move-exception
            java.lang.Class<com.google.android.gms.measurement.internal.zzfu> r0 = com.google.android.gms.measurement.internal.zzfu.class
            monitor-exit(r0)     // Catch: all -> 0x006e
            r0 = r12
            throw r0
        L_0x0074:
            r0 = r15
            if (r0 == 0) goto L_0x009b
            r0 = r15
            android.os.Bundle r0 = r0.f29408g
            r12 = r0
            r0 = r12
            if (r0 == 0) goto L_0x009b
            r0 = r12
            java.lang.String r1 = "dataCollectionDefaultEnabled"
            boolean r0 = r0.containsKey(r1)
            if (r0 == 0) goto L_0x009b
            com.google.android.gms.measurement.internal.zzfu r0 = com.google.android.gms.measurement.internal.zzfu.f30000H
            r1 = r15
            android.os.Bundle r1 = r1.f29408g
            java.lang.String r2 = "dataCollectionDefaultEnabled"
            boolean r1 = r1.getBoolean(r2)
            r0.m9063a(r1)
        L_0x009b:
            com.google.android.gms.measurement.internal.zzfu r0 = com.google.android.gms.measurement.internal.zzfu.f30000H
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzfu.m9071a(android.content.Context, com.google.android.gms.internal.measurement.zzae, java.lang.Long):com.google.android.gms.measurement.internal.zzfu");
    }

    /* renamed from: a */
    public static void m9069a(C4756m4 m4Var) {
        if (m4Var == null) {
            throw new IllegalStateException("Component not created");
        }
    }

    /* renamed from: b */
    public static void m9061b(AbstractC4747l4 l4Var) {
        if (l4Var == null) {
            throw new IllegalStateException("Component not created");
        } else if (!l4Var.m24910k()) {
            String valueOf = String.valueOf(l4Var.getClass());
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 27);
            sb.append("Component not initialized: ");
            sb.append(valueOf);
            throw new IllegalStateException(sb.toString());
        }
    }

    /* renamed from: b */
    public static void m9060b(AbstractC4827u3 u3Var) {
        if (u3Var == null) {
            throw new IllegalStateException("Component not created");
        } else if (!u3Var.m24877s()) {
            String valueOf = String.valueOf(u3Var.getClass());
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 27);
            sb.append("Component not initialized: ");
            sb.append(valueOf);
            throw new IllegalStateException(sb.toString());
        }
    }

    /* renamed from: A */
    public final boolean m9078A() {
        return this.f30012e;
    }

    @Override // p131c.p161d.p170b.p224d.p260i.p261a.AbstractC4765n4
    /* renamed from: B */
    public final Context mo8846B() {
        return this.f30008a;
    }

    /* renamed from: C */
    public final zzii m9077C() {
        m9060b(this.f30022o);
        return this.f30022o;
    }

    /* renamed from: D */
    public final zzir m9076D() {
        m9060b(this.f30027t);
        return this.f30027t;
    }

    /* renamed from: E */
    public final zzak m9075E() {
        m9061b(this.f30028u);
        return this.f30028u;
    }

    /* renamed from: F */
    public final zzen m9074F() {
        m9060b(this.f30029v);
        return this.f30029v;
    }

    /* renamed from: G */
    public final zza m9073G() {
        zza zzaVar = this.f30024q;
        if (zzaVar != null) {
            return zzaVar;
        }
        throw new IllegalStateException("Component not created");
    }

    /* renamed from: H */
    public final boolean m9072H() {
        return this.f30001A != null && this.f30001A.booleanValue();
    }

    @Override // p131c.p161d.p170b.p224d.p260i.p261a.AbstractC4765n4
    /* renamed from: a */
    public final zzw mo8844a() {
        return this.f30013f;
    }

    /* renamed from: a */
    public final void m9070a(AbstractC4747l4 l4Var) {
        this.f30005E++;
    }

    /* renamed from: a */
    public final void m9068a(AbstractC4827u3 u3Var) {
        this.f30005E++;
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x00cc, code lost:
        if (r7.equals(com.google.android.gms.measurement.internal.zzac.f29791c) == false) goto L_0x00d7;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m9067a(com.google.android.gms.internal.measurement.zzae r7) {
        /*
            Method dump skipped, instructions count: 1026
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzfu.m9067a(com.google.android.gms.internal.measurement.zzae):void");
    }

    /* renamed from: a */
    public final void m9065a(zzgy zzgyVar) {
        zzes zzesVar;
        String str;
        mo8795j().mo9085c();
        zzak zzakVar = new zzak(this);
        zzakVar.m24908m();
        this.f30028u = zzakVar;
        zzen zzenVar = new zzen(this, zzgyVar.f30052f);
        zzenVar.m24875u();
        this.f30029v = zzenVar;
        zzem zzemVar = new zzem(this);
        zzemVar.m24875u();
        this.f30026s = zzemVar;
        zzir zzirVar = new zzir(this);
        zzirVar.m24875u();
        this.f30027t = zzirVar;
        this.f30019l.m24907n();
        this.f30015h.m24907n();
        this.f30030w = new zzfl(this);
        this.f30029v.m24874v();
        mo8789p().m9146w().m9142a("App measurement initialized, version", 33025L);
        mo8789p().m9146w().m9143a("To enable debug logging run: adb shell setprop log.tag.FA VERBOSE");
        String y = zzenVar.m9174y();
        if (TextUtils.isEmpty(this.f30009b)) {
            if (m9044s().m8687c(y)) {
                zzesVar = mo8789p().m9146w();
                str = "Faster debug mode event logging enabled. To disable, run:\n  adb shell setprop debug.firebase.analytics.app .none.";
            } else {
                zzesVar = mo8789p().m9146w();
                String valueOf = String.valueOf(y);
                str = valueOf.length() != 0 ? "To enable faster debug mode event logging run:\n  adb shell setprop debug.firebase.analytics.app ".concat(valueOf) : new String("To enable faster debug mode event logging run:\n  adb shell setprop debug.firebase.analytics.app ");
            }
            zzesVar.m9143a(str);
        }
        mo8789p().m9145x().m9143a("Debug-level message logging enabled");
        if (this.f30005E != this.f30006F.get()) {
            mo8789p().m9152q().m9141a("Not all components initialized", Integer.valueOf(this.f30005E), Integer.valueOf(this.f30006F.get()));
        }
        this.f30031x = true;
    }

    /* renamed from: a */
    public final /* synthetic */ void m9064a(String str, int i, Throwable th, byte[] bArr, Map map) {
        List<ResolveInfo> queryIntentActivities;
        boolean z = true;
        if (!((i == 200 || i == 204 || i == 304) && th == null)) {
            mo8789p().m9149t().m9141a("Network Request for Deferred Deep Link failed. response, exception", Integer.valueOf(i), th);
            return;
        }
        m9050l().f17230x.m9132a(true);
        if (bArr.length == 0) {
            mo8789p().m9145x().m9143a("Deferred Deep Link response empty.");
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(new String(bArr));
            String optString = jSONObject.optString("deeplink", "");
            String optString2 = jSONObject.optString("gclid", "");
            double optDouble = jSONObject.optDouble(AvidJSONUtil.KEY_TIMESTAMP, 0.0d);
            if (TextUtils.isEmpty(optString)) {
                mo8789p().m9145x().m9143a("Deferred Deep Link is empty.");
                return;
            }
            zzkv s = m9044s();
            if (TextUtils.isEmpty(optString) || (queryIntentActivities = s.mo8846B().getPackageManager().queryIntentActivities(new Intent("android.intent.action.VIEW", Uri.parse(optString)), 0)) == null || queryIntentActivities.isEmpty()) {
                z = false;
            }
            if (!z) {
                mo8789p().m9149t().m9141a("Deferred Deep Link validation failed. gclid, deep link", optString2, optString);
                return;
            }
            Bundle bundle = new Bundle();
            bundle.putString("gclid", optString2);
            bundle.putString("_cis", "ddp");
            this.f30023p.m8974a("auto", "_cmp", bundle);
            zzkv s2 = m9044s();
            if (!TextUtils.isEmpty(optString) && s2.m8715a(optString, optDouble)) {
                s2.mo8846B().sendBroadcast(new Intent("android.google.analytics.action.DEEPLINK_ACTION"));
            }
        } catch (JSONException e) {
            mo8789p().m9152q().m9142a("Failed to parse the Deferred Deep Link response. exception", e);
        }
    }

    /* renamed from: a */
    public final void m9063a(boolean z) {
        this.f30001A = Boolean.valueOf(z);
    }

    /* renamed from: b */
    public final zzab m9062b() {
        return this.f30014g;
    }

    /* renamed from: b */
    public final void m9059b(boolean z) {
        mo8795j().mo9085c();
        this.f30004D = z;
    }

    /* renamed from: c */
    public final boolean m9058c() {
        return m9057d() == 0;
    }

    /* renamed from: d */
    public final int m9057d() {
        mo8795j().mo9085c();
        if (this.f30014g.m9333l()) {
            return 1;
        }
        Boolean bool = this.f30003C;
        if (bool != null && bool.booleanValue()) {
            return 2;
        }
        if (zzml.m9520a() && this.f30014g.m9354a(zzas.f29831H0) && !m9056e()) {
            return 8;
        }
        Boolean v = m9050l().m24914v();
        if (v != null) {
            return v.booleanValue() ? 0 : 3;
        }
        Boolean f = this.f30014g.m9341f("firebase_analytics_collection_enabled");
        if (f != null) {
            return f.booleanValue() ? 0 : 4;
        }
        Boolean bool2 = this.f30002B;
        if (bool2 != null) {
            return bool2.booleanValue() ? 0 : 5;
        }
        if (GoogleServices.m17633b()) {
            return 6;
        }
        return (!this.f30014g.m9354a(zzas.f29849S) || this.f30001A == null || this.f30001A.booleanValue()) ? 0 : 7;
    }

    /* renamed from: e */
    public final boolean m9056e() {
        mo8795j().mo9085c();
        return this.f30004D;
    }

    /* renamed from: f */
    public final void m9055f() {
        throw new IllegalStateException("Unexpected call on client side");
    }

    /* renamed from: g */
    public final void m9054g() {
        this.f30006F.incrementAndGet();
    }

    /* renamed from: h */
    public final boolean m9053h() {
        if (this.f30031x) {
            mo8795j().mo9085c();
            Boolean bool = this.f30032y;
            if (bool == null || this.f30033z == 0 || (bool != null && !bool.booleanValue() && Math.abs(this.f30021n.mo17092a() - this.f30033z) > 1000)) {
                this.f30033z = this.f30021n.mo17092a();
                Boolean valueOf = Boolean.valueOf(m9044s().m8692b("android.permission.INTERNET") && m9044s().m8692b("android.permission.ACCESS_NETWORK_STATE") && (Wrappers.m17026b(this.f30008a).m17036a() || this.f30014g.m9326t() || (zzfm.m9116a(this.f30008a) && zzkv.m8739a(this.f30008a, false))));
                this.f30032y = valueOf;
                if (valueOf.booleanValue()) {
                    boolean z = true;
                    if (!m9044s().m8707a(m9074F().m9183A(), m9074F().m9182C(), m9074F().m9181D())) {
                        z = !TextUtils.isEmpty(m9074F().m9182C());
                    }
                    this.f30032y = Boolean.valueOf(z);
                }
            }
            return this.f30032y.booleanValue();
        }
        throw new IllegalStateException("AppMeasurement is not initialized");
    }

    /* renamed from: i */
    public final void m9052i() {
        mo8795j().mo9085c();
        m9061b(m9051k());
        String y = m9074F().m9174y();
        Pair<String, Boolean> a = m9050l().m24925a(y);
        if (!this.f30014g.m9332m().booleanValue() || ((Boolean) a.second).booleanValue() || TextUtils.isEmpty((CharSequence) a.first)) {
            mo8789p().m9145x().m9143a("ADID unavailable to retrieve Deferred Deep Link. Skipping");
        } else if (!m9051k().m8946q()) {
            mo8789p().m9149t().m9143a("Network is not available for Deferred Deep Link request. Skipping");
        } else {
            zzkv s = m9044s();
            m9074F();
            URL a2 = s.m8741a(33025L, y, (String) a.first, m9050l().f17231y.m9131a() - 1);
            zzid k = m9051k();
            AbstractC4784p5 s3Var = new AbstractC4784p5(this) { // from class: c.d.b.d.i.a.s3

                /* renamed from: a */
                public final zzfu f17378a;

                {
                    this.f17378a = this;
                }

                @Override // p131c.p161d.p170b.p224d.p260i.p261a.AbstractC4784p5
                /* renamed from: a */
                public final void mo24879a(String str, int i, Throwable th, byte[] bArr, Map map) {
                    this.f17378a.m9064a(str, i, th, bArr, map);
                }
            };
            k.mo9085c();
            k.m24909l();
            Preconditions.m17288a(a2);
            Preconditions.m17288a(s3Var);
            k.mo8795j().m9083c(new RunnableC4802r5(k, y, a2, null, null, s3Var));
        }
    }

    @Override // p131c.p161d.p170b.p224d.p260i.p261a.AbstractC4765n4
    /* renamed from: j */
    public final zzfr mo8795j() {
        m9061b(this.f30017j);
        return this.f30017j;
    }

    /* renamed from: k */
    public final zzid m9051k() {
        m9061b(this.f30025r);
        return this.f30025r;
    }

    /* renamed from: l */
    public final C4737k3 m9050l() {
        m9069a((C4756m4) this.f30015h);
        return this.f30015h;
    }

    /* renamed from: m */
    public final zzeq m9049m() {
        zzeq zzeqVar = this.f30016i;
        if (zzeqVar == null || !zzeqVar.m24910k()) {
            return null;
        }
        return this.f30016i;
    }

    /* renamed from: n */
    public final zzjx m9048n() {
        m9060b(this.f30018k);
        return this.f30018k;
    }

    /* renamed from: o */
    public final zzfl m9047o() {
        return this.f30030w;
    }

    @Override // p131c.p161d.p170b.p224d.p260i.p261a.AbstractC4765n4
    /* renamed from: p */
    public final zzeq mo8789p() {
        m9061b(this.f30016i);
        return this.f30016i;
    }

    /* renamed from: q */
    public final zzfr m9046q() {
        return this.f30017j;
    }

    /* renamed from: r */
    public final zzhb m9045r() {
        m9060b(this.f30023p);
        return this.f30023p;
    }

    /* renamed from: s */
    public final zzkv m9044s() {
        m9069a((C4756m4) this.f30019l);
        return this.f30019l;
    }

    /* renamed from: t */
    public final zzeo m9043t() {
        m9069a((C4756m4) this.f30020m);
        return this.f30020m;
    }

    /* renamed from: u */
    public final zzem m9042u() {
        m9060b(this.f30026s);
        return this.f30026s;
    }

    /* renamed from: v */
    public final boolean m9041v() {
        return TextUtils.isEmpty(this.f30009b);
    }

    /* renamed from: w */
    public final String m9040w() {
        return this.f30009b;
    }

    /* renamed from: x */
    public final String m9039x() {
        return this.f30010c;
    }

    /* renamed from: y */
    public final String m9038y() {
        return this.f30011d;
    }

    @Override // p131c.p161d.p170b.p224d.p260i.p261a.AbstractC4765n4
    /* renamed from: z */
    public final Clock mo8779z() {
        return this.f30021n;
    }
}
