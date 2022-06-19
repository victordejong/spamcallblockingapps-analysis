package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.C5667s;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/lq1.class */
public final class lq1 implements tq1, yp1 {

    /* renamed from: a */
    private final sq1 f26211a;

    /* renamed from: b */
    private final uq1 f26212b;

    /* renamed from: c */
    private final zp1 f26213c;

    /* renamed from: d */
    private final hq1 f26214d;

    /* renamed from: e */
    private final xp1 f26215e;

    /* renamed from: f */
    private final String f26216f;

    /* renamed from: l */
    private boolean f26222l;

    /* renamed from: m */
    private int f26223m;

    /* renamed from: n */
    private boolean f26224n;

    /* renamed from: h */
    private String f26218h = "{}";

    /* renamed from: i */
    private String f26219i = "";

    /* renamed from: j */
    private long f26220j = Long.MAX_VALUE;

    /* renamed from: k */
    private zzdxy f26221k = zzdxy.NONE;

    /* renamed from: o */
    private zzdyb f26225o = zzdyb.UNKNOWN;

    /* renamed from: g */
    private final Map<String, List<aq1>> f26217g = new HashMap();

    public lq1(sq1 sq1Var, uq1 uq1Var, zp1 zp1Var, Context context, zzcgz zzcgzVar, hq1 hq1Var) {
        this.f26211a = sq1Var;
        this.f26212b = uq1Var;
        this.f26213c = zp1Var;
        this.f26215e = new xp1(context);
        this.f26216f = zzcgzVar.f33854d;
        this.f26214d = hq1Var;
        C5667s.m18150n().m18136a(this);
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x004d A[Catch: all -> 0x0057, TRY_ENTER, TRY_LEAVE, TryCatch #0 {, blocks: (B:4:0x0002, B:10:0x000f, B:12:0x0018, B:14:0x002e, B:17:0x0038, B:18:0x003e, B:20:0x0045, B:23:0x004d), top: B:33:0x0002 }] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0054  */
    /* renamed from: o */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void m13441o(boolean r4, boolean r5) {
        /*
            r3 = this;
            r0 = r3
            monitor-enter(r0)
            r0 = r3
            boolean r0 = r0.f26222l     // Catch: java.lang.Throwable -> L57
            r6 = r0
            r0 = r6
            r1 = r4
            if (r0 != r1) goto Lf
            r0 = r3
            monitor-exit(r0)
            return
        Lf:
            r0 = r3
            r1 = r4
            r0.f26222l = r1     // Catch: java.lang.Throwable -> L57
            r0 = r4
            if (r0 == 0) goto L3e
            com.google.android.gms.internal.ads.cw<java.lang.Boolean> r0 = com.google.android.gms.internal.ads.C6679kw.f25474E6     // Catch: java.lang.Throwable -> L57
            r7 = r0
            com.google.android.gms.internal.ads.iw r0 = com.google.android.gms.internal.ads.C7192yr.m8714c()     // Catch: java.lang.Throwable -> L57
            r1 = r7
            java.lang.Object r0 = r0.m14263c(r1)     // Catch: java.lang.Throwable -> L57
            java.lang.Boolean r0 = (java.lang.Boolean) r0     // Catch: java.lang.Throwable -> L57
            boolean r0 = r0.booleanValue()     // Catch: java.lang.Throwable -> L57
            if (r0 == 0) goto L37
            com.google.android.gms.ads.internal.util.a0 r0 = com.google.android.gms.ads.internal.C5667s.m18150n()     // Catch: java.lang.Throwable -> L57
            boolean r0 = r0.m18126k()     // Catch: java.lang.Throwable -> L57
            if (r0 != 0) goto L3e
        L37:
            r0 = r3
            r0.m13437s()     // Catch: java.lang.Throwable -> L57
            goto L49
        L3e:
            r0 = r3
            boolean r0 = r0.m13442n()     // Catch: java.lang.Throwable -> L57
            if (r0 != 0) goto L49
            r0 = r3
            r0.m13436t()     // Catch: java.lang.Throwable -> L57
        L49:
            r0 = r5
            if (r0 == 0) goto L54
            r0 = r3
            r0.m13435u()     // Catch: java.lang.Throwable -> L57
            r0 = r3
            monitor-exit(r0)
            return
        L54:
            r0 = r3
            monitor-exit(r0)
            return
        L57:
            r7 = move-exception
            r0 = r3
            monitor-exit(r0)
            r0 = r7
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.lq1.m13441o(boolean, boolean):void");
    }

    /* renamed from: p */
    private final void m13440p(zzdxy zzdxyVar, boolean z) {
        synchronized (this) {
            if (this.f26221k == zzdxyVar) {
                return;
            }
            if (m13442n()) {
                m13436t();
            }
            this.f26221k = zzdxyVar;
            if (m13442n()) {
                m13437s();
            }
            if (!z) {
                return;
            }
            m13435u();
        }
    }

    /* renamed from: q */
    private final JSONObject m13439q() {
        JSONObject jSONObject;
        synchronized (this) {
            jSONObject = new JSONObject();
            for (Map.Entry<String, List<aq1>> entry : this.f26217g.entrySet()) {
                JSONArray jSONArray = new JSONArray();
                for (aq1 aq1Var : entry.getValue()) {
                    if (aq1Var.m16509a()) {
                        jSONArray.put(aq1Var.m16508b());
                    }
                }
                if (jSONArray.length() > 0) {
                    jSONObject.put(entry.getKey(), jSONArray);
                }
            }
        }
        return jSONObject;
    }

    /* renamed from: r */
    private final void m13438r() {
        this.f26224n = true;
        this.f26214d.m14571a();
        this.f26211a.m10934c(this);
        this.f26212b.m10202a(this);
        this.f26213c.m8266a(this);
        m13434v(C5667s.m18156h().m12230p().mo17984F());
    }

    /* renamed from: s */
    private final void m13437s() {
        synchronized (this) {
            zzdxy zzdxyVar = zzdxy.NONE;
            int ordinal = this.f26221k.ordinal();
            if (ordinal == 1) {
                this.f26212b.m10201b();
            } else if (ordinal != 2) {
            } else {
                this.f26213c.m8265b();
            }
        }
    }

    /* renamed from: t */
    private final void m13436t() {
        synchronized (this) {
            zzdxy zzdxyVar = zzdxy.NONE;
            int ordinal = this.f26221k.ordinal();
            if (ordinal == 1) {
                this.f26212b.m10200c();
            } else if (ordinal != 2) {
            } else {
                this.f26213c.m8264c();
            }
        }
    }

    /* renamed from: u */
    private final void m13435u() {
        C5667s.m18156h().m12230p().mo17969R0(m13448h());
    }

    /* renamed from: v */
    private final void m13434v(String str) {
        synchronized (this) {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            try {
                JSONObject jSONObject = new JSONObject(str);
                m13441o(jSONObject.optBoolean("isTestMode", false), false);
                m13440p(zzdxy.zza(jSONObject.optString("gesture", "NONE")), false);
                this.f26218h = jSONObject.optString("networkExtras", "{}");
                this.f26220j = jSONObject.optLong("networkExtrasExpirationSecs", Long.MAX_VALUE);
            } catch (JSONException e) {
            }
        }
    }

    /* renamed from: a */
    public final void m13455a() {
        if (!((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25773p6)).booleanValue()) {
            return;
        }
        if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25474E6)).booleanValue() && C5667s.m18156h().m12230p().mo17972P()) {
            m13438r();
            return;
        }
        String mo17984F = C5667s.m18156h().m12230p().mo17984F();
        if (TextUtils.isEmpty(mo17984F)) {
            return;
        }
        try {
            if (!new JSONObject(mo17984F).optBoolean("isTestMode", false)) {
                return;
            }
            m13438r();
        } catch (JSONException e) {
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0013, code lost:
        if (r3 != false) goto L9;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m13454b(boolean r3) {
        /*
            r2 = this;
            r0 = r2
            boolean r0 = r0.f26224n
            if (r0 != 0) goto L12
            r0 = r3
            if (r0 == 0) goto L25
            r0 = r2
            r0.m13438r()
            goto L16
        L12:
            r0 = r3
            if (r0 == 0) goto L25
        L16:
            r0 = r2
            boolean r0 = r0.f26222l
            if (r0 == 0) goto L20
            goto L25
        L20:
            r0 = r2
            r0.m13437s()
            return
        L25:
            r0 = r2
            boolean r0 = r0.m13442n()
            if (r0 != 0) goto L30
            r0 = r2
            r0.m13436t()
        L30:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.lq1.m13454b(boolean):void");
    }

    /* renamed from: c */
    public final void m13453c(boolean z) {
        if (!this.f26224n && z) {
            m13438r();
        }
        m13441o(z, true);
    }

    /* renamed from: d */
    public final boolean m13452d() {
        boolean z;
        synchronized (this) {
            z = this.f26222l;
        }
        return z;
    }

    /* renamed from: e */
    public final void m13451e(zzdxy zzdxyVar) {
        m13440p(zzdxyVar, true);
    }

    /* renamed from: f */
    public final zzdxy m13450f() {
        return this.f26221k;
    }

    /* renamed from: g */
    public final String m13449g() {
        synchronized (this) {
            if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25773p6)).booleanValue() && m13442n()) {
                if (this.f26220j < C5667s.m18153k().mo16807a() / 1000) {
                    this.f26218h = "{}";
                    this.f26220j = Long.MAX_VALUE;
                    return "";
                } else if (this.f26218h.equals("{}")) {
                    return "";
                } else {
                    return this.f26218h;
                }
            }
            return "";
        }
    }

    /* renamed from: h */
    public final String m13448h() {
        String jSONObject;
        synchronized (this) {
            JSONObject jSONObject2 = new JSONObject();
            try {
                jSONObject2.put("isTestMode", this.f26222l);
                jSONObject2.put("gesture", this.f26221k);
                if (this.f26220j > C5667s.m18153k().mo16807a() / 1000) {
                    jSONObject2.put("networkExtras", this.f26218h);
                    jSONObject2.put("networkExtrasExpirationSecs", this.f26220j);
                }
            } catch (JSONException e) {
            }
            jSONObject = jSONObject2.toString();
        }
        return jSONObject;
    }

    /* renamed from: i */
    public final void m13447i(String str, long j) {
        synchronized (this) {
            this.f26218h = str;
            this.f26220j = j;
            m13435u();
        }
    }

    /* renamed from: j */
    public final void m13446j(String str, aq1 aq1Var) {
        synchronized (this) {
            if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25773p6)).booleanValue() && m13442n()) {
                if (this.f26223m >= ((Integer) C7192yr.m8714c().m14263c(C6679kw.f25789r6)).intValue()) {
                    ei0.m15464f("Maximum number of ad requests stored reached. Dropping the current request.");
                    return;
                }
                if (!this.f26217g.containsKey(str)) {
                    this.f26217g.put(str, new ArrayList());
                }
                this.f26223m++;
                this.f26217g.get(str).add(aq1Var);
            }
        }
    }

    /* renamed from: k */
    public final void m13445k(AbstractC7120wt abstractC7120wt, zzdyb zzdybVar) {
        synchronized (this) {
            if (!m13442n()) {
                try {
                    abstractC7120wt.mo9463h0(sk2.m10997d(18, null, null));
                    return;
                } catch (RemoteException e) {
                    ei0.m15464f("Ad inspector cannot be opened because the device is not in test mode. See https://developers.google.com/admob/android/test-ads#enable_test_devices for more information.");
                    return;
                }
            }
            if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25773p6)).booleanValue()) {
                this.f26225o = zzdybVar;
                this.f26211a.m10933d(abstractC7120wt, new o20(this));
                return;
            }
            try {
                abstractC7120wt.mo9463h0(sk2.m10997d(1, null, null));
                return;
            } catch (RemoteException e2) {
                ei0.m15464f("Ad inspector had an internal error.");
                return;
            }
        }
    }

    /* renamed from: l */
    public final void m13444l(String str) {
        synchronized (this) {
            this.f26219i = str;
        }
    }

    /* renamed from: m */
    public final JSONObject m13443m() {
        JSONObject jSONObject;
        synchronized (this) {
            jSONObject = new JSONObject();
            try {
                jSONObject.put("platform", "ANDROID");
                jSONObject.put("internalSdkVersion", this.f26216f);
                jSONObject.put("adapters", this.f26214d.m14570b());
                if (this.f26220j < C5667s.m18153k().mo16807a() / 1000) {
                    this.f26218h = "{}";
                }
                jSONObject.put("networkExtras", this.f26218h);
                jSONObject.put("adSlots", m13439q());
                jSONObject.put("appInfo", this.f26215e.m9094a());
                String m14123d = C5667s.m18156h().m12230p().mo17954m().m14123d();
                if (!TextUtils.isEmpty(m14123d)) {
                    jSONObject.put("cld", new JSONObject(m14123d));
                }
                if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25482F6)).booleanValue() && !TextUtils.isEmpty(this.f26219i)) {
                    String valueOf = String.valueOf(this.f26219i);
                    ei0.m15469a(valueOf.length() != 0 ? "Policy violation data: ".concat(valueOf) : new String("Policy violation data: "));
                    jSONObject.put("policyViolations", new JSONObject(this.f26219i));
                }
                if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25474E6)).booleanValue()) {
                    jSONObject.put("openAction", this.f26225o);
                    jSONObject.put("gesture", this.f26221k);
                }
            } catch (JSONException e) {
                C5667s.m18156h().m12234l(e, "Inspector.toJson");
                ei0.m15463g("Ad inspector encountered an error", e);
            }
        }
        return jSONObject;
    }

    /* renamed from: n */
    public final boolean m13442n() {
        synchronized (this) {
            if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25474E6)).booleanValue()) {
                return this.f26222l || C5667s.m18150n().m18126k();
            }
            return this.f26222l;
        }
    }
}
