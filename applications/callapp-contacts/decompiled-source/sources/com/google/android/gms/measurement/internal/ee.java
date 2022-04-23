package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import android.util.Pair;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.internal.o;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/ee.class */
public final class ee extends fn {

    /* renamed from: a  reason: collision with root package name */
    static final Pair<String, Long> f29551a = new Pair<>("", 0L);

    /* renamed from: b  reason: collision with root package name */
    SharedPreferences f29552b;

    /* renamed from: c  reason: collision with root package name */
    public eb f29553c;
    public boolean l;
    private String u;
    private boolean v;
    private long w;
    public final ea g = new ea(this, "session_timeout", 1800000);
    public final dy h = new dy(this, "start_new_session", true);
    public final ea k = new ea(this, "last_pause_time", 0);
    public final ed i = new ed(this, "non_personalized_ads", null);
    public final dy j = new dy(this, "allow_remote_dynamite", false);

    /* renamed from: d  reason: collision with root package name */
    public final ea f29554d = new ea(this, "first_open_time", 0);
    public final ea e = new ea(this, "app_install_time", 0);
    public final ed f = new ed(this, "app_instance_id", null);
    public final dy m = new dy(this, "app_backgrounded", false);
    public final dy n = new dy(this, "deep_link_retrieval_complete", false);
    public final ea o = new ea(this, "deep_link_retrieval_attempts", 0);
    public final ed p = new ed(this, "firebase_feature_rollouts", null);
    public final ed q = new ed(this, "deferred_attribution_cache", null);
    public final ea r = new ea(this, "deferred_attribution_cache_timestamp", 0);
    public final dz s = new dz(this, "default_event_parameters", null);

    /* JADX INFO: Access modifiers changed from: package-private */
    public ee(es esVar) {
        super(esVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Pair<String, Boolean> a(String str) {
        S_();
        long b2 = this.t.j.b();
        String str2 = this.u;
        if (str2 != null && b2 < this.w) {
            return new Pair<>(str2, Boolean.valueOf(this.v));
        }
        this.w = b2 + this.t.g.a(str, dc.f29481a);
        AdvertisingIdClient.setShouldSkipGmsCoreVersionCheck(true);
        try {
            AdvertisingIdClient.Info advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(this.t.f29583a);
            this.u = "";
            String id = advertisingIdInfo.getId();
            if (id != null) {
                this.u = id;
            }
            this.v = advertisingIdInfo.isLimitAdTrackingEnabled();
        } catch (Exception e) {
            this.t.c().j.a("Unable to get advertising id", e);
            this.u = "";
        }
        AdvertisingIdClient.setShouldSkipGmsCoreVersionCheck(false);
        return new Pair<>(this.u, Boolean.valueOf(this.v));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(Boolean bool) {
        S_();
        SharedPreferences.Editor edit = ah_().edit();
        if (bool != null) {
            edit.putBoolean("measurement_enabled", bool.booleanValue());
        } else {
            edit.remove("measurement_enabled");
        }
        edit.apply();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(boolean z) {
        S_();
        this.t.c().k.a("App measurement setting deferred collection", Boolean.valueOf(z));
        SharedPreferences.Editor edit = ah_().edit();
        edit.putBoolean("deferred_analytics_collection", z);
        edit.apply();
    }

    @Override // com.google.android.gms.measurement.internal.fn
    protected final boolean a() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean a(int i) {
        return f.a(i, ah_().getInt("consent_source", 100));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean a(long j) {
        return j - this.g.a() > this.k.a();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final SharedPreferences ah_() {
        S_();
        g();
        o.a(this.f29552b);
        return this.f29552b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Boolean ai_() {
        S_();
        if (ah_().contains("measurement_enabled")) {
            return Boolean.valueOf(ah_().getBoolean("measurement_enabled", true));
        }
        return null;
    }

    @Override // com.google.android.gms.measurement.internal.fn
    @EnsuresNonNull.List({@EnsuresNonNull({"this.preferences"}), @EnsuresNonNull({"this.monitoringSample"})})
    protected final void b() {
        SharedPreferences sharedPreferences = this.t.f29583a.getSharedPreferences("com.google.android.gms.measurement.prefs", 0);
        this.f29552b = sharedPreferences;
        boolean z = sharedPreferences.getBoolean("has_been_opened", false);
        this.l = z;
        if (!z) {
            SharedPreferences.Editor edit = this.f29552b.edit();
            edit.putBoolean("has_been_opened", true);
            edit.apply();
        }
        this.f29553c = new eb(this, "health_monitor", Math.max(0L, dc.f29482b.a(null).longValue()), null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final f e() {
        S_();
        return f.a(ah_().getString("consent_settings", "G1"));
    }
}
