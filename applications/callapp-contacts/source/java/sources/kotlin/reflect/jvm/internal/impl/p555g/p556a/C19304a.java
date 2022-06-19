package kotlin.reflect.jvm.internal.impl.p555g.p556a;

import java.util.Iterator;
import kotlin.jvm.internal.C18524p;
import kotlin.p532h.C18425p;
/* renamed from: kotlin.reflect.jvm.internal.impl.g.a.a */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/g/a/a.class */
public final class C19304a {
    /* renamed from: a */
    public static final String m2305a(String str) {
        Integer num;
        C18524p.m3840d(str, "<this>");
        String str2 = str;
        String str3 = str;
        if (!(str2.length() == 0)) {
            if (!m2304a(str, 0, true)) {
                str3 = str;
            } else if (str.length() != 1 && m2304a(str, 1, true)) {
                Iterator<Integer> it2 = C18425p.m3920c((CharSequence) str2).iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        num = null;
                        break;
                    }
                    num = it2.next();
                    if (!m2304a(str, num.intValue(), true)) {
                        break;
                    }
                }
                Integer num2 = num;
                if (num2 == null) {
                    return m2303a(str, true);
                }
                int intValue = num2.intValue() - 1;
                String substring = str.substring(0, intValue);
                C18524p.m3843b(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                String m2303a = m2303a(substring, true);
                String substring2 = str.substring(intValue);
                C18524p.m3843b(substring2, "(this as java.lang.String).substring(startIndex)");
                return C18524p.m3847a(m2303a, (Object) substring2);
            } else {
                C18524p.m3840d(str, "<this>");
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
                        String substring3 = str.substring(1);
                        C18524p.m3843b(substring3, "(this as java.lang.String).substring(startIndex)");
                        str3 = String.valueOf(lowerCase) + substring3;
                    }
                }
            }
        }
        return str3;
    }

    /* renamed from: a */
    private static final String m2303a(String str, boolean z) {
        return m2301c(str);
    }

    /* renamed from: a */
    private static final boolean m2304a(String str, int i, boolean z) {
        char charAt = str.charAt(i);
        return 'A' <= charAt && charAt <= 'Z';
    }

    /* renamed from: b */
    public static final String m2302b(String str) {
        C18524p.m3840d(str, "<this>");
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
            C18524p.m3843b(substring, "(this as java.lang.String).substring(startIndex)");
            str2 = String.valueOf(upperCase) + substring;
        }
        return str2;
    }

    /* renamed from: c */
    private static String m2301c(String str) {
        C18524p.m3840d(str, "<this>");
        StringBuilder sb = new StringBuilder(str.length());
        int length = str.length();
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= length) {
                String sb2 = sb.toString();
                C18524p.m3843b(sb2, "builder.toString()");
                return sb2;
            }
            char charAt = str.charAt(i2);
            int i3 = i2 + 1;
            char c = charAt;
            if ('A' <= charAt && charAt <= 'Z') {
                c = Character.toLowerCase(charAt);
            }
            sb.append(c);
            i = i3;
        }
    }
}
