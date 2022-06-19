package com.iab.omid.library.verizonmedia;

import com.iab.omid.library.verizonmedia.p450d.C16514d;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* renamed from: com.iab.omid.library.verizonmedia.d */
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/verizonmedia/d.class */
public final class C16509d {

    /* renamed from: a */
    private static final Pattern f58085a = Pattern.compile("<(head)( [^>]*)?>", 2);

    /* renamed from: b */
    private static final Pattern f58086b = Pattern.compile("<(head)( [^>]*)?/>", 2);

    /* renamed from: c */
    private static final Pattern f58087c = Pattern.compile("<(body)( [^>]*?)?>", 2);

    /* renamed from: d */
    private static final Pattern f58088d = Pattern.compile("<(body)( [^>]*?)?/>", 2);

    /* renamed from: e */
    private static final Pattern f58089e = Pattern.compile("<(html)( [^>]*?)?>", 2);

    /* renamed from: f */
    private static final Pattern f58090f = Pattern.compile("<(html)( [^>]*?)?/>", 2);

    /* renamed from: g */
    private static final Pattern f58091g = Pattern.compile("<!DOCTYPE [^>]*>", 2);

    /* renamed from: a */
    public static String m7119a(String str, String str2) {
        String str3 = "<script type=\"text/javascript\">" + str + "</script>";
        C16514d.m7101a(str2, "HTML is null or empty");
        int[][] m7120a = m7120a(str2);
        StringBuilder sb = new StringBuilder(str2.length() + str3.length() + 16);
        if (!m7117b(str2, sb, f58086b, str3, m7120a) && !m7118a(str2, sb, f58085a, str3, m7120a) && !m7117b(str2, sb, f58088d, str3, m7120a) && !m7118a(str2, sb, f58087c, str3, m7120a) && !m7117b(str2, sb, f58090f, str3, m7120a) && !m7118a(str2, sb, f58089e, str3, m7120a) && !m7118a(str2, sb, f58091g, str3, m7120a)) {
            return str3 + str2;
        }
        return sb.toString();
    }

    /* renamed from: a */
    private static boolean m7121a(int i, int[][] iArr) {
        if (iArr != null) {
            for (int[] iArr2 : iArr) {
                if (i >= iArr2[0] && i <= iArr2[1]) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    /* renamed from: a */
    private static boolean m7118a(String str, StringBuilder sb, Pattern pattern, String str2, int[][] iArr) {
        Matcher matcher = pattern.matcher(str);
        int i = 0;
        while (matcher.find(i)) {
            int start = matcher.start();
            i = matcher.end();
            if (!m7121a(start, iArr)) {
                sb.append(str.substring(0, matcher.end()));
                sb.append(str2);
                sb.append(str.substring(matcher.end()));
                return true;
            }
        }
        return false;
    }

    /* renamed from: a */
    private static int[][] m7120a(String str) {
        ArrayList arrayList = new ArrayList();
        int length = str.length();
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < length) {
                int indexOf = str.indexOf("<!--", i2);
                if (indexOf >= 0) {
                    int indexOf2 = str.indexOf("-->", indexOf);
                    int[] iArr = new int[2];
                    if (indexOf2 >= 0) {
                        iArr[0] = indexOf;
                        iArr[1] = indexOf2;
                        arrayList.add(iArr);
                        i = indexOf2 + 3;
                    } else {
                        iArr[0] = indexOf;
                        iArr[1] = length;
                        arrayList.add(iArr);
                    }
                }
                i = length;
            } else {
                return (int[][]) arrayList.toArray(new int[0][2]);
            }
        }
    }

    /* renamed from: b */
    private static boolean m7117b(String str, StringBuilder sb, Pattern pattern, String str2, int[][] iArr) {
        Matcher matcher = pattern.matcher(str);
        int i = 0;
        while (matcher.find(i)) {
            int start = matcher.start();
            i = matcher.end();
            if (!m7121a(start, iArr)) {
                sb.append(str.substring(0, matcher.end() - 2));
                sb.append(">");
                sb.append(str2);
                sb.append("</");
                sb.append(matcher.group(1));
                sb.append(">");
                sb.append(str.substring(matcher.end()));
                return true;
            }
        }
        return false;
    }
}
