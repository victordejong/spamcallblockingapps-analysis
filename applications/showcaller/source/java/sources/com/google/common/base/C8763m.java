package com.google.common.base;

import java.util.logging.Level;
import java.util.logging.Logger;
/* renamed from: com.google.common.base.m */
/* loaded from: classes2-dex2jar.jar:com/google/common/base/m.class */
public final class C8763m {
    /* renamed from: a */
    public static boolean m2765a(String str) {
        return C8753i.m2801b(str);
    }

    /* renamed from: b */
    public static String m2764b(String str, Object... objArr) {
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
                objArr[i] = m2763c(objArr[i]);
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

    /* renamed from: c */
    private static String m2763c(Object obj) {
        if (obj == null) {
            return "null";
        }
        try {
            return obj.toString();
        } catch (Exception e) {
            String str = obj.getClass().getName() + '@' + Integer.toHexString(System.identityHashCode(obj));
            Logger.getLogger("com.google.common.base.Strings").log(Level.WARNING, "Exception during lenientFormat for " + str, (Throwable) e);
            return "<" + str + " threw " + e.getClass().getName() + ">";
        }
    }

    /* renamed from: d */
    public static String m2762d(String str, int i, char c) {
        C8756j.m2789l(str);
        if (str.length() >= i) {
            return str;
        }
        StringBuilder sb = new StringBuilder(i);
        sb.append(str);
        for (int length = str.length(); length < i; length++) {
            sb.append(c);
        }
        return sb.toString();
    }
}
