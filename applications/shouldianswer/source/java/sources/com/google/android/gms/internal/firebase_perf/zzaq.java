package com.google.android.gms.internal.firebase_perf;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzaq.class */
public final class zzaq {
    private static final zzo<String, String> zzhc = new zzn().zzb("fpr_enabled", "fpr_enabled").zzb("fpr_disabled_android_versions", "fpr_disabled_android_versions").zzb("sessions_sampling_percentage", "fpr_vc_session_sampling_rate").zzb("trace_sampling_rate", "fpr_vc_trace_sampling_rate").zzb("network_sampling_rate", "fpr_vc_network_request_sampling_rate").zzb("trace_flimit_events", "fpr_rl_trace_event_count_fg").zzb("trace_blimit_events", "fpr_rl_trace_event_count_bg").zzb("network_flimit_events", "fpr_rl_network_event_count_fg").zzb("network_blimit_events", "fpr_rl_network_event_count_bg").zzb("trace_flimit_time", "fpr_rl_time_limit_sec").zzb("trace_blimit_time", "fpr_rl_time_limit_sec").zzb("network_flimit_time", "fpr_rl_time_limit_sec").zzb("network_blimit_time", "fpr_rl_time_limit_sec").zzb("sessions_cpu_capture_frequency_fg_ms", "fpr_session_gauge_cpu_capture_frequency_fg_ms").zzb("sessions_memory_capture_frequency_fg_ms", "fpr_session_gauge_memory_capture_frequency_fg_ms").zzb("sessions_cpu_capture_frequency_bg_ms", "fpr_session_gauge_cpu_capture_frequency_bg_ms").zzb("sessions_memory_capture_frequency_bg_ms", "fpr_session_gauge_memory_capture_frequency_bg_ms").zzb("sessions_max_length_minutes", "fpr_session_max_duration_min").zzg();

    public static String zzk(String str) {
        return zzhc.getOrDefault(str, str);
    }
}
