package com.google.android.gms.internal.ads;

import com.razorpay.AnalyticsConstants;
import java.util.logging.Level;
import java.util.logging.Logger;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfmi.class */
public final class zzfmi {
    public static String zza(String str) {
        return zzflw.zzb(str);
    }

    public static String zzb(String str) {
        String str2 = str;
        if (zzflw.zza(str)) {
            str2 = null;
        }
        return str2;
    }

    public static boolean zzc(String str) {
        return zzflw.zza(str);
    }

    public static String zzd(String str, Object... objArr) {
        int length;
        int length2;
        int indexOf;
        String sb;
        int i = 0;
        while (true) {
            length = objArr.length;
            if (i >= length) {
                break;
            }
            Object obj = objArr[i];
            if (obj == null) {
                sb = AnalyticsConstants.NULL;
            } else {
                try {
                    sb = obj.toString();
                } catch (Exception e) {
                    String name = obj.getClass().getName();
                    String hexString = Integer.toHexString(System.identityHashCode(obj));
                    String m8622g = C22128a.m8622g(new StringBuilder(name.length() + 1 + String.valueOf(hexString).length()), name, '@', hexString);
                    Logger.getLogger("com.google.common.base.Strings").logp(Level.WARNING, "com.google.common.base.Strings", "lenientToString", m8622g.length() != 0 ? "Exception during lenientFormat for ".concat(m8622g) : new String("Exception during lenientFormat for "), (Throwable) e);
                    String name2 = e.getClass().getName();
                    StringBuilder sb2 = new StringBuilder(m8622g.length() + 9 + name2.length());
                    C22128a.m8666T0(sb2, "<", m8622g, " threw ", name2);
                    sb2.append(">");
                    sb = sb2.toString();
                }
            }
            objArr[i] = sb;
            i++;
        }
        StringBuilder sb3 = new StringBuilder((length * 16) + str.length());
        int i2 = 0;
        int i3 = 0;
        while (true) {
            length2 = objArr.length;
            if (i3 >= length2 || (indexOf = str.indexOf("%s", i2)) == -1) {
                break;
            }
            sb3.append((CharSequence) str, i2, indexOf);
            sb3.append(objArr[i3]);
            i2 = indexOf + 2;
            i3++;
        }
        sb3.append((CharSequence) str, i2, str.length());
        if (i3 < length2) {
            sb3.append(" [");
            sb3.append(objArr[i3]);
            for (int i4 = i3 + 1; i4 < objArr.length; i4++) {
                sb3.append(", ");
                sb3.append(objArr[i4]);
            }
            sb3.append(']');
        }
        return sb3.toString();
    }
}
