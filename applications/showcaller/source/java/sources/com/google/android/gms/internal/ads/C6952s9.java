package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import android.util.Log;
import java.net.UnknownHostException;
import org.checkerframework.dataflow.qual.Pure;
/* renamed from: com.google.android.gms.internal.ads.s9 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/s9.class */
public final class C6952s9 {
    @Pure
    /* renamed from: a */
    public static void m11099a(String str, String str2, Throwable th) {
        Log.w(str, m11097c(str2, th));
    }

    @Pure
    /* renamed from: b */
    public static void m11098b(String str, String str2, Throwable th) {
        Log.e(str, m11097c(str2, th));
    }

    @Pure
    /* renamed from: c */
    private static String m11097c(String str, Throwable th) {
        String str2;
        if (th != null) {
            Throwable th2 = th;
            while (true) {
                Throwable th3 = th2;
                if (th3 == null) {
                    str2 = Log.getStackTraceString(th).trim().replace("\t", "    ");
                    break;
                } else if (th3 instanceof UnknownHostException) {
                    str2 = "UnknownHostException (no network)";
                    break;
                } else {
                    th2 = th3.getCause();
                }
            }
        } else {
            str2 = null;
        }
        String str3 = str;
        if (!TextUtils.isEmpty(str2)) {
            String valueOf = String.valueOf(str);
            String replace = str2.replace("\n", "\n  ");
            StringBuilder sb = new StringBuilder(valueOf.length() + 4 + String.valueOf(replace).length());
            sb.append(valueOf);
            sb.append("\n  ");
            sb.append(replace);
            sb.append('\n');
            str3 = sb.toString();
        }
        return str3;
    }
}
