package com.iab.omid.library.applovin;

import android.support.p012v4.media.C0082b;
import com.google.android.gms.internal.ads.C1676a;
import com.iab.omid.library.applovin.p062d.C1950e;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import p007a6.C0033h;
/* renamed from: com.iab.omid.library.applovin.c */
/* loaded from: classes-dex2jar.jar:com/iab/omid/library/applovin/c.class */
class C1939c {

    /* renamed from: a */
    private static final Pattern f7185a = Pattern.compile("<(head)( [^>]*)?>", 2);

    /* renamed from: b */
    private static final Pattern f7186b = Pattern.compile("<(head)( [^>]*)?/>", 2);

    /* renamed from: c */
    private static final Pattern f7187c = Pattern.compile("<(body)( [^>]*?)?>", 2);

    /* renamed from: d */
    private static final Pattern f7188d = Pattern.compile("<(body)( [^>]*?)?/>", 2);

    /* renamed from: e */
    private static final Pattern f7189e = Pattern.compile("<(html)( [^>]*?)?>", 2);

    /* renamed from: f */
    private static final Pattern f7190f = Pattern.compile("<(html)( [^>]*?)?/>", 2);

    /* renamed from: g */
    private static final Pattern f7191g = Pattern.compile("<!DOCTYPE [^>]*>", 2);

    /* renamed from: a */
    public static String m4122a(String str, String str2) {
        return m4120b(str2, C0082b.m8755g("<script type=\"text/javascript\">", str, "</script>"));
    }

    /* renamed from: a */
    private static boolean m4124a(int i, int[][] iArr) {
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
    private static boolean m4121a(String str, StringBuilder sb, Pattern pattern, String str2, int[][] iArr) {
        Matcher matcher = pattern.matcher(str);
        int i = 0;
        while (matcher.find(i)) {
            int start = matcher.start();
            i = matcher.end();
            if (!m4124a(start, iArr)) {
                sb.append(str.substring(0, matcher.end()));
                sb.append(str2);
                sb.append(str.substring(matcher.end()));
                return true;
            }
        }
        return false;
    }

    /* renamed from: a */
    private static int[][] m4123a(String str) {
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
    public static String m4120b(String str, String str2) {
        C1950e.m4081a(str, "HTML is null or empty");
        int[][] m4123a = m4123a(str);
        StringBuilder sb = new StringBuilder(C0033h.m8889h(str2, str.length(), 16));
        if (!m4119b(str, sb, f7186b, str2, m4123a) && !m4121a(str, sb, f7185a, str2, m4123a) && !m4119b(str, sb, f7188d, str2, m4123a) && !m4121a(str, sb, f7187c, str2, m4123a) && !m4119b(str, sb, f7190f, str2, m4123a) && !m4121a(str, sb, f7189e, str2, m4123a) && !m4121a(str, sb, f7191g, str2, m4123a)) {
            return C1676a.m4789h(str2, str);
        }
        return sb.toString();
    }

    /* renamed from: b */
    private static boolean m4119b(String str, StringBuilder sb, Pattern pattern, String str2, int[][] iArr) {
        Matcher matcher = pattern.matcher(str);
        int i = 0;
        while (matcher.find(i)) {
            int start = matcher.start();
            i = matcher.end();
            if (!m4124a(start, iArr)) {
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
