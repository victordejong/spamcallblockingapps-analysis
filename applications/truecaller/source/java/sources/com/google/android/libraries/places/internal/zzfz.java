package com.google.android.libraries.places.internal;

import com.razorpay.AnalyticsConstants;
import java.util.logging.Level;
import java.util.logging.Logger;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes3-dex2jar.jar:com/google/android/libraries/places/internal/zzfz.class */
public final class zzfz {
    private static String zza(Object obj) {
        if (obj == null) {
            return AnalyticsConstants.NULL;
        }
        try {
            return obj.toString();
        } catch (Exception e) {
            String name = obj.getClass().getName();
            String hexString = Integer.toHexString(System.identityHashCode(obj));
            StringBuilder sb = new StringBuilder(C22128a.m8623f2(hexString, name.length() + 1));
            sb.append(name);
            sb.append('@');
            sb.append(hexString);
            String sb2 = sb.toString();
            Logger logger = Logger.getLogger("com.google.common.base.Strings");
            Level level = Level.WARNING;
            String valueOf = String.valueOf(sb2);
            logger.logp(level, "com.google.common.base.Strings", "lenientToString", valueOf.length() != 0 ? "Exception during lenientFormat for ".concat(valueOf) : new String("Exception during lenientFormat for "), (Throwable) e);
            String name2 = e.getClass().getName();
            StringBuilder m8736A = C22128a.m8736A(name2.length() + C22128a.m8623f2(sb2, 9), "<", sb2, " threw ", name2);
            m8736A.append(">");
            return m8736A.toString();
        }
    }

    public static String zza(String str) {
        return zzfp.zza(str);
    }

    public static String zza(String str, Object... objArr) {
        int indexOf;
        String valueOf = String.valueOf(str);
        for (int i = 0; i < objArr.length; i++) {
            objArr[i] = zza(objArr[i]);
        }
        StringBuilder sb = new StringBuilder((objArr.length * 16) + valueOf.length());
        int i2 = 0;
        int i3 = 0;
        while (i3 < objArr.length && (indexOf = valueOf.indexOf("%s", i2)) != -1) {
            sb.append((CharSequence) valueOf, i2, indexOf);
            sb.append(objArr[i3]);
            i2 = indexOf + 2;
            i3++;
        }
        sb.append((CharSequence) valueOf, i2, valueOf.length());
        if (i3 < objArr.length) {
            sb.append(" [");
            sb.append(objArr[i3]);
            for (int i4 = i3 + 1; i4 < objArr.length; i4++) {
                sb.append(", ");
                sb.append(objArr[i4]);
            }
            sb.append(']');
        }
        return sb.toString();
    }
}
