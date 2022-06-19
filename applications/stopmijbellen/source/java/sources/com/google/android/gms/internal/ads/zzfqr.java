package com.google.android.gms.internal.ads;

import android.support.p012v4.media.C0082b;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.CheckForNull;
import p007a6.C0033h;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfqr.class */
public final class zzfqr {
    @CheckForNull
    public static String zza(@CheckForNull String str) {
        String str2 = str;
        if (zzfqf.zzb(str)) {
            str2 = null;
        }
        return str2;
    }

    public static String zzb(@CheckForNull String str, @CheckForNull Object... objArr) {
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
                sb = "null";
            } else {
                try {
                    sb = obj.toString();
                } catch (Exception e) {
                    String name = obj.getClass().getName();
                    String hexString = Integer.toHexString(System.identityHashCode(obj));
                    StringBuilder sb2 = new StringBuilder(name.length() + 1 + String.valueOf(hexString).length());
                    sb2.append(name);
                    sb2.append('@');
                    sb2.append(hexString);
                    String sb3 = sb2.toString();
                    Logger.getLogger("com.google.common.base.Strings").logp(Level.WARNING, "com.google.common.base.Strings", "lenientToString", sb3.length() != 0 ? "Exception during lenientFormat for ".concat(sb3) : new String("Exception during lenientFormat for "), (Throwable) e);
                    String name2 = e.getClass().getName();
                    StringBuilder sb4 = new StringBuilder(C0033h.m8889h(sb3, 9, name2.length()));
                    C0082b.m8749m(sb4, "<", sb3, " threw ", name2);
                    sb4.append(">");
                    sb = sb4.toString();
                }
            }
            objArr[i] = sb;
            i++;
        }
        StringBuilder sb5 = new StringBuilder((length * 16) + str.length());
        int i2 = 0;
        int i3 = 0;
        while (true) {
            length2 = objArr.length;
            if (i3 >= length2 || (indexOf = str.indexOf("%s", i2)) == -1) {
                break;
            }
            sb5.append((CharSequence) str, i2, indexOf);
            sb5.append(objArr[i3]);
            i2 = indexOf + 2;
            i3++;
        }
        sb5.append((CharSequence) str, i2, str.length());
        if (i3 < length2) {
            sb5.append(" [");
            sb5.append(objArr[i3]);
            for (int i4 = i3 + 1; i4 < objArr.length; i4++) {
                sb5.append(", ");
                sb5.append(objArr[i4]);
            }
            sb5.append(']');
        }
        return sb5.toString();
    }

    public static String zzc(@CheckForNull String str) {
        return zzfqf.zza(str);
    }

    public static boolean zzd(@CheckForNull String str) {
        return zzfqf.zzb(str);
    }
}
