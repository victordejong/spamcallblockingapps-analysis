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

    /* renamed from: a  reason: collision with root package name */
    private static final Random f17111a = new Random();

    /* renamed from: b  reason: collision with root package name */
    private static SimpleDateFormat f17112b = new SimpleDateFormat("HH:mm");

    /* renamed from: c  reason: collision with root package name */
    private static SimpleDateFormat f17113c = new SimpleDateFormat("hh:mm a");

    private StringUtils() {
    }

    public static int a(String str, String str2) {
        if (a((CharSequence) str)) {
            return 0;
        }
        return str.split(str2).length - 1;
    }

    public static int a(String str, String str2, boolean z) {
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

    public static String a(int i, boolean z) {
        if (i == 0) {
            return "";
        }
        if (i >= 0) {
            char[] cArr = new char[i];
            while (true) {
                int i2 = i - 1;
                if (i == 0) {
                    return new String(cArr);
                }
                Random random = f17111a;
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
        } else {
            throw new IllegalArgumentException("Requested random string length " + i + " is less than 0.");
        }
    }

    public static String a(Class<?> cls) {
        String name = cls.getName();
        int lastIndexOf = name.lastIndexOf(46);
        String str = name;
        if (lastIndexOf >= 0) {
            str = name.substring(lastIndexOf + 1);
        }
        return str;
    }

    public static String a(String str, int i) {
        String str2;
        if (b((CharSequence) str)) {
            str2 = str;
            if (f(str) > i) {
                str2 = a(str, 0, i);
            }
        } else {
            str2 = "";
        }
        return str2;
    }

    public static String a(String str, int i, int i2) {
        if (i >= i2) {
            return "";
        }
        String substring = str.substring(i, i2);
        return (str.length() < 10 || str.length() < (i2 - i) * 2) ? substring : new String(substring);
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0014, code lost:
        r0 = r0 + r5.length();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String a(java.lang.String r4, java.lang.String r5, java.lang.String r6) {
        /*
            r0 = r4
            if (r0 != 0) goto L_0x0007
            java.lang.String r0 = ""
            return r0
        L_0x0007:
            r0 = r4
            r1 = r5
            int r0 = r0.indexOf(r1)
            r7 = r0
            r0 = r7
            if (r0 >= 0) goto L_0x0014
            java.lang.String r0 = ""
            return r0
        L_0x0014:
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
            if (r0 > r1) goto L_0x002b
            java.lang.String r0 = ""
            return r0
        L_0x002b:
            r0 = r4
            r1 = r8
            r2 = r7
            java.lang.String r0 = a(r0, r1, r2)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.framework.util.StringUtils.a(java.lang.String, java.lang.String, java.lang.String):java.lang.String");
    }

    public static String a(String str, char... cArr) {
        if (a((CharSequence) str)) {
            return "";
        }
        char[] charArray = str.toCharArray();
        boolean z = true;
        for (int i = 0; i < charArray.length; i++) {
            char c2 = charArray[i];
            if (a(c2, cArr)) {
                z = true;
            } else {
                z = z;
                if (z) {
                    charArray[i] = Character.toTitleCase(c2);
                    z = false;
                }
            }
        }
        return new String(charArray);
    }

    public static boolean a(char c2) {
        return Character.isDigit(c2);
    }

    private static boolean a(char c2, char[] cArr) {
        if (cArr.length == 0) {
            return Character.isWhitespace(c2);
        }
        for (char c3 : cArr) {
            if (c2 == c3) {
                return true;
            }
        }
        return false;
    }

    public static boolean a(CharSequence charSequence) {
        return charSequence == null || charSequence.length() == 0;
    }

    public static boolean a(Object obj, Object obj2) {
        return (obj == null || obj2 == null) ? obj == null && obj2 == null : obj.toString().equals(obj2.toString());
    }

    public static boolean a(String str) {
        if (a((CharSequence) str)) {
            return true;
        }
        int i = 0;
        for (String str2 : RegexUtils.d(new String(str), org.apache.commons.lang3.StringUtils.SPACE).split(org.apache.commons.lang3.StringUtils.SPACE)) {
            i = i;
            if (str2.trim().length() > 1) {
                i++;
            }
        }
        return i < 2;
    }

    public static boolean a(String str, boolean z) {
        int i;
        if (str == null || a((CharSequence) str)) {
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

    public static boolean a(String str, String[] strArr) {
        if (!b((CharSequence) str)) {
            return false;
        }
        for (int i = 0; i < 2; i++) {
            if (str.contains(strArr[i])) {
                return true;
            }
        }
        return false;
    }

    public static boolean a(CharSequence... charSequenceArr) {
        if (charSequenceArr.length == 0) {
            return false;
        }
        for (CharSequence charSequence : charSequenceArr) {
            if (b(charSequence)) {
                return true;
            }
        }
        return false;
    }

    public static String b(String str) {
        return a((CharSequence) str) ? str : str.split(org.apache.commons.lang3.StringUtils.SPACE, 2)[0];
    }

    public static String b(String str, String str2, String str3) {
        String str4 = str;
        if (str != null) {
            str4 = str3 == null ? str : str.replaceAll(str2, str3);
        }
        return str4;
    }

    public static boolean b(char c2) {
        return Character.isLetterOrDigit(c2);
    }

    public static boolean b(CharSequence charSequence) {
        return charSequence != null && charSequence.length() > 0;
    }

    public static boolean b(Object obj, Object obj2) {
        return (obj == null || obj2 == null) ? obj == null && obj2 == null : obj.toString().equalsIgnoreCase(obj2.toString());
    }

    public static boolean b(String str, String str2) {
        return (str == null || str2 == null) ? str == null && str2 == null : str.equals(str2);
    }

    public static boolean b(String str, String... strArr) {
        if (!b((CharSequence) str)) {
            return false;
        }
        for (int i = 0; i < 2; i++) {
            if (str.equals(strArr[i])) {
                return true;
            }
        }
        return false;
    }

    public static String c(String str, String str2, String str3) {
        String str4 = str;
        if (str != null) {
            str4 = str;
            if (str2 != null) {
                str4 = str3 == null ? str : str.replace(str2, str3);
            }
        }
        return str4;
    }

    public static boolean c(char c2) {
        return (c2 >= '0' && c2 <= '9') || c2 == '+' || c2 == '*';
    }

    public static boolean c(String str) {
        return e(str, "android.resource://");
    }

    public static boolean c(String str, String str2) {
        if (!b((CharSequence) str) || !b((CharSequence) str2)) {
            return false;
        }
        return str.contains(str2);
    }

    public static boolean c(String str, String... strArr) {
        if (!b((CharSequence) str)) {
            return false;
        }
        for (String str2 : strArr) {
            if (str.equalsIgnoreCase(str2)) {
                return true;
            }
        }
        return false;
    }

    public static Date d(String str) throws ParseException {
        if (a(str, true)) {
            GregorianCalendar gregorianCalendar = new GregorianCalendar();
            gregorianCalendar.setTimeZone(TimeZone.getTimeZone("America/Los_Angeles"));
            gregorianCalendar.setTimeInMillis(Long.parseLong(str) * 1000);
            return gregorianCalendar.getTime();
        }
        return RegexUtils.o(str) ? new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ssZ", Locale.US).parse(str) : new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss", Locale.US).parse(str);
    }

    public static boolean d(String str, String str2) {
        return b((CharSequence) str) && str.endsWith(str2);
    }

    public static boolean d(String str, String[] strArr) {
        if (!b((CharSequence) str)) {
            return false;
        }
        for (String str2 : strArr) {
            if (str.startsWith(str2)) {
                return true;
            }
        }
        return false;
    }

    public static String e(String str) {
        int lastIndexOf;
        if (!b((CharSequence) str) || (lastIndexOf = str.lastIndexOf(47)) < 0) {
            return null;
        }
        return str.substring(lastIndexOf + 1);
    }

    public static String e(String str, String... strArr) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < 5; i++) {
            String str2 = strArr[i];
            if (b((CharSequence) str2)) {
                sb.append(str2);
                sb.append(str);
            }
        }
        return sb.length() >= str.length() ? sb.substring(0, sb.length() - str.length()) : sb.toString();
    }

    public static boolean e(String str, String str2) {
        return b((CharSequence) str) && str.startsWith(str2);
    }

    public static int f(String str) {
        if (a((CharSequence) str)) {
            return 0;
        }
        return str.length();
    }

    public static boolean f(String str, String str2) {
        if (!b((CharSequence) str)) {
            return false;
        }
        return str.toLowerCase().startsWith(str2.toLowerCase());
    }

    public static boolean g(String str) {
        return a(str, true);
    }

    public static boolean g(String str, String str2) {
        if (str == null || str2 == null) {
            return false;
        }
        return str.toLowerCase().contains(str2.toLowerCase());
    }

    public static String h(String str, String str2) {
        int indexOf;
        return (str != null && (indexOf = str.indexOf(str2)) >= 0) ? a(str, indexOf + str2.length(), str.length()) : "";
    }

    public static boolean h(String str) {
        return e(str, "http");
    }

    public static String i(String str, String str2) {
        if (str == null) {
            return "";
        }
        int indexOf = str.indexOf(str2);
        return indexOf <= 0 ? str : a(str, 0, indexOf);
    }

    public static boolean i(String str) {
        for (char c2 : str.toCharArray()) {
            if (Character.isDigit(c2)) {
                return true;
            }
        }
        return false;
    }

    public static String j(String str) {
        return a(str, ' ', '-');
    }

    public static String j(String str, String str2) {
        int lastIndexOf;
        if (!c(str, ".") || (lastIndexOf = str.lastIndexOf(".") + 1) < 0) {
            return null;
        }
        return str.substring(0, lastIndexOf) + str2;
    }

    public static boolean k(String str) {
        if (b((CharSequence) str)) {
            return str.contains(org.apache.commons.lang3.StringUtils.SPACE) || str.contains(VerificationLanguage.REGION_PREFIX);
        }
        return false;
    }

    public static String[] k(String str, String str2) {
        if (!b((CharSequence) str) || !b((CharSequence) str2)) {
            return null;
        }
        return str.split(str2);
    }

    public static String l(String str) {
        String str2 = str;
        if (b((CharSequence) str)) {
            String g = RegexUtils.g(RegexUtils.h(str, ""), org.apache.commons.lang3.StringUtils.SPACE);
            String str3 = g;
            if (!a((CharSequence) g)) {
                str3 = RegexUtils.a("\\s+").matcher(RegexUtils.a("[\\(\\[\\{]+.*?[\\)\\]\\}]+").matcher(g).replaceAll("").trim()).replaceAll(org.apache.commons.lang3.StringUtils.SPACE);
            }
            str2 = str3.trim();
        }
        return str2;
    }

    public static int m(String str) {
        if (a((CharSequence) str)) {
            return 0;
        }
        return str.split("\\s+").length;
    }

    public static String n(String str) {
        String str2 = str;
        if (str.length() > 250) {
            str2 = str.substring(0, 250);
        }
        return str2;
    }

    public static String o(String str) {
        return RegexUtils.f(str);
    }

    public static String p(String str) {
        return (!b((CharSequence) str) || !str.contains("@")) ? null : str.split("@")[0];
    }

    public static boolean q(String str) {
        if (a((CharSequence) str)) {
            return false;
        }
        return str.length() - RegexUtils.m(str).length() <= 4;
    }

    public static String r(String str) {
        if (a((CharSequence) str)) {
            return "?";
        }
        String trim = RegexUtils.c(RegexUtils.b(str, org.apache.commons.lang3.StringUtils.SPACE), org.apache.commons.lang3.StringUtils.SPACE).trim();
        if (a((CharSequence) trim)) {
            return "?";
        }
        String[] split = trim.split(org.apache.commons.lang3.StringUtils.SPACE);
        if (split.length == 1) {
            return split[0].substring(0, 1).toUpperCase();
        }
        return (split[0].substring(0, 1) + split[split.length - 1].substring(0, 1)).toUpperCase();
    }

    public static double s(String str) {
        double d2;
        try {
            d2 = Double.parseDouble(str);
        } catch (NumberFormatException e) {
            d2 = 0.0d;
        }
        if (Double.isNaN(d2)) {
            return 0.0d;
        }
        return d2;
    }

    public static boolean t(String str) {
        return str.matches("^[-+]?\\d+$");
    }

    public static String u(String str) {
        if (str != null) {
            return str.toLowerCase();
        }
        return null;
    }
}
