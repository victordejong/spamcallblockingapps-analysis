package com.google.android.gms.internal.ads;

import android.util.Log;
import java.util.Iterator;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ei0.class */
public class ei0 {

    /* renamed from: a */
    protected static final hv2 f22181a = hv2.m14534c(4000);

    /* renamed from: a */
    public static void m15469a(String str) {
        if (m15460j(3)) {
            if (str == null || str.length() <= 4000) {
                Log.d("Ads", str);
                return;
            }
            Iterator<String> it = f22181a.m14533d(str).iterator();
            boolean z = true;
            while (true) {
                boolean z2 = z;
                if (!it.hasNext()) {
                    return;
                }
                String next = it.next();
                if (z2) {
                    Log.d("Ads", next);
                } else {
                    Log.d("Ads-cont", next);
                }
                z = false;
            }
        }
    }

    /* renamed from: b */
    public static void m15468b(String str, Throwable th) {
        if (m15460j(3)) {
            Log.d("Ads", str, th);
        }
    }

    /* renamed from: c */
    public static void m15467c(String str) {
        if (m15460j(6)) {
            if (str == null || str.length() <= 4000) {
                Log.e("Ads", str);
                return;
            }
            Iterator<String> it = f22181a.m14533d(str).iterator();
            boolean z = true;
            while (true) {
                boolean z2 = z;
                if (!it.hasNext()) {
                    return;
                }
                String next = it.next();
                if (z2) {
                    Log.e("Ads", next);
                } else {
                    Log.e("Ads-cont", next);
                }
                z = false;
            }
        }
    }

    /* renamed from: d */
    public static void m15466d(String str, Throwable th) {
        if (m15460j(6)) {
            Log.e("Ads", str, th);
        }
    }

    /* renamed from: e */
    public static void m15465e(String str) {
        if (m15460j(4)) {
            if (str == null || str.length() <= 4000) {
                Log.i("Ads", str);
                return;
            }
            Iterator<String> it = f22181a.m14533d(str).iterator();
            boolean z = true;
            while (true) {
                boolean z2 = z;
                if (!it.hasNext()) {
                    return;
                }
                String next = it.next();
                if (z2) {
                    Log.i("Ads", next);
                } else {
                    Log.i("Ads-cont", next);
                }
                z = false;
            }
        }
    }

    /* renamed from: f */
    public static void m15464f(String str) {
        if (m15460j(5)) {
            if (str == null || str.length() <= 4000) {
                Log.w("Ads", str);
                return;
            }
            Iterator<String> it = f22181a.m14533d(str).iterator();
            boolean z = true;
            while (true) {
                boolean z2 = z;
                if (!it.hasNext()) {
                    return;
                }
                String next = it.next();
                if (z2) {
                    Log.w("Ads", next);
                } else {
                    Log.w("Ads-cont", next);
                }
                z = false;
            }
        }
    }

    /* renamed from: g */
    public static void m15463g(String str, Throwable th) {
        if (m15460j(5)) {
            Log.w("Ads", str, th);
        }
    }

    /* renamed from: h */
    static String m15462h(String str) {
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        String str2 = str;
        if (stackTrace.length >= 4) {
            int lineNumber = stackTrace[3].getLineNumber();
            StringBuilder sb = new StringBuilder(str.length() + 13);
            sb.append(str);
            sb.append(" @");
            sb.append(lineNumber);
            str2 = sb.toString();
        }
        return str2;
    }

    /* renamed from: i */
    public static void m15461i(String str, Throwable th) {
        if (m15460j(5)) {
            if (th != null) {
                m15463g(m15462h(str), th);
            } else {
                m15464f(m15462h(str));
            }
        }
    }

    /* renamed from: j */
    public static boolean m15460j(int i) {
        return i >= 5 || Log.isLoggable("Ads", i);
    }
}
