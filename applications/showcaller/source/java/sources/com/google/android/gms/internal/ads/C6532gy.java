package com.google.android.gms.internal.ads;

import com.zhy.http.okhttp.BuildConfig;
import com.zhy.http.okhttp.OkHttpUtils;
/* renamed from: com.google.android.gms.internal.ads.gy */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/gy.class */
public final class C6532gy {

    /* renamed from: a */
    public static final C6791nx<Long> f23732a = C6791nx.m12802b("gads:dynamite_load:fail:sample_rate", OkHttpUtils.DEFAULT_MILLISECONDS);

    /* renamed from: b */
    public static final C6791nx<Boolean> f23733b = C6791nx.m12803a("gads:report_dynamite_crash_in_background_thread", false);

    /* renamed from: c */
    public static final C6791nx<String> f23734c = C6791nx.m12800d("gads:public_beta:traffic_multiplier", BuildConfig.VERSION_NAME);

    /* renamed from: d */
    public static final C6791nx<String> f23735d = C6791nx.m12800d("gads:sdk_crash_report_class_prefix", "com.google.");

    /* renamed from: e */
    public static final C6791nx<Boolean> f23736e = C6791nx.m12803a("gads:sdk_crash_report_enabled", false);

    /* renamed from: f */
    public static final C6791nx<Boolean> f23737f = C6791nx.m12803a("gads:sdk_crash_report_full_stacktrace", false);

    /* renamed from: g */
    public static final C6791nx<Double> f23738g = C6791nx.m12801c("gads:trapped_exception_sample_rate", 0.01d);
}
