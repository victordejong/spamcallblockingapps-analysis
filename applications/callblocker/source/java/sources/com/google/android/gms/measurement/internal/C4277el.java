package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import android.os.Build;
import android.text.TextUtils;
import android.util.Pair;
import com.google.android.gms.ads.p120c.C2276a;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.util.Locale;
/* renamed from: com.google.android.gms.measurement.internal.el */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/el.class */
public final class C4277el extends AbstractC4317fy {

    /* renamed from: a */
    static final Pair<String, Long> f18755a = new Pair<>("", 0L);

    /* renamed from: A */
    private SharedPreferences f18756A;

    /* renamed from: B */
    private String f18757B;

    /* renamed from: C */
    private boolean f18758C;

    /* renamed from: D */
    private long f18759D;

    /* renamed from: b */
    public C4284es f18760b;

    /* renamed from: r */
    public boolean f18776r;

    /* renamed from: c */
    public final C4281ep f18761c = new C4281ep(this, "last_upload", 0);

    /* renamed from: d */
    public final C4281ep f18762d = new C4281ep(this, "last_upload_attempt", 0);

    /* renamed from: e */
    public final C4281ep f18763e = new C4281ep(this, "backoff", 0);

    /* renamed from: f */
    public final C4281ep f18764f = new C4281ep(this, "last_delete_stale", 0);

    /* renamed from: k */
    public final C4281ep f18769k = new C4281ep(this, "time_before_start", 10000);

    /* renamed from: l */
    public final C4281ep f18770l = new C4281ep(this, "session_timeout", 1800000);

    /* renamed from: m */
    public final C4279en f18771m = new C4279en(this, "start_new_session", true);

    /* renamed from: q */
    public final C4281ep f18775q = new C4281ep(this, "last_pause_time", 0);

    /* renamed from: n */
    public final C4283er f18772n = new C4283er(this, "non_personalized_ads", null);

    /* renamed from: o */
    public final C4279en f18773o = new C4279en(this, "use_dynamite_api", false);

    /* renamed from: p */
    public final C4279en f18774p = new C4279en(this, "allow_remote_dynamite", false);

    /* renamed from: g */
    public final C4281ep f18765g = new C4281ep(this, "midnight_offset", 0);

    /* renamed from: h */
    public final C4281ep f18766h = new C4281ep(this, "first_open_time", 0);

    /* renamed from: i */
    public final C4281ep f18767i = new C4281ep(this, "app_install_time", 0);

    /* renamed from: j */
    public final C4283er f18768j = new C4283er(this, "app_instance_id", null);

    /* renamed from: s */
    public C4279en f18777s = new C4279en(this, "app_backgrounded", false);

    /* renamed from: t */
    public C4279en f18778t = new C4279en(this, "deep_link_retrieval_complete", false);

    /* renamed from: u */
    public C4281ep f18779u = new C4281ep(this, "deep_link_retrieval_attempts", 0);

    /* renamed from: v */
    public final C4283er f18780v = new C4283er(this, "firebase_feature_rollouts", null);

    /* renamed from: w */
    public final C4283er f18781w = new C4283er(this, "deferred_attribution_cache", null);

    /* renamed from: x */
    public final C4281ep f18782x = new C4281ep(this, "deferred_attribution_cache_timestamp", 0);

    /* renamed from: y */
    public final C4282eq f18783y = new C4282eq(this, "default_event_parameters", null);

    public C4277el(C4296fd c4296fd) {
        super(c4296fd);
    }

    /* renamed from: a */
    public final Pair<String, Boolean> m4641a(String str) {
        Pair<String, Boolean> pair;
        mo4037o();
        long mo13861b = mo4035q().mo13861b();
        if (this.f18757B == null || mo13861b >= this.f18759D) {
            this.f18759D = mo13861b + mo4027x().m4801a(str, C4452t.f19417a);
            C2276a.m14855a(true);
            try {
                C2276a.C2277a m14865a = C2276a.m14865a(mo4034r());
                if (m14865a != null) {
                    this.f18757B = m14865a.m14848a();
                    this.f18758C = m14865a.m14847b();
                }
                if (this.f18757B == null) {
                    this.f18757B = "";
                }
            } catch (Exception e) {
                mo4030v().m4658i().m4653a("Unable to get advertising id", e);
                this.f18757B = "";
            }
            C2276a.m14855a(false);
            pair = new Pair<>(this.f18757B, Boolean.valueOf(this.f18758C));
        } else {
            pair = new Pair<>(this.f18757B, Boolean.valueOf(this.f18758C));
        }
        return pair;
    }

    /* renamed from: a */
    public final void m4640a(boolean z) {
        mo4037o();
        SharedPreferences.Editor edit = m4637c().edit();
        edit.putBoolean("use_service", z);
        edit.apply();
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC4317fy
    /* renamed from: a */
    protected final boolean mo4046a() {
        return true;
    }

    /* renamed from: a */
    public final boolean m4642a(long j) {
        return j - this.f18770l.m4624a() > this.f18775q.m4624a();
    }

    /* renamed from: b */
    public final String m4639b(String str) {
        mo4037o();
        String str2 = (String) m4641a(str).first;
        MessageDigest m4086e = C4424jw.m4086e();
        return m4086e == null ? null : String.format(Locale.US, "%032X", new BigInteger(1, m4086e.digest(str2.getBytes())));
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC4317fy
    /* renamed from: b */
    protected final void mo4103b() {
        this.f18756A = mo4034r().getSharedPreferences("com.google.android.gms.measurement.prefs", 0);
        this.f18776r = this.f18756A.getBoolean("has_been_opened", false);
        if (!this.f18776r) {
            SharedPreferences.Editor edit = this.f18756A.edit();
            edit.putBoolean("has_been_opened", true);
            edit.apply();
        }
        this.f18760b = new C4284es(this, "health_monitor", Math.max(0L, C4452t.f19466b.m4707a(null).longValue()));
    }

    /* renamed from: b */
    public final void m4638b(boolean z) {
        mo4037o();
        SharedPreferences.Editor edit = m4637c().edit();
        edit.putBoolean("measurement_enabled", z);
        edit.apply();
    }

    /* renamed from: c */
    public final SharedPreferences m4637c() {
        mo4037o();
        m4445A();
        return this.f18756A;
    }

    /* renamed from: c */
    public final void m4636c(String str) {
        mo4037o();
        SharedPreferences.Editor edit = m4637c().edit();
        edit.putString("gmp_app_id", str);
        edit.apply();
    }

    /* renamed from: c */
    public final void m4635c(boolean z) {
        mo4037o();
        mo4030v().m4657j().m4653a("App measurement setting deferred collection", Boolean.valueOf(z));
        SharedPreferences.Editor edit = m4637c().edit();
        edit.putBoolean("deferred_analytics_collection", z);
        edit.apply();
    }

    /* renamed from: d */
    public final String m4634d() {
        mo4037o();
        return m4637c().getString("gmp_app_id", null);
    }

    /* renamed from: d */
    public final void m4633d(String str) {
        mo4037o();
        SharedPreferences.Editor edit = m4637c().edit();
        edit.putString("admob_app_id", str);
        edit.apply();
    }

    /* renamed from: e */
    public final String m4632e() {
        mo4037o();
        return m4637c().getString("admob_app_id", null);
    }

    /* renamed from: f */
    public final Boolean m4631f() {
        mo4037o();
        return !m4637c().contains("use_service") ? null : Boolean.valueOf(m4637c().getBoolean("use_service", false));
    }

    /* renamed from: g */
    public final void m4630g() {
        mo4037o();
        Boolean m4629h = m4629h();
        SharedPreferences.Editor edit = m4637c().edit();
        edit.clear();
        edit.apply();
        if (m4629h != null) {
            m4638b(m4629h.booleanValue());
        }
    }

    /* renamed from: h */
    public final Boolean m4629h() {
        mo4037o();
        return m4637c().contains("measurement_enabled") ? Boolean.valueOf(m4637c().getBoolean("measurement_enabled", true)) : null;
    }

    /* renamed from: i */
    public final String m4628i() {
        mo4037o();
        String string = m4637c().getString("previous_os_version", null);
        mo4036p().m4445A();
        String str = Build.VERSION.RELEASE;
        if (!TextUtils.isEmpty(str) && !str.equals(string)) {
            SharedPreferences.Editor edit = m4637c().edit();
            edit.putString("previous_os_version", str);
            edit.apply();
        }
        return string;
    }

    /* renamed from: j */
    public final boolean m4627j() {
        return this.f18756A.contains("deferred_analytics_collection");
    }
}
