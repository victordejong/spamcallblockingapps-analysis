package com.callapp.framework.util;

import com.callapp.common.util.RegexUtils;
import com.fasterxml.jackson.core.base.GeneratorBase;
import com.sinch.verification.core.verification.VerificationLanguage;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.Random;
import java.util.TimeZone;
/* loaded from: classes2-dex2jar.jar:com/callapp/framework/util/StringUtils.class */
public final class StringUtils {

    /* renamed from: a */
    private static final Random f29694a = new Random();

    /* renamed from: b */
    private static SimpleDateFormat f29695b = new SimpleDateFormat("HH:mm");

    /* renamed from: c */
    private static SimpleDateFormat f29696c = new SimpleDateFormat("hh:mm a");

    private StringUtils() {
    }

    /* renamed from: a */
    public static int m26053a(String str, String str2) {
        if (m26059a((CharSequence) str)) {
            return 0;
        }
        return str.split(str2).length - 1;
    }

    /* renamed from: a */
    public static int m26051a(String str, String str2, boolean z) {
        if (str == null && str2 == null) {
            return 0;
        }
        if (str == null) {
            return -1;
        }
        if (str2 == null) {
            return 1;
        }
        return z ? str.compareToIgnoreCase(str2) : str.compareTo(str2);
    }

    /* renamed from: a */
    public static String m26060a(int i, boolean z) {
        if (i == 0) {
            return "";
        }
        if (i < 0) {
            throw new IllegalArgumentException("Requested random string length " + i + " is less than 0.");
        }
        char[] cArr = new char[i];
        while (true) {
            int i2 = i - 1;
            if (i == 0) {
                return new String(cArr);
            }
            Random random = f29694a;
            char nextInt = (char) (random.nextInt(91) + 32);
            if ((z && Character.isLetter(nextInt)) || Character.isDigit(nextInt)) {
                if (nextInt < 56320 || nextInt > 57343) {
                    if (nextInt < 55296 || nextInt > 56191) {
                        if (nextInt < 56192 || nextInt > 56319) {
                            cArr[i2] = nextInt;
                            i = i2;
                        }
                    } else if (i2 != 0) {
                        cArr[i2] = (char) (random.nextInt(128) + GeneratorBase.SURR2_FIRST);
                        i = i2 - 1;
                        cArr[i] = nextInt;
                    }
                } else if (i2 != 0) {
                    cArr[i2] = nextInt;
                    i = i2 - 1;
                    cArr[i] = (char) (random.nextInt(128) + GeneratorBase.SURR1_FIRST);
                }
            }
            i = i2 + 1;
        }
    }

    /* renamed from: a */
    public static String m26058a(Class<?> cls) {
        String name = cls.getName();
        int lastIndexOf = name.lastIndexOf(46);
        String str = name;
        if (lastIndexOf >= 0) {
            str = name.substring(lastIndexOf + 1);
        }
        return str;
    }

    /* renamed from: a */
    public static String m26055a(String str, int i) {
        String str2;
        if (m26045b((CharSequence) str)) {
            str2 = str;
            if (m26028f(str) > i) {
                str2 = m26054a(str, 0, i);
            }
        } else {
            str2 = "";
        }
        return str2;
    }

    /* renamed from: a */
    public static String m26054a(String str, int i, int i2) {
        if (i >= i2) {
            return "";
        }
        String substring = str.substring(i, i2);
        return (str.length() < 10 || str.length() < (i2 - i) * 2) ? substring : new String(substring);
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0014, code lost:
        r0 = r0 + r5.length();
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String m26052a(java.lang.String r4, java.lang.String r5, java.lang.String r6) {
        /*
            r0 = r4
            if (r0 != 0) goto L7
            java.lang.String r0 = ""
            return r0
        L7:
            r0 = r4
            r1 = r5
            int r0 = r0.indexOf(r1)
            r7 = r0
            r0 = r7
            if (r0 >= 0) goto L14
            java.lang.String r0 = ""
            return r0
        L14:
            r0 = r7
            r1 = r5
            int r1 = r1.length()
            int r0 = r0 + r1
            r8 = r0
            r0 = r4
            r1 = r6
            int r0 = r0.lastIndexOf(r1)
            r7 = r0
            r0 = r7
            r1 = r8
            if (r0 > r1) goto L2b
            java.lang.String r0 = ""
            return r0
        L2b:
            r0 = r4
            r1 = r8
            r2 = r7
            java.lang.String r0 = m26054a(r0, r1, r2)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.framework.util.StringUtils.m26052a(java.lang.String, java.lang.String, java.lang.String):java.lang.String");
    }

    /* renamed from: a */
    public static String m26049a(String str, char... cArr) {
        boolean z;
        if (m26059a((CharSequence) str)) {
            return "";
        }
        char[] charArray = str.toCharArray();
        int i = 0;
        boolean z2 = true;
        while (true) {
            boolean z3 = z2;
            if (i >= charArray.length) {
                return new String(charArray);
            }
            char c = charArray[i];
            if (m26061a(c, cArr)) {
                z = true;
            } else {
                z = z3;
                if (z3) {
                    charArray[i] = Character.toTitleCase(c);
                    z = false;
                }
            }
            i++;
            z2 = z;
        }
    }

    /* renamed from: a */
    public static boolean m26062a(char c) {
        return Character.isDigit(c);
    }

    /* renamed from: a */
    private static boolean m26061a(char c, char[] cArr) {
        if (cArr.length == 0) {
            return Character.isWhitespace(c);
        }
        for (char c2 : cArr) {
            if (c == c2) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: a */
    public static boolean m26059a(CharSequence charSequence) {
        return charSequence == null || charSequence.length() == 0;
    }

    /* renamed from: a */
    public static boolean m26057a(Object obj, Object obj2) {
        return (obj == null || obj2 == null) ? obj == null && obj2 == null : obj.toString().equals(obj2.toString());
    }

    /* renamed from: a */
    public static boolean m26056a(String str) {
        int i;
        if (m26059a((CharSequence) str)) {
            return true;
        }
        String[] split = RegexUtils.m31902d(new String(str), org.apache.commons.lang3.StringUtils.SPACE).split(org.apache.commons.lang3.StringUtils.SPACE);
        int length = split.length;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            i = i3;
            if (i2 >= length) {
                break;
            }
            int i4 = i;
            if (split[i2].trim().length() > 1) {
                i4 = i + 1;
            }
            i2++;
            i3 = i4;
        }
        return i < 2;
    }

    /* renamed from: a */
    public static boolean m26050a(String str, boolean z) {
        int i;
        if (str == null || m26059a((CharSequence) str)) {
            return false;
        }
        if (!z || !(str.charAt(0) == '-' || str.charAt(0) == '+')) {
            i = 0;
        } else if (str.length() <= 1) {
            return false;
        } else {
            i = 1;
        }
        while (i < str.length()) {
            if (!Character.isDigit(str.charAt(i))) {
                return false;
            }
            i++;
        }
        return true;
    }

    /* renamed from: a */
    public static boolean m26048a(String str, String[] strArr) {
        if (m26045b((CharSequence) str)) {
            for (int i = 0; i < 2; i++) {
                if (str.contains(strArr[i])) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    /* renamed from: a */
    public static boolean m26047a(CharSequence... charSequenceArr) {
        if (charSequenceArr.length == 0) {
            return false;
        }
        for (CharSequence charSequence : charSequenceArr) {
            if (m26045b(charSequence)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: b */
    public static String m26043b(String str) {
        return m26059a((CharSequence) str) ? str : str.split(org.apache.commons.lang3.StringUtils.SPACE, 2)[0];
    }

    /* renamed from: b */
    public static String m26041b(String str, String str2, String str3) {
        String str4 = str;
        if (str != null) {
            str4 = str3 == null ? str : str.replaceAll(str2, str3);
        }
        return str4;
    }

    /* renamed from: b */
    public static boolean m26046b(char c) {
        return Character.isLetterOrDigit(c);
    }

    /* renamed from: b */
    public static boolean m26045b(CharSequence charSequence) {
        return charSequence != null && charSequence.length() > 0;
    }

    /* renamed from: b */
    public static boolean m26044b(Object obj, Object obj2) {
        return (obj == null || obj2 == null) ? obj == null && obj2 == null : obj.toString().equalsIgnoreCase(obj2.toString());
    }

    /* renamed from: b */
    public static boolean m26042b(String str, String str2) {
        return (str == null || str2 == null) ? str == null && str2 == null : str.equals(str2);
    }

    /* renamed from: b */
    public static boolean m26040b(String str, String... strArr) {
        if (m26045b((CharSequence) str)) {
            for (int i = 0; i < 2; i++) {
                if (str.equals(strArr[i])) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    /* renamed from: c */
    public static String m26036c(String str, String str2, String str3) {
        String str4 = str;
        if (str != null) {
            str4 = str;
            if (str2 != null) {
                str4 = str3 == null ? str : str.replace(str2, str3);
            }
        }
        return str4;
    }

    /* renamed from: c */
    public static boolean m26039c(char c) {
        return (c >= '0' && c <= '9') || c == '+' || c == '*';
    }

    /* renamed from: c */
    public static boolean m26038c(String str) {
        return m26030e(str, "android.resource://");
    }

    /* renamed from: c */
    public static boolean m26037c(String str, String str2) {
        if (!m26045b((CharSequence) str) || !m26045b((CharSequence) str2)) {
            return false;
        }
        return str.contains(str2);
    }

    /* renamed from: c */
    public static boolean m26035c(String str, String... strArr) {
        if (m26045b((CharSequence) str)) {
            for (String str2 : strArr) {
                if (str.equalsIgnoreCase(str2)) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    /* renamed from: d */
    public static Date m26034d(String str) throws ParseException {
        if (!m26050a(str, true)) {
            return RegexUtils.m31886o(str) ? new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ssZ", Locale.US).parse(str) : new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss", Locale.US).parse(str);
        }
        GregorianCalendar gregorianCalendar = new GregorianCalendar();
        gregorianCalendar.setTimeZone(TimeZone.getTimeZone("America/Los_Angeles"));
        gregorianCalendar.setTimeInMillis(Long.parseLong(str) * 1000);
        return gregorianCalendar.getTime();
    }

    /* renamed from: d */
    public static boolean m26033d(String str, String str2) {
        return m26045b((CharSequence) str) && str.endsWith(str2);
    }

    /* renamed from: d */
    public static boolean m26032d(String str, String[] strArr) {
        if (m26045b((CharSequence) str)) {
            for (String str2 : strArr) {
                if (str.startsWith(str2)) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    /* renamed from: e */
    public static String m26031e(String str) {
        int lastIndexOf;
        if (!m26045b((CharSequence) str) || (lastIndexOf = str.lastIndexOf(47)) < 0) {
            return null;
        }
        return str.substring(lastIndexOf + 1);
    }

    /* renamed from: e */
    public static String m26029e(String str, String... strArr) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < 5; i++) {
            String str2 = strArr[i];
            if (m26045b((CharSequence) str2)) {
                sb.append(str2);
                sb.append(str);
            }
        }
        return sb.length() >= str.length() ? sb.substring(0, sb.length() - str.length()) : sb.toString();
    }

    /* renamed from: e */
    public static boolean m26030e(String str, String str2) {
        return m26045b((CharSequence) str) && str.startsWith(str2);
    }

    /* renamed from: f */
    public static int m26028f(String str) {
        if (m26059a((CharSequence) str)) {
            return 0;
        }
        return str.length();
    }

    /* renamed from: f */
    public static boolean m26027f(String str, String str2) {
        if (m26045b((CharSequence) str)) {
            return str.toLowerCase().startsWith(str2.toLowerCase());
        }
        return false;
    }

    /* renamed from: g */
    public static boolean m26026g(String str) {
        return m26050a(str, true);
    }

    /* renamed from: g */
    public static boolean m26025g(String str, String str2) {
        if (str == null || str2 == null) {
            return false;
        }
        return str.toLowerCase().contains(str2.toLowerCase());
    }

    /* renamed from: h */
    public static String m26023h(String str, String str2) {
        int indexOf;
        return (str != null && (indexOf = str.indexOf(str2)) >= 0) ? m26054a(str, indexOf + str2.length(), str.length()) : "";
    }

    /* renamed from: h */
    public static boolean m26024h(String str) {
        return m26030e(str, "http");
    }

    /* renamed from: i */
    public static String m26021i(String str, String str2) {
        if (str == null) {
            return "";
        }
        int indexOf = str.indexOf(str2);
        return indexOf <= 0 ? str : m26054a(str, 0, indexOf);
    }

    /* renamed from: i */
    public static boolean m26022i(String str) {
        for (char c : str.toCharArray()) {
            if (Character.isDigit(c)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: j */
    public static String m26020j(String str) {
        return m26049a(str, ' ', '-');
    }

    /* renamed from: j */
    public static String m26019j(String str, String str2) {
        int lastIndexOf;
        if (!m26037c(str, ".") || (lastIndexOf = str.lastIndexOf(".") + 1) < 0) {
            return null;
        }
        return str.substring(0, lastIndexOf) + str2;
    }

    /* renamed from: k */
    public static boolean m26018k(String str) {
        if (m26045b((CharSequence) str)) {
            return str.contains(org.apache.commons.lang3.StringUtils.SPACE) || str.contains(VerificationLanguage.REGION_PREFIX);
        }
        return false;
    }

    /* renamed from: k */
    public static String[] m26017k(String str, String str2) {
        if (!m26045b((CharSequence) str) || !m26045b((CharSequence) str2)) {
            return null;
        }
        return str.split(str2);
    }

    /* renamed from: l */
    public static String m26016l(String str) {
        String str2 = str;
        if (m26045b((CharSequence) str)) {
            String m31896g = RegexUtils.m31896g(RegexUtils.m31894h(str, ""), org.apache.commons.lang3.StringUtils.SPACE);
            String str3 = m31896g;
            if (!m26059a((CharSequence) m31896g)) {
                str3 = RegexUtils.m31910a("\\s+").matcher(RegexUtils.m31910a("[\\(\\[\\{]+.*?[\\)\\]\\}]+").matcher(m31896g).replaceAll("").trim()).replaceAll(org.apache.commons.lang3.StringUtils.SPACE);
            }
            str2 = str3.trim();
        }
        return str2;
    }

    /* renamed from: m */
    public static int m26015m(String str) {
        if (m26059a((CharSequence) str)) {
            return 0;
        }
        return str.split("\\s+").length;
    }

    /* renamed from: n */
    public static String m26014n(String str) {
        String str2 = str;
        if (str.length() > 250) {
            str2 = str.substring(0, 250);
        }
        return str2;
    }

    /* renamed from: o */
    public static String m26013o(String str) {
        return RegexUtils.m31899f(str);
    }

    /* renamed from: p */
    public static String m26012p(String str) {
        return (!m26045b((CharSequence) str) || !str.contains("@")) ? null : str.split("@")[0];
    }

    /* renamed from: q */
    public static boolean m26011q(String str) {
        if (m26059a((CharSequence) str)) {
            return false;
        }
        return str.length() - RegexUtils.m31888m(str).length() <= 4;
    }

    /* renamed from: r */
    public static String m26010r(String str) {
        if (m26059a((CharSequence) str)) {
            return "?";
        }
        String trim = RegexUtils.m31904c(RegexUtils.m31906b(str, org.apache.commons.lang3.StringUtils.SPACE), org.apache.commons.lang3.StringUtils.SPACE).trim();
        if (m26059a((CharSequence) trim)) {
            return "?";
        }
        String[] split = trim.split(org.apache.commons.lang3.StringUtils.SPACE);
        if (split.length == 1) {
            return split[0].substring(0, 1).toUpperCase();
        }
        return (split[0].substring(0, 1) + split[split.length - 1].substring(0, 1)).toUpperCase();
    }

    /* JADX WARN: Type inference failed for: r0v6, types: [double] */
    /* renamed from: s */
    public static double m26009s(String str) {
        char c;
        try {
            c = Double.parseDouble(str);
        } catch (NumberFormatException e) {
            c = 0;
        }
        if (Double.isNaN(c)) {
            return 0.0d;
        }
        return c;
    }

    /* renamed from: t */
    public static boolean m26008t(String str) {
        return str.matches("^[-+]?\\d+$");
    }

    /* renamed from: u */
    public static String m26007u(String str) {
        if (str != null) {
            return str.toLowerCase();
        }
        return null;
    }
}
