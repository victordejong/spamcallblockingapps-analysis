package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import android.os.Build;
import android.text.TextUtils;
import android.util.Pair;
import androidx.annotation.NonNull;
import androidx.annotation.WorkerThread;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.measurement.zzmj;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzfd.class */
public final class zzfd extends zzgr {
    @VisibleForTesting

    /* renamed from: D */
    static final Pair<String, Long> f9180D = new Pair<>("", 0L);

    /* renamed from: c */
    private SharedPreferences f9184c;

    /* renamed from: d */
    public zzfg f9185d;

    /* renamed from: m */
    private String f9194m;

    /* renamed from: n */
    private boolean f9195n;

    /* renamed from: o */
    private long f9196o;

    /* renamed from: v */
    public boolean f9203v;

    /* renamed from: e */
    public final zzfh f9186e = new zzfh(this, "last_upload", 0);

    /* renamed from: f */
    public final zzfh f9187f = new zzfh(this, "last_upload_attempt", 0);

    /* renamed from: g */
    public final zzfh f9188g = new zzfh(this, "backoff", 0);

    /* renamed from: h */
    public final zzfh f9189h = new zzfh(this, "last_delete_stale", 0);

    /* renamed from: p */
    public final zzfh f9197p = new zzfh(this, "time_before_start", 10000);

    /* renamed from: q */
    public final zzfh f9198q = new zzfh(this, "session_timeout", 1800000);

    /* renamed from: r */
    public final zzff f9199r = new zzff(this, "start_new_session", true);

    /* renamed from: u */
    public final zzfh f9202u = new zzfh(this, "last_pause_time", 0);

    /* renamed from: s */
    public final zzfj f9200s = new zzfj(this, "non_personalized_ads", null);

    /* renamed from: t */
    public final zzff f9201t = new zzff(this, "allow_remote_dynamite", false);

    /* renamed from: i */
    public final zzfh f9190i = new zzfh(this, "midnight_offset", 0);

    /* renamed from: j */
    public final zzfh f9191j = new zzfh(this, "first_open_time", 0);

    /* renamed from: k */
    public final zzfh f9192k = new zzfh(this, "app_install_time", 0);

    /* renamed from: l */
    public final zzfj f9193l = new zzfj(this, "app_instance_id", null);

    /* renamed from: w */
    public zzff f9204w = new zzff(this, "app_backgrounded", false);

    /* renamed from: x */
    public zzff f9205x = new zzff(this, "deep_link_retrieval_complete", false);

    /* renamed from: y */
    public zzfh f9206y = new zzfh(this, "deep_link_retrieval_attempts", 0);

    /* renamed from: z */
    public final zzfj f9207z = new zzfj(this, "firebase_feature_rollouts", null);

    /* renamed from: A */
    public final zzfj f9181A = new zzfj(this, "deferred_attribution_cache", null);

    /* renamed from: B */
    public final zzfh f9182B = new zzfh(this, "deferred_attribution_cache_timestamp", 0);

    /* renamed from: C */
    public final zzfe f9183C = new zzfe(this, "default_event_parameters", null);

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfd(zzfv zzfvVar) {
        super(zzfvVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    /* renamed from: A */
    public final void m11462A(boolean z) {
        mo11316e();
        mo11081c().m11552L().m11539b("App measurement setting deferred collection", Boolean.valueOf(z));
        SharedPreferences.Editor edit = m11460C().edit();
        edit.putBoolean("deferred_analytics_collection", z);
        edit.apply();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    /* renamed from: B */
    public final void m11461B(String str) {
        mo11316e();
        SharedPreferences.Editor edit = m11460C().edit();
        edit.putString("admob_app_id", str);
        edit.apply();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @VisibleForTesting
    @WorkerThread
    /* renamed from: C */
    public final SharedPreferences m11460C() {
        mo11316e();
        m11310n();
        return this.f9184c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    /* renamed from: D */
    public final String m11459D() {
        mo11316e();
        return m11460C().getString("gmp_app_id", null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    /* renamed from: E */
    public final String m11458E() {
        mo11316e();
        return m11460C().getString("admob_app_id", null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    /* renamed from: F */
    public final Boolean m11457F() {
        mo11316e();
        if (!m11460C().contains("use_service")) {
            return null;
        }
        return Boolean.valueOf(m11460C().getBoolean("use_service", false));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    /* renamed from: G */
    public final void m11456G() {
        mo11316e();
        Boolean H = m11455H();
        SharedPreferences.Editor edit = m11460C().edit();
        edit.clear();
        edit.apply();
        if (H != null) {
            m11449t(H);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    /* renamed from: H */
    public final Boolean m11455H() {
        mo11316e();
        if (m11460C().contains("measurement_enabled")) {
            return Boolean.valueOf(m11460C().getBoolean("measurement_enabled", true));
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    /* renamed from: I */
    public final Boolean m11454I() {
        if (!zzmj.m11898a() || !m11311l().m10880r(zzat.f8902H0)) {
            return null;
        }
        mo11316e();
        if (m11460C().contains("measurement_enabled_from_api")) {
            return Boolean.valueOf(m11460C().getBoolean("measurement_enabled_from_api", true));
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    /* renamed from: J */
    public final zzad m11453J() {
        mo11316e();
        return zzad.m11736b(m11460C().getString("consent_settings", "G1"));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @WorkerThread
    /* renamed from: K */
    public final String m11452K() {
        mo11316e();
        String string = m11460C().getString("previous_os_version", null);
        m11315h().m11310n();
        String str = Build.VERSION.RELEASE;
        if (!TextUtils.isEmpty(str) && !str.equals(string)) {
            SharedPreferences.Editor edit = m11460C().edit();
            edit.putString("previous_os_version", str);
            edit.apply();
        }
        return string;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    /* renamed from: L */
    public final boolean m11451L() {
        return this.f9184c.contains("deferred_analytics_collection");
    }

    @Override // com.google.android.gms.measurement.internal.zzgr
    @WorkerThread
    /* renamed from: m */
    protected final void mo10953m() {
        SharedPreferences sharedPreferences = mo11075f().getSharedPreferences("com.google.android.gms.measurement.prefs", 0);
        this.f9184c = sharedPreferences;
        boolean z = sharedPreferences.getBoolean("has_been_opened", false);
        this.f9203v = z;
        if (!z) {
            SharedPreferences.Editor edit = this.f9184c.edit();
            edit.putBoolean("has_been_opened", true);
            edit.apply();
        }
        this.f9185d = new zzfg(this, "health_monitor", Math.max(0L, zzat.f8932c.m11594a(null).longValue()));
    }

    @Override // com.google.android.gms.measurement.internal.zzgr
    /* renamed from: q */
    protected final boolean mo10948q() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    @WorkerThread
    /* renamed from: s */
    public final Pair<String, Boolean> m11450s(String str) {
        mo11316e();
        long b = mo11085a().mo14334b();
        if (this.f9194m != null && b < this.f9196o) {
            return new Pair<>(this.f9194m, Boolean.valueOf(this.f9195n));
        }
        this.f9196o = b + m11311l().m10872z(str);
        AdvertisingIdClient.m15182d(true);
        try {
            AdvertisingIdClient.Info b2 = AdvertisingIdClient.m15184b(mo11075f());
            if (b2 != null) {
                this.f9194m = b2.m15176a();
                this.f9195n = b2.m15175b();
            }
            if (this.f9194m == null) {
                this.f9194m = "";
            }
        } catch (Exception e) {
            mo11081c().m11553K().m11539b("Unable to get advertising id", e);
            this.f9194m = "";
        }
        AdvertisingIdClient.m15182d(false);
        return new Pair<>(this.f9194m, Boolean.valueOf(this.f9195n));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    /* renamed from: t */
    public final void m11449t(Boolean bool) {
        mo11316e();
        SharedPreferences.Editor edit = m11460C().edit();
        if (bool != null) {
            edit.putBoolean("measurement_enabled", bool.booleanValue());
        } else {
            edit.remove("measurement_enabled");
        }
        edit.apply();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    /* renamed from: u */
    public final void m11448u(boolean z) {
        mo11316e();
        SharedPreferences.Editor edit = m11460C().edit();
        edit.putBoolean("use_service", z);
        edit.apply();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    /* renamed from: v */
    public final boolean m11447v(int i) {
        return zzad.m11731g(i, m11460C().getInt("consent_source", 100));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: w */
    public final boolean m11446w(long j) {
        return j - this.f9198q.m11433a() > this.f9202u.m11433a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    /* renamed from: x */
    public final boolean m11445x(zzad zzadVar, int i) {
        if (!zzmj.m11898a() || !m11311l().m10880r(zzat.f8902H0)) {
            return false;
        }
        mo11316e();
        if (!m11447v(i)) {
            return false;
        }
        SharedPreferences.Editor edit = m11460C().edit();
        edit.putString("consent_settings", zzadVar.m11733e());
        edit.putInt("consent_source", i);
        edit.apply();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    /* renamed from: y */
    public final void m11444y(Boolean bool) {
        if (zzmj.m11898a() && m11311l().m10880r(zzat.f8902H0)) {
            mo11316e();
            SharedPreferences.Editor edit = m11460C().edit();
            if (bool != null) {
                edit.putBoolean("measurement_enabled_from_api", bool.booleanValue());
            } else {
                edit.remove("measurement_enabled_from_api");
            }
            edit.apply();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    /* renamed from: z */
    public final void m11443z(String str) {
        mo11316e();
        SharedPreferences.Editor edit = m11460C().edit();
        edit.putString("gmp_app_id", str);
        edit.apply();
    }
}
