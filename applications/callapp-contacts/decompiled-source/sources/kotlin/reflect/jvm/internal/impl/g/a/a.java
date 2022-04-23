package kotlin.reflect.jvm.internal.impl.g.a;

import java.util.Iterator;
import kotlin.jvm.internal.p;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/g/a/a.class */
public final class a {
    public static final String a(String str) {
        Integer num;
        p.d(str, "<this>");
        String str2 = str;
        String str3 = str;
        if (!(str2.length() == 0)) {
            if (!a(str, 0, true)) {
                str3 = str;
            } else if (str.length() == 1 || !a(str, 1, true)) {
                p.d(str, "<this>");
                str3 = str;
                if (!(str2.length() == 0)) {
                    char charAt = str.charAt(0);
                    boolean z = false;
                    if ('A' <= charAt) {
                        z = false;
                        if (charAt <= 'Z') {
                            z = true;
                        }
                    }
                    str3 = str;
                    if (z) {
                        char lowerCase = Character.toLowerCase(charAt);
                        String substring = str.substring(1);
                        p.b(substring, "(this as java.lang.String).substring(startIndex)");
                        str3 = String.valueOf(lowerCase) + substring;
                    }
                }
            } else {
                Iterator<Integer> it2 = kotlin.h.p.c((CharSequence) str2).iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        num = null;
                        break;
                    }
                    num = it2.next();
                    if (!a(str, num.intValue(), true)) {
                        break;
                    }
                }
                Integer num2 = num;
                if (num2 == null) {
                    return a(str, true);
                }
                int intValue = num2.intValue() - 1;
                String substring2 = str.substring(0, intValue);
                p.b(substring2, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                String a2 = a(substring2, true);
                String substring3 = str.substring(intValue);
                p.b(substring3, "(this as java.lang.String).substring(startIndex)");
                return p.a(a2, (Object) substring3);
            }
        }
        return str3;
    }

    private static final String a(String str, boolean z) {
        return c(str);
    }

    private static final boolean a(String str, int i, boolean z) {
        char charAt = str.charAt(i);
        return 'A' <= charAt && charAt <= 'Z';
    }

    public static final String b(String str) {
        p.d(str, "<this>");
        if (str.length() == 0) {
            return str;
        }
        char charAt = str.charAt(0);
        boolean z = false;
        if ('a' <= charAt) {
            z = false;
            if (charAt <= 'z') {
                z = true;
            }
        }
        String str2 = str;
        if (z) {
            char upperCase = Character.toUpperCase(charAt);
            String substring = str.substring(1);
            p.b(substring, "(this as java.lang.String).substring(startIndex)");
            str2 = String.valueOf(upperCase) + substring;
        }
        return str2;
    }

    private static String c(String str) {
        p.d(str, "<this>");
        StringBuilder sb = new StringBuilder(str.length());
        int length = str.length();
        int i = 0;
        while (i < length) {
            char charAt = str.charAt(i);
            i++;
            char c2 = charAt;
            if ('A' <= charAt && charAt <= 'Z') {
                c2 = Character.toLowerCase(charAt);
            }
            sb.append(c2);
        }
        String sb2 = sb.toString();
        p.b(sb2, "builder.toString()");
        return sb2;
    }
}
