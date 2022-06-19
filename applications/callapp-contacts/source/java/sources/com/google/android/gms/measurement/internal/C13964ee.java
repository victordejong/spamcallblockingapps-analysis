package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import android.util.Pair;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.internal.C12045o;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
/* renamed from: com.google.android.gms.measurement.internal.ee */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/ee.class */
public final class C13964ee extends AbstractC14001fn {

    /* renamed from: a */
    static final Pair<String, Long> f51455a = new Pair<>("", 0L);

    /* renamed from: b */
    SharedPreferences f51456b;

    /* renamed from: c */
    public C13961eb f51457c;

    /* renamed from: l */
    public boolean f51466l;

    /* renamed from: u */
    private String f51474u;

    /* renamed from: v */
    private boolean f51475v;

    /* renamed from: w */
    private long f51476w;

    /* renamed from: g */
    public final C13960ea f51461g = new C13960ea(this, "session_timeout", 1800000);

    /* renamed from: h */
    public final C13957dy f51462h = new C13957dy(this, "start_new_session", true);

    /* renamed from: k */
    public final C13960ea f51465k = new C13960ea(this, "last_pause_time", 0);

    /* renamed from: i */
    public final C13963ed f51463i = new C13963ed(this, "non_personalized_ads", null);

    /* renamed from: j */
    public final C13957dy f51464j = new C13957dy(this, "allow_remote_dynamite", false);

    /* renamed from: d */
    public final C13960ea f51458d = new C13960ea(this, "first_open_time", 0);

    /* renamed from: e */
    public final C13960ea f51459e = new C13960ea(this, "app_install_time", 0);

    /* renamed from: f */
    public final C13963ed f51460f = new C13963ed(this, "app_instance_id", null);

    /* renamed from: m */
    public final C13957dy f51467m = new C13957dy(this, "app_backgrounded", false);

    /* renamed from: n */
    public final C13957dy f51468n = new C13957dy(this, "deep_link_retrieval_complete", false);

    /* renamed from: o */
    public final C13960ea f51469o = new C13960ea(this, "deep_link_retrieval_attempts", 0);

    /* renamed from: p */
    public final C13963ed f51470p = new C13963ed(this, "firebase_feature_rollouts", null);

    /* renamed from: q */
    public final C13963ed f51471q = new C13963ed(this, "deferred_attribution_cache", null);

    /* renamed from: r */
    public final C13960ea f51472r = new C13960ea(this, "deferred_attribution_cache_timestamp", 0);

    /* renamed from: s */
    public final C13958dz f51473s = new C13958dz(this, "default_event_parameters", null);

    public C13964ee(C13979es c13979es) {
        super(c13979es);
    }

    /* renamed from: a */
    public final Pair<String, Boolean> m12038a(String str) {
        mo11884S_();
        long mo19038b = this.f51637t.f51532j.mo19038b();
        String str2 = this.f51474u;
        if (str2 == null || mo19038b >= this.f51476w) {
            this.f51476w = mo19038b + this.f51637t.f51529g.m12069a(str, C13935dc.f51304a);
            AdvertisingIdClient.setShouldSkipGmsCoreVersionCheck(true);
            try {
                AdvertisingIdClient.Info advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(this.f51637t.f51523a);
                this.f51474u = "";
                String id = advertisingIdInfo.getId();
                if (id != null) {
                    this.f51474u = id;
                }
                this.f51475v = advertisingIdInfo.isLimitAdTrackingEnabled();
            } catch (Exception e) {
                this.f51637t.mo11661c().f51402j.m12091a("Unable to get advertising id", e);
                this.f51474u = "";
            }
            AdvertisingIdClient.setShouldSkipGmsCoreVersionCheck(false);
            return new Pair<>(this.f51474u, Boolean.valueOf(this.f51475v));
        }
        return new Pair<>(str2, Boolean.valueOf(this.f51475v));
    }

    /* renamed from: a */
    public final void m12039a(Boolean bool) {
        mo11884S_();
        SharedPreferences.Editor edit = ah_().edit();
        if (bool != null) {
            edit.putBoolean("measurement_enabled", bool.booleanValue());
        } else {
            edit.remove("measurement_enabled");
        }
        edit.apply();
    }

    /* renamed from: a */
    public final void m12037a(boolean z) {
        mo11884S_();
        this.f51637t.mo11661c().f51403k.m12091a("App measurement setting deferred collection", Boolean.valueOf(z));
        SharedPreferences.Editor edit = ah_().edit();
        edit.putBoolean("deferred_analytics_collection", z);
        edit.apply();
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC14001fn
    /* renamed from: a */
    protected final boolean mo11519a() {
        return true;
    }

    /* renamed from: a */
    public final boolean m12041a(int i) {
        return C13987f.m11968a(i, ah_().getInt("consent_source", 100));
    }

    /* renamed from: a */
    public final boolean m12040a(long j) {
        return j - this.f51461g.m12053a() > this.f51465k.m12053a();
    }

    public final SharedPreferences ah_() {
        mo11884S_();
        m11881g();
        C12045o.m19162a(this.f51456b);
        return this.f51456b;
    }

    public final Boolean ai_() {
        mo11884S_();
        if (ah_().contains("measurement_enabled")) {
            return Boolean.valueOf(ah_().getBoolean("measurement_enabled", true));
        }
        return null;
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC14001fn
    @EnsuresNonNull.List({@EnsuresNonNull({"this.preferences"}), @EnsuresNonNull({"this.monitoringSample"})})
    /* renamed from: b */
    protected final void mo11572b() {
        SharedPreferences sharedPreferences = this.f51637t.f51523a.getSharedPreferences("com.google.android.gms.measurement.prefs", 0);
        this.f51456b = sharedPreferences;
        boolean z = sharedPreferences.getBoolean("has_been_opened", false);
        this.f51466l = z;
        if (!z) {
            SharedPreferences.Editor edit = this.f51456b.edit();
            edit.putBoolean("has_been_opened", true);
            edit.apply();
        }
        this.f51457c = new C13961eb(this, "health_monitor", Math.max(0L, C13935dc.f51339b.m12117a(null).longValue()), null);
    }

    /* renamed from: e */
    public final C13987f m12036e() {
        mo11884S_();
        return C13987f.m11963a(ah_().getString("consent_settings", "G1"));
    }
}
