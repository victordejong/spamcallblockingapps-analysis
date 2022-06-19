package com.google.android.gms.internal.ads;

import java.util.logging.Level;
import java.util.logging.Logger;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cos.class */
public final class cos {
    /* renamed from: a */
    private static String m10931a(@NullableDecl Object obj) {
        String sb;
        if (obj == null) {
            sb = "null";
        } else {
            try {
                sb = obj.toString();
            } catch (Exception e) {
                String name = obj.getClass().getName();
                String hexString = Integer.toHexString(System.identityHashCode(obj));
                String sb2 = new StringBuilder(String.valueOf(name).length() + 1 + String.valueOf(hexString).length()).append(name).append('@').append(hexString).toString();
                Logger logger = Logger.getLogger("com.google.common.base.Strings");
                Level level = Level.WARNING;
                String valueOf = String.valueOf(sb2);
                logger.logp(level, "com.google.common.base.Strings", "lenientToString", valueOf.length() != 0 ? "Exception during lenientFormat for ".concat(valueOf) : new String("Exception during lenientFormat for "), (Throwable) e);
                String name2 = e.getClass().getName();
                sb = new StringBuilder(String.valueOf(sb2).length() + 9 + String.valueOf(name2).length()).append("<").append(sb2).append(" threw ").append(name2).append(">").toString();
            }
        }
        return sb;
    }

    /* renamed from: a */
    public static String m10930a(@NullableDecl String str) {
        return con.m10942b(str);
    }

    /* renamed from: a */
    public static String m10929a(@NullableDecl String str, @NullableDecl Object... objArr) {
        int indexOf;
        String valueOf = String.valueOf(str);
        for (int i = 0; i < objArr.length; i++) {
            objArr[i] = m10931a(objArr[i]);
        }
        StringBuilder sb = new StringBuilder(valueOf.length() + (objArr.length * 16));
        int i2 = 0;
        int i3 = 0;
        while (i2 < objArr.length && (indexOf = valueOf.indexOf("%s", i3)) != -1) {
            sb.append((CharSequence) valueOf, i3, indexOf);
            sb.append(objArr[i2]);
            i3 = indexOf + 2;
            i2++;
        }
        sb.append((CharSequence) valueOf, i3, valueOf.length());
        if (i2 < objArr.length) {
            sb.append(" [");
            sb.append(objArr[i2]);
            for (int i4 = i2 + 1; i4 < objArr.length; i4++) {
                sb.append(", ");
                sb.append(objArr[i4]);
            }
            sb.append(']');
        }
        return sb.toString();
    }

    @NullableDecl
    /* renamed from: b */
    public static String m10928b(@NullableDecl String str) {
        return con.m10941c(str);
    }

    /* renamed from: c */
    public static boolean m10927c(@NullableDecl String str) {
        return con.m10943a(str);
    }
}
