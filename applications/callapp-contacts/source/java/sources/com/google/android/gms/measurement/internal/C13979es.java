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
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.common.p352d.C11946c;
import com.google.android.gms.common.util.AbstractC12102f;
import com.google.android.gms.common.util.C12105i;
import com.google.android.gms.internal.measurement.AbstractC13463ec;
import com.google.android.gms.internal.measurement.C13620jy;
import com.google.android.gms.internal.measurement.C13627ke;
import com.google.android.gms.internal.measurement.C13630kh;
import com.google.android.gms.internal.measurement.zzz;
import java.net.URL;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import net.pubnative.lite.sdk.analytics.Reporting;
import org.checkerframework.dataflow.qual.Pure;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.google.android.gms.measurement.internal.es */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/es.class */
public final class C13979es implements AbstractC14002fo {

    /* renamed from: r */
    private static volatile C13979es f51513r;

    /* renamed from: A */
    private C13941di f51514A;

    /* renamed from: B */
    private C14079ik f51515B;

    /* renamed from: C */
    private C14135m f51516C;

    /* renamed from: D */
    private C13939dg f51517D;

    /* renamed from: F */
    private Boolean f51519F;

    /* renamed from: G */
    private long f51520G;

    /* renamed from: H */
    private int f51521H;

    /* renamed from: a */
    final Context f51523a;

    /* renamed from: b */
    final String f51524b;

    /* renamed from: c */
    final String f51525c;

    /* renamed from: d */
    final String f51526d;

    /* renamed from: e */
    final boolean f51527e;

    /* renamed from: f */
    public final C14133kk f51528f;

    /* renamed from: g */
    final C13959e f51529g;

    /* renamed from: h */
    final C13947do f51530h;

    /* renamed from: i */
    final C13976ep f51531i;

    /* renamed from: j */
    public final AbstractC12102f f51532j;

    /* renamed from: k */
    final String f51533k;

    /* renamed from: l */
    C13967eh f51534l;

    /* renamed from: m */
    volatile Boolean f51535m;

    /* renamed from: n */
    protected Boolean f51536n;

    /* renamed from: o */
    protected Boolean f51537o;

    /* renamed from: q */
    final long f51539q;

    /* renamed from: s */
    private final C13964ee f51540s;

    /* renamed from: t */
    private final C14094iz f51541t;

    /* renamed from: u */
    private final C14116ju f51542u;

    /* renamed from: v */
    private final C13942dj f51543v;

    /* renamed from: w */
    private final C14052hk f51544w;

    /* renamed from: x */
    private final C14036gv f51545x;

    /* renamed from: y */
    private final C13906ca f51546y;

    /* renamed from: z */
    private final C14040gz f51547z;

    /* renamed from: E */
    private boolean f51518E = false;

    /* renamed from: I */
    private final AtomicInteger f51522I = new AtomicInteger(0);

    /* renamed from: p */
    volatile boolean f51538p = true;

    /* JADX WARN: Type inference failed for: r0v95, types: [long] */
    /* JADX WARN: Type inference failed for: r0v97, types: [long] */
    C13979es(C14009fv c14009fv) {
        Bundle bundle;
        boolean z = false;
        C12045o.m19162a(c14009fv);
        C14133kk c14133kk = new C14133kk(c14009fv.f51649a);
        this.f51528f = c14133kk;
        C13931cz.f51269a = c14133kk;
        Context context = c14009fv.f51649a;
        this.f51523a = context;
        this.f51524b = c14009fv.f51650b;
        this.f51525c = c14009fv.f51651c;
        this.f51526d = c14009fv.f51652d;
        this.f51527e = c14009fv.f51656h;
        this.f51535m = c14009fv.f51653e;
        this.f51533k = c14009fv.f51658j;
        zzz zzzVar = c14009fv.f51655g;
        if (zzzVar != null && (bundle = zzzVar.zzg) != null) {
            Object obj = bundle.get("measurementEnabled");
            if (obj instanceof Boolean) {
                this.f51536n = (Boolean) obj;
            }
            Object obj2 = zzzVar.zzg.get("measurementDeactivated");
            if (obj2 instanceof Boolean) {
                this.f51537o = (Boolean) obj2;
            }
        }
        AbstractC13463ec.m12903a(context);
        AbstractC12102f m19036d = C12105i.m19036d();
        this.f51532j = m19036d;
        Long l = c14009fv.f51657i;
        this.f51539q = l != null ? l.longValue() : m19036d.mo19039a();
        this.f51529g = new C13959e(this);
        C13964ee c13964ee = new C13964ee(this);
        c13964ee.m11880h();
        this.f51540s = c13964ee;
        C13947do c13947do = new C13947do(this);
        c13947do.m11880h();
        this.f51530h = c13947do;
        C14116ju c14116ju = new C14116ju(this);
        c14116ju.m11880h();
        this.f51542u = c14116ju;
        C13942dj c13942dj = new C13942dj(this);
        c13942dj.m11880h();
        this.f51543v = c13942dj;
        this.f51546y = new C13906ca(this);
        C14052hk c14052hk = new C14052hk(this);
        c14052hk.m12045l();
        this.f51544w = c14052hk;
        C14036gv c14036gv = new C14036gv(this);
        c14036gv.m12045l();
        this.f51545x = c14036gv;
        C14094iz c14094iz = new C14094iz(this);
        c14094iz.m12045l();
        this.f51541t = c14094iz;
        C14040gz c14040gz = new C14040gz(this);
        c14040gz.m11880h();
        this.f51547z = c14040gz;
        C13976ep c13976ep = new C13976ep(this);
        c13976ep.m11880h();
        this.f51531i = c13976ep;
        zzz zzzVar2 = c14009fv.f51655g;
        z = (zzzVar2 == null || zzzVar2.zzb == 0) ? true : z;
        if (context.getApplicationContext() instanceof Application) {
            C14036gv m11989f = m11989f();
            if (m11989f.f51637t.f51523a.getApplicationContext() instanceof Application) {
                Application application = (Application) m11989f.f51637t.f51523a.getApplicationContext();
                if (m11989f.f51738a == null) {
                    m11989f.f51738a = new C14035gu(m11989f, null);
                }
                if (z) {
                    application.unregisterActivityLifecycleCallbacks(m11989f.f51738a);
                    application.registerActivityLifecycleCallbacks(m11989f.f51738a);
                    m11989f.f51637t.mo11661c().f51403k.m12092a("Registered activity lifecycle callback");
                }
            }
        } else {
            mo11661c().f51398f.m12092a("Application context is not an Application");
        }
        c13976ep.m12011a(new RunnableC13978er(this, c14009fv));
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0013, code lost:
        if (r14.zzf == null) goto L8;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.measurement.internal.C13979es m11997a(android.content.Context r13, com.google.android.gms.internal.measurement.zzz r14, java.lang.Long r15) {
        /*
            r0 = r14
            r16 = r0
            r0 = r14
            if (r0 == 0) goto L35
            r0 = r14
            java.lang.String r0 = r0.zze
            if (r0 == 0) goto L16
            r0 = r14
            r16 = r0
            r0 = r14
            java.lang.String r0 = r0.zzf
            if (r0 != 0) goto L35
        L16:
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
        L35:
            r0 = r13
            java.lang.Object r0 = com.google.android.gms.common.internal.C12045o.m19162a(r0)
            r0 = r13
            android.content.Context r0 = r0.getApplicationContext()
            java.lang.Object r0 = com.google.android.gms.common.internal.C12045o.m19162a(r0)
            com.google.android.gms.measurement.internal.es r0 = com.google.android.gms.measurement.internal.C13979es.f51513r
            if (r0 != 0) goto L75
            java.lang.Class<com.google.android.gms.measurement.internal.es> r0 = com.google.android.gms.measurement.internal.C13979es.class
            monitor-enter(r0)
            com.google.android.gms.measurement.internal.es r0 = com.google.android.gms.measurement.internal.C13979es.f51513r     // Catch: java.lang.Throwable -> L6f
            if (r0 != 0) goto L69
            com.google.android.gms.measurement.internal.fv r0 = new com.google.android.gms.measurement.internal.fv     // Catch: java.lang.Throwable -> L6f
            r14 = r0
            r0 = r14
            r1 = r13
            r2 = r16
            r3 = r15
            r0.<init>(r1, r2, r3)     // Catch: java.lang.Throwable -> L6f
            com.google.android.gms.measurement.internal.es r0 = new com.google.android.gms.measurement.internal.es     // Catch: java.lang.Throwable -> L6f
            r13 = r0
            r0 = r13
            r1 = r14
            r0.<init>(r1)     // Catch: java.lang.Throwable -> L6f
            r0 = r13
            com.google.android.gms.measurement.internal.C13979es.f51513r = r0     // Catch: java.lang.Throwable -> L6f
        L69:
            java.lang.Class<com.google.android.gms.measurement.internal.es> r0 = com.google.android.gms.measurement.internal.C13979es.class
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L6f
            goto La6
        L6f:
            r13 = move-exception
            java.lang.Class<com.google.android.gms.measurement.internal.es> r0 = com.google.android.gms.measurement.internal.C13979es.class
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L6f
            r0 = r13
            throw r0
        L75:
            r0 = r16
            if (r0 == 0) goto La6
            r0 = r16
            android.os.Bundle r0 = r0.zzg
            r13 = r0
            r0 = r13
            if (r0 == 0) goto La6
            r0 = r13
            java.lang.String r1 = "dataCollectionDefaultEnabled"
            boolean r0 = r0.containsKey(r1)
            if (r0 == 0) goto La6
            com.google.android.gms.measurement.internal.es r0 = com.google.android.gms.measurement.internal.C13979es.f51513r
            java.lang.Object r0 = com.google.android.gms.common.internal.C12045o.m19162a(r0)
            com.google.android.gms.measurement.internal.es r0 = com.google.android.gms.measurement.internal.C13979es.f51513r
            r1 = r16
            android.os.Bundle r1 = r1.zzg
            java.lang.String r2 = "dataCollectionDefaultEnabled"
            boolean r1 = r1.getBoolean(r2)
            java.lang.Boolean r1 = java.lang.Boolean.valueOf(r1)
            r0.f51535m = r1
        La6:
            com.google.android.gms.measurement.internal.es r0 = com.google.android.gms.measurement.internal.C13979es.f51513r
            java.lang.Object r0 = com.google.android.gms.common.internal.C12045o.m19162a(r0)
            com.google.android.gms.measurement.internal.es r0 = com.google.android.gms.measurement.internal.C13979es.f51513r
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.C13979es.m11997a(android.content.Context, com.google.android.gms.internal.measurement.zzz, java.lang.Long):com.google.android.gms.measurement.internal.es");
    }

    /* renamed from: a */
    private static final void m11995a(AbstractC13962ec abstractC13962ec) {
        if (abstractC13962ec != null) {
            if (abstractC13962ec.m12047j()) {
                return;
            }
            String valueOf = String.valueOf(abstractC13962ec.getClass());
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 27);
            sb.append("Component not initialized: ");
            sb.append(valueOf);
            throw new IllegalStateException(sb.toString());
        }
        throw new IllegalStateException("Component not created");
    }

    /* renamed from: a */
    public static /* synthetic */ void m11994a(C13979es c13979es, C14009fv c14009fv) {
        c13979es.mo11658d().mo11884S_();
        C13959e c13959e = c13979es.f51529g;
        C14135m c14135m = new C14135m(c13979es);
        c14135m.m11880h();
        c13979es.f51516C = c14135m;
        C13939dg c13939dg = new C13939dg(c13979es, c14009fv.f51654f);
        c13939dg.m12045l();
        c13979es.f51517D = c13939dg;
        C13941di c13941di = new C13941di(c13979es);
        c13941di.m12045l();
        c13979es.f51514A = c13941di;
        C14079ik c14079ik = new C14079ik(c13979es);
        c14079ik.m12045l();
        c13979es.f51515B = c14079ik;
        c13979es.f51542u.m11879i();
        c13979es.f51540s.m11879i();
        c13979es.f51534l = new C13967eh(c13979es);
        c13979es.f51517D.m12044m();
        c13979es.mo11661c().f51401i.m12091a("App measurement initialized, version", 39065L);
        c13979es.mo11661c().f51401i.m12092a("To enable debug logging run: adb shell setprop log.tag.FA VERBOSE");
        String ad_ = c13939dg.ad_();
        if (TextUtils.isEmpty(c13979es.f51524b)) {
            if (c13979es.m11988g().m11560f(ad_)) {
                c13979es.mo11661c().f51401i.m12092a("Faster debug mode event logging enabled. To disable, run:\n  adb shell setprop debug.firebase.analytics.app .none.");
            } else {
                C13945dm c13945dm = c13979es.mo11661c().f51401i;
                String valueOf = String.valueOf(ad_);
                c13945dm.m12092a(valueOf.length() != 0 ? "To enable faster debug mode event logging run:\n  adb shell setprop debug.firebase.analytics.app ".concat(valueOf) : new String("To enable faster debug mode event logging run:\n  adb shell setprop debug.firebase.analytics.app "));
            }
        }
        c13979es.mo11661c().f51402j.m12092a("Debug-level message logging enabled");
        if (c13979es.f51521H != c13979es.f51522I.get()) {
            c13979es.mo11661c().f51395c.m12090a("Not all components initialized", Integer.valueOf(c13979es.f51521H), Integer.valueOf(c13979es.f51522I.get()));
        }
        c13979es.f51518E = true;
    }

    /* renamed from: a */
    private static final void m11993a(C14000fm c14000fm) {
        if (c14000fm != null) {
            return;
        }
        throw new IllegalStateException("Component not created");
    }

    /* renamed from: a */
    private static final void m11992a(AbstractC14001fn abstractC14001fn) {
        if (abstractC14001fn != null) {
            if (abstractC14001fn.m11882f()) {
                return;
            }
            String valueOf = String.valueOf(abstractC14001fn.getClass());
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 27);
            sb.append("Component not initialized: ");
            sb.append(valueOf);
            throw new IllegalStateException(sb.toString());
        }
        throw new IllegalStateException("Component not created");
    }

    /* renamed from: y */
    public static final void m11972y() {
        throw new IllegalStateException("Unexpected call on client side");
    }

    @Pure
    /* renamed from: z */
    private C14040gz m11971z() {
        m11992a((AbstractC14001fn) this.f51547z);
        return this.f51547z;
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC14002fo
    @Pure
    /* renamed from: W_ */
    public final C14133kk mo11692W_() {
        return this.f51528f;
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC14002fo
    @Pure
    /* renamed from: X_ */
    public final Context mo11691X_() {
        return this.f51523a;
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC14002fo
    @Pure
    /* renamed from: Y_ */
    public final AbstractC12102f mo11690Y_() {
        return this.f51532j;
    }

    /* renamed from: a */
    public final /* synthetic */ void m11998a(int i, Throwable th, byte[] bArr) {
        List<ResolveInfo> queryIntentActivities;
        int i2 = i;
        if (i != 200) {
            i2 = i;
            if (i != 204) {
                i2 = i;
                if (i == 304) {
                    i2 = 304;
                }
                mo11661c().f51398f.m12090a("Network Request for Deferred Deep Link failed. response, exception", Integer.valueOf(i2), th);
            }
        }
        if (th == null) {
            m11991b().f51468n.m12076a(true);
            if (bArr == null || bArr.length == 0) {
                mo11661c().f51402j.m12092a("Deferred Deep Link response empty.");
                return;
            }
            try {
                JSONObject jSONObject = new JSONObject(new String(bArr));
                String optString = jSONObject.optString("deeplink", "");
                String optString2 = jSONObject.optString("gclid", "");
                double optDouble = jSONObject.optDouble(Reporting.Key.TIMESTAMP, 0.0d);
                if (TextUtils.isEmpty(optString)) {
                    mo11661c().f51402j.m12092a("Deferred Deep Link is empty.");
                    return;
                }
                C14116ju m11988g = m11988g();
                if (!TextUtils.isEmpty(optString) && (queryIntentActivities = m11988g.f51637t.f51523a.getPackageManager().queryIntentActivities(new Intent("android.intent.action.VIEW", Uri.parse(optString)), 0)) != null && !queryIntentActivities.isEmpty()) {
                    Bundle bundle = new Bundle();
                    bundle.putString("gclid", optString2);
                    bundle.putString("_cis", "ddp");
                    this.f51545x.m11856a("auto", "_cmp", bundle);
                    C14116ju m11988g2 = m11988g();
                    if (TextUtils.isEmpty(optString)) {
                        return;
                    }
                    try {
                        SharedPreferences.Editor edit = m11988g2.f51637t.f51523a.getSharedPreferences("google.analytics.deferred.deeplink.prefs", 0).edit();
                        edit.putString("deeplink", optString);
                        edit.putLong(Reporting.Key.TIMESTAMP, Double.doubleToRawLongBits(optDouble));
                        if (!edit.commit()) {
                            return;
                        }
                        m11988g2.f51637t.f51523a.sendBroadcast(new Intent("android.google.analytics.action.DEEPLINK_ACTION"));
                        return;
                    } catch (Exception e) {
                        m11988g2.f51637t.mo11661c().f51395c.m12091a("Failed to persist Deferred Deep Link. exception", e);
                        return;
                    }
                }
                mo11661c().f51398f.m12090a("Deferred Deep Link validation failed. gclid, deep link", optString2, optString);
                return;
            } catch (JSONException e2) {
                mo11661c().f51395c.m12091a("Failed to parse the Deferred Deep Link response. exception", e2);
                return;
            }
        }
        mo11661c().f51398f.m12090a("Network Request for Deferred Deep Link failed. response, exception", Integer.valueOf(i2), th);
    }

    /* renamed from: a */
    public final void m11996a(zzz zzzVar) {
        C13987f c13987f;
        C13987f c13987f2;
        mo11658d().mo11884S_();
        C13620jy.m12411b();
        if (this.f51529g.m12061d(null, C13935dc.f51333au)) {
            C13987f m12036e = m11991b().m12036e();
            C13964ee m11991b = m11991b();
            m11991b.mo11884S_();
            int i = 100;
            int i2 = m11991b.ah_().getInt("consent_source", 100);
            if (this.f51529g.m12061d(null, C13935dc.f51334av)) {
                C13959e c13959e = this.f51529g;
                C13620jy.m12411b();
                Boolean m12064c = !c13959e.m12061d(null, C13935dc.f51334av) ? null : c13959e.m12064c("google_analytics_default_allow_ad_storage");
                C13959e c13959e2 = this.f51529g;
                C13620jy.m12411b();
                Boolean m12064c2 = !c13959e2.m12061d(null, C13935dc.f51334av) ? null : c13959e2.m12064c("google_analytics_default_allow_analytics_storage");
                if (!(m12064c == null && m12064c2 == null) && m11991b().m12041a(-10)) {
                    c13987f2 = new C13987f(m12064c, m12064c2);
                    i = -10;
                } else {
                    if (TextUtils.isEmpty(m11982o().m12111e()) || !(i2 == 0 || i2 == 30 || i2 == 10 || i2 == 30 || i2 == 30 || i2 == 40)) {
                        C13630kh.m12394b();
                        if ((!this.f51529g.m12061d(null, C13935dc.f51310aF) || TextUtils.isEmpty(m11982o().m12111e())) && zzzVar != null && zzzVar.zzg != null && m11991b().m12041a(30)) {
                            c13987f2 = C13987f.m11961b(zzzVar.zzg);
                            if (!c13987f2.equals(C13987f.f51572a)) {
                                i = 30;
                            }
                        }
                    } else {
                        m11989f().m11868a(C13987f.f51572a, -10, this.f51539q);
                    }
                    c13987f2 = null;
                }
                c13987f = m12036e;
                if (c13987f2 != null) {
                    m11989f().m11868a(c13987f2, i, this.f51539q);
                    c13987f = c13987f2;
                }
                m11989f().m11869a(c13987f);
            } else {
                c13987f = m12036e;
                if (zzzVar != null) {
                    c13987f = m12036e;
                    if (zzzVar.zzg != null) {
                        c13987f = m12036e;
                        if (m11991b().m12041a(30)) {
                            c13987f2 = C13987f.m11961b(zzzVar.zzg);
                            c13987f = m12036e;
                            if (!c13987f2.equals(C13987f.f51572a)) {
                                m11989f().m11868a(c13987f2, 30, this.f51539q);
                                c13987f = c13987f2;
                            }
                        }
                    }
                }
                m11989f().m11869a(c13987f);
            }
        }
        if (m11991b().f51458d.m12053a() == 0) {
            mo11661c().f51403k.m12091a("Persisting first open", Long.valueOf(this.f51539q));
            m11991b().f51458d.m12052a(this.f51539q);
        }
        C14125kc c14125kc = m11989f().f51739b;
        if (c14125kc.m11547b() && c14125kc.m11549a()) {
            c14125kc.f52016a.m11991b().f51471q.m12042a(null);
        }
        if (m11974w()) {
            if (!TextUtils.isEmpty(m11982o().m12111e()) || !TextUtils.isEmpty(m11982o().m12110f())) {
                m11988g();
                String m12111e = m11982o().m12111e();
                C13964ee m11991b2 = m11991b();
                m11991b2.mo11884S_();
                String string = m11991b2.ah_().getString("gmp_app_id", null);
                String m12110f = m11982o().m12110f();
                C13964ee m11991b3 = m11991b();
                m11991b3.mo11884S_();
                if (C14116ju.m11577a(m12111e, string, m12110f, m11991b3.ah_().getString("admob_app_id", null))) {
                    mo11661c().f51401i.m12092a("Rechecking which service to use due to a GMP App Id change");
                    C13964ee m11991b4 = m11991b();
                    m11991b4.mo11884S_();
                    Boolean ai_ = m11991b4.ai_();
                    SharedPreferences.Editor edit = m11991b4.ah_().edit();
                    edit.clear();
                    edit.apply();
                    if (ai_ != null) {
                        m11991b4.m12039a(ai_);
                    }
                    m11986i().ae_();
                    this.f51515B.m11733p();
                    this.f51515B.m11735n();
                    m11991b().f51458d.m12052a(this.f51539q);
                    m11991b().f51460f.m12042a(null);
                }
                C13964ee m11991b5 = m11991b();
                String m12111e2 = m11982o().m12111e();
                m11991b5.mo11884S_();
                SharedPreferences.Editor edit2 = m11991b5.ah_().edit();
                edit2.putString("gmp_app_id", m12111e2);
                edit2.apply();
                C13964ee m11991b6 = m11991b();
                String m12110f2 = m11982o().m12110f();
                m11991b6.mo11884S_();
                SharedPreferences.Editor edit3 = m11991b6.ah_().edit();
                edit3.putString("admob_app_id", m12110f2);
                edit3.apply();
            }
            C13620jy.m12411b();
            if (this.f51529g.m12061d(null, C13935dc.f51333au) && !m11991b().m12036e().m11957c()) {
                m11991b().f51460f.m12042a(null);
            }
            m11989f().m11862a(m11991b().f51460f.m12043a());
            C13627ke.m12398b();
            if (this.f51529g.m12061d(null, C13935dc.f51325am)) {
                try {
                    m11988g().f51637t.f51523a.getClassLoader().loadClass("com.google.firebase.remoteconfig.FirebaseRemoteConfig");
                } catch (ClassNotFoundException e) {
                    if (!TextUtils.isEmpty(m11991b().f51470p.m12043a())) {
                        mo11661c().f51398f.m12092a("Remote config removed with active feature rollouts");
                        m11991b().f51470p.m12042a(null);
                    }
                }
            }
            if (!TextUtils.isEmpty(m11982o().m12111e()) || !TextUtils.isEmpty(m11982o().m12110f())) {
                boolean m11979r = m11979r();
                SharedPreferences sharedPreferences = m11991b().f51456b;
                if (!(sharedPreferences == null ? false : sharedPreferences.contains("deferred_analytics_collection")) && !this.f51529g.m12071R_()) {
                    m11991b().m12037a(!m11979r);
                }
                if (m11979r) {
                    m11989f().m11839q();
                }
                m11990e().f51931b.m11713a();
                m11984m().m11745a(new AtomicReference<>());
                m11984m().m11758a(m11991b().f51473s.m12075a());
            }
        } else if (m11979r()) {
            if (!m11988g().m11563d("android.permission.INTERNET")) {
                mo11661c().f51395c.m12092a("App is missing INTERNET permission");
            }
            if (!m11988g().m11563d("android.permission.ACCESS_NETWORK_STATE")) {
                mo11661c().f51395c.m12092a("App is missing ACCESS_NETWORK_STATE permission");
            }
            if (!C11946c.m19258a(this.f51523a).m19265a() && !this.f51529g.m12057g()) {
                if (!C14116ju.m11571b(this.f51523a)) {
                    mo11661c().f51395c.m12092a("AppMeasurementReceiver not registered/enabled");
                }
                if (!C14116ju.m11609a(this.f51523a)) {
                    mo11661c().f51395c.m12092a("AppMeasurementService not registered/enabled");
                }
            }
            mo11661c().f51395c.m12092a("Uploading is not possible. App measurement disabled");
        }
        m11991b().f51464j.m12076a(true);
    }

    @Pure
    /* renamed from: b */
    public final C13964ee m11991b() {
        m11993a((C14000fm) this.f51540s);
        return this.f51540s;
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC14002fo
    @Pure
    /* renamed from: c */
    public final C13947do mo11661c() {
        m11992a((AbstractC14001fn) this.f51530h);
        return this.f51530h;
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC14002fo
    @Pure
    /* renamed from: d */
    public final C13976ep mo11658d() {
        m11992a((AbstractC14001fn) this.f51531i);
        return this.f51531i;
    }

    @Pure
    /* renamed from: e */
    public final C14094iz m11990e() {
        m11995a((AbstractC13962ec) this.f51541t);
        return this.f51541t;
    }

    @Pure
    /* renamed from: f */
    public final C14036gv m11989f() {
        m11995a((AbstractC13962ec) this.f51545x);
        return this.f51545x;
    }

    @Pure
    /* renamed from: g */
    public final C14116ju m11988g() {
        m11993a((C14000fm) this.f51542u);
        return this.f51542u;
    }

    @Pure
    /* renamed from: h */
    public final C13942dj m11987h() {
        m11993a((C14000fm) this.f51543v);
        return this.f51543v;
    }

    @Pure
    /* renamed from: i */
    public final C13941di m11986i() {
        m11995a((AbstractC13962ec) this.f51514A);
        return this.f51514A;
    }

    @Pure
    /* renamed from: l */
    public final C14052hk m11985l() {
        m11995a((AbstractC13962ec) this.f51544w);
        return this.f51544w;
    }

    @Pure
    /* renamed from: m */
    public final C14079ik m11984m() {
        m11995a((AbstractC13962ec) this.f51515B);
        return this.f51515B;
    }

    @Pure
    /* renamed from: n */
    public final C14135m m11983n() {
        m11992a((AbstractC14001fn) this.f51516C);
        return this.f51516C;
    }

    @Pure
    /* renamed from: o */
    public final C13939dg m11982o() {
        m11995a((AbstractC13962ec) this.f51517D);
        return this.f51517D;
    }

    @Pure
    /* renamed from: p */
    public final C13906ca m11981p() {
        C13906ca c13906ca = this.f51546y;
        if (c13906ca != null) {
            return c13906ca;
        }
        throw new IllegalStateException("Component not created");
    }

    /* renamed from: q */
    public final boolean m11980q() {
        return this.f51535m != null && this.f51535m.booleanValue();
    }

    /* renamed from: r */
    public final boolean m11979r() {
        return m11978s() == 0;
    }

    /* renamed from: s */
    public final int m11978s() {
        mo11658d().mo11884S_();
        if (this.f51529g.m12071R_()) {
            return 1;
        }
        Boolean bool = this.f51537o;
        if (bool != null && bool.booleanValue()) {
            return 2;
        }
        C13620jy.m12411b();
        if (this.f51529g.m12061d(null, C13935dc.f51333au)) {
            mo11658d().mo11884S_();
            if (!this.f51538p) {
                return 8;
            }
        }
        Boolean ai_ = m11991b().ai_();
        if (ai_ != null) {
            return ai_.booleanValue() ? 0 : 3;
        }
        Boolean m12064c = this.f51529g.m12064c("firebase_analytics_collection_enabled");
        if (m12064c != null) {
            return m12064c.booleanValue() ? 0 : 4;
        }
        Boolean bool2 = this.f51536n;
        return bool2 != null ? bool2.booleanValue() ? 0 : 5 : (!this.f51529g.m12061d(null, C13935dc.f51296S) || this.f51535m == null || this.f51535m.booleanValue()) ? 0 : 7;
    }

    /* renamed from: t */
    public final boolean m11977t() {
        mo11658d().mo11884S_();
        return this.f51538p;
    }

    /* renamed from: u */
    public final void m11976u() {
        this.f51521H++;
    }

    /* renamed from: v */
    public final void m11975v() {
        this.f51522I.incrementAndGet();
    }

    /* renamed from: w */
    public final boolean m11974w() {
        if (this.f51518E) {
            mo11658d().mo11884S_();
            Boolean bool = this.f51519F;
            if (bool == null || this.f51520G == 0 || (!bool.booleanValue() && Math.abs(this.f51532j.mo19038b() - this.f51520G) > 1000)) {
                this.f51520G = this.f51532j.mo19038b();
                Boolean valueOf = Boolean.valueOf(m11988g().m11563d("android.permission.INTERNET") && m11988g().m11563d("android.permission.ACCESS_NETWORK_STATE") && (C11946c.m19258a(this.f51523a).m19265a() || this.f51529g.m12057g() || (C14116ju.m11571b(this.f51523a) && C14116ju.m11609a(this.f51523a))));
                this.f51519F = valueOf;
                if (valueOf.booleanValue()) {
                    boolean z = true;
                    if (!m11988g().m11580a(m11982o().m12111e(), m11982o().m12110f(), m11982o().m12109g())) {
                        z = !TextUtils.isEmpty(m11982o().m12110f());
                    }
                    this.f51519F = Boolean.valueOf(z);
                }
            }
            return this.f51519F.booleanValue();
        }
        throw new IllegalStateException("AppMeasurement is not initialized");
    }

    /* renamed from: x */
    public final void m11973x() {
        mo11658d().mo11884S_();
        m11992a((AbstractC14001fn) m11971z());
        String ad_ = m11982o().ad_();
        Pair<String, Boolean> m12038a = m11991b().m12038a(ad_);
        if (!this.f51529g.m12060e() || ((Boolean) m12038a.second).booleanValue() || TextUtils.isEmpty((CharSequence) m12038a.first)) {
            mo11661c().f51402j.m12092a("ADID unavailable to retrieve Deferred Deep Link. Skipping");
            return;
        }
        C14040gz m11971z = m11971z();
        m11971z.m11881g();
        ConnectivityManager connectivityManager = (ConnectivityManager) m11971z.f51637t.f51523a.getSystemService("connectivity");
        NetworkInfo networkInfo = null;
        if (connectivityManager != null) {
            try {
                networkInfo = connectivityManager.getActiveNetworkInfo();
            } catch (SecurityException e) {
                networkInfo = null;
            }
        }
        if (networkInfo == null || !networkInfo.isConnected()) {
            mo11661c().f51398f.m12092a("Network is not available for Deferred Deep Link request. Skipping");
            return;
        }
        C14116ju m11988g = m11988g();
        m11982o();
        URL m11583a = m11988g.m11583a(ad_, (String) m12038a.first, m11991b().f51469o.m12053a() - 1);
        if (m11583a == null) {
            return;
        }
        C14040gz m11971z2 = m11971z();
        C13977eq c13977eq = new C13977eq(this);
        m11971z2.mo11884S_();
        m11971z2.m11881g();
        C12045o.m19162a(m11583a);
        C12045o.m19162a(c13977eq);
        m11971z2.f51637t.mo11658d().m12004c(new RunnableC14039gy(m11971z2, ad_, m11583a, null, null, c13977eq, null));
    }
}
