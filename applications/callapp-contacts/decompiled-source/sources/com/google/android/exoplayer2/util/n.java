package com.google.android.exoplayer2.util;

import android.text.TextUtils;
import android.util.Log;
import java.net.UnknownHostException;
import org.apache.commons.lang3.StringUtils;
import org.checkerframework.dataflow.qual.Pure;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/util/n.class */
public final class n {

    /* renamed from: a  reason: collision with root package name */
    private static int f22308a = 0;

    /* renamed from: b  reason: collision with root package name */
    private static boolean f22309b = true;

    private n() {
    }

    @Pure
    private static String a(String str, Throwable th) {
        String a2 = a(th);
        String str2 = str;
        if (!TextUtils.isEmpty(a2)) {
            str2 = str + "\n  " + a2.replace(StringUtils.LF, "\n  ") + '\n';
        }
        return str2;
    }

    @Pure
    private static String a(Throwable th) {
        boolean z;
        if (th == null) {
            return null;
        }
        Throwable th2 = th;
        while (true) {
            if (th2 == null) {
                z = false;
                break;
            } else if (th2 instanceof UnknownHostException) {
                z = true;
                break;
            } else {
                th2 = th2.getCause();
            }
        }
        return z ? "UnknownHostException (no network)" : !f22309b ? th.getMessage() : Log.getStackTraceString(th).trim().replace("\t", "    ");
    }

    @Pure
    public static void a() {
    }

    @Pure
    public static void a(String str, String str2) {
        if (f22308a <= 2) {
            Log.w(str, str2);
        }
    }

    @Pure
    public static void a(String str, String str2, Throwable th) {
        a(str, a(str2, th));
    }

    @Pure
    public static void b() {
    }

    @Pure
    public static void b(String str, String str2) {
        if (f22308a <= 3) {
            Log.e(str, str2);
        }
    }

    @Pure
    public static void b(String str, String str2, Throwable th) {
        b(str, a(str2, th));
    }
}
