package com.google.android.gms.internal.firebase_remote_config;

import java.util.logging.Level;
import java.util.logging.Logger;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzdy.class */
public final class zzdy {
    public static String zza(@NullableDecl String str, @NullableDecl Object... objArr) {
        Object[] objArr2;
        int indexOf;
        String valueOf = String.valueOf(str);
        if (objArr != null) {
            int i = 0;
            while (true) {
                objArr2 = objArr;
                if (i >= objArr.length) {
                    break;
                }
                objArr[i] = zzj(objArr[i]);
                i++;
            }
        } else {
            objArr2 = new Object[]{"(Object[])null"};
        }
        StringBuilder sb = new StringBuilder(valueOf.length() + (objArr2.length * 16));
        int i2 = 0;
        int i3 = 0;
        while (i3 < objArr2.length && (indexOf = valueOf.indexOf("%s", i2)) != -1) {
            sb.append((CharSequence) valueOf, i2, indexOf);
            sb.append(objArr2[i3]);
            i2 = indexOf + 2;
            i3++;
        }
        sb.append((CharSequence) valueOf, i2, valueOf.length());
        if (i3 < objArr2.length) {
            sb.append(" [");
            sb.append(objArr2[i3]);
            for (int i4 = i3 + 1; i4 < objArr2.length; i4++) {
                sb.append(", ");
                sb.append(objArr2[i4]);
            }
            sb.append(']');
        }
        return sb.toString();
    }

    public static boolean zzbc(@NullableDecl String str) {
        return zzdp.zzbb(str);
    }

    private static String zzj(@NullableDecl Object obj) {
        try {
            return String.valueOf(obj);
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
            sb3.append("<");
            sb3.append(sb2);
            sb3.append(" threw ");
            sb3.append(name2);
            sb3.append(">");
            return sb3.toString();
        }
    }
}
