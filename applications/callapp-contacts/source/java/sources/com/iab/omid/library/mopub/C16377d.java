package com.iab.omid.library.mopub;

import com.iab.omid.library.mopub.p432d.C16382d;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* renamed from: com.iab.omid.library.mopub.d */
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/mopub/d.class */
public final class C16377d {

    /* renamed from: a */
    private static final Pattern f57824a = Pattern.compile("<(head)( [^>]*)?>", 2);

    /* renamed from: b */
    private static final Pattern f57825b = Pattern.compile("<(head)( [^>]*)?/>", 2);

    /* renamed from: c */
    private static final Pattern f57826c = Pattern.compile("<(body)( [^>]*?)?>", 2);

    /* renamed from: d */
    private static final Pattern f57827d = Pattern.compile("<(body)( [^>]*?)?/>", 2);

    /* renamed from: e */
    private static final Pattern f57828e = Pattern.compile("<(html)( [^>]*?)?>", 2);

    /* renamed from: f */
    private static final Pattern f57829f = Pattern.compile("<(html)( [^>]*?)?/>", 2);

    /* renamed from: g */
    private static final Pattern f57830g = Pattern.compile("<!DOCTYPE [^>]*>", 2);

    /* renamed from: a */
    public static String m7342a(String str, String str2) {
        String str3 = "<script type=\"text/javascript\">" + str + "</script>";
        C16382d.m7324a(str2, "HTML is null or empty");
        int[][] m7343a = m7343a(str2);
        StringBuilder sb = new StringBuilder(str2.length() + str3.length() + 16);
        if (!m7340b(str2, sb, f57825b, str3, m7343a) && !m7341a(str2, sb, f57824a, str3, m7343a) && !m7340b(str2, sb, f57827d, str3, m7343a) && !m7341a(str2, sb, f57826c, str3, m7343a) && !m7340b(str2, sb, f57829f, str3, m7343a) && !m7341a(str2, sb, f57828e, str3, m7343a) && !m7341a(str2, sb, f57830g, str3, m7343a)) {
            return str3 + str2;
        }
        return sb.toString();
    }

    /* renamed from: a */
    private static boolean m7344a(int i, int[][] iArr) {
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
    private static boolean m7341a(String str, StringBuilder sb, Pattern pattern, String str2, int[][] iArr) {
        Matcher matcher = pattern.matcher(str);
        int i = 0;
        while (matcher.find(i)) {
            int start = matcher.start();
            i = matcher.end();
            if (!m7344a(start, iArr)) {
                sb.append(str.substring(0, matcher.end()));
                sb.append(str2);
                sb.append(str.substring(matcher.end()));
                return true;
            }
        }
        return false;
    }

    /* renamed from: a */
    private static int[][] m7343a(String str) {
        ArrayList arrayList = new ArrayList();
        int length = str.length();
        int i = 0;
        while (i < length) {
            int indexOf = str.indexOf("<!--", i);
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
        }
        return (int[][]) arrayList.toArray(new int[0][2]);
    }

    /* renamed from: b */
    private static boolean m7340b(String str, StringBuilder sb, Pattern pattern, String str2, int[][] iArr) {
        Matcher matcher = pattern.matcher(str);
        int i = 0;
        while (matcher.find(i)) {
            int start = matcher.start();
            i = matcher.end();
            if (!m7344a(start, iArr)) {
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
