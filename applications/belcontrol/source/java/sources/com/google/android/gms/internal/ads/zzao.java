package com.google.android.gms.internal.ads;

import android.os.SystemClock;
import android.util.Log;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzao.class */
public class zzao {
    private static String TAG = "Volley";
    public static boolean DEBUG = Log.isLoggable("Volley", 2);
    private static final String CLASS_NAME = zzao.class.getName();

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzao$zza.class */
    public static final class zza {
        public static final boolean zzbv = zzao.DEBUG;
        private final List<zzaq> zzbw = new ArrayList();
        private boolean mFinished = false;

        public final void finalize() {
            if (!this.mFinished) {
                zzd("Request on the loose");
                zzao.m4417e("Marker log finalized without finish() - uncaught exit point for request", new Object[0]);
            }
        }

        public final void zza(String str, long j) {
            synchronized (this) {
                if (this.mFinished) {
                    throw new IllegalStateException("Marker added to finished log");
                }
                this.zzbw.add(new zzaq(str, j, SystemClock.elapsedRealtime()));
            }
        }

        /* JADX WARN: Type inference failed for: r0v13, types: [long] */
        /* JADX WARN: Type inference failed for: r0v27, types: [long] */
        /* JADX WARN: Type inference failed for: r0v43, types: [long] */
        public final void zzd(String str) {
            char c;
            synchronized (this) {
                this.mFinished = true;
                if (this.zzbw.size() == 0) {
                    c = 0;
                } else {
                    long j = this.zzbw.get(0).time;
                    List<zzaq> list = this.zzbw;
                    c = list.get(list.size() - 1).time - j;
                }
                if (c <= 0) {
                    return;
                }
                ?? r0 = this.zzbw.get(0).time;
                zzao.m4418d("(%-4d ms) %s", Long.valueOf(c), str);
                Iterator<zzaq> it = this.zzbw.iterator();
                char c2 = r0;
                while (true) {
                    char c3 = c2;
                    if (!it.hasNext()) {
                        return;
                    }
                    zzaq next = it.next();
                    ?? r02 = next.time;
                    zzao.m4418d("(+%-4d) [%2d] %s", Long.valueOf(r02 - c3), Long.valueOf(next.zzbu), next.name);
                    c2 = r02;
                }
            }
        }
    }

    /* renamed from: d */
    public static void m4418d(String str, Object... objArr) {
        Log.d(TAG, zza(str, objArr));
    }

    /* renamed from: e */
    public static void m4417e(String str, Object... objArr) {
        Log.e(TAG, zza(str, objArr));
    }

    /* renamed from: v */
    public static void m4416v(String str, Object... objArr) {
        if (DEBUG) {
            Log.v(TAG, zza(str, objArr));
        }
    }

    private static String zza(String str, Object... objArr) {
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
            } else if (!stackTrace[i].getClassName().equals(CLASS_NAME)) {
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

    public static void zza(Throwable th, String str, Object... objArr) {
        Log.e(TAG, zza(str, objArr), th);
    }
}
