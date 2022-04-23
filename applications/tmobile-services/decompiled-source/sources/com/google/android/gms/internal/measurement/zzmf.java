package com.google.android.gms.internal.measurement;

import android.support.p001v4.media.session.PlaybackStateCompat;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzmf.class */
public final class zzmf implements zzmg {

    /* renamed from: A */
    private static final zzdh<Long> f8668A;

    /* renamed from: B */
    private static final zzdh<Long> f8669B;

    /* renamed from: C */
    private static final zzdh<Long> f8670C;

    /* renamed from: D */
    private static final zzdh<Long> f8671D;

    /* renamed from: E */
    private static final zzdh<Long> f8672E;

    /* renamed from: F */
    private static final zzdh<String> f8673F;

    /* renamed from: G */
    private static final zzdh<Long> f8674G;

    /* renamed from: a */
    private static final zzdh<Long> f8675a;

    /* renamed from: b */
    private static final zzdh<Long> f8676b;

    /* renamed from: c */
    private static final zzdh<String> f8677c;

    /* renamed from: d */
    private static final zzdh<String> f8678d;

    /* renamed from: e */
    private static final zzdh<Long> f8679e;

    /* renamed from: f */
    private static final zzdh<Long> f8680f;

    /* renamed from: g */
    private static final zzdh<Long> f8681g;

    /* renamed from: h */
    private static final zzdh<Long> f8682h;

    /* renamed from: i */
    private static final zzdh<Long> f8683i;

    /* renamed from: j */
    private static final zzdh<Long> f8684j;

    /* renamed from: k */
    private static final zzdh<Long> f8685k;

    /* renamed from: l */
    private static final zzdh<Long> f8686l;

    /* renamed from: m */
    private static final zzdh<Long> f8687m;

    /* renamed from: n */
    private static final zzdh<Long> f8688n;

    /* renamed from: o */
    private static final zzdh<Long> f8689o;

    /* renamed from: p */
    private static final zzdh<Long> f8690p;

    /* renamed from: q */
    private static final zzdh<Long> f8691q;

    /* renamed from: r */
    private static final zzdh<Long> f8692r;

    /* renamed from: s */
    private static final zzdh<Long> f8693s;

    /* renamed from: t */
    private static final zzdh<Long> f8694t;

    /* renamed from: u */
    private static final zzdh<Long> f8695u;

    /* renamed from: v */
    private static final zzdh<Long> f8696v;

    /* renamed from: w */
    private static final zzdh<Long> f8697w;

    /* renamed from: x */
    private static final zzdh<Long> f8698x;

    /* renamed from: y */
    private static final zzdh<Long> f8699y;

    /* renamed from: z */
    private static final zzdh<Long> f8700z;

    static {
        zzdm zzdmVar = new zzdm(zzde.m12780a("com.google.android.gms.measurement"));
        f8675a = zzdmVar.m12759b("measurement.ad_id_cache_time", 10000L);
        f8676b = zzdmVar.m12759b("measurement.config.cache_time", 86400000L);
        zzdmVar.m12758c("measurement.log_tag", "FA");
        f8677c = zzdmVar.m12758c("measurement.config.url_authority", "app-measurement.com");
        f8678d = zzdmVar.m12758c("measurement.config.url_scheme", "https");
        f8679e = zzdmVar.m12759b("measurement.upload.debug_upload_interval", 1000L);
        f8680f = zzdmVar.m12759b("measurement.lifetimevalue.max_currency_tracked", 4L);
        f8681g = zzdmVar.m12759b("measurement.store.max_stored_events_per_app", 100000L);
        f8682h = zzdmVar.m12759b("measurement.experiment.max_ids", 50L);
        f8683i = zzdmVar.m12759b("measurement.audience.filter_result_max_count", 200L);
        f8684j = zzdmVar.m12759b("measurement.alarm_manager.minimum_interval", 60000L);
        f8685k = zzdmVar.m12759b("measurement.upload.minimum_delay", 500L);
        f8686l = zzdmVar.m12759b("measurement.monitoring.sample_period_millis", 86400000L);
        f8687m = zzdmVar.m12759b("measurement.upload.realtime_upload_interval", 10000L);
        f8688n = zzdmVar.m12759b("measurement.upload.refresh_blacklisted_config_interval", 604800000L);
        zzdmVar.m12759b("measurement.config.cache_time.service", 3600000L);
        f8689o = zzdmVar.m12759b("measurement.service_client.idle_disconnect_millis", 5000L);
        zzdmVar.m12758c("measurement.log_tag.service", "FA-SVC");
        f8690p = zzdmVar.m12759b("measurement.upload.stale_data_deletion_interval", 86400000L);
        f8691q = zzdmVar.m12759b("measurement.upload.backoff_period", 43200000L);
        f8692r = zzdmVar.m12759b("measurement.upload.initial_upload_delay_time", 15000L);
        f8693s = zzdmVar.m12759b("measurement.upload.interval", 3600000L);
        f8694t = zzdmVar.m12759b("measurement.upload.max_bundle_size", PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH);
        f8695u = zzdmVar.m12759b("measurement.upload.max_bundles", 100L);
        f8696v = zzdmVar.m12759b("measurement.upload.max_conversions_per_day", 500L);
        f8697w = zzdmVar.m12759b("measurement.upload.max_error_events_per_day", 1000L);
        f8698x = zzdmVar.m12759b("measurement.upload.max_events_per_bundle", 1000L);
        f8699y = zzdmVar.m12759b("measurement.upload.max_events_per_day", 100000L);
        f8700z = zzdmVar.m12759b("measurement.upload.max_public_events_per_day", 50000L);
        f8668A = zzdmVar.m12759b("measurement.upload.max_queue_time", 2419200000L);
        f8669B = zzdmVar.m12759b("measurement.upload.max_realtime_events_per_day", 10L);
        f8670C = zzdmVar.m12759b("measurement.upload.max_batch_size", PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH);
        f8671D = zzdmVar.m12759b("measurement.upload.retry_count", 6L);
        f8672E = zzdmVar.m12759b("measurement.upload.retry_time", 1800000L);
        f8673F = zzdmVar.m12758c("measurement.upload.url", "https://app-measurement.com/a");
        f8674G = zzdmVar.m12759b("measurement.upload.window_interval", 3600000L);
    }

    @Override // com.google.android.gms.internal.measurement.zzmg
    /* renamed from: A */
    public final long mo11929A() {
        return f8696v.m12764o().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzmg
    /* renamed from: B */
    public final long mo11928B() {
        return f8669B.m12764o().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzmg
    /* renamed from: a */
    public final long mo11927a() {
        return f8686l.m12764o().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzmg
    /* renamed from: b */
    public final long mo11926b() {
        return f8690p.m12764o().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzmg
    /* renamed from: c */
    public final long mo11925c() {
        return f8691q.m12764o().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzmg
    /* renamed from: d */
    public final long mo11924d() {
        return f8692r.m12764o().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzmg
    /* renamed from: e */
    public final String mo11923e() {
        return f8673F.m12764o();
    }

    @Override // com.google.android.gms.internal.measurement.zzmg
    /* renamed from: f */
    public final long mo11922f() {
        return f8687m.m12764o().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzmg
    /* renamed from: g */
    public final long mo11921g() {
        return f8694t.m12764o().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzmg
    /* renamed from: h */
    public final long mo11920h() {
        return f8699y.m12764o().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzmg
    /* renamed from: i */
    public final long mo11919i() {
        return f8682h.m12764o().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzmg
    /* renamed from: j */
    public final long mo11918j() {
        return f8674G.m12764o().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzmg
    /* renamed from: k */
    public final long mo11917k() {
        return f8700z.m12764o().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzmg
    /* renamed from: l */
    public final long mo11916l() {
        return f8683i.m12764o().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzmg
    /* renamed from: m */
    public final long mo11915m() {
        return f8688n.m12764o().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzmg
    /* renamed from: n */
    public final long mo11914n() {
        return f8680f.m12764o().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzmg
    /* renamed from: o */
    public final long mo11913o() {
        return f8672E.m12764o().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzmg
    /* renamed from: p */
    public final long mo11912p() {
        return f8689o.m12764o().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzmg
    /* renamed from: q */
    public final long mo11911q() {
        return f8681g.m12764o().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzmg
    /* renamed from: r */
    public final long mo11910r() {
        return f8671D.m12764o().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzmg
    /* renamed from: s */
    public final long mo11909s() {
        return f8684j.m12764o().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzmg
    /* renamed from: t */
    public final long mo11908t() {
        return f8668A.m12764o().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzmg
    /* renamed from: u */
    public final long mo11907u() {
        return f8693s.m12764o().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzmg
    /* renamed from: v */
    public final long mo11906v() {
        return f8685k.m12764o().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzmg
    /* renamed from: w */
    public final long mo11905w() {
        return f8697w.m12764o().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzmg
    /* renamed from: x */
    public final long mo11904x() {
        return f8698x.m12764o().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzmg
    /* renamed from: y */
    public final long mo11903y() {
        return f8670C.m12764o().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzmg
    /* renamed from: z */
    public final long mo11902z() {
        return f8695u.m12764o().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzmg
    public final long zza() {
        return f8675a.m12764o().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzmg
    public final long zzb() {
        return f8676b.m12764o().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzmg
    public final String zzc() {
        return f8677c.m12764o();
    }

    @Override // com.google.android.gms.internal.measurement.zzmg
    public final String zzd() {
        return f8678d.m12764o();
    }

    @Override // com.google.android.gms.internal.measurement.zzmg
    public final long zze() {
        return f8679e.m12764o().longValue();
    }
}
