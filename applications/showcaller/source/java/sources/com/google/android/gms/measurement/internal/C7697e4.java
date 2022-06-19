package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import android.util.Pair;
import com.google.android.gms.ads.p263v.C5852a;
import com.google.android.gms.common.internal.C6155o;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
/* renamed from: com.google.android.gms.measurement.internal.e4 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/e4.class */
public final class C7697e4 extends AbstractC7804n5 {

    /* renamed from: c */
    static final Pair<String, Long> f35193c = new Pair<>("", 0L);

    /* renamed from: d */
    private SharedPreferences f35194d;

    /* renamed from: e */
    public C7661b4 f35195e;

    /* renamed from: i */
    private String f35199i;

    /* renamed from: j */
    private boolean f35200j;

    /* renamed from: k */
    private long f35201k;

    /* renamed from: q */
    public boolean f35207q;

    /* renamed from: l */
    public final C7649a4 f35202l = new C7649a4(this, "session_timeout", 1800000);

    /* renamed from: m */
    public final C7923y3 f35203m = new C7923y3(this, "start_new_session", true);

    /* renamed from: p */
    public final C7649a4 f35206p = new C7649a4(this, "last_pause_time", 0);

    /* renamed from: n */
    public final C7685d4 f35204n = new C7685d4(this, "non_personalized_ads", null);

    /* renamed from: o */
    public final C7923y3 f35205o = new C7923y3(this, "allow_remote_dynamite", false);

    /* renamed from: f */
    public final C7649a4 f35196f = new C7649a4(this, "first_open_time", 0);

    /* renamed from: g */
    public final C7649a4 f35197g = new C7649a4(this, "app_install_time", 0);

    /* renamed from: h */
    public final C7685d4 f35198h = new C7685d4(this, "app_instance_id", null);

    /* renamed from: r */
    public final C7923y3 f35208r = new C7923y3(this, "app_backgrounded", false);

    /* renamed from: s */
    public final C7923y3 f35209s = new C7923y3(this, "deep_link_retrieval_complete", false);

    /* renamed from: t */
    public final C7649a4 f35210t = new C7649a4(this, "deep_link_retrieval_attempts", 0);

    /* renamed from: u */
    public final C7685d4 f35211u = new C7685d4(this, "firebase_feature_rollouts", null);

    /* renamed from: v */
    public final C7685d4 f35212v = new C7685d4(this, "deferred_attribution_cache", null);

    /* renamed from: w */
    public final C7649a4 f35213w = new C7649a4(this, "deferred_attribution_cache_timestamp", 0);

    /* renamed from: x */
    public final C7934z3 f35214x = new C7934z3(this, "default_event_parameters", null);

    public C7697e4(C7858s4 c7858s4) {
        super(c7858s4);
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC7804n5
    /* renamed from: g */
    protected final boolean mo5878g() {
        return true;
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC7804n5
    @EnsuresNonNull.List({@EnsuresNonNull({"this.preferences"}), @EnsuresNonNull({"this.monitoringSample"})})
    /* renamed from: h */
    protected final void mo5968h() {
        SharedPreferences sharedPreferences = this.f35460a.mo6030a().getSharedPreferences("com.google.android.gms.measurement.prefs", 0);
        this.f35194d = sharedPreferences;
        boolean z = sharedPreferences.getBoolean("has_been_opened", false);
        this.f35207q = z;
        if (!z) {
            SharedPreferences.Editor edit = this.f35194d.edit();
            edit.putBoolean("has_been_opened", true);
            edit.apply();
        }
        this.f35460a.m6006y();
        this.f35195e = new C7661b4(this, "health_monitor", Math.max(0L, C7672c3.f35068d.m6589b(null).longValue()), null);
    }

    /* renamed from: m */
    public final Pair<String, Boolean> m6465m(String str) {
        mo6113f();
        long mo16806b = this.f35460a.mo6007x().mo16806b();
        String str2 = this.f35199i;
        if (str2 == null || mo16806b >= this.f35201k) {
            this.f35201k = mo16806b + this.f35460a.m6006y().m6475q(str, C7672c3.f35066c);
            C5852a.m17750e(true);
            try {
                C5852a.C5853a m17753b = C5852a.m17753b(this.f35460a.mo6030a());
                this.f35199i = "";
                String m17742a = m17753b.m17742a();
                if (m17742a != null) {
                    this.f35199i = m17742a;
                }
                this.f35200j = m17753b.m17741b();
            } catch (Exception e) {
                this.f35460a.mo6047C().m6188t().m6215b("Unable to get advertising id", e);
                this.f35199i = "";
            }
            C5852a.m17750e(false);
            return new Pair<>(this.f35199i, Boolean.valueOf(this.f35200j));
        }
        return new Pair<>(str2, Boolean.valueOf(this.f35200j));
    }

    /* renamed from: n */
    public final SharedPreferences m6464n() {
        mo6113f();
        m6209j();
        C6155o.m17018j(this.f35194d);
        return this.f35194d;
    }

    /* renamed from: o */
    public final void m6463o(Boolean bool) {
        mo6113f();
        SharedPreferences.Editor edit = m6464n().edit();
        if (bool != null) {
            edit.putBoolean("measurement_enabled", bool.booleanValue());
        } else {
            edit.remove("measurement_enabled");
        }
        edit.apply();
    }

    /* renamed from: p */
    public final Boolean m6462p() {
        mo6113f();
        if (m6464n().contains("measurement_enabled")) {
            return Boolean.valueOf(m6464n().getBoolean("measurement_enabled", true));
        }
        return null;
    }

    /* renamed from: q */
    public final boolean m6461q(int i) {
        return C7704f.m6438m(i, m6464n().getInt("consent_source", 100));
    }

    /* renamed from: r */
    public final C7704f m6460r() {
        mo6113f();
        return C7704f.m6448c(m6464n().getString("consent_settings", "G1"));
    }

    /* renamed from: s */
    public final void m6459s(boolean z) {
        mo6113f();
        this.f35460a.mo6047C().m6187u().m6215b("App measurement setting deferred collection", Boolean.valueOf(z));
        SharedPreferences.Editor edit = m6464n().edit();
        edit.putBoolean("deferred_analytics_collection", z);
        edit.apply();
    }

    /* renamed from: t */
    public final boolean m6458t() {
        SharedPreferences sharedPreferences = this.f35194d;
        if (sharedPreferences == null) {
            return false;
        }
        return sharedPreferences.contains("deferred_analytics_collection");
    }

    /* renamed from: u */
    public final boolean m6457u(long j) {
        return j - this.f35202l.m6588a() > this.f35206p.m6588a();
    }
}
