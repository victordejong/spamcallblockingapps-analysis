package com.google.android.gms.ads.internal.util;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Looper;
import android.security.NetworkSecurityPolicy;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.C5667s;
import com.google.android.gms.common.util.C6237o;
import com.google.android.gms.internal.ads.C6679kw;
import com.google.android.gms.internal.ads.C6889qk;
import com.google.android.gms.internal.ads.C6976sx;
import com.google.android.gms.internal.ads.C7192yr;
import com.google.android.gms.internal.ads.ei0;
import com.google.android.gms.internal.ads.jh0;
import com.google.android.gms.internal.ads.qi0;
import com.google.android.gms.internal.ads.r03;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.google.android.gms.ads.internal.util.t1 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/t1.class */
public final class C5737t1 implements AbstractC5728q1 {

    /* renamed from: b */
    private boolean f18544b;

    /* renamed from: d */
    private r03<?> f18546d;

    /* renamed from: f */
    private SharedPreferences f18548f;

    /* renamed from: g */
    private SharedPreferences.Editor f18549g;

    /* renamed from: i */
    private String f18551i;

    /* renamed from: j */
    private String f18552j;

    /* renamed from: a */
    private final Object f18543a = new Object();

    /* renamed from: c */
    private final List<Runnable> f18545c = new ArrayList();

    /* renamed from: e */
    private C6889qk f18547e = null;

    /* renamed from: h */
    private boolean f18550h = true;

    /* renamed from: k */
    private boolean f18553k = true;

    /* renamed from: l */
    private jh0 f18554l = new jh0("", 0);

    /* renamed from: m */
    private long f18555m = 0;

    /* renamed from: n */
    private long f18556n = 0;

    /* renamed from: o */
    private int f18557o = -1;

    /* renamed from: p */
    private int f18558p = 0;

    /* renamed from: q */
    private Set<String> f18559q = Collections.emptySet();

    /* renamed from: r */
    private JSONObject f18560r = new JSONObject();

    /* renamed from: s */
    private boolean f18561s = true;

    /* renamed from: t */
    private boolean f18562t = true;

    /* renamed from: u */
    private String f18563u = null;

    /* renamed from: v */
    private String f18564v = "";

    /* renamed from: w */
    private boolean f18565w = false;

    /* renamed from: x */
    private String f18566x = "";

    /* renamed from: y */
    private int f18567y = -1;

    /* renamed from: z */
    private int f18568z = -1;

    /* renamed from: A */
    private long f18542A = 0;

    /* renamed from: c */
    private final void m17961c() {
        Throwable e;
        r03<?> r03Var = this.f18546d;
        if (r03Var != null && !r03Var.isDone()) {
            try {
                this.f18546d.get(1L, TimeUnit.SECONDS);
            } catch (InterruptedException e2) {
                Thread.currentThread().interrupt();
                ei0.m15463g("Interrupted while waiting for preferences loaded.", e2);
            } catch (CancellationException e3) {
                e = e3;
                ei0.m15466d("Fail to initialize AdSharedPreferenceManager.", e);
            } catch (ExecutionException e4) {
                e = e4;
                ei0.m15466d("Fail to initialize AdSharedPreferenceManager.", e);
            } catch (TimeoutException e5) {
                e = e5;
                ei0.m15466d("Fail to initialize AdSharedPreferenceManager.", e);
            }
        }
    }

    /* renamed from: h */
    private final void m17956h() {
        qi0.f28495a.execute(new Runnable(this) { // from class: com.google.android.gms.ads.internal.util.s1

            /* renamed from: d */
            private final C5737t1 f18540d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f18540d = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f18540d.mo17963b();
            }
        });
    }

    @Override // com.google.android.gms.ads.internal.util.AbstractC5728q1
    /* renamed from: B */
    public final void mo17985B(String str) {
        m17961c();
        synchronized (this.f18543a) {
            if (str.equals(this.f18551i)) {
                return;
            }
            this.f18551i = str;
            SharedPreferences.Editor editor = this.f18549g;
            if (editor != null) {
                editor.putString("content_url_hashes", str);
                this.f18549g.apply();
            }
            m17956h();
        }
    }

    @Override // com.google.android.gms.ads.internal.util.AbstractC5728q1
    /* renamed from: F */
    public final String mo17984F() {
        String str;
        m17961c();
        synchronized (this.f18543a) {
            str = this.f18564v;
        }
        return str;
    }

    @Override // com.google.android.gms.ads.internal.util.AbstractC5728q1
    /* renamed from: H0 */
    public final void mo17983H0(String str) {
        m17961c();
        synchronized (this.f18543a) {
            if (str.equals(this.f18552j)) {
                return;
            }
            this.f18552j = str;
            SharedPreferences.Editor editor = this.f18549g;
            if (editor != null) {
                editor.putString("content_vertical_hashes", str);
                this.f18549g.apply();
            }
            m17956h();
        }
    }

    @Override // com.google.android.gms.ads.internal.util.AbstractC5728q1
    /* renamed from: I */
    public final long mo17982I() {
        long j;
        m17961c();
        synchronized (this.f18543a) {
            j = this.f18542A;
        }
        return j;
    }

    @Override // com.google.android.gms.ads.internal.util.AbstractC5728q1
    /* renamed from: I0 */
    public final void mo17981I0(boolean z) {
        if (!((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25474E6)).booleanValue()) {
            return;
        }
        m17961c();
        synchronized (this.f18543a) {
            if (this.f18565w == z) {
                return;
            }
            this.f18565w = z;
            SharedPreferences.Editor editor = this.f18549g;
            if (editor != null) {
                editor.putBoolean("linked_device", z);
                this.f18549g.apply();
            }
            m17956h();
        }
    }

    @Override // com.google.android.gms.ads.internal.util.AbstractC5728q1
    /* renamed from: J */
    public final JSONObject mo17980J() {
        JSONObject jSONObject;
        m17961c();
        synchronized (this.f18543a) {
            jSONObject = this.f18560r;
        }
        return jSONObject;
    }

    @Override // com.google.android.gms.ads.internal.util.AbstractC5728q1
    /* renamed from: J0 */
    public final void mo17979J0(String str) {
        m17961c();
        synchronized (this.f18543a) {
            if (TextUtils.equals(this.f18563u, str)) {
                return;
            }
            this.f18563u = str;
            SharedPreferences.Editor editor = this.f18549g;
            if (editor != null) {
                editor.putString("display_cutout", str);
                this.f18549g.apply();
            }
            m17956h();
        }
    }

    @Override // com.google.android.gms.ads.internal.util.AbstractC5728q1
    /* renamed from: K0 */
    public final void mo17978K0(boolean z) {
        m17961c();
        synchronized (this.f18543a) {
            if (z == this.f18553k) {
                return;
            }
            this.f18553k = z;
            SharedPreferences.Editor editor = this.f18549g;
            if (editor != null) {
                editor.putBoolean("gad_idless", z);
                this.f18549g.apply();
            }
            m17956h();
        }
    }

    @Override // com.google.android.gms.ads.internal.util.AbstractC5728q1
    /* renamed from: L0 */
    public final void mo17977L0(Runnable runnable) {
        this.f18545c.add(runnable);
    }

    @Override // com.google.android.gms.ads.internal.util.AbstractC5728q1
    /* renamed from: M0 */
    public final void mo17976M0(int i) {
        m17961c();
        synchronized (this.f18543a) {
            if (this.f18568z == i) {
                return;
            }
            this.f18568z = i;
            SharedPreferences.Editor editor = this.f18549g;
            if (editor != null) {
                editor.putInt("sd_app_measure_npa", i);
                this.f18549g.apply();
            }
            m17956h();
        }
    }

    @Override // com.google.android.gms.ads.internal.util.AbstractC5728q1
    /* renamed from: N */
    public final void mo17975N(String str) {
        m17961c();
        synchronized (this.f18543a) {
            long mo16807a = C5667s.m18153k().mo16807a();
            if (str != null && !str.equals(this.f18554l.m14123d())) {
                this.f18554l = new jh0(str, mo16807a);
                SharedPreferences.Editor editor = this.f18549g;
                if (editor != null) {
                    editor.putString("app_settings_json", str);
                    this.f18549g.putLong("app_settings_last_update_ms", mo16807a);
                    this.f18549g.apply();
                }
                m17956h();
                for (Runnable runnable : this.f18545c) {
                    runnable.run();
                }
                return;
            }
            this.f18554l.m14126a(mo16807a);
        }
    }

    @Override // com.google.android.gms.ads.internal.util.AbstractC5728q1
    /* renamed from: N0 */
    public final void mo17974N0(String str) {
        if (!((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25474E6)).booleanValue()) {
            return;
        }
        m17961c();
        synchronized (this.f18543a) {
            if (this.f18566x.equals(str)) {
                return;
            }
            this.f18566x = str;
            SharedPreferences.Editor editor = this.f18549g;
            if (editor != null) {
                editor.putString("linked_ad_unit", str);
                this.f18549g.apply();
            }
            m17956h();
        }
    }

    @Override // com.google.android.gms.ads.internal.util.AbstractC5728q1
    /* renamed from: O0 */
    public final void mo17973O0(long j) {
        m17961c();
        synchronized (this.f18543a) {
            if (this.f18556n == j) {
                return;
            }
            this.f18556n = j;
            SharedPreferences.Editor editor = this.f18549g;
            if (editor != null) {
                editor.putLong("first_ad_req_time_ms", j);
                this.f18549g.apply();
            }
            m17956h();
        }
    }

    @Override // com.google.android.gms.ads.internal.util.AbstractC5728q1
    /* renamed from: P */
    public final boolean mo17972P() {
        boolean z;
        m17961c();
        synchronized (this.f18543a) {
            z = this.f18565w;
        }
        return z;
    }

    @Override // com.google.android.gms.ads.internal.util.AbstractC5728q1
    /* renamed from: P0 */
    public final void mo17971P0(long j) {
        m17961c();
        synchronized (this.f18543a) {
            if (this.f18555m == j) {
                return;
            }
            this.f18555m = j;
            SharedPreferences.Editor editor = this.f18549g;
            if (editor != null) {
                editor.putLong("app_last_background_time_ms", j);
                this.f18549g.apply();
            }
            m17956h();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x0087, code lost:
        r0 = new org.json.JSONObject();
        r0.put("template_id", r7);
        r0.put("uses_media_view", r8);
        r0.put("timestamp_ms", com.google.android.gms.ads.internal.C5667s.m18153k().mo16807a());
        r11.put(r14, r0);
        r5.f18560r.put(r6, r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00ce, code lost:
        r6 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00cf, code lost:
        com.google.android.gms.internal.ads.ei0.m15463g("Could not update native advanced settings", r6);
     */
    @Override // com.google.android.gms.ads.internal.util.AbstractC5728q1
    /* renamed from: Q0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo17970Q0(java.lang.String r6, java.lang.String r7, boolean r8) {
        /*
            Method dump skipped, instructions count: 263
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.util.C5737t1.mo17970Q0(java.lang.String, java.lang.String, boolean):void");
    }

    @Override // com.google.android.gms.ads.internal.util.AbstractC5728q1
    /* renamed from: R0 */
    public final void mo17969R0(String str) {
        if (!((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25773p6)).booleanValue()) {
            return;
        }
        m17961c();
        synchronized (this.f18543a) {
            if (this.f18564v.equals(str)) {
                return;
            }
            this.f18564v = str;
            SharedPreferences.Editor editor = this.f18549g;
            if (editor != null) {
                editor.putString("inspector_info", str);
                this.f18549g.apply();
            }
            m17956h();
        }
    }

    @Override // com.google.android.gms.ads.internal.util.AbstractC5728q1
    /* renamed from: S0 */
    public final void mo17968S0(long j) {
        m17961c();
        synchronized (this.f18543a) {
            if (this.f18542A == j) {
                return;
            }
            this.f18542A = j;
            SharedPreferences.Editor editor = this.f18549g;
            if (editor != null) {
                editor.putLong("sd_app_measure_npa_ts", j);
                this.f18549g.apply();
            }
            m17956h();
        }
    }

    @Override // com.google.android.gms.ads.internal.util.AbstractC5728q1
    /* renamed from: T */
    public final void mo17967T(int i) {
        m17961c();
        synchronized (this.f18543a) {
            if (this.f18558p == i) {
                return;
            }
            this.f18558p = i;
            SharedPreferences.Editor editor = this.f18549g;
            if (editor != null) {
                editor.putInt("version_code", i);
                this.f18549g.apply();
            }
            m17956h();
        }
    }

    @Override // com.google.android.gms.ads.internal.util.AbstractC5728q1
    /* renamed from: U */
    public final void mo17966U(Context context) {
        synchronized (this.f18543a) {
            if (this.f18548f != null) {
                return;
            }
            this.f18546d = qi0.f28495a.mo11184d(new Runnable(this, context, "admob") { // from class: com.google.android.gms.ads.internal.util.r1

                /* renamed from: d */
                private final C5737t1 f18535d;

                /* renamed from: e */
                private final Context f18536e;

                /* renamed from: f */
                private final String f18537f = "admob";

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f18535d = this;
                    this.f18536e = context;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f18535d.m17964a(this.f18536e, this.f18537f);
                }
            });
            this.f18544b = true;
        }
    }

    @Override // com.google.android.gms.ads.internal.util.AbstractC5728q1
    /* renamed from: W */
    public final String mo17965W() {
        String str;
        m17961c();
        synchronized (this.f18543a) {
            str = this.f18566x;
        }
        return str;
    }

    /* renamed from: a */
    public final /* synthetic */ void m17964a(Context context, String str) {
        SharedPreferences sharedPreferences = context.getSharedPreferences("admob", 0);
        SharedPreferences.Editor edit = sharedPreferences.edit();
        synchronized (this.f18543a) {
            this.f18548f = sharedPreferences;
            this.f18549g = edit;
            if (C6237o.m16775i()) {
                NetworkSecurityPolicy.getInstance().isCleartextTrafficPermitted();
            }
            this.f18550h = this.f18548f.getBoolean("use_https", this.f18550h);
            this.f18561s = this.f18548f.getBoolean("content_url_opted_out", this.f18561s);
            this.f18551i = this.f18548f.getString("content_url_hashes", this.f18551i);
            this.f18553k = this.f18548f.getBoolean("gad_idless", this.f18553k);
            this.f18562t = this.f18548f.getBoolean("content_vertical_opted_out", this.f18562t);
            this.f18552j = this.f18548f.getString("content_vertical_hashes", this.f18552j);
            this.f18558p = this.f18548f.getInt("version_code", this.f18558p);
            this.f18554l = new jh0(this.f18548f.getString("app_settings_json", this.f18554l.m14123d()), this.f18548f.getLong("app_settings_last_update_ms", this.f18554l.m14125b()));
            this.f18555m = this.f18548f.getLong("app_last_background_time_ms", this.f18555m);
            this.f18557o = this.f18548f.getInt("request_in_session_count", this.f18557o);
            this.f18556n = this.f18548f.getLong("first_ad_req_time_ms", this.f18556n);
            this.f18559q = this.f18548f.getStringSet("never_pool_slots", this.f18559q);
            this.f18563u = this.f18548f.getString("display_cutout", this.f18563u);
            this.f18567y = this.f18548f.getInt("app_measurement_npa", this.f18567y);
            this.f18568z = this.f18548f.getInt("sd_app_measure_npa", this.f18568z);
            this.f18542A = this.f18548f.getLong("sd_app_measure_npa_ts", this.f18542A);
            this.f18564v = this.f18548f.getString("inspector_info", this.f18564v);
            this.f18565w = this.f18548f.getBoolean("linked_device", this.f18565w);
            this.f18566x = this.f18548f.getString("linked_ad_unit", this.f18566x);
            try {
                this.f18560r = new JSONObject(this.f18548f.getString("native_advanced_settings", "{}"));
            } catch (JSONException e) {
                ei0.m15463g("Could not convert native advanced settings to json object", e);
            }
            m17956h();
        }
    }

    @Override // com.google.android.gms.ads.internal.util.AbstractC5728q1
    /* renamed from: b */
    public final C6889qk mo17963b() {
        if (!this.f18544b) {
            return null;
        }
        if ((mo17959e() && mo17958f()) || !C6976sx.f29723b.m12799e().booleanValue()) {
            return null;
        }
        synchronized (this.f18543a) {
            if (Looper.getMainLooper() == null) {
                return null;
            }
            if (this.f18547e == null) {
                this.f18547e = new C6889qk();
            }
            this.f18547e.m11867a();
            ei0.m15465e("start fetching content...");
            return this.f18547e;
        }
    }

    @Override // com.google.android.gms.ads.internal.util.AbstractC5728q1
    /* renamed from: b0 */
    public final void mo17962b0(boolean z) {
        m17961c();
        synchronized (this.f18543a) {
            if (this.f18562t == z) {
                return;
            }
            this.f18562t = z;
            SharedPreferences.Editor editor = this.f18549g;
            if (editor != null) {
                editor.putBoolean("content_vertical_opted_out", z);
                this.f18549g.apply();
            }
            m17956h();
        }
    }

    @Override // com.google.android.gms.ads.internal.util.AbstractC5728q1
    /* renamed from: d */
    public final String mo17960d() {
        String str;
        m17961c();
        synchronized (this.f18543a) {
            str = this.f18551i;
        }
        return str;
    }

    @Override // com.google.android.gms.ads.internal.util.AbstractC5728q1
    /* renamed from: e */
    public final boolean mo17959e() {
        boolean z;
        m17961c();
        synchronized (this.f18543a) {
            z = this.f18561s;
        }
        return z;
    }

    @Override // com.google.android.gms.ads.internal.util.AbstractC5728q1
    /* renamed from: f */
    public final boolean mo17958f() {
        boolean z;
        m17961c();
        synchronized (this.f18543a) {
            z = this.f18562t;
        }
        return z;
    }

    @Override // com.google.android.gms.ads.internal.util.AbstractC5728q1
    /* renamed from: g */
    public final String mo17957g() {
        String str;
        m17961c();
        synchronized (this.f18543a) {
            str = this.f18552j;
        }
        return str;
    }

    @Override // com.google.android.gms.ads.internal.util.AbstractC5728q1
    /* renamed from: i */
    public final int mo17955i() {
        int i;
        m17961c();
        synchronized (this.f18543a) {
            i = this.f18558p;
        }
        return i;
    }

    @Override // com.google.android.gms.ads.internal.util.AbstractC5728q1
    /* renamed from: m */
    public final jh0 mo17954m() {
        jh0 jh0Var;
        m17961c();
        synchronized (this.f18543a) {
            jh0Var = this.f18554l;
        }
        return jh0Var;
    }

    @Override // com.google.android.gms.ads.internal.util.AbstractC5728q1
    /* renamed from: n */
    public final jh0 mo17953n() {
        jh0 jh0Var;
        synchronized (this.f18543a) {
            jh0Var = this.f18554l;
        }
        return jh0Var;
    }

    @Override // com.google.android.gms.ads.internal.util.AbstractC5728q1
    /* renamed from: o0 */
    public final void mo17952o0(int i) {
        m17961c();
        synchronized (this.f18543a) {
            if (this.f18557o == i) {
                return;
            }
            this.f18557o = i;
            SharedPreferences.Editor editor = this.f18549g;
            if (editor != null) {
                editor.putInt("request_in_session_count", i);
                this.f18549g.apply();
            }
            m17956h();
        }
    }

    @Override // com.google.android.gms.ads.internal.util.AbstractC5728q1
    /* renamed from: p0 */
    public final void mo17951p0(boolean z) {
        m17961c();
        synchronized (this.f18543a) {
            if (this.f18561s == z) {
                return;
            }
            this.f18561s = z;
            SharedPreferences.Editor editor = this.f18549g;
            if (editor != null) {
                editor.putBoolean("content_url_opted_out", z);
                this.f18549g.apply();
            }
            m17956h();
        }
    }

    @Override // com.google.android.gms.ads.internal.util.AbstractC5728q1
    /* renamed from: q */
    public final String mo17950q() {
        String str;
        m17961c();
        synchronized (this.f18543a) {
            str = this.f18563u;
        }
        return str;
    }

    @Override // com.google.android.gms.ads.internal.util.AbstractC5728q1
    /* renamed from: s */
    public final long mo17949s() {
        long j;
        m17961c();
        synchronized (this.f18543a) {
            j = this.f18555m;
        }
        return j;
    }

    @Override // com.google.android.gms.ads.internal.util.AbstractC5728q1
    /* renamed from: t */
    public final boolean mo17948t() {
        boolean z;
        if (!((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25759o0)).booleanValue()) {
            return false;
        }
        m17961c();
        synchronized (this.f18543a) {
            z = this.f18553k;
        }
        return z;
    }

    @Override // com.google.android.gms.ads.internal.util.AbstractC5728q1
    /* renamed from: v */
    public final void mo17947v() {
        m17961c();
        synchronized (this.f18543a) {
            this.f18560r = new JSONObject();
            SharedPreferences.Editor editor = this.f18549g;
            if (editor != null) {
                editor.remove("native_advanced_settings");
                this.f18549g.apply();
            }
            m17956h();
        }
    }

    @Override // com.google.android.gms.ads.internal.util.AbstractC5728q1
    /* renamed from: w */
    public final long mo17946w() {
        long j;
        m17961c();
        synchronized (this.f18543a) {
            j = this.f18556n;
        }
        return j;
    }

    @Override // com.google.android.gms.ads.internal.util.AbstractC5728q1
    public final int zzt() {
        int i;
        m17961c();
        synchronized (this.f18543a) {
            i = this.f18557o;
        }
        return i;
    }
}
