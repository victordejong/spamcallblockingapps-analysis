package com.google.android.gms.internal.measurement;

import android.support.p008v4.media.session.PlaybackStateCompat;
import com.mopub.common.Constants;
import com.sinch.verification.flashcall.initialization.FlashCallInitializationDetails;
/* renamed from: com.google.android.gms.internal.measurement.jx */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/jx.class */
public final class C13619jx implements AbstractC13618jw {

    /* renamed from: A */
    public static final AbstractC13463ec<Long> f50896A;

    /* renamed from: B */
    public static final AbstractC13463ec<Long> f50897B;

    /* renamed from: C */
    public static final AbstractC13463ec<Long> f50898C;

    /* renamed from: D */
    public static final AbstractC13463ec<Long> f50899D;

    /* renamed from: E */
    public static final AbstractC13463ec<Long> f50900E;

    /* renamed from: F */
    public static final AbstractC13463ec<Long> f50901F;

    /* renamed from: G */
    public static final AbstractC13463ec<Long> f50902G;

    /* renamed from: H */
    public static final AbstractC13463ec<Long> f50903H;

    /* renamed from: I */
    public static final AbstractC13463ec<Long> f50904I;

    /* renamed from: J */
    public static final AbstractC13463ec<Long> f50905J;

    /* renamed from: K */
    public static final AbstractC13463ec<String> f50906K;

    /* renamed from: L */
    public static final AbstractC13463ec<Long> f50907L;

    /* renamed from: a */
    public static final AbstractC13463ec<Long> f50908a;

    /* renamed from: b */
    public static final AbstractC13463ec<Long> f50909b;

    /* renamed from: c */
    public static final AbstractC13463ec<Long> f50910c;

    /* renamed from: d */
    public static final AbstractC13463ec<String> f50911d;

    /* renamed from: e */
    public static final AbstractC13463ec<String> f50912e;

    /* renamed from: f */
    public static final AbstractC13463ec<String> f50913f;

    /* renamed from: g */
    public static final AbstractC13463ec<Long> f50914g;

    /* renamed from: h */
    public static final AbstractC13463ec<Long> f50915h;

    /* renamed from: i */
    public static final AbstractC13463ec<Long> f50916i;

    /* renamed from: j */
    public static final AbstractC13463ec<Long> f50917j;

    /* renamed from: k */
    public static final AbstractC13463ec<Long> f50918k;

    /* renamed from: l */
    public static final AbstractC13463ec<Long> f50919l;

    /* renamed from: m */
    public static final AbstractC13463ec<Long> f50920m;

    /* renamed from: n */
    public static final AbstractC13463ec<Long> f50921n;

    /* renamed from: o */
    public static final AbstractC13463ec<Long> f50922o;

    /* renamed from: p */
    public static final AbstractC13463ec<Long> f50923p;

    /* renamed from: q */
    public static final AbstractC13463ec<Long> f50924q;

    /* renamed from: r */
    public static final AbstractC13463ec<Long> f50925r;

    /* renamed from: s */
    public static final AbstractC13463ec<String> f50926s;

    /* renamed from: t */
    public static final AbstractC13463ec<Long> f50927t;

    /* renamed from: u */
    public static final AbstractC13463ec<Long> f50928u;

    /* renamed from: v */
    public static final AbstractC13463ec<Long> f50929v;

    /* renamed from: w */
    public static final AbstractC13463ec<Long> f50930w;

    /* renamed from: x */
    public static final AbstractC13463ec<Long> f50931x;

    /* renamed from: y */
    public static final AbstractC13463ec<Long> f50932y;

    /* renamed from: z */
    public static final AbstractC13463ec<Long> f50933z;

    static {
        C13461ea c13461ea = new C13461ea(C13452ds.m12911a());
        f50908a = c13461ea.m12909a("measurement.ad_id_cache_time", 10000L);
        f50909b = c13461ea.m12909a("measurement.max_bundles_per_iteration", 100L);
        f50910c = c13461ea.m12909a("measurement.config.cache_time", 86400000L);
        f50911d = c13461ea.m12908a("measurement.log_tag", "FA");
        f50912e = c13461ea.m12908a("measurement.config.url_authority", "app-measurement.com");
        f50913f = c13461ea.m12908a("measurement.config.url_scheme", Constants.HTTPS);
        f50914g = c13461ea.m12909a("measurement.upload.debug_upload_interval", 1000L);
        f50915h = c13461ea.m12909a("measurement.lifetimevalue.max_currency_tracked", 4L);
        f50916i = c13461ea.m12909a("measurement.store.max_stored_events_per_app", 100000L);
        f50917j = c13461ea.m12909a("measurement.experiment.max_ids", 50L);
        f50918k = c13461ea.m12909a("measurement.audience.filter_result_max_count", 200L);
        f50919l = c13461ea.m12909a("measurement.alarm_manager.minimum_interval", com.callapp.contacts.model.Constants.MINUTE_IN_MILLIS);
        f50920m = c13461ea.m12909a("measurement.upload.minimum_delay", 500L);
        f50921n = c13461ea.m12909a("measurement.monitoring.sample_period_millis", 86400000L);
        f50922o = c13461ea.m12909a("measurement.upload.realtime_upload_interval", 10000L);
        f50923p = c13461ea.m12909a("measurement.upload.refresh_blacklisted_config_interval", com.callapp.contacts.model.Constants.WEEK_IN_MILLIS);
        f50924q = c13461ea.m12909a("measurement.config.cache_time.service", com.callapp.contacts.model.Constants.HOUR_IN_MILLIS);
        f50925r = c13461ea.m12909a("measurement.service_client.idle_disconnect_millis", 5000L);
        f50926s = c13461ea.m12908a("measurement.log_tag.service", "FA-SVC");
        f50927t = c13461ea.m12909a("measurement.upload.stale_data_deletion_interval", 86400000L);
        f50928u = c13461ea.m12909a("measurement.sdk.attribution.cache.ttl", com.callapp.contacts.model.Constants.WEEK_IN_MILLIS);
        f50929v = c13461ea.m12909a("measurement.upload.backoff_period", 43200000L);
        f50930w = c13461ea.m12909a("measurement.upload.initial_upload_delay_time", FlashCallInitializationDetails.DEFAULT_INTERCEPTION_TIMEOUT);
        f50931x = c13461ea.m12909a("measurement.upload.interval", com.callapp.contacts.model.Constants.HOUR_IN_MILLIS);
        f50932y = c13461ea.m12909a("measurement.upload.max_bundle_size", PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH);
        f50933z = c13461ea.m12909a("measurement.upload.max_bundles", 100L);
        f50896A = c13461ea.m12909a("measurement.upload.max_conversions_per_day", 500L);
        f50897B = c13461ea.m12909a("measurement.upload.max_error_events_per_day", 1000L);
        f50898C = c13461ea.m12909a("measurement.upload.max_events_per_bundle", 1000L);
        f50899D = c13461ea.m12909a("measurement.upload.max_events_per_day", 100000L);
        f50900E = c13461ea.m12909a("measurement.upload.max_public_events_per_day", 50000L);
        f50901F = c13461ea.m12909a("measurement.upload.max_queue_time", 2419200000L);
        f50902G = c13461ea.m12909a("measurement.upload.max_realtime_events_per_day", 10L);
        f50903H = c13461ea.m12909a("measurement.upload.max_batch_size", PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH);
        f50904I = c13461ea.m12909a("measurement.upload.retry_count", 6L);
        f50905J = c13461ea.m12909a("measurement.upload.retry_time", 1800000L);
        f50906K = c13461ea.m12908a("measurement.upload.url", "https://app-measurement.com/a");
        f50907L = c13461ea.m12909a("measurement.upload.window_interval", com.callapp.contacts.model.Constants.HOUR_IN_MILLIS);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13618jw
    /* renamed from: A */
    public final long mo12446A() {
        return f50899D.m12901b().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13618jw
    /* renamed from: B */
    public final long mo12445B() {
        return f50900E.m12901b().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13618jw
    /* renamed from: C */
    public final long mo12444C() {
        return f50901F.m12901b().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13618jw
    /* renamed from: D */
    public final long mo12443D() {
        return f50902G.m12901b().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13618jw
    /* renamed from: E */
    public final long mo12442E() {
        return f50903H.m12901b().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13618jw
    /* renamed from: F */
    public final long mo12441F() {
        return f50904I.m12901b().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13618jw
    /* renamed from: G */
    public final long mo12440G() {
        return f50905J.m12901b().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13618jw
    /* renamed from: H */
    public final String mo12439H() {
        return f50906K.m12901b();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13618jw
    /* renamed from: I */
    public final long mo12438I() {
        return f50907L.m12901b().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13618jw
    /* renamed from: a */
    public final long mo12437a() {
        return f50908a.m12901b().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13618jw
    /* renamed from: b */
    public final long mo12436b() {
        return f50909b.m12901b().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13618jw
    /* renamed from: c */
    public final long mo12435c() {
        return f50910c.m12901b().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13618jw
    /* renamed from: d */
    public final String mo12434d() {
        return f50912e.m12901b();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13618jw
    /* renamed from: e */
    public final String mo12433e() {
        return f50913f.m12901b();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13618jw
    /* renamed from: f */
    public final long mo12432f() {
        return f50914g.m12901b().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13618jw
    /* renamed from: g */
    public final long mo12431g() {
        return f50915h.m12901b().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13618jw
    /* renamed from: h */
    public final long mo12430h() {
        return f50916i.m12901b().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13618jw
    /* renamed from: i */
    public final long mo12429i() {
        return f50917j.m12901b().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13618jw
    /* renamed from: j */
    public final long mo12428j() {
        return f50918k.m12901b().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13618jw
    /* renamed from: k */
    public final long mo12427k() {
        return f50919l.m12901b().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13618jw
    /* renamed from: l */
    public final long mo12426l() {
        return f50920m.m12901b().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13618jw
    /* renamed from: m */
    public final long mo12425m() {
        return f50921n.m12901b().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13618jw
    /* renamed from: n */
    public final long mo12424n() {
        return f50922o.m12901b().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13618jw
    /* renamed from: o */
    public final long mo12423o() {
        return f50923p.m12901b().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13618jw
    /* renamed from: p */
    public final long mo12422p() {
        return f50925r.m12901b().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13618jw
    /* renamed from: q */
    public final long mo12421q() {
        return f50927t.m12901b().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13618jw
    /* renamed from: r */
    public final long mo12420r() {
        return f50928u.m12901b().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13618jw
    /* renamed from: s */
    public final long mo12419s() {
        return f50929v.m12901b().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13618jw
    /* renamed from: t */
    public final long mo12418t() {
        return f50930w.m12901b().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13618jw
    /* renamed from: u */
    public final long mo12417u() {
        return f50931x.m12901b().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13618jw
    /* renamed from: v */
    public final long mo12416v() {
        return f50932y.m12901b().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13618jw
    /* renamed from: w */
    public final long mo12415w() {
        return f50933z.m12901b().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13618jw
    /* renamed from: x */
    public final long mo12414x() {
        return f50896A.m12901b().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13618jw
    /* renamed from: y */
    public final long mo12413y() {
        return f50897B.m12901b().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13618jw
    /* renamed from: z */
    public final long mo12412z() {
        return f50898C.m12901b().longValue();
    }
}
