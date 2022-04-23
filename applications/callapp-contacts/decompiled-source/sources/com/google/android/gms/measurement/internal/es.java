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
import com.google.android.gms.common.d.c;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.util.f;
import com.google.android.gms.common.util.i;
import com.google.android.gms.internal.measurement.ec;
import com.google.android.gms.internal.measurement.jy;
import com.google.android.gms.internal.measurement.ke;
import com.google.android.gms.internal.measurement.kh;
import com.google.android.gms.internal.measurement.zzz;
import java.net.URL;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import net.pubnative.lite.sdk.analytics.Reporting;
import org.checkerframework.dataflow.qual.Pure;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/es.class */
public final class es implements fo {
    private static volatile es r;
    private di A;
    private ik B;
    private m C;
    private dg D;
    private Boolean F;
    private long G;
    private int H;

    /* renamed from: a  reason: collision with root package name */
    final Context f29583a;

    /* renamed from: b  reason: collision with root package name */
    final String f29584b;

    /* renamed from: c  reason: collision with root package name */
    final String f29585c;

    /* renamed from: d  reason: collision with root package name */
    final String f29586d;
    final boolean e;
    public final kk f;
    final e g;
    final Cdo h;
    final ep i;
    public final f j;
    final String k;
    eh l;
    volatile Boolean m;
    protected Boolean n;
    protected Boolean o;
    final long q;
    private final ee s;
    private final iz t;
    private final ju u;
    private final dj v;
    private final hk w;
    private final gv x;
    private final ca y;
    private final gz z;
    private boolean E = false;
    private final AtomicInteger I = new AtomicInteger(0);
    volatile boolean p = true;

    es(fv fvVar) {
        Bundle bundle;
        boolean z = false;
        o.a(fvVar);
        kk kkVar = new kk(fvVar.f29658a);
        this.f = kkVar;
        cz.f29476a = kkVar;
        Context context = fvVar.f29658a;
        this.f29583a = context;
        this.f29584b = fvVar.f29659b;
        this.f29585c = fvVar.f29660c;
        this.f29586d = fvVar.f29661d;
        this.e = fvVar.h;
        this.m = fvVar.e;
        this.k = fvVar.j;
        zzz zzzVar = fvVar.g;
        if (!(zzzVar == null || (bundle = zzzVar.zzg) == null)) {
            Object obj = bundle.get("measurementEnabled");
            if (obj instanceof Boolean) {
                this.n = (Boolean) obj;
            }
            Object obj2 = zzzVar.zzg.get("measurementDeactivated");
            if (obj2 instanceof Boolean) {
                this.o = (Boolean) obj2;
            }
        }
        ec.a(context);
        f d2 = i.d();
        this.j = d2;
        Long l = fvVar.i;
        this.q = l != null ? l.longValue() : d2.a();
        this.g = new e(this);
        ee eeVar = new ee(this);
        eeVar.h();
        this.s = eeVar;
        Cdo doVar = new Cdo(this);
        doVar.h();
        this.h = doVar;
        ju juVar = new ju(this);
        juVar.h();
        this.u = juVar;
        dj djVar = new dj(this);
        djVar.h();
        this.v = djVar;
        this.y = new ca(this);
        hk hkVar = new hk(this);
        hkVar.l();
        this.w = hkVar;
        gv gvVar = new gv(this);
        gvVar.l();
        this.x = gvVar;
        iz izVar = new iz(this);
        izVar.l();
        this.t = izVar;
        gz gzVar = new gz(this);
        gzVar.h();
        this.z = gzVar;
        ep epVar = new ep(this);
        epVar.h();
        this.i = epVar;
        zzz zzzVar2 = fvVar.g;
        z = (zzzVar2 == null || zzzVar2.zzb == 0) ? true : z;
        if (context.getApplicationContext() instanceof Application) {
            gv f = f();
            if (f.t.f29583a.getApplicationContext() instanceof Application) {
                Application application = (Application) f.t.f29583a.getApplicationContext();
                if (f.f29728a == null) {
                    f.f29728a = new gu(f, null);
                }
                if (z) {
                    application.unregisterActivityLifecycleCallbacks(f.f29728a);
                    application.registerActivityLifecycleCallbacks(f.f29728a);
                    f.t.c().k.a("Registered activity lifecycle callback");
                }
            }
        } else {
            c().f.a("Application context is not an Application");
        }
        epVar.a(new er(this, fvVar));
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0013, code lost:
        if (r14.zzf == null) goto L_0x0016;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.measurement.internal.es a(android.content.Context r13, com.google.android.gms.internal.measurement.zzz r14, java.lang.Long r15) {
        /*
            r0 = r14
            r16 = r0
            r0 = r14
            if (r0 == 0) goto L_0x0035
            r0 = r14
            java.lang.String r0 = r0.zze
            if (r0 == 0) goto L_0x0016
            r0 = r14
            r16 = r0
            r0 = r14
            java.lang.String r0 = r0.zzf
            if (r0 != 0) goto L_0x0035
        L_0x0016:
            com.google.android.gms.internal.measurement.zzz r0 = new com.google.android.gms.internal.measurement.zzz
            r1 = r0
            r2 = r14
            long r2 = r2.zza
            r3 = r14
            long r3 = r3.zzb
            r4 = r14
            boolean r4 = r4.zzc
            r5 = r14
            java.lang.String r5 = r5.zzd
            r6 = 0
            r7 = 0
            r8 = r14
            android.os.Bundle r8 = r8.zzg
            r9 = 0
            r1.<init>(r2, r3, r4, r5, r6, r7, r8, r9)
            r16 = r0
        L_0x0035:
            r0 = r13
            java.lang.Object r0 = com.google.android.gms.common.internal.o.a(r0)
            r0 = r13
            android.content.Context r0 = r0.getApplicationContext()
            java.lang.Object r0 = com.google.android.gms.common.internal.o.a(r0)
            com.google.android.gms.measurement.internal.es r0 = com.google.android.gms.measurement.internal.es.r
            if (r0 != 0) goto L_0x0075
            java.lang.Class<com.google.android.gms.measurement.internal.es> r0 = com.google.android.gms.measurement.internal.es.class
            monitor-enter(r0)
            com.google.android.gms.measurement.internal.es r0 = com.google.android.gms.measurement.internal.es.r     // Catch: all -> 0x006f
            if (r0 != 0) goto L_0x0069
            com.google.android.gms.measurement.internal.fv r0 = new com.google.android.gms.measurement.internal.fv     // Catch: all -> 0x006f
            r14 = r0
            r0 = r14
            r1 = r13
            r2 = r16
            r3 = r15
            r0.<init>(r1, r2, r3)     // Catch: all -> 0x006f
            com.google.android.gms.measurement.internal.es r0 = new com.google.android.gms.measurement.internal.es     // Catch: all -> 0x006f
            r13 = r0
            r0 = r13
            r1 = r14
            r0.<init>(r1)     // Catch: all -> 0x006f
            r0 = r13
            com.google.android.gms.measurement.internal.es.r = r0     // Catch: all -> 0x006f
        L_0x0069:
            java.lang.Class<com.google.android.gms.measurement.internal.es> r0 = com.google.android.gms.measurement.internal.es.class
            monitor-exit(r0)     // Catch: all -> 0x006f
            goto L_0x00a6
        L_0x006f:
            r13 = move-exception
            java.lang.Class<com.google.android.gms.measurement.internal.es> r0 = com.google.android.gms.measurement.internal.es.class
            monitor-exit(r0)     // Catch: all -> 0x006f
            r0 = r13
            throw r0
        L_0x0075:
            r0 = r16
            if (r0 == 0) goto L_0x00a6
            r0 = r16
            android.os.Bundle r0 = r0.zzg
            r13 = r0
            r0 = r13
            if (r0 == 0) goto L_0x00a6
            r0 = r13
            java.lang.String r1 = "dataCollectionDefaultEnabled"
            boolean r0 = r0.containsKey(r1)
            if (r0 == 0) goto L_0x00a6
            com.google.android.gms.measurement.internal.es r0 = com.google.android.gms.measurement.internal.es.r
            java.lang.Object r0 = com.google.android.gms.common.internal.o.a(r0)
            com.google.android.gms.measurement.internal.es r0 = com.google.android.gms.measurement.internal.es.r
            r1 = r16
            android.os.Bundle r1 = r1.zzg
            java.lang.String r2 = "dataCollectionDefaultEnabled"
            boolean r1 = r1.getBoolean(r2)
            java.lang.Boolean r1 = java.lang.Boolean.valueOf(r1)
            r0.m = r1
        L_0x00a6:
            com.google.android.gms.measurement.internal.es r0 = com.google.android.gms.measurement.internal.es.r
            java.lang.Object r0 = com.google.android.gms.common.internal.o.a(r0)
            com.google.android.gms.measurement.internal.es r0 = com.google.android.gms.measurement.internal.es.r
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.es.a(android.content.Context, com.google.android.gms.internal.measurement.zzz, java.lang.Long):com.google.android.gms.measurement.internal.es");
    }

    private static final void a(ec ecVar) {
        if (ecVar == null) {
            throw new IllegalStateException("Component not created");
        } else if (!ecVar.j()) {
            String valueOf = String.valueOf(ecVar.getClass());
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 27);
            sb.append("Component not initialized: ");
            sb.append(valueOf);
            throw new IllegalStateException(sb.toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(es esVar, fv fvVar) {
        esVar.d().S_();
        e eVar = esVar.g;
        m mVar = new m(esVar);
        mVar.h();
        esVar.C = mVar;
        dg dgVar = new dg(esVar, fvVar.f);
        dgVar.l();
        esVar.D = dgVar;
        di diVar = new di(esVar);
        diVar.l();
        esVar.A = diVar;
        ik ikVar = new ik(esVar);
        ikVar.l();
        esVar.B = ikVar;
        esVar.u.i();
        esVar.s.i();
        esVar.l = new eh(esVar);
        esVar.D.m();
        esVar.c().i.a("App measurement initialized, version", 39065L);
        esVar.c().i.a("To enable debug logging run: adb shell setprop log.tag.FA VERBOSE");
        String ad_ = dgVar.ad_();
        if (TextUtils.isEmpty(esVar.f29584b)) {
            if (esVar.g().f(ad_)) {
                esVar.c().i.a("Faster debug mode event logging enabled. To disable, run:\n  adb shell setprop debug.firebase.analytics.app .none.");
            } else {
                dm dmVar = esVar.c().i;
                String valueOf = String.valueOf(ad_);
                dmVar.a(valueOf.length() != 0 ? "To enable faster debug mode event logging run:\n  adb shell setprop debug.firebase.analytics.app ".concat(valueOf) : new String("To enable faster debug mode event logging run:\n  adb shell setprop debug.firebase.analytics.app "));
            }
        }
        esVar.c().j.a("Debug-level message logging enabled");
        if (esVar.H != esVar.I.get()) {
            esVar.c().f29506c.a("Not all components initialized", Integer.valueOf(esVar.H), Integer.valueOf(esVar.I.get()));
        }
        esVar.E = true;
    }

    private static final void a(fm fmVar) {
        if (fmVar == null) {
            throw new IllegalStateException("Component not created");
        }
    }

    private static final void a(fn fnVar) {
        if (fnVar == null) {
            throw new IllegalStateException("Component not created");
        } else if (!fnVar.f()) {
            String valueOf = String.valueOf(fnVar.getClass());
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 27);
            sb.append("Component not initialized: ");
            sb.append(valueOf);
            throw new IllegalStateException(sb.toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final void y() {
        throw new IllegalStateException("Unexpected call on client side");
    }

    @Pure
    private gz z() {
        a((fn) this.z);
        return this.z;
    }

    @Override // com.google.android.gms.measurement.internal.fo
    @Pure
    public final kk W_() {
        return this.f;
    }

    @Override // com.google.android.gms.measurement.internal.fo
    @Pure
    public final Context X_() {
        return this.f29583a;
    }

    @Override // com.google.android.gms.measurement.internal.fo
    @Pure
    public final f Y_() {
        return this.j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void a(int i, Throwable th, byte[] bArr) {
        List<ResolveInfo> queryIntentActivities;
        int i2 = i;
        if (i != 200) {
            i2 = i;
            if (i != 204) {
                i2 = i;
                if (i == 304) {
                    i2 = 304;
                }
                c().f.a("Network Request for Deferred Deep Link failed. response, exception", Integer.valueOf(i2), th);
            }
        }
        if (th == null) {
            b().n.a(true);
            if (bArr == null || bArr.length == 0) {
                c().j.a("Deferred Deep Link response empty.");
                return;
            }
            try {
                JSONObject jSONObject = new JSONObject(new String(bArr));
                String optString = jSONObject.optString("deeplink", "");
                String optString2 = jSONObject.optString("gclid", "");
                double optDouble = jSONObject.optDouble(Reporting.Key.TIMESTAMP, 0.0d);
                if (TextUtils.isEmpty(optString)) {
                    c().j.a("Deferred Deep Link is empty.");
                    return;
                }
                ju g = g();
                if (!TextUtils.isEmpty(optString) && (queryIntentActivities = g.t.f29583a.getPackageManager().queryIntentActivities(new Intent("android.intent.action.VIEW", Uri.parse(optString)), 0)) != null && !queryIntentActivities.isEmpty()) {
                    Bundle bundle = new Bundle();
                    bundle.putString("gclid", optString2);
                    bundle.putString("_cis", "ddp");
                    this.x.a("auto", "_cmp", bundle);
                    ju g2 = g();
                    if (!TextUtils.isEmpty(optString)) {
                        try {
                            SharedPreferences.Editor edit = g2.t.f29583a.getSharedPreferences("google.analytics.deferred.deeplink.prefs", 0).edit();
                            edit.putString("deeplink", optString);
                            edit.putLong(Reporting.Key.TIMESTAMP, Double.doubleToRawLongBits(optDouble));
                            if (edit.commit()) {
                                g2.t.f29583a.sendBroadcast(new Intent("android.google.analytics.action.DEEPLINK_ACTION"));
                                return;
                            }
                            return;
                        } catch (Exception e) {
                            g2.t.c().f29506c.a("Failed to persist Deferred Deep Link. exception", e);
                            return;
                        }
                    } else {
                        return;
                    }
                }
                c().f.a("Deferred Deep Link validation failed. gclid, deep link", optString2, optString);
                return;
            } catch (JSONException e2) {
                c().f29506c.a("Failed to parse the Deferred Deep Link response. exception", e2);
                return;
            }
        }
        c().f.a("Network Request for Deferred Deep Link failed. response, exception", Integer.valueOf(i2), th);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(zzz zzzVar) {
        f fVar;
        d().S_();
        jy.b();
        if (this.g.d(null, dc.au)) {
            f e = b().e();
            ee b2 = b();
            b2.S_();
            int i = 100;
            int i2 = b2.ah_().getInt("consent_source", 100);
            if (this.g.d(null, dc.av)) {
                e eVar = this.g;
                jy.b();
                Boolean c2 = !eVar.d(null, dc.av) ? null : eVar.c("google_analytics_default_allow_ad_storage");
                e eVar2 = this.g;
                jy.b();
                Boolean c3 = !eVar2.d(null, dc.av) ? null : eVar2.c("google_analytics_default_allow_analytics_storage");
                if (!(c2 == null && c3 == null) && b().a(-10)) {
                    fVar = new f(c2, c3);
                    i = -10;
                } else {
                    if (TextUtils.isEmpty(o().e()) || !(i2 == 0 || i2 == 30 || i2 == 10 || i2 == 30 || i2 == 30 || i2 == 40)) {
                        kh.b();
                        if ((!this.g.d(null, dc.aF) || TextUtils.isEmpty(o().e())) && zzzVar != null && zzzVar.zzg != null && b().a(30)) {
                            fVar = f.b(zzzVar.zzg);
                            if (!fVar.equals(f.f29611a)) {
                                i = 30;
                            }
                        }
                    } else {
                        f().a(f.f29611a, -10, this.q);
                    }
                    fVar = null;
                }
                fVar = e;
                if (fVar != null) {
                    f().a(fVar, i, this.q);
                }
                f().a(fVar);
            } else {
                fVar = e;
                if (zzzVar != null) {
                    fVar = e;
                    if (zzzVar.zzg != null) {
                        fVar = e;
                        if (b().a(30)) {
                            fVar = f.b(zzzVar.zzg);
                            fVar = e;
                            if (!fVar.equals(f.f29611a)) {
                                f().a(fVar, 30, this.q);
                            }
                        }
                    }
                }
                f().a(fVar);
            }
        }
        if (b().f29554d.a() == 0) {
            c().k.a("Persisting first open", Long.valueOf(this.q));
            b().f29554d.a(this.q);
        }
        kc kcVar = f().f29729b;
        if (kcVar.b() && kcVar.a()) {
            kcVar.f29931a.b().q.a(null);
        }
        if (w()) {
            if (!TextUtils.isEmpty(o().e()) || !TextUtils.isEmpty(o().f())) {
                g();
                String e2 = o().e();
                ee b3 = b();
                b3.S_();
                String string = b3.ah_().getString("gmp_app_id", null);
                String f = o().f();
                ee b4 = b();
                b4.S_();
                if (ju.a(e2, string, f, b4.ah_().getString("admob_app_id", null))) {
                    c().i.a("Rechecking which service to use due to a GMP App Id change");
                    ee b5 = b();
                    b5.S_();
                    Boolean ai_ = b5.ai_();
                    SharedPreferences.Editor edit = b5.ah_().edit();
                    edit.clear();
                    edit.apply();
                    if (ai_ != null) {
                        b5.a(ai_);
                    }
                    i().ae_();
                    this.B.p();
                    this.B.n();
                    b().f29554d.a(this.q);
                    b().f.a(null);
                }
                ee b6 = b();
                String e3 = o().e();
                b6.S_();
                SharedPreferences.Editor edit2 = b6.ah_().edit();
                edit2.putString("gmp_app_id", e3);
                edit2.apply();
                ee b7 = b();
                String f2 = o().f();
                b7.S_();
                SharedPreferences.Editor edit3 = b7.ah_().edit();
                edit3.putString("admob_app_id", f2);
                edit3.apply();
            }
            jy.b();
            if (this.g.d(null, dc.au) && !b().e().c()) {
                b().f.a(null);
            }
            f().a(b().f.a());
            ke.b();
            if (this.g.d(null, dc.am)) {
                try {
                    g().t.f29583a.getClassLoader().loadClass("com.google.firebase.remoteconfig.FirebaseRemoteConfig");
                } catch (ClassNotFoundException e4) {
                    if (!TextUtils.isEmpty(b().p.a())) {
                        c().f.a("Remote config removed with active feature rollouts");
                        b().p.a(null);
                    }
                }
            }
            if (!TextUtils.isEmpty(o().e()) || !TextUtils.isEmpty(o().f())) {
                boolean r2 = r();
                SharedPreferences sharedPreferences = b().f29552b;
                if (!(sharedPreferences == null ? false : sharedPreferences.contains("deferred_analytics_collection")) && !this.g.R_()) {
                    b().a(!r2);
                }
                if (r2) {
                    f().q();
                }
                e().f29876b.a();
                m().a(new AtomicReference<>());
                m().a(b().s.a());
            }
        } else if (r()) {
            if (!g().d("android.permission.INTERNET")) {
                c().f29506c.a("App is missing INTERNET permission");
            }
            if (!g().d("android.permission.ACCESS_NETWORK_STATE")) {
                c().f29506c.a("App is missing ACCESS_NETWORK_STATE permission");
            }
            if (!c.a(this.f29583a).a() && !this.g.g()) {
                if (!ju.b(this.f29583a)) {
                    c().f29506c.a("AppMeasurementReceiver not registered/enabled");
                }
                if (!ju.a(this.f29583a)) {
                    c().f29506c.a("AppMeasurementService not registered/enabled");
                }
            }
            c().f29506c.a("Uploading is not possible. App measurement disabled");
        }
        b().j.a(true);
    }

    @Pure
    public final ee b() {
        a((fm) this.s);
        return this.s;
    }

    @Override // com.google.android.gms.measurement.internal.fo
    @Pure
    public final Cdo c() {
        a((fn) this.h);
        return this.h;
    }

    @Override // com.google.android.gms.measurement.internal.fo
    @Pure
    public final ep d() {
        a((fn) this.i);
        return this.i;
    }

    @Pure
    public final iz e() {
        a((ec) this.t);
        return this.t;
    }

    @Pure
    public final gv f() {
        a((ec) this.x);
        return this.x;
    }

    @Pure
    public final ju g() {
        a((fm) this.u);
        return this.u;
    }

    @Pure
    public final dj h() {
        a((fm) this.v);
        return this.v;
    }

    @Pure
    public final di i() {
        a((ec) this.A);
        return this.A;
    }

    @Pure
    public final hk l() {
        a((ec) this.w);
        return this.w;
    }

    @Pure
    public final ik m() {
        a((ec) this.B);
        return this.B;
    }

    @Pure
    public final m n() {
        a((fn) this.C);
        return this.C;
    }

    @Pure
    public final dg o() {
        a((ec) this.D);
        return this.D;
    }

    @Pure
    public final ca p() {
        ca caVar = this.y;
        if (caVar != null) {
            return caVar;
        }
        throw new IllegalStateException("Component not created");
    }

    public final boolean q() {
        return this.m != null && this.m.booleanValue();
    }

    public final boolean r() {
        return s() == 0;
    }

    public final int s() {
        d().S_();
        if (this.g.R_()) {
            return 1;
        }
        Boolean bool = this.o;
        if (bool != null && bool.booleanValue()) {
            return 2;
        }
        jy.b();
        if (this.g.d(null, dc.au)) {
            d().S_();
            if (!this.p) {
                return 8;
            }
        }
        Boolean ai_ = b().ai_();
        if (ai_ != null) {
            return ai_.booleanValue() ? 0 : 3;
        }
        Boolean c2 = this.g.c("firebase_analytics_collection_enabled");
        if (c2 != null) {
            return c2.booleanValue() ? 0 : 4;
        }
        Boolean bool2 = this.n;
        return bool2 != null ? bool2.booleanValue() ? 0 : 5 : (!this.g.d(null, dc.S) || this.m == null || this.m.booleanValue()) ? 0 : 7;
    }

    public final boolean t() {
        d().S_();
        return this.p;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void u() {
        this.H++;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void v() {
        this.I.incrementAndGet();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean w() {
        if (this.E) {
            d().S_();
            Boolean bool = this.F;
            if (bool == null || this.G == 0 || (!bool.booleanValue() && Math.abs(this.j.b() - this.G) > 1000)) {
                this.G = this.j.b();
                Boolean valueOf = Boolean.valueOf(g().d("android.permission.INTERNET") && g().d("android.permission.ACCESS_NETWORK_STATE") && (c.a(this.f29583a).a() || this.g.g() || (ju.b(this.f29583a) && ju.a(this.f29583a))));
                this.F = valueOf;
                if (valueOf.booleanValue()) {
                    boolean z = true;
                    if (!g().a(o().e(), o().f(), o().g())) {
                        z = !TextUtils.isEmpty(o().f());
                    }
                    this.F = Boolean.valueOf(z);
                }
            }
            return this.F.booleanValue();
        }
        throw new IllegalStateException("AppMeasurement is not initialized");
    }

    public final void x() {
        d().S_();
        a((fn) z());
        String ad_ = o().ad_();
        Pair<String, Boolean> a2 = b().a(ad_);
        if (!this.g.e() || ((Boolean) a2.second).booleanValue() || TextUtils.isEmpty((CharSequence) a2.first)) {
            c().j.a("ADID unavailable to retrieve Deferred Deep Link. Skipping");
            return;
        }
        gz z = z();
        z.g();
        ConnectivityManager connectivityManager = (ConnectivityManager) z.t.f29583a.getSystemService("connectivity");
        NetworkInfo networkInfo = null;
        if (connectivityManager != null) {
            try {
                networkInfo = connectivityManager.getActiveNetworkInfo();
            } catch (SecurityException e) {
                networkInfo = null;
            }
        }
        if (networkInfo == null || !networkInfo.isConnected()) {
            c().f.a("Network is not available for Deferred Deep Link request. Skipping");
            return;
        }
        ju g = g();
        o();
        URL a3 = g.a(ad_, (String) a2.first, b().o.a() - 1);
        if (a3 != null) {
            gz z2 = z();
            eq eqVar = new eq(this);
            z2.S_();
            z2.g();
            o.a(a3);
            o.a(eqVar);
            z2.t.d().c(new gy(z2, ad_, a3, null, null, eqVar, null));
        }
    }
}
