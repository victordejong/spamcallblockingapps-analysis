package com.google.android.gms.internal.measurement;

import android.support.v4.media.session.PlaybackStateCompat;
import com.mopub.common.Constants;
import com.sinch.verification.flashcall.initialization.FlashCallInitializationDetails;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/jx.class */
public final class jx implements jw {
    public static final ec<Long> A;
    public static final ec<Long> B;
    public static final ec<Long> C;
    public static final ec<Long> D;
    public static final ec<Long> E;
    public static final ec<Long> F;
    public static final ec<Long> G;
    public static final ec<Long> H;
    public static final ec<Long> I;
    public static final ec<Long> J;
    public static final ec<String> K;
    public static final ec<Long> L;

    /* renamed from: a  reason: collision with root package name */
    public static final ec<Long> f29172a;

    /* renamed from: b  reason: collision with root package name */
    public static final ec<Long> f29173b;

    /* renamed from: c  reason: collision with root package name */
    public static final ec<Long> f29174c;

    /* renamed from: d  reason: collision with root package name */
    public static final ec<String> f29175d;
    public static final ec<String> e;
    public static final ec<String> f;
    public static final ec<Long> g;
    public static final ec<Long> h;
    public static final ec<Long> i;
    public static final ec<Long> j;
    public static final ec<Long> k;
    public static final ec<Long> l;
    public static final ec<Long> m;
    public static final ec<Long> n;
    public static final ec<Long> o;
    public static final ec<Long> p;
    public static final ec<Long> q;
    public static final ec<Long> r;
    public static final ec<String> s;
    public static final ec<Long> t;
    public static final ec<Long> u;
    public static final ec<Long> v;
    public static final ec<Long> w;
    public static final ec<Long> x;
    public static final ec<Long> y;
    public static final ec<Long> z;

    static {
        ea eaVar = new ea(ds.a());
        f29172a = eaVar.a("measurement.ad_id_cache_time", 10000L);
        f29173b = eaVar.a("measurement.max_bundles_per_iteration", 100L);
        f29174c = eaVar.a("measurement.config.cache_time", 86400000L);
        f29175d = eaVar.a("measurement.log_tag", "FA");
        e = eaVar.a("measurement.config.url_authority", "app-measurement.com");
        f = eaVar.a("measurement.config.url_scheme", Constants.HTTPS);
        g = eaVar.a("measurement.upload.debug_upload_interval", 1000L);
        h = eaVar.a("measurement.lifetimevalue.max_currency_tracked", 4L);
        i = eaVar.a("measurement.store.max_stored_events_per_app", 100000L);
        j = eaVar.a("measurement.experiment.max_ids", 50L);
        k = eaVar.a("measurement.audience.filter_result_max_count", 200L);
        l = eaVar.a("measurement.alarm_manager.minimum_interval", com.callapp.contacts.model.Constants.MINUTE_IN_MILLIS);
        m = eaVar.a("measurement.upload.minimum_delay", 500L);
        n = eaVar.a("measurement.monitoring.sample_period_millis", 86400000L);
        o = eaVar.a("measurement.upload.realtime_upload_interval", 10000L);
        p = eaVar.a("measurement.upload.refresh_blacklisted_config_interval", com.callapp.contacts.model.Constants.WEEK_IN_MILLIS);
        q = eaVar.a("measurement.config.cache_time.service", com.callapp.contacts.model.Constants.HOUR_IN_MILLIS);
        r = eaVar.a("measurement.service_client.idle_disconnect_millis", 5000L);
        s = eaVar.a("measurement.log_tag.service", "FA-SVC");
        t = eaVar.a("measurement.upload.stale_data_deletion_interval", 86400000L);
        u = eaVar.a("measurement.sdk.attribution.cache.ttl", com.callapp.contacts.model.Constants.WEEK_IN_MILLIS);
        v = eaVar.a("measurement.upload.backoff_period", 43200000L);
        w = eaVar.a("measurement.upload.initial_upload_delay_time", FlashCallInitializationDetails.DEFAULT_INTERCEPTION_TIMEOUT);
        x = eaVar.a("measurement.upload.interval", com.callapp.contacts.model.Constants.HOUR_IN_MILLIS);
        y = eaVar.a("measurement.upload.max_bundle_size", PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH);
        z = eaVar.a("measurement.upload.max_bundles", 100L);
        A = eaVar.a("measurement.upload.max_conversions_per_day", 500L);
        B = eaVar.a("measurement.upload.max_error_events_per_day", 1000L);
        C = eaVar.a("measurement.upload.max_events_per_bundle", 1000L);
        D = eaVar.a("measurement.upload.max_events_per_day", 100000L);
        E = eaVar.a("measurement.upload.max_public_events_per_day", 50000L);
        F = eaVar.a("measurement.upload.max_queue_time", 2419200000L);
        G = eaVar.a("measurement.upload.max_realtime_events_per_day", 10L);
        H = eaVar.a("measurement.upload.max_batch_size", PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH);
        I = eaVar.a("measurement.upload.retry_count", 6L);
        J = eaVar.a("measurement.upload.retry_time", 1800000L);
        K = eaVar.a("measurement.upload.url", "https://app-measurement.com/a");
        L = eaVar.a("measurement.upload.window_interval", com.callapp.contacts.model.Constants.HOUR_IN_MILLIS);
    }

    @Override // com.google.android.gms.internal.measurement.jw
    public final long A() {
        return D.b().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.jw
    public final long B() {
        return E.b().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.jw
    public final long C() {
        return F.b().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.jw
    public final long D() {
        return G.b().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.jw
    public final long E() {
        return H.b().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.jw
    public final long F() {
        return I.b().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.jw
    public final long G() {
        return J.b().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.jw
    public final String H() {
        return K.b();
    }

    @Override // com.google.android.gms.internal.measurement.jw
    public final long I() {
        return L.b().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.jw
    public final long a() {
        return f29172a.b().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.jw
    public final long b() {
        return f29173b.b().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.jw
    public final long c() {
        return f29174c.b().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.jw
    public final String d() {
        return e.b();
    }

    @Override // com.google.android.gms.internal.measurement.jw
    public final String e() {
        return f.b();
    }

    @Override // com.google.android.gms.internal.measurement.jw
    public final long f() {
        return g.b().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.jw
    public final long g() {
        return h.b().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.jw
    public final long h() {
        return i.b().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.jw
    public final long i() {
        return j.b().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.jw
    public final long j() {
        return k.b().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.jw
    public final long k() {
        return l.b().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.jw
    public final long l() {
        return m.b().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.jw
    public final long m() {
        return n.b().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.jw
    public final long n() {
        return o.b().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.jw
    public final long o() {
        return p.b().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.jw
    public final long p() {
        return r.b().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.jw
    public final long q() {
        return t.b().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.jw
    public final long r() {
        return u.b().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.jw
    public final long s() {
        return v.b().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.jw
    public final long t() {
        return w.b().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.jw
    public final long u() {
        return x.b().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.jw
    public final long v() {
        return y.b().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.jw
    public final long w() {
        return z.b().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.jw
    public final long x() {
        return A.b().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.jw
    public final long y() {
        return B.b().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.jw
    public final long z() {
        return C.b().longValue();
    }
}
