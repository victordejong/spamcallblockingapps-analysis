package com.google.android.exoplayer2.util;

import android.text.TextUtils;
import android.util.Log;
import java.net.UnknownHostException;
import org.apache.commons.lang3.StringUtils;
import org.checkerframework.dataflow.qual.Pure;
/* renamed from: com.google.android.exoplayer2.util.n */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/util/n.class */
public final class C11617n {

    /* renamed from: a */
    private static int f38697a = 0;

    /* renamed from: b */
    private static boolean f38698b = true;

    private C11617n() {
    }

    @Pure
    /* renamed from: a */
    private static String m19861a(String str, Throwable th) {
        String m19860a = m19860a(th);
        String str2 = str;
        if (!TextUtils.isEmpty(m19860a)) {
            str2 = str + "\n  " + m19860a.replace(StringUtils.f67179LF, "\n  ") + '\n';
        }
        return str2;
    }

    @Pure
    /* renamed from: a */
    private static String m19860a(Throwable th) {
        boolean z;
        if (th == null) {
            return null;
        }
        Throwable th2 = th;
        while (true) {
            Throwable th3 = th2;
            if (th3 == null) {
                z = false;
                break;
            } else if (th3 instanceof UnknownHostException) {
                z = true;
                break;
            } else {
                th2 = th3.getCause();
            }
        }
        return z ? "UnknownHostException (no network)" : !f38698b ? th.getMessage() : Log.getStackTraceString(th).trim().replace("\t", "    ");
    }

    @Pure
    /* renamed from: a */
    public static void m19864a() {
    }

    @Pure
    /* renamed from: a */
    public static void m19863a(String str, String str2) {
        if (f38697a <= 2) {
            Log.w(str, str2);
        }
    }

    @Pure
    /* renamed from: a */
    public static void m19862a(String str, String str2, Throwable th) {
        m19863a(str, m19861a(str2, th));
    }

    @Pure
    /* renamed from: b */
    public static void m19859b() {
    }

    @Pure
    /* renamed from: b */
    public static void m19858b(String str, String str2) {
        if (f38697a <= 3) {
            Log.e(str, str2);
        }
    }

    @Pure
    /* renamed from: b */
    public static void m19857b(String str, String str2, Throwable th) {
        m19858b(str, m19861a(str2, th));
    }
}
