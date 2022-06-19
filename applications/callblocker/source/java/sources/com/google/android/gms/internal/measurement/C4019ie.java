package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.ie */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/ie.class */
public final class C4019ie implements AbstractC4020if {

    /* renamed from: A */
    private static final AbstractC3821bj<Long> f18324A;

    /* renamed from: B */
    private static final AbstractC3821bj<Long> f18325B;

    /* renamed from: C */
    private static final AbstractC3821bj<Long> f18326C;

    /* renamed from: D */
    private static final AbstractC3821bj<Long> f18327D;

    /* renamed from: E */
    private static final AbstractC3821bj<Long> f18328E;

    /* renamed from: F */
    private static final AbstractC3821bj<Long> f18329F;

    /* renamed from: G */
    private static final AbstractC3821bj<Long> f18330G;

    /* renamed from: H */
    private static final AbstractC3821bj<Long> f18331H;

    /* renamed from: I */
    private static final AbstractC3821bj<String> f18332I;

    /* renamed from: J */
    private static final AbstractC3821bj<Long> f18333J;

    /* renamed from: a */
    private static final AbstractC3821bj<Long> f18334a;

    /* renamed from: b */
    private static final AbstractC3821bj<Long> f18335b;

    /* renamed from: c */
    private static final AbstractC3821bj<String> f18336c;

    /* renamed from: d */
    private static final AbstractC3821bj<String> f18337d;

    /* renamed from: e */
    private static final AbstractC3821bj<String> f18338e;

    /* renamed from: f */
    private static final AbstractC3821bj<Long> f18339f;

    /* renamed from: g */
    private static final AbstractC3821bj<Long> f18340g;

    /* renamed from: h */
    private static final AbstractC3821bj<Long> f18341h;

    /* renamed from: i */
    private static final AbstractC3821bj<Long> f18342i;

    /* renamed from: j */
    private static final AbstractC3821bj<Long> f18343j;

    /* renamed from: k */
    private static final AbstractC3821bj<Long> f18344k;

    /* renamed from: l */
    private static final AbstractC3821bj<Long> f18345l;

    /* renamed from: m */
    private static final AbstractC3821bj<Long> f18346m;

    /* renamed from: n */
    private static final AbstractC3821bj<Long> f18347n;

    /* renamed from: o */
    private static final AbstractC3821bj<Long> f18348o;

    /* renamed from: p */
    private static final AbstractC3821bj<Long> f18349p;

    /* renamed from: q */
    private static final AbstractC3821bj<Long> f18350q;

    /* renamed from: r */
    private static final AbstractC3821bj<String> f18351r;

    /* renamed from: s */
    private static final AbstractC3821bj<Long> f18352s;

    /* renamed from: t */
    private static final AbstractC3821bj<Long> f18353t;

    /* renamed from: u */
    private static final AbstractC3821bj<Long> f18354u;

    /* renamed from: v */
    private static final AbstractC3821bj<Long> f18355v;

    /* renamed from: w */
    private static final AbstractC3821bj<Long> f18356w;

    /* renamed from: x */
    private static final AbstractC3821bj<Long> f18357x;

    /* renamed from: y */
    private static final AbstractC3821bj<Long> f18358y;

    /* renamed from: z */
    private static final AbstractC3821bj<Long> f18359z;

    static {
        C3827bp c3827bp = new C3827bp(C3822bk.m5864a("com.google.android.gms.measurement"));
        f18334a = c3827bp.m5860a("measurement.ad_id_cache_time", 10000L);
        f18335b = c3827bp.m5860a("measurement.config.cache_time", 86400000L);
        f18336c = c3827bp.m5859a("measurement.log_tag", "FA");
        f18337d = c3827bp.m5859a("measurement.config.url_authority", "app-measurement.com");
        f18338e = c3827bp.m5859a("measurement.config.url_scheme", "https");
        f18339f = c3827bp.m5860a("measurement.upload.debug_upload_interval", 1000L);
        f18340g = c3827bp.m5860a("measurement.lifetimevalue.max_currency_tracked", 4L);
        f18341h = c3827bp.m5860a("measurement.store.max_stored_events_per_app", 100000L);
        f18342i = c3827bp.m5860a("measurement.experiment.max_ids", 50L);
        f18343j = c3827bp.m5860a("measurement.audience.filter_result_max_count", 200L);
        f18344k = c3827bp.m5860a("measurement.alarm_manager.minimum_interval", 60000L);
        f18345l = c3827bp.m5860a("measurement.upload.minimum_delay", 500L);
        f18346m = c3827bp.m5860a("measurement.monitoring.sample_period_millis", 86400000L);
        f18347n = c3827bp.m5860a("measurement.upload.realtime_upload_interval", 10000L);
        f18348o = c3827bp.m5860a("measurement.upload.refresh_blacklisted_config_interval", 604800000L);
        f18349p = c3827bp.m5860a("measurement.config.cache_time.service", 3600000L);
        f18350q = c3827bp.m5860a("measurement.service_client.idle_disconnect_millis", 5000L);
        f18351r = c3827bp.m5859a("measurement.log_tag.service", "FA-SVC");
        f18352s = c3827bp.m5860a("measurement.upload.stale_data_deletion_interval", 86400000L);
        f18353t = c3827bp.m5860a("measurement.upload.backoff_period", 43200000L);
        f18354u = c3827bp.m5860a("measurement.upload.initial_upload_delay_time", 15000L);
        f18355v = c3827bp.m5860a("measurement.upload.interval", 3600000L);
        f18356w = c3827bp.m5860a("measurement.upload.max_bundle_size", 65536L);
        f18357x = c3827bp.m5860a("measurement.upload.max_bundles", 100L);
        f18358y = c3827bp.m5860a("measurement.upload.max_conversions_per_day", 500L);
        f18359z = c3827bp.m5860a("measurement.upload.max_error_events_per_day", 1000L);
        f18324A = c3827bp.m5860a("measurement.upload.max_events_per_bundle", 1000L);
        f18325B = c3827bp.m5860a("measurement.upload.max_events_per_day", 100000L);
        f18326C = c3827bp.m5860a("measurement.upload.max_public_events_per_day", 50000L);
        f18327D = c3827bp.m5860a("measurement.upload.max_queue_time", 2419200000L);
        f18328E = c3827bp.m5860a("measurement.upload.max_realtime_events_per_day", 10L);
        f18329F = c3827bp.m5860a("measurement.upload.max_batch_size", 65536L);
        f18330G = c3827bp.m5860a("measurement.upload.retry_count", 6L);
        f18331H = c3827bp.m5860a("measurement.upload.retry_time", 1800000L);
        f18332I = c3827bp.m5859a("measurement.upload.url", "https://app-measurement.com/a");
        f18333J = c3827bp.m5860a("measurement.upload.window_interval", 3600000L);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4020if
    /* renamed from: A */
    public final long mo5127A() {
        return f18327D.m5866c().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4020if
    /* renamed from: B */
    public final long mo5126B() {
        return f18328E.m5866c().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4020if
    /* renamed from: C */
    public final long mo5125C() {
        return f18329F.m5866c().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4020if
    /* renamed from: D */
    public final long mo5124D() {
        return f18330G.m5866c().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4020if
    /* renamed from: E */
    public final long mo5123E() {
        return f18331H.m5866c().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4020if
    /* renamed from: F */
    public final String mo5122F() {
        return f18332I.m5866c();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4020if
    /* renamed from: G */
    public final long mo5121G() {
        return f18333J.m5866c().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4020if
    /* renamed from: a */
    public final long mo5120a() {
        return f18334a.m5866c().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4020if
    /* renamed from: b */
    public final long mo5119b() {
        return f18335b.m5866c().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4020if
    /* renamed from: c */
    public final String mo5118c() {
        return f18337d.m5866c();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4020if
    /* renamed from: d */
    public final String mo5117d() {
        return f18338e.m5866c();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4020if
    /* renamed from: e */
    public final long mo5116e() {
        return f18339f.m5866c().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4020if
    /* renamed from: f */
    public final long mo5115f() {
        return f18340g.m5866c().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4020if
    /* renamed from: g */
    public final long mo5114g() {
        return f18341h.m5866c().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4020if
    /* renamed from: h */
    public final long mo5113h() {
        return f18342i.m5866c().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4020if
    /* renamed from: i */
    public final long mo5112i() {
        return f18343j.m5866c().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4020if
    /* renamed from: j */
    public final long mo5111j() {
        return f18344k.m5866c().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4020if
    /* renamed from: k */
    public final long mo5110k() {
        return f18345l.m5866c().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4020if
    /* renamed from: l */
    public final long mo5109l() {
        return f18346m.m5866c().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4020if
    /* renamed from: m */
    public final long mo5108m() {
        return f18347n.m5866c().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4020if
    /* renamed from: n */
    public final long mo5107n() {
        return f18348o.m5866c().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4020if
    /* renamed from: o */
    public final long mo5106o() {
        return f18350q.m5866c().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4020if
    /* renamed from: p */
    public final long mo5105p() {
        return f18352s.m5866c().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4020if
    /* renamed from: q */
    public final long mo5104q() {
        return f18353t.m5866c().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4020if
    /* renamed from: r */
    public final long mo5103r() {
        return f18354u.m5866c().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4020if
    /* renamed from: s */
    public final long mo5102s() {
        return f18355v.m5866c().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4020if
    /* renamed from: t */
    public final long mo5101t() {
        return f18356w.m5866c().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4020if
    /* renamed from: u */
    public final long mo5100u() {
        return f18357x.m5866c().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4020if
    /* renamed from: v */
    public final long mo5099v() {
        return f18358y.m5866c().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4020if
    /* renamed from: w */
    public final long mo5098w() {
        return f18359z.m5866c().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4020if
    /* renamed from: x */
    public final long mo5097x() {
        return f18324A.m5866c().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4020if
    /* renamed from: y */
    public final long mo5096y() {
        return f18325B.m5866c().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4020if
    /* renamed from: z */
    public final long mo5095z() {
        return f18326C.m5866c().longValue();
    }
}
