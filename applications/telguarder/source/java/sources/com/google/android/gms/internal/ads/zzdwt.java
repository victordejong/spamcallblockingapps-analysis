package com.google.android.gms.internal.ads;

import com.j256.ormlite.stmt.query.SimpleComparison;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdwt.class */
public final class zzdwt {
    @NullableDecl
    public static String emptyToNull(@NullableDecl String str) {
        return zzdwh.emptyToNull(str);
    }

    public static boolean zzar(@NullableDecl String str) {
        return zzdwh.zzhl(str);
    }

    public static String zzb(@NullableDecl String str, @NullableDecl Object... objArr) {
        int indexOf;
        String valueOf = String.valueOf(str);
        for (int i = 0; i < objArr.length; i++) {
            objArr[i] = zzz(objArr[i]);
        }
        StringBuilder sb = new StringBuilder(valueOf.length() + (objArr.length * 16));
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

    public static String zzhm(@NullableDecl String str) {
        return zzdwh.zzhm(str);
    }

    private static String zzz(@NullableDecl Object obj) {
        if (obj == null) {
            return "null";
        }
        try {
            return obj.toString();
        } catch (Exception e) {
            String name = obj.getClass().getName();
            String hexString = Integer.toHexString(System.identityHashCode(obj));
            StringBuilder sb = new StringBuilder(String.valueOf(name).length() + 1 + String.valueOf(hexString).length());
            sb.append(name);
            sb.append('@');
            sb.append(hexString);
            String sb2 = sb.toString();
            Logger logger = Logger.getLogger("com.google.common.base.Strings");
            Level level = Level.WARNING;
            String valueOf = String.valueOf(sb2);
            logger.logp(level, "com.google.common.base.Strings", "lenientToString", valueOf.length() != 0 ? "Exception during lenientFormat for ".concat(valueOf) : new String("Exception during lenientFormat for "), (Throwable) e);
            String name2 = e.getClass().getName();
            StringBuilder sb3 = new StringBuilder(String.valueOf(sb2).length() + 9 + String.valueOf(name2).length());
            sb3.append(SimpleComparison.LESS_THAN_OPERATION);
            sb3.append(sb2);
            sb3.append(" threw ");
            sb3.append(name2);
            sb3.append(SimpleComparison.GREATER_THAN_OPERATION);
            return sb3.toString();
        }
    }
}
