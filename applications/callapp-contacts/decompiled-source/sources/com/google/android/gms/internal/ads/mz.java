package com.google.android.gms.internal.ads;

import android.os.SystemClock;
import android.util.Log;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/mz.class */
public class mz {

    /* renamed from: b  reason: collision with root package name */
    private static String f28208b = "Volley";

    /* renamed from: a  reason: collision with root package name */
    public static boolean f28207a = Log.isLoggable("Volley", 2);

    /* renamed from: c  reason: collision with root package name */
    private static final String f28209c = mz.class.getName();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/mz$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public static final boolean f28210a = mz.f28207a;

        /* renamed from: b  reason: collision with root package name */
        private final List<or> f28211b = new ArrayList();

        /* renamed from: c  reason: collision with root package name */
        private boolean f28212c = false;

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v19, types: [long] */
        /* JADX WARN: Type inference failed for: r0v27, types: [long] */
        /* JADX WARN: Type inference failed for: r0v29 */
        /* JADX WARN: Type inference failed for: r0v42 */
        /* JADX WARN: Unknown variable types count: 2 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void a(java.lang.String r10) {
            /*
                Method dump skipped, instructions count: 214
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.mz.a.a(java.lang.String):void");
        }

        public final void a(String str, long j) {
            synchronized (this) {
                if (!this.f28212c) {
                    this.f28211b.add(new or(str, j, SystemClock.elapsedRealtime()));
                } else {
                    throw new IllegalStateException("Marker added to finished log");
                }
            }
        }

        protected final void finalize() throws Throwable {
            if (!this.f28212c) {
                a("Request on the loose");
                mz.c("Marker log finalized without finish() - uncaught exit point for request", new Object[0]);
            }
        }
    }

    public static void a(String str, Object... objArr) {
        if (f28207a) {
            d(str, objArr);
        }
    }

    public static void a(Throwable th, String str, Object... objArr) {
        Log.e(f28208b, d(str, objArr), th);
    }

    public static void b(String str, Object... objArr) {
        d(str, objArr);
    }

    public static void c(String str, Object... objArr) {
        Log.e(f28208b, d(str, objArr));
    }

    private static String d(String str, Object... objArr) {
        String str2;
        if (objArr != null) {
            str = String.format(Locale.US, str, objArr);
        }
        StackTraceElement[] stackTrace = new Throwable().fillInStackTrace().getStackTrace();
        int i = 2;
        while (true) {
            if (i >= stackTrace.length) {
                str2 = "<unknown>";
                break;
            } else if (!stackTrace[i].getClassName().equals(f28209c)) {
                String className = stackTrace[i].getClassName();
                String substring = className.substring(className.lastIndexOf(46) + 1);
                String substring2 = substring.substring(substring.lastIndexOf(36) + 1);
                String methodName = stackTrace[i].getMethodName();
                StringBuilder sb = new StringBuilder(String.valueOf(substring2).length() + 1 + String.valueOf(methodName).length());
                sb.append(substring2);
                sb.append(".");
                sb.append(methodName);
                str2 = sb.toString();
                break;
            } else {
                i++;
            }
        }
        return String.format(Locale.US, "[%d] %s: %s", Long.valueOf(Thread.currentThread().getId()), str2, str);
    }
}
