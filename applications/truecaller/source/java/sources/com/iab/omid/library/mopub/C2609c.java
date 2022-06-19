package com.iab.omid.library.mopub;

import com.iab.omid.library.mopub.p127d.C2618e;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.iab.omid.library.mopub.c */
/* loaded from: classes3-dex2jar.jar:com/iab/omid/library/mopub/c.class */
public class C2609c {

    /* renamed from: a */
    private static final Pattern f8363a = Pattern.compile("<(head)( [^>]*)?>", 2);

    /* renamed from: b */
    private static final Pattern f8364b = Pattern.compile("<(head)( [^>]*)?/>", 2);

    /* renamed from: c */
    private static final Pattern f8365c = Pattern.compile("<(body)( [^>]*?)?>", 2);

    /* renamed from: d */
    private static final Pattern f8366d = Pattern.compile("<(body)( [^>]*?)?/>", 2);

    /* renamed from: e */
    private static final Pattern f8367e = Pattern.compile("<(html)( [^>]*?)?>", 2);

    /* renamed from: f */
    private static final Pattern f8368f = Pattern.compile("<(html)( [^>]*?)?/>", 2);

    /* renamed from: g */
    private static final Pattern f8369g = Pattern.compile("<!DOCTYPE [^>]*>", 2);

    /* renamed from: a */
    public static String m36433a(String str, String str2) {
        return m36431b(str2, "<script type=\"text/javascript\">" + str + "</script>");
    }

    /* renamed from: a */
    private static boolean m36435a(int i, int[][] iArr) {
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
    private static boolean m36432a(String str, StringBuilder sb, Pattern pattern, String str2, int[][] iArr) {
        Matcher matcher = pattern.matcher(str);
        int i = 0;
        while (matcher.find(i)) {
            int start = matcher.start();
            i = matcher.end();
            if (!m36435a(start, iArr)) {
                sb.append(str.substring(0, matcher.end()));
                sb.append(str2);
                sb.append(str.substring(matcher.end()));
                return true;
            }
        }
        return false;
    }

    /* renamed from: a */
    private static int[][] m36434a(String str) {
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
    public static String m36431b(String str, String str2) {
        C2618e.m36396a(str, "HTML is null or empty");
        int[][] m36434a = m36434a(str);
        StringBuilder sb = new StringBuilder(str2.length() + str.length() + 16);
        if (!m36430b(str, sb, f8364b, str2, m36434a) && !m36432a(str, sb, f8363a, str2, m36434a) && !m36430b(str, sb, f8366d, str2, m36434a) && !m36432a(str, sb, f8365c, str2, m36434a) && !m36430b(str, sb, f8368f, str2, m36434a) && !m36432a(str, sb, f8367e, str2, m36434a) && !m36432a(str, sb, f8369g, str2, m36434a)) {
            return C22128a.m8543z2(str2, str);
        }
        return sb.toString();
    }

    /* renamed from: b */
    private static boolean m36430b(String str, StringBuilder sb, Pattern pattern, String str2, int[][] iArr) {
        Matcher matcher = pattern.matcher(str);
        int i = 0;
        while (matcher.find(i)) {
            int start = matcher.start();
            i = matcher.end();
            if (!m36435a(start, iArr)) {
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
