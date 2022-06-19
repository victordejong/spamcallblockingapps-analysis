package com.google.android.gms.internal.ads;

import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/iv2.class */
public final class iv2 {
    /* renamed from: a */
    public static String m14270a(String str) {
        return wu2.m9441b(str);
    }

    /* renamed from: b */
    public static String m14269b(String str) {
        String str2 = str;
        if (wu2.m9442a(str)) {
            str2 = null;
        }
        return str2;
    }

    /* renamed from: c */
    public static boolean m14268c(String str) {
        return wu2.m9442a(str);
    }

    /* renamed from: d */
    public static String m14267d(String str, Object... objArr) {
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
                    StringBuilder sb4 = new StringBuilder(sb3.length() + 9 + name2.length());
                    sb4.append("<");
                    sb4.append(sb3);
                    sb4.append(" threw ");
                    sb4.append(name2);
                    sb4.append(">");
                    sb = sb4.toString();
                }
            }
            objArr[i] = sb;
            i++;
        }
        StringBuilder sb5 = new StringBuilder(str.length() + (length * 16));
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
}
