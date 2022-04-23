package com.google.android.gms.internal.ads;

import com.zhy.http.okhttp.BuildConfig;
import com.zhy.http.okhttp.OkHttpUtils;
/* renamed from: com.google.android.gms.internal.ads.h5 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/h5.class */
public final class C1765h5 {

    /* renamed from: a */
    public static final C1888p4<Long> f6730a = C1888p4.m6225b("gads:dynamite_load:fail:sample_rate", OkHttpUtils.DEFAULT_MILLISECONDS);

    /* renamed from: b */
    public static final C1888p4<Boolean> f6731b = C1888p4.m6226a("gads:report_dynamite_crash_in_background_thread", false);

    /* renamed from: c */
    public static final C1888p4<String> f6732c = C1888p4.m6223d("gads:public_beta:traffic_multiplier", BuildConfig.VERSION_NAME);

    /* renamed from: d */
    public static final C1888p4<String> f6733d = C1888p4.m6223d("gads:sdk_crash_report_class_prefix", "com.google.");

    /* renamed from: e */
    public static final C1888p4<Boolean> f6734e = C1888p4.m6226a("gads:sdk_crash_report_enabled", false);

    /* renamed from: f */
    public static final C1888p4<Boolean> f6735f = C1888p4.m6226a("gads:sdk_crash_report_full_stacktrace", false);

    /* renamed from: g */
    public static final C1888p4<Double> f6736g = C1888p4.m6224c("gads:trapped_exception_sample_rate", 0.01d);
}
