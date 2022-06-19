package com.iab.omid.library.pubnativenet;

import com.iab.omid.library.pubnativenet.p441d.C16448d;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* renamed from: com.iab.omid.library.pubnativenet.d */
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/pubnativenet/d.class */
public final class C16443d {

    /* renamed from: a */
    private static final Pattern f57953a = Pattern.compile("<(head)( [^>]*)?>", 2);

    /* renamed from: b */
    private static final Pattern f57954b = Pattern.compile("<(head)( [^>]*)?/>", 2);

    /* renamed from: c */
    private static final Pattern f57955c = Pattern.compile("<(body)( [^>]*?)?>", 2);

    /* renamed from: d */
    private static final Pattern f57956d = Pattern.compile("<(body)( [^>]*?)?/>", 2);

    /* renamed from: e */
    private static final Pattern f57957e = Pattern.compile("<(html)( [^>]*?)?>", 2);

    /* renamed from: f */
    private static final Pattern f57958f = Pattern.compile("<(html)( [^>]*?)?/>", 2);

    /* renamed from: g */
    private static final Pattern f57959g = Pattern.compile("<!DOCTYPE [^>]*>", 2);

    /* renamed from: a */
    public static String m7240a(String str, String str2) {
        String str3 = "<script type=\"text/javascript\">" + str + "</script>";
        C16448d.m7222a(str2, "HTML is null or empty");
        int[][] m7241a = m7241a(str2);
        StringBuilder sb = new StringBuilder(str2.length() + str3.length() + 16);
        if (!m7238b(str2, sb, f57954b, str3, m7241a) && !m7239a(str2, sb, f57953a, str3, m7241a) && !m7238b(str2, sb, f57956d, str3, m7241a) && !m7239a(str2, sb, f57955c, str3, m7241a) && !m7238b(str2, sb, f57958f, str3, m7241a) && !m7239a(str2, sb, f57957e, str3, m7241a) && !m7239a(str2, sb, f57959g, str3, m7241a)) {
            return str3 + str2;
        }
        return sb.toString();
    }

    /* renamed from: a */
    private static boolean m7242a(int i, int[][] iArr) {
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
    private static boolean m7239a(String str, StringBuilder sb, Pattern pattern, String str2, int[][] iArr) {
        Matcher matcher = pattern.matcher(str);
        int i = 0;
        while (matcher.find(i)) {
            int start = matcher.start();
            i = matcher.end();
            if (!m7242a(start, iArr)) {
                sb.append(str.substring(0, matcher.end()));
                sb.append(str2);
                sb.append(str.substring(matcher.end()));
                return true;
            }
        }
        return false;
    }

    /* renamed from: a */
    private static int[][] m7241a(String str) {
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
    private static boolean m7238b(String str, StringBuilder sb, Pattern pattern, String str2, int[][] iArr) {
        Matcher matcher = pattern.matcher(str);
        int i = 0;
        while (matcher.find(i)) {
            int start = matcher.start();
            i = matcher.end();
            if (!m7242a(start, iArr)) {
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
