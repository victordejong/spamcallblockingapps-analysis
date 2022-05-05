package com.google.android.gms.analytics.internal;

import com.asus.updatesdk.BuildConfig;
import com.google.android.gms.common.internal.b;
import com.google.android.gms.internal.bg;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/analytics/internal/zzy.class */
public final class zzy {
    public static zza<Boolean> zzXD = zza.a("analytics.service_enabled", false);
    public static zza<Boolean> zzXE = zza.a("analytics.service_client_enabled", true);
    public static zza<String> zzXF = zza.a("analytics.log_tag", "GAv4", "GAv4-SVC");
    public static zza<Long> zzXG = zza.a("analytics.max_tokens", 60L);
    public static zza<Float> zzXH = zza.a("analytics.tokens_per_sec");
    public static zza<Integer> zzXI = zza.a("analytics.max_stored_hits", 2000, 20000);
    public static zza<Integer> zzXJ = zza.a("analytics.max_stored_hits_per_app", 2000);
    public static zza<Integer> zzXK = zza.a("analytics.max_stored_properties_per_app", 100);
    public static zza<Long> zzXL = zza.a("analytics.local_dispatch_millis", 1800000L, 120000L);
    public static zza<Long> zzXM = zza.a("analytics.initial_local_dispatch_millis", 5000L, 5000L);
    public static zza<Long> zzXN = zza.a("analytics.min_local_dispatch_millis", 120000L);
    public static zza<Long> zzXO = zza.a("analytics.max_local_dispatch_millis", 7200000L);
    public static zza<Long> zzXP = zza.a("analytics.dispatch_alarm_millis", 7200000L);
    public static zza<Long> zzXQ = zza.a("analytics.max_dispatch_alarm_millis", 32400000L);
    public static zza<Integer> zzXR = zza.a("analytics.max_hits_per_dispatch", 20);
    public static zza<Integer> zzXS = zza.a("analytics.max_hits_per_batch", 20);
    public static zza<String> zzXT = zza.a("analytics.insecure_host", "http://www.google-analytics.com");
    public static zza<String> zzXU = zza.a("analytics.secure_host", "https://ssl.google-analytics.com");
    public static zza<String> zzXV = zza.a("analytics.simple_endpoint", "/collect");
    public static zza<String> zzXW = zza.a("analytics.batching_endpoint", "/batch");
    public static zza<Integer> zzXX = zza.a("analytics.max_get_length", 2036);
    public static zza<String> zzXY = zza.a("analytics.batching_strategy.k", zzm.BATCH_BY_COUNT.name(), zzm.BATCH_BY_COUNT.name());
    public static zza<String> zzXZ = zza.a("analytics.compression_strategy.k", zzo.GZIP.name());
    public static zza<Integer> zzYa = zza.a("analytics.max_hits_per_request.k", 20);
    public static zza<Integer> zzYb = zza.a("analytics.max_hit_length.k", 8192);
    public static zza<Integer> zzYc = zza.a("analytics.max_post_length.k", 8192);
    public static zza<Integer> zzYd = zza.a("analytics.max_batch_post_length", 8192);
    public static zza<String> zzYe = zza.a("analytics.fallback_responses.k", "404,502");
    public static zza<Integer> zzYf = zza.a("analytics.batch_retry_interval.seconds.k", 3600);
    public static zza<Long> zzYg = zza.a("analytics.service_monitor_interval", 86400000L);
    public static zza<Integer> zzYh = zza.a("analytics.http_connection.connect_timeout_millis", 60000);
    public static zza<Integer> zzYi = zza.a("analytics.http_connection.read_timeout_millis", 61000);
    public static zza<Long> zzYj = zza.a("analytics.campaigns.time_limit", 86400000L);
    public static zza<String> zzYk = zza.a("analytics.first_party_experiment_id", BuildConfig.FLAVOR);
    public static zza<Integer> zzYl = zza.a("analytics.first_party_experiment_variant", 0);
    public static zza<Boolean> zzYm = zza.a("analytics.test.disable_receiver", false);
    public static zza<Long> zzYn = zza.a("analytics.service_client.idle_disconnect_millis", 10000L, 10000L);
    public static zza<Long> zzYo = zza.a("analytics.service_client.connect_timeout_millis", 5000L);
    public static zza<Long> zzYp = zza.a("analytics.service_client.second_connect_delay_millis", 5000L);
    public static zza<Long> zzYq = zza.a("analytics.service_client.unexpected_reconnect_millis", 60000L);
    public static zza<Long> zzYr = zza.a("analytics.service_client.reconnect_throttle_millis", 1800000L);
    public static zza<Long> zzYs = zza.a("analytics.monitoring.sample_period_millis", 86400000L);
    public static zza<Long> zzYt = zza.a("analytics.initialization_warning_threshold", 5000L);

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/analytics/internal/zzy$zza.class */
    public static final class zza<V> {

        /* renamed from: a  reason: collision with root package name */
        private final V f3884a;

        /* renamed from: b  reason: collision with root package name */
        private final bg<V> f3885b;

        private zza(bg<V> bgVar, V v) {
            b.a(bgVar);
            this.f3885b = bgVar;
            this.f3884a = v;
        }

        static zza<Float> a(String str) {
            return new zza<>(bg.a(str, Float.valueOf(0.5f)), Float.valueOf(0.5f));
        }

        static zza<Integer> a(String str, int i) {
            return a(str, i, i);
        }

        static zza<Integer> a(String str, int i, int i2) {
            return new zza<>(bg.a(str, Integer.valueOf(i2)), Integer.valueOf(i));
        }

        static zza<Long> a(String str, long j) {
            return a(str, j, j);
        }

        static zza<Long> a(String str, long j, long j2) {
            return new zza<>(bg.a(str, Long.valueOf(j2)), Long.valueOf(j));
        }

        static zza<String> a(String str, String str2) {
            return a(str, str2, str2);
        }

        static zza<String> a(String str, String str2, String str3) {
            return new zza<>(bg.a(str, str3), str2);
        }

        static zza<Boolean> a(String str, boolean z) {
            return new zza<>(bg.a(str, z), Boolean.valueOf(z));
        }

        public final V get() {
            return this.f3884a;
        }
    }
}
