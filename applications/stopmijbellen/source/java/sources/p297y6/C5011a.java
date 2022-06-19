package p297y6;

import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* renamed from: y6.a */
/* loaded from: classes-dex2jar.jar:y6/a.class */
public class C5011a {

    /* renamed from: a */
    public static final Pattern f15261a = Pattern.compile("<(head)( [^>]*)?>", 2);

    /* renamed from: b */
    public static final Pattern f15262b = Pattern.compile("<(head)( [^>]*)?/>", 2);

    /* renamed from: c */
    public static final Pattern f15263c = Pattern.compile("<(body)( [^>]*?)?>", 2);

    /* renamed from: d */
    public static final Pattern f15264d = Pattern.compile("<(body)( [^>]*?)?/>", 2);

    /* renamed from: e */
    public static final Pattern f15265e = Pattern.compile("<(html)( [^>]*?)?>", 2);

    /* renamed from: f */
    public static final Pattern f15266f = Pattern.compile("<(html)( [^>]*?)?/>", 2);

    /* renamed from: g */
    public static final Pattern f15267g = Pattern.compile("<!DOCTYPE [^>]*>", 2);

    /* renamed from: a */
    public static boolean m141a(int i, int[][] iArr) {
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

    /* renamed from: b */
    public static boolean m140b(String str, StringBuilder sb, Pattern pattern, String str2, int[][] iArr) {
        Matcher matcher = pattern.matcher(str);
        int i = 0;
        while (matcher.find(i)) {
            int start = matcher.start();
            i = matcher.end();
            if (!m141a(start, iArr)) {
                sb.append(str.substring(0, matcher.end()));
                sb.append(str2);
                sb.append(str.substring(matcher.end()));
                return true;
            }
        }
        return false;
    }

    /* renamed from: c */
    public static boolean m139c(String str, StringBuilder sb, Pattern pattern, String str2, int[][] iArr) {
        Matcher matcher = pattern.matcher(str);
        int i = 0;
        while (matcher.find(i)) {
            int start = matcher.start();
            i = matcher.end();
            if (!m141a(start, iArr)) {
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
