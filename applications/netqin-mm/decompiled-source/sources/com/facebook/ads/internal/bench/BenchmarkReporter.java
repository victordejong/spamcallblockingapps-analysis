package com.facebook.ads.internal.bench;

import android.util.Log;
import java.util.Locale;
/* loaded from: classes-dex2jar.jar:com/facebook/ads/internal/bench/BenchmarkReporter.class */
public class BenchmarkReporter {
    public static final String TAG = "Benchmark";

    public static void executed(String str, String str2, String str3, long j) {
        Log.v(TAG, String.format(Locale.US, "Executed %s.%s%s: %d us", str, str2, str3, Long.valueOf(j / 1000)));
    }

    public static void executedWithWarning(String str, String str2, String str3, long j, long j2) {
        Log.w(TAG, String.format(Locale.US, "Executed (slow) %s.%s%s: %d us (limit %d us)", str, str2, str3, Long.valueOf(j / 1000), Long.valueOf(j2 / 1000)));
    }

    public static void failed(String str, String str2, String str3, long j, long j2) {
        long j3 = j / 1000;
        long j4 = j2 / 1000;
        Log.e(TAG, String.format(Locale.US, "Execution of %s.%s%s took %d us (limit is %d us)", str, str2, str3, Long.valueOf(j3), Long.valueOf(j4)));
        throw new InvocationTooSlowException(String.format(Locale.US, "Execution of %s.%s%s took %d us (limit is %d us)", str, str2, str3, Long.valueOf(j3), Long.valueOf(j4)));
    }

    public static void thrown(String str, String str2, String str3, Throwable th, long j) {
        Log.e(TAG, String.format(Locale.US, "Failed %s.%s%s: %d us (%s: %s)", str, str2, str3, Long.valueOf(j / 1000), th.getClass().getName(), th.getMessage()));
    }
}
