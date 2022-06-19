package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import android.util.Log;
import com.tenor.android.core.constant.StringConstant;
import java.net.UnknownHostException;
import org.checkerframework.dataflow.qual.Pure;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaln.class */
public final class zzaln {
    @Pure
    public static void zza(String str, String str2, Throwable th) {
        zzc(str2, th);
    }

    @Pure
    public static void zzb(String str, String str2, Throwable th) {
        zzc(str2, th);
    }

    @Pure
    private static String zzc(String str, Throwable th) {
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
            String replace = str2.replace(StringConstant.NEW_LINE, "\n  ");
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
