package com.iab.omid.library.pubmatic;

import com.iab.omid.library.pubmatic.p014d.C1774e;
import com.j256.ormlite.stmt.query.SimpleComparison;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* renamed from: com.iab.omid.library.pubmatic.c */
/* loaded from: classes2-dex2jar.jar:com/iab/omid/library/pubmatic/c.class */
class C1763c {

    /* renamed from: a */
    private static final Pattern f254a = Pattern.compile("<(head)( [^>]*)?>", 2);

    /* renamed from: b */
    private static final Pattern f255b = Pattern.compile("<(head)( [^>]*)?/>", 2);

    /* renamed from: c */
    private static final Pattern f256c = Pattern.compile("<(body)( [^>]*?)?>", 2);

    /* renamed from: d */
    private static final Pattern f257d = Pattern.compile("<(body)( [^>]*?)?/>", 2);

    /* renamed from: e */
    private static final Pattern f258e = Pattern.compile("<(html)( [^>]*?)?>", 2);

    /* renamed from: f */
    private static final Pattern f259f = Pattern.compile("<(html)( [^>]*?)?/>", 2);

    /* renamed from: g */
    private static final Pattern f260g = Pattern.compile("<!DOCTYPE [^>]*>", 2);

    /* renamed from: a */
    public static String m1259a(String str, String str2) {
        return m1257b(str2, "<script type=\"text/javascript\">" + str + "</script>");
    }

    /* renamed from: a */
    private static boolean m1261a(int i, int[][] iArr) {
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
    private static boolean m1258a(String str, StringBuilder sb, Pattern pattern, String str2, int[][] iArr) {
        Matcher matcher = pattern.matcher(str);
        int i = 0;
        while (matcher.find(i)) {
            int start = matcher.start();
            i = matcher.end();
            if (!m1261a(start, iArr)) {
                sb.append(str.substring(0, matcher.end()));
                sb.append(str2);
                sb.append(str.substring(matcher.end()));
                return true;
            }
        }
        return false;
    }

    /* renamed from: a */
    private static int[][] m1260a(String str) {
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
    static String m1257b(String str, String str2) {
        C1774e.m1220a(str, "HTML is null or empty");
        int[][] m1260a = m1260a(str);
        StringBuilder sb = new StringBuilder(str.length() + str2.length() + 16);
        if (!m1256b(str, sb, f255b, str2, m1260a) && !m1258a(str, sb, f254a, str2, m1260a) && !m1256b(str, sb, f257d, str2, m1260a) && !m1258a(str, sb, f256c, str2, m1260a) && !m1256b(str, sb, f259f, str2, m1260a) && !m1258a(str, sb, f258e, str2, m1260a) && !m1258a(str, sb, f260g, str2, m1260a)) {
            return str2 + str;
        }
        return sb.toString();
    }

    /* renamed from: b */
    private static boolean m1256b(String str, StringBuilder sb, Pattern pattern, String str2, int[][] iArr) {
        Matcher matcher = pattern.matcher(str);
        int i = 0;
        while (matcher.find(i)) {
            int start = matcher.start();
            i = matcher.end();
            if (!m1261a(start, iArr)) {
                sb.append(str.substring(0, matcher.end() - 2));
                sb.append(SimpleComparison.GREATER_THAN_OPERATION);
                sb.append(str2);
                sb.append("</");
                sb.append(matcher.group(1));
                sb.append(SimpleComparison.GREATER_THAN_OPERATION);
                sb.append(str.substring(matcher.end()));
                return true;
            }
        }
        return false;
    }
}
