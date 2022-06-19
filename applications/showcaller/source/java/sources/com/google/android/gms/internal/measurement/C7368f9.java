package com.google.android.gms.internal.measurement;

import com.zhy.http.okhttp.OkHttpUtils;
/* renamed from: com.google.android.gms.internal.measurement.f9 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/f9.class */
public final class C7368f9 implements AbstractC7354e9 {

    /* renamed from: A */
    public static final AbstractC7607x3<Long> f34438A;

    /* renamed from: B */
    public static final AbstractC7607x3<Long> f34439B;

    /* renamed from: C */
    public static final AbstractC7607x3<Long> f34440C;

    /* renamed from: D */
    public static final AbstractC7607x3<Long> f34441D;

    /* renamed from: E */
    public static final AbstractC7607x3<Long> f34442E;

    /* renamed from: F */
    public static final AbstractC7607x3<Long> f34443F;

    /* renamed from: G */
    public static final AbstractC7607x3<Long> f34444G;

    /* renamed from: H */
    public static final AbstractC7607x3<Long> f34445H;

    /* renamed from: I */
    public static final AbstractC7607x3<Long> f34446I;

    /* renamed from: J */
    public static final AbstractC7607x3<Long> f34447J;

    /* renamed from: K */
    public static final AbstractC7607x3<String> f34448K;

    /* renamed from: L */
    public static final AbstractC7607x3<Long> f34449L;

    /* renamed from: a */
    public static final AbstractC7607x3<Long> f34450a;

    /* renamed from: b */
    public static final AbstractC7607x3<Long> f34451b;

    /* renamed from: c */
    public static final AbstractC7607x3<Long> f34452c;

    /* renamed from: d */
    public static final AbstractC7607x3<String> f34453d;

    /* renamed from: e */
    public static final AbstractC7607x3<String> f34454e;

    /* renamed from: f */
    public static final AbstractC7607x3<String> f34455f;

    /* renamed from: g */
    public static final AbstractC7607x3<Long> f34456g;

    /* renamed from: h */
    public static final AbstractC7607x3<Long> f34457h;

    /* renamed from: i */
    public static final AbstractC7607x3<Long> f34458i;

    /* renamed from: j */
    public static final AbstractC7607x3<Long> f34459j;

    /* renamed from: k */
    public static final AbstractC7607x3<Long> f34460k;

    /* renamed from: l */
    public static final AbstractC7607x3<Long> f34461l;

    /* renamed from: m */
    public static final AbstractC7607x3<Long> f34462m;

    /* renamed from: n */
    public static final AbstractC7607x3<Long> f34463n;

    /* renamed from: o */
    public static final AbstractC7607x3<Long> f34464o;

    /* renamed from: p */
    public static final AbstractC7607x3<Long> f34465p;

    /* renamed from: q */
    public static final AbstractC7607x3<Long> f34466q;

    /* renamed from: r */
    public static final AbstractC7607x3<Long> f34467r;

    /* renamed from: s */
    public static final AbstractC7607x3<String> f34468s;

    /* renamed from: t */
    public static final AbstractC7607x3<Long> f34469t;

    /* renamed from: u */
    public static final AbstractC7607x3<Long> f34470u;

    /* renamed from: v */
    public static final AbstractC7607x3<Long> f34471v;

    /* renamed from: w */
    public static final AbstractC7607x3<Long> f34472w;

    /* renamed from: x */
    public static final AbstractC7607x3<Long> f34473x;

    /* renamed from: y */
    public static final AbstractC7607x3<Long> f34474y;

    /* renamed from: z */
    public static final AbstractC7607x3<Long> f34475z;

    static {
        C7581v3 c7581v3 = new C7581v3(C7474n3.m7080a("com.google.android.gms.measurement"));
        f34450a = c7581v3.m6835a("measurement.ad_id_cache_time", OkHttpUtils.DEFAULT_MILLISECONDS);
        f34451b = c7581v3.m6835a("measurement.max_bundles_per_iteration", 100L);
        f34452c = c7581v3.m6835a("measurement.config.cache_time", 86400000L);
        f34453d = c7581v3.m6832d("measurement.log_tag", "FA");
        f34454e = c7581v3.m6832d("measurement.config.url_authority", "app-measurement.com");
        f34455f = c7581v3.m6832d("measurement.config.url_scheme", "https");
        f34456g = c7581v3.m6835a("measurement.upload.debug_upload_interval", 1000L);
        f34457h = c7581v3.m6835a("measurement.lifetimevalue.max_currency_tracked", 4L);
        f34458i = c7581v3.m6835a("measurement.store.max_stored_events_per_app", 100000L);
        f34459j = c7581v3.m6835a("measurement.experiment.max_ids", 50L);
        f34460k = c7581v3.m6835a("measurement.audience.filter_result_max_count", 200L);
        f34461l = c7581v3.m6835a("measurement.alarm_manager.minimum_interval", 60000L);
        f34462m = c7581v3.m6835a("measurement.upload.minimum_delay", 500L);
        f34463n = c7581v3.m6835a("measurement.monitoring.sample_period_millis", 86400000L);
        f34464o = c7581v3.m6835a("measurement.upload.realtime_upload_interval", OkHttpUtils.DEFAULT_MILLISECONDS);
        f34465p = c7581v3.m6835a("measurement.upload.refresh_blacklisted_config_interval", 604800000L);
        f34466q = c7581v3.m6835a("measurement.config.cache_time.service", 3600000L);
        f34467r = c7581v3.m6835a("measurement.service_client.idle_disconnect_millis", 5000L);
        f34468s = c7581v3.m6832d("measurement.log_tag.service", "FA-SVC");
        f34469t = c7581v3.m6835a("measurement.upload.stale_data_deletion_interval", 86400000L);
        f34470u = c7581v3.m6835a("measurement.sdk.attribution.cache.ttl", 604800000L);
        f34471v = c7581v3.m6835a("measurement.upload.backoff_period", 43200000L);
        f34472w = c7581v3.m6835a("measurement.upload.initial_upload_delay_time", 15000L);
        f34473x = c7581v3.m6835a("measurement.upload.interval", 3600000L);
        f34474y = c7581v3.m6835a("measurement.upload.max_bundle_size", 65536L);
        f34475z = c7581v3.m6835a("measurement.upload.max_bundles", 100L);
        f34438A = c7581v3.m6835a("measurement.upload.max_conversions_per_day", 500L);
        f34439B = c7581v3.m6835a("measurement.upload.max_error_events_per_day", 1000L);
        f34440C = c7581v3.m6835a("measurement.upload.max_events_per_bundle", 1000L);
        f34441D = c7581v3.m6835a("measurement.upload.max_events_per_day", 100000L);
        f34442E = c7581v3.m6835a("measurement.upload.max_public_events_per_day", 50000L);
        f34443F = c7581v3.m6835a("measurement.upload.max_queue_time", 2419200000L);
        f34444G = c7581v3.m6835a("measurement.upload.max_realtime_events_per_day", 10L);
        f34445H = c7581v3.m6835a("measurement.upload.max_batch_size", 65536L);
        f34446I = c7581v3.m6835a("measurement.upload.retry_count", 6L);
        f34447J = c7581v3.m6835a("measurement.upload.retry_time", 1800000L);
        f34448K = c7581v3.m6832d("measurement.upload.url", "https://app-measurement.com/a");
        f34449L = c7581v3.m6835a("measurement.upload.window_interval", 3600000L);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7354e9
    /* renamed from: D */
    public final String mo7492D() {
        return f34448K.m6771e();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7354e9
    /* renamed from: F */
    public final long mo7491F() {
        return f34447J.m6771e().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7354e9
    /* renamed from: G */
    public final long mo7490G() {
        return f34475z.m6771e().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7354e9
    /* renamed from: H */
    public final long mo7489H() {
        return f34444G.m6771e().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7354e9
    /* renamed from: I */
    public final long mo7488I() {
        return f34445H.m6771e().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7354e9
    /* renamed from: J */
    public final long mo7487J() {
        return f34438A.m6771e().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7354e9
    /* renamed from: K */
    public final long mo7486K() {
        return f34442E.m6771e().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7354e9
    /* renamed from: P */
    public final long mo7485P() {
        return f34449L.m6771e().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7354e9
    /* renamed from: a */
    public final String mo7484a() {
        return f34455f.m6771e();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7354e9
    /* renamed from: b */
    public final long mo7483b() {
        return f34451b.m6771e().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7354e9
    /* renamed from: c */
    public final long mo7482c() {
        return f34452c.m6771e().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7354e9
    /* renamed from: d */
    public final long mo7481d() {
        return f34456g.m6771e().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7354e9
    /* renamed from: e */
    public final String mo7480e() {
        return f34454e.m6771e();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7354e9
    /* renamed from: f */
    public final long mo7479f() {
        return f34458i.m6771e().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7354e9
    /* renamed from: g */
    public final long mo7478g() {
        return f34460k.m6771e().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7354e9
    /* renamed from: h */
    public final long mo7477h() {
        return f34461l.m6771e().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7354e9
    /* renamed from: i */
    public final long mo7476i() {
        return f34462m.m6771e().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7354e9
    /* renamed from: j */
    public final long mo7475j() {
        return f34463n.m6771e().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7354e9
    /* renamed from: k */
    public final long mo7474k() {
        return f34469t.m6771e().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7354e9
    /* renamed from: l */
    public final long mo7473l() {
        return f34467r.m6771e().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7354e9
    /* renamed from: m */
    public final long mo7472m() {
        return f34464o.m6771e().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7354e9
    /* renamed from: n */
    public final long mo7471n() {
        return f34465p.m6771e().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7354e9
    /* renamed from: o */
    public final long mo7470o() {
        return f34471v.m6771e().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7354e9
    /* renamed from: q */
    public final long mo7469q() {
        return f34440C.m6771e().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7354e9
    /* renamed from: s */
    public final long mo7468s() {
        return f34470u.m6771e().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7354e9
    /* renamed from: t */
    public final long mo7467t() {
        return f34443F.m6771e().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7354e9
    /* renamed from: u */
    public final long mo7466u() {
        return f34441D.m6771e().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7354e9
    /* renamed from: v */
    public final long mo7465v() {
        return f34439B.m6771e().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7354e9
    /* renamed from: w */
    public final long mo7464w() {
        return f34474y.m6771e().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7354e9
    /* renamed from: z */
    public final long mo7463z() {
        return f34446I.m6771e().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7354e9
    public final long zza() {
        return f34450a.m6771e().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7354e9
    public final long zzg() {
        return f34457h.m6771e().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7354e9
    public final long zzi() {
        return f34459j.m6771e().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7354e9
    public final long zzt() {
        return f34472w.m6771e().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7354e9
    public final long zzu() {
        return f34473x.m6771e().longValue();
    }
}
