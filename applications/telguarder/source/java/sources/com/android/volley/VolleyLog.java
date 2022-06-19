package com.android.volley;

import android.os.SystemClock;
import android.util.Log;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
/* loaded from: classes-dex2jar.jar:com/android/volley/VolleyLog.class */
public class VolleyLog {
    public static String TAG = "Volley";
    public static boolean DEBUG = Log.isLoggable("Volley", 2);
    private static final String CLASS_NAME = VolleyLog.class.getName();

    /* loaded from: classes-dex2jar.jar:com/android/volley/VolleyLog$MarkerLog.class */
    public static class MarkerLog {
        public static final boolean ENABLED = VolleyLog.DEBUG;
        private static final long MIN_DURATION_FOR_LOGGING_MS = 0;
        private final List<Marker> mMarkers = new ArrayList();
        private boolean mFinished = false;

        /* loaded from: classes-dex2jar.jar:com/android/volley/VolleyLog$MarkerLog$Marker.class */
        public static class Marker {
            public final String name;
            public final long thread;
            public final long time;

            public Marker(String str, long j, long j2) {
                this.name = str;
                this.thread = j;
                this.time = j2;
            }
        }

        private long getTotalDuration() {
            if (this.mMarkers.size() == 0) {
                return 0L;
            }
            long j = this.mMarkers.get(0).time;
            List<Marker> list = this.mMarkers;
            return list.get(list.size() - 1).time - j;
        }

        public void add(String str, long j) {
            synchronized (this) {
                if (this.mFinished) {
                    throw new IllegalStateException("Marker added to finished log");
                }
                this.mMarkers.add(new Marker(str, j, SystemClock.elapsedRealtime()));
            }
        }

        protected void finalize() throws Throwable {
            if (!this.mFinished) {
                finish("Request on the loose");
                VolleyLog.m1390e("Marker log finalized without finish() - uncaught exit point for request", new Object[0]);
            }
        }

        /* JADX WARN: Type inference failed for: r0v12, types: [long] */
        /* JADX WARN: Type inference failed for: r0v24, types: [long] */
        public void finish(String str) {
            synchronized (this) {
                this.mFinished = true;
                long totalDuration = getTotalDuration();
                if (totalDuration <= 0) {
                    return;
                }
                char c = this.mMarkers.get(0).time;
                VolleyLog.m1391d("(%-4d ms) %s", Long.valueOf(totalDuration), str);
                for (Marker marker : this.mMarkers) {
                    ?? r0 = marker.time;
                    VolleyLog.m1391d("(+%-4d) [%2d] %s", Long.valueOf(r0 - c), Long.valueOf(marker.thread), marker.name);
                    c = r0;
                }
            }
        }
    }

    private static String buildMessage(String str, Object... objArr) {
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
                str2 = substring.substring(substring.lastIndexOf(36) + 1) + "." + stackTrace[i].getMethodName();
                break;
            } else {
                i++;
            }
        }
        return String.format(Locale.US, "[%d] %s: %s", Long.valueOf(Thread.currentThread().getId()), str2, str);
    }

    /* renamed from: d */
    public static void m1391d(String str, Object... objArr) {
        Log.d(TAG, buildMessage(str, objArr));
    }

    /* renamed from: e */
    public static void m1390e(String str, Object... objArr) {
        Log.e(TAG, buildMessage(str, objArr));
    }

    /* renamed from: e */
    public static void m1389e(Throwable th, String str, Object... objArr) {
        Log.e(TAG, buildMessage(str, objArr), th);
    }

    public static void setTag(String str) {
        m1391d("Changing log tag to %s", str);
        TAG = str;
        DEBUG = Log.isLoggable(str, 2);
    }

    /* renamed from: v */
    public static void m1388v(String str, Object... objArr) {
        if (DEBUG) {
            Log.v(TAG, buildMessage(str, objArr));
        }
    }

    public static void wtf(String str, Object... objArr) {
        Log.wtf(TAG, buildMessage(str, objArr));
    }

    public static void wtf(Throwable th, String str, Object... objArr) {
        Log.wtf(TAG, buildMessage(str, objArr), th);
    }
}
