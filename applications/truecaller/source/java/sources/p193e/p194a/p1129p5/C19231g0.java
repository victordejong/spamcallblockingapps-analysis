package p193e.p194a.p1129p5;

import android.text.TextUtils;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Locale;
import java.util.Set;
import w3.c.a.a.a.h;
/* renamed from: e.a.p5.g0 */
/* loaded from: classes15-dex2jar.jar:e/a/p5/g0.class */
public final class C19231g0 extends h {

    /* renamed from: a */
    public static final Set<Character> f53598a = Collections.unmodifiableSet(new HashSet(Arrays.asList(',', ';', 'p', 'P', 'w', 'W', 'N', '*', '#')));

    /* renamed from: A */
    public static String m13816A(String str, Locale locale) {
        if (str.length() <= 1) {
            return str.toUpperCase(locale);
        }
        return str.substring(0, 1).toUpperCase(locale) + str.substring(1);
    }

    /* renamed from: B */
    public static String m13815B(String str) {
        boolean z;
        String str2 = str;
        if (!h.j(str)) {
            StringBuilder sb = new StringBuilder();
            int length = str.length();
            int i = 0;
            boolean z2 = false;
            while (true) {
                boolean z3 = z2;
                if (i >= length) {
                    break;
                }
                char charAt = str.charAt(i);
                if (Character.isDigit(charAt)) {
                    sb.append(charAt);
                } else if (charAt != '+' || z3) {
                    z = z3;
                    if (f53598a.contains(Character.valueOf(charAt))) {
                        sb.append(charAt);
                        z = z3;
                    }
                    i++;
                    z2 = z;
                } else {
                    sb.append(charAt);
                }
                z = true;
                i++;
                z2 = z;
            }
            str2 = sb.toString();
        }
        return str2;
    }

    /* renamed from: C */
    public static String m13814C(String str, Iterable<? extends CharSequence> iterable) {
        StringBuilder sb = new StringBuilder();
        for (CharSequence charSequence : iterable) {
            if (!TextUtils.isEmpty(charSequence)) {
                if (!TextUtils.isEmpty(sb)) {
                    sb.append(str);
                }
                sb.append(charSequence);
            }
        }
        return sb.toString();
    }

    /* renamed from: D */
    public static String m13813D(String str, CharSequence... charSequenceArr) {
        StringBuilder sb = new StringBuilder();
        for (CharSequence charSequence : charSequenceArr) {
            if (!h.j(charSequence)) {
                if (!h.j(sb)) {
                    sb.append(str);
                }
                sb.append(charSequence);
            }
        }
        return sb.toString();
    }

    /* renamed from: E */
    public static boolean m13812E(String str) {
        return m13811F(str, -1);
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0032, code lost:
        if (r0.length() >= r4) goto L13;
     */
    /* renamed from: F */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m13811F(java.lang.String r3, int r4) {
        /*
            r0 = r3
            boolean r0 = w3.c.a.a.a.h.j(r0)
            r5 = r0
            r0 = 0
            r6 = r0
            r0 = r6
            r7 = r0
            r0 = r5
            if (r0 != 0) goto L38
            r0 = r3
            java.lang.String r0 = m13815B(r0)     // Catch: java.lang.Throwable -> L3b
            r3 = r0
            r0 = r6
            r7 = r0
            r0 = r3
            if (r0 == 0) goto L38
            java.math.BigInteger r0 = new java.math.BigInteger     // Catch: java.lang.Throwable -> L3b
            r1 = r3
            r0.<init>(r1)     // Catch: java.lang.Throwable -> L3b
            r0 = r4
            r1 = -1
            if (r0 == r1) goto L35
            r0 = r3
            int r0 = r0.length()     // Catch: java.lang.Throwable -> L3b
            r8 = r0
            r0 = r6
            r7 = r0
            r0 = r8
            r1 = r4
            if (r0 < r1) goto L38
        L35:
            r0 = 1
            r7 = r0
        L38:
            r0 = r7
            return r0
        L3b:
            r3 = move-exception
            r0 = r6
            r7 = r0
            goto L38
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1129p5.C19231g0.m13811F(java.lang.String, int):boolean");
    }

    /* renamed from: G */
    public static String m13810G(String... strArr) {
        for (String str : strArr) {
            if (h.l(str)) {
                return str;
            }
        }
        return null;
    }

    /* renamed from: H */
    public static boolean m13809H(String str, int i) {
        return str != null && str.length() >= i;
    }

    /* renamed from: I */
    public static String m13808I(String str) {
        if (!h.m(str)) {
            str = "";
        }
        return str;
    }

    /* renamed from: J */
    public static int m13807J(String str, String str2, boolean z) {
        if ((str == null) ^ (str2 == null)) {
            int i = 1;
            if (str == null) {
                i = -1;
            }
            return i;
        } else if (str == null && str2 == null) {
            return 0;
        } else {
            return z ? str.compareToIgnoreCase(str2) : str.compareTo(str2);
        }
    }

    /* renamed from: K */
    public static int m13806K(String str) {
        try {
            return Integer.parseInt(m13815B(str));
        } catch (RuntimeException e) {
            return 0;
        }
    }

    /* renamed from: L */
    public static long m13805L(String str) {
        try {
            return Long.parseLong(m13815B(str));
        } catch (RuntimeException e) {
            return 0L;
        }
    }

    /* renamed from: M */
    public static String m13804M(String str, Locale locale) {
        String str2 = str;
        if (!TextUtils.isEmpty(str)) {
            Locale locale2 = locale;
            if (locale == null) {
                locale2 = Locale.ENGLISH;
            }
            str2 = str.toUpperCase(locale2);
        }
        return str2;
    }
}
