package com.iab.omid.library.verizonmedia;

import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/verizonmedia/d.class */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    private static final Pattern f33477a = Pattern.compile("<(head)( [^>]*)?>", 2);

    /* renamed from: b  reason: collision with root package name */
    private static final Pattern f33478b = Pattern.compile("<(head)( [^>]*)?/>", 2);

    /* renamed from: c  reason: collision with root package name */
    private static final Pattern f33479c = Pattern.compile("<(body)( [^>]*?)?>", 2);

    /* renamed from: d  reason: collision with root package name */
    private static final Pattern f33480d = Pattern.compile("<(body)( [^>]*?)?/>", 2);
    private static final Pattern e = Pattern.compile("<(html)( [^>]*?)?>", 2);
    private static final Pattern f = Pattern.compile("<(html)( [^>]*?)?/>", 2);
    private static final Pattern g = Pattern.compile("<!DOCTYPE [^>]*>", 2);

    public static String a(String str, String str2) {
        String str3 = "<script type=\"text/javascript\">" + str + "</script>";
        com.iab.omid.library.verizonmedia.d.d.a(str2, "HTML is null or empty");
        int[][] a2 = a(str2);
        StringBuilder sb = new StringBuilder(str2.length() + str3.length() + 16);
        if (!b(str2, sb, f33478b, str3, a2) && !a(str2, sb, f33477a, str3, a2) && !b(str2, sb, f33480d, str3, a2) && !a(str2, sb, f33479c, str3, a2) && !b(str2, sb, f, str3, a2) && !a(str2, sb, e, str3, a2) && !a(str2, sb, g, str3, a2)) {
            return str3 + str2;
        }
        return sb.toString();
    }

    private static boolean a(int i, int[][] iArr) {
        if (iArr == null) {
            return false;
        }
        for (int[] iArr2 : iArr) {
            if (i >= iArr2[0] && i <= iArr2[1]) {
                return true;
            }
        }
        return false;
    }

    private static boolean a(String str, StringBuilder sb, Pattern pattern, String str2, int[][] iArr) {
        Matcher matcher = pattern.matcher(str);
        int i = 0;
        while (matcher.find(i)) {
            int start = matcher.start();
            i = matcher.end();
            if (!a(start, iArr)) {
                sb.append(str.substring(0, matcher.end()));
                sb.append(str2);
                sb.append(str.substring(matcher.end()));
                return true;
            }
        }
        return false;
    }

    private static int[][] a(String str) {
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

    private static boolean b(String str, StringBuilder sb, Pattern pattern, String str2, int[][] iArr) {
        Matcher matcher = pattern.matcher(str);
        int i = 0;
        while (matcher.find(i)) {
            int start = matcher.start();
            i = matcher.end();
            if (!a(start, iArr)) {
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
