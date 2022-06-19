package org.jsoup.p591b;

import io.objectbox.model.PropertyFlags;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.Stack;
import org.apache.commons.lang3.StringUtils;
import org.jsoup.p590a.C20779c;
/* renamed from: org.jsoup.b.c */
/* loaded from: classes5-dex2jar.jar:org/jsoup/b/c.class */
public final class C20782c {

    /* renamed from: a */
    static final String[] f67298a = {"", StringUtils.SPACE, "  ", "   ", "    ", "     ", "      ", "       ", "        ", "         ", "          ", "           ", "            ", "             ", "              ", "               ", "                ", "                 ", "                  ", "                   ", "                    "};

    /* renamed from: b */
    private static final Stack<StringBuilder> f67299b = new Stack<>();

    /* renamed from: a */
    public static String m495a(int i) {
        if (i >= 0) {
            String[] strArr = f67298a;
            if (i < strArr.length) {
                return strArr[i];
            }
            char[] cArr = new char[i];
            for (int i2 = 0; i2 < i; i2++) {
                cArr[i2] = (char) 32;
            }
            return String.valueOf(cArr);
        }
        throw new IllegalArgumentException("width must be > 0");
    }

    /* renamed from: a */
    public static String m493a(String str, String str2) {
        try {
            try {
                URL url = new URL(str);
                String str3 = str2;
                if (str2.startsWith("?")) {
                    str3 = url.getPath() + str2;
                }
                URL url2 = url;
                if (str3.indexOf(46) == 0) {
                    url2 = url;
                    if (url.getFile().indexOf(47) != 0) {
                        url2 = new URL(url.getProtocol(), url.getHost(), url.getPort(), "/" + url.getFile());
                    }
                }
                return new URL(url2, str3).toExternalForm();
            } catch (MalformedURLException e) {
                return new URL(str2).toExternalForm();
            }
        } catch (MalformedURLException e2) {
            return "";
        }
    }

    /* renamed from: a */
    public static String m491a(StringBuilder sb) {
        C20779c.m507a(sb);
        String sb2 = sb.toString();
        if (sb.length() > 8192) {
            sb = new StringBuilder((int) PropertyFlags.UNSIGNED);
        } else {
            sb.delete(0, sb.length());
        }
        Stack<StringBuilder> stack = f67299b;
        synchronized (stack) {
            stack.push(sb);
            while (true) {
                Stack<StringBuilder> stack2 = f67299b;
                if (stack2.size() > 8) {
                    stack2.pop();
                }
            }
        }
        return sb2;
    }

    /* renamed from: a */
    public static String m489a(Collection collection, String str) {
        Iterator it2 = collection.iterator();
        if (!it2.hasNext()) {
            return "";
        }
        String obj = it2.next().toString();
        if (!it2.hasNext()) {
            return obj;
        }
        StringBuilder m496a = m496a();
        m496a.append(obj);
        while (it2.hasNext()) {
            m496a.append(str);
            m496a.append(it2.next());
        }
        return m491a(m496a);
    }

    /* renamed from: a */
    public static StringBuilder m496a() {
        StringBuilder sb;
        Stack<StringBuilder> stack = f67299b;
        synchronized (stack) {
            sb = stack.empty() ? new StringBuilder((int) PropertyFlags.UNSIGNED) : stack.pop();
        }
        return sb;
    }

    /* renamed from: a */
    public static void m490a(StringBuilder sb, String str, boolean z) {
        boolean z2;
        boolean z3;
        int length = str.length();
        int i = 0;
        boolean z4 = false;
        boolean z5 = false;
        while (true) {
            boolean z6 = z5;
            if (i < length) {
                int codePointAt = str.codePointAt(i);
                if (codePointAt == 32 || codePointAt == 9 || codePointAt == 10 || codePointAt == 12 || codePointAt == 13 || codePointAt == 160) {
                    if (z) {
                        z3 = z4;
                        z2 = z6;
                        if (!z6) {
                        }
                    }
                    z3 = z4;
                    z2 = z6;
                    if (!z4) {
                        sb.append(' ');
                        z3 = true;
                        z2 = z6;
                    }
                } else {
                    z3 = z4;
                    z2 = z6;
                    if (!(codePointAt == 8203 || codePointAt == 173)) {
                        sb.appendCodePoint(codePointAt);
                        z3 = false;
                        z2 = true;
                    }
                }
                i += Character.charCount(codePointAt);
                z4 = z3;
                z5 = z2;
            } else {
                return;
            }
        }
    }

    /* renamed from: a */
    public static boolean m494a(String str) {
        if (str == null || str.length() == 0) {
            return true;
        }
        int length = str.length();
        for (int i = 0; i < length; i++) {
            if (!m488b(str.codePointAt(i))) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: a */
    public static boolean m492a(String str, String... strArr) {
        for (String str2 : strArr) {
            if (str2.equals(str)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: b */
    public static boolean m488b(int i) {
        return i == 32 || i == 9 || i == 10 || i == 12 || i == 13;
    }

    /* renamed from: b */
    public static boolean m487b(String str) {
        if (str == null || str.length() == 0) {
            return false;
        }
        int length = str.length();
        for (int i = 0; i < length; i++) {
            if (!Character.isDigit(str.codePointAt(i))) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: b */
    public static boolean m486b(String str, String[] strArr) {
        return Arrays.binarySearch(strArr, str) >= 0;
    }
}
