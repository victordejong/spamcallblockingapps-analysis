package org.jsoup.b;

import io.objectbox.model.PropertyFlags;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.Stack;
import org.apache.commons.lang3.StringUtils;
/* loaded from: classes5-dex2jar.jar:org/jsoup/b/c.class */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    static final String[] f39206a = {"", StringUtils.SPACE, "  ", "   ", "    ", "     ", "      ", "       ", "        ", "         ", "          ", "           ", "            ", "             ", "              ", "               ", "                ", "                 ", "                  ", "                   ", "                    "};

    /* renamed from: b  reason: collision with root package name */
    private static final Stack<StringBuilder> f39207b = new Stack<>();

    public static String a(int i) {
        if (i >= 0) {
            String[] strArr = f39206a;
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

    public static String a(String str, String str2) {
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

    public static String a(StringBuilder sb) {
        org.jsoup.a.c.a(sb);
        String sb2 = sb.toString();
        if (sb.length() > 8192) {
            sb = new StringBuilder((int) PropertyFlags.UNSIGNED);
        } else {
            sb.delete(0, sb.length());
        }
        Stack<StringBuilder> stack = f39207b;
        synchronized (stack) {
            stack.push(sb);
            while (true) {
                Stack<StringBuilder> stack2 = f39207b;
                if (stack2.size() > 8) {
                    stack2.pop();
                }
            }
        }
        return sb2;
    }

    public static String a(Collection collection, String str) {
        Iterator it2 = collection.iterator();
        if (!it2.hasNext()) {
            return "";
        }
        String obj = it2.next().toString();
        if (!it2.hasNext()) {
            return obj;
        }
        StringBuilder a2 = a();
        a2.append(obj);
        while (it2.hasNext()) {
            a2.append(str);
            a2.append(it2.next());
        }
        return a(a2);
    }

    public static StringBuilder a() {
        StringBuilder sb;
        Stack<StringBuilder> stack = f39207b;
        synchronized (stack) {
            sb = stack.empty() ? new StringBuilder((int) PropertyFlags.UNSIGNED) : stack.pop();
        }
        return sb;
    }

    public static void a(StringBuilder sb, String str, boolean z) {
        int length = str.length();
        int i = 0;
        boolean z2 = false;
        boolean z3 = false;
        while (i < length) {
            int codePointAt = str.codePointAt(i);
            if (codePointAt == 32 || codePointAt == 9 || codePointAt == 10 || codePointAt == 12 || codePointAt == 13 || codePointAt == 160) {
                if (z) {
                    z2 = z2;
                    z3 = z3;
                    if (!z3) {
                    }
                }
                z2 = z2;
                z3 = z3;
                if (!z2) {
                    sb.append(' ');
                    z2 = true;
                    z3 = z3;
                }
            } else {
                z2 = z2;
                z3 = z3;
                if (!(codePointAt == 8203 || codePointAt == 173)) {
                    sb.appendCodePoint(codePointAt);
                    z2 = false;
                    z3 = true;
                }
            }
            i += Character.charCount(codePointAt);
        }
    }

    public static boolean a(String str) {
        if (str == null || str.length() == 0) {
            return true;
        }
        int length = str.length();
        for (int i = 0; i < length; i++) {
            if (!b(str.codePointAt(i))) {
                return false;
            }
        }
        return true;
    }

    public static boolean a(String str, String... strArr) {
        for (String str2 : strArr) {
            if (str2.equals(str)) {
                return true;
            }
        }
        return false;
    }

    public static boolean b(int i) {
        return i == 32 || i == 9 || i == 10 || i == 12 || i == 13;
    }

    public static boolean b(String str) {
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

    public static boolean b(String str, String[] strArr) {
        return Arrays.binarySearch(strArr, str) >= 0;
    }
}
