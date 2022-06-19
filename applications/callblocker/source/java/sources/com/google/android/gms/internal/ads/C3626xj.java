package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.StrictMode;
import java.util.concurrent.Callable;
/* renamed from: com.google.android.gms.internal.ads.xj */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/xj.class */
public final class C3626xj {
    /* JADX WARN: Multi-variable type inference failed */
    @Deprecated
    /* renamed from: a */
    public static <T> T m6821a(Context context, Callable<T> callable) {
        T t;
        try {
            t = m6819a(callable);
        } catch (Throwable th) {
            C3645yb.m6748c("Unexpected exception.", th);
            C3398oy.m7353a(context).mo7345a(th, "StrictModeUtil.runWithLaxStrictMode");
            t = null;
        }
        return t;
    }

    /* renamed from: a */
    public static <T> T m6820a(cov<T> covVar) {
        StrictMode.ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
        try {
            StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(threadPolicy).permitDiskReads().permitDiskWrites().build());
            return covVar.mo7868a();
        } finally {
            StrictMode.setThreadPolicy(threadPolicy);
        }
    }

    /* renamed from: a */
    private static <T> T m6819a(Callable<T> callable) {
        StrictMode.ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
        try {
            StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(threadPolicy).permitDiskReads().permitDiskWrites().build());
            return callable.call();
        } finally {
            StrictMode.setThreadPolicy(threadPolicy);
        }
    }
}
