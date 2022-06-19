package com.google.android.gms.internal.ads;

import androidx.work.WorkRequest;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzadr.class */
public final class zzadr {
    public static zzacx<Long> zzdeq = zzacx.zzb("gads:dynamite_load:fail:sample_rate", (long) WorkRequest.MIN_BACKOFF_MILLIS);
    public static zzacx<Boolean> zzder = zzacx.zzg("gads:report_dynamite_crash_in_background_thread", false);
    public static zzacx<String> zzdes = zzacx.zzh("gads:public_beta:traffic_multiplier", "1.0");
    public static zzacx<String> zzdet = zzacx.zzh("gads:sdk_crash_report_class_prefix", "com.google.");
    public static zzacx<Boolean> zzdeu = zzacx.zzg("gads:sdk_crash_report_enabled", false);
    public static zzacx<Boolean> zzdev = zzacx.zzg("gads:sdk_crash_report_full_stacktrace", false);
    public static zzacx<Double> zzdew = zzacx.zzb("gads:trapped_exception_sample_rate", 0.01d);
}
