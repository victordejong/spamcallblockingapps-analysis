package com.facebook.p094a.p096b.p097a;

import android.text.method.PasswordTransformationMethod;
import android.util.Patterns;
import android.widget.TextView;
/* renamed from: com.facebook.a.b.a.d */
/* loaded from: classes-dex2jar.jar:com/facebook/a/b/a/d.class */
public class C1827d {
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0039, code lost:
        if (m16187b(r0) != false) goto L16;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m16189a(android.view.View r2) {
        /*
            r0 = 0
            r3 = r0
            r0 = r3
            r4 = r0
            r0 = r2
            boolean r0 = r0 instanceof android.widget.TextView
            if (r0 == 0) goto L3e
            r0 = r2
            android.widget.TextView r0 = (android.widget.TextView) r0
            r2 = r0
            r0 = r2
            boolean r0 = m16188a(r0)
            if (r0 != 0) goto L3c
            r0 = r2
            boolean r0 = m16183f(r0)
            if (r0 != 0) goto L3c
            r0 = r2
            boolean r0 = m16186c(r0)
            if (r0 != 0) goto L3c
            r0 = r2
            boolean r0 = m16185d(r0)
            if (r0 != 0) goto L3c
            r0 = r2
            boolean r0 = m16184e(r0)
            if (r0 != 0) goto L3c
            r0 = r3
            r4 = r0
            r0 = r2
            boolean r0 = m16187b(r0)
            if (r0 == 0) goto L3e
        L3c:
            r0 = 1
            r4 = r0
        L3e:
            r0 = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.p094a.p096b.p097a.C1827d.m16189a(android.view.View):boolean");
    }

    /* renamed from: a */
    private static boolean m16188a(TextView textView) {
        return textView.getInputType() == 128 ? true : textView.getTransformationMethod() instanceof PasswordTransformationMethod;
    }

    /* renamed from: b */
    private static boolean m16187b(TextView textView) {
        boolean matches;
        if (textView.getInputType() == 32) {
            matches = true;
        } else {
            String m16170e = C1829f.m16170e(textView);
            matches = (m16170e == null || m16170e.length() == 0) ? false : Patterns.EMAIL_ADDRESS.matcher(m16170e).matches();
        }
        return matches;
    }

    /* renamed from: c */
    private static boolean m16186c(TextView textView) {
        return textView.getInputType() == 96;
    }

    /* renamed from: d */
    private static boolean m16185d(TextView textView) {
        return textView.getInputType() == 112;
    }

    /* renamed from: e */
    private static boolean m16184e(TextView textView) {
        return textView.getInputType() == 3;
    }

    /* renamed from: f */
    private static boolean m16183f(TextView textView) {
        String replaceAll = C1829f.m16170e(textView).replaceAll("\\s", "");
        int length = replaceAll.length();
        boolean z = false;
        if (length >= 12) {
            if (length > 19) {
                z = false;
            } else {
                int i = length - 1;
                boolean z2 = false;
                int i2 = 0;
                while (true) {
                    if (i >= 0) {
                        char charAt = replaceAll.charAt(i);
                        z = false;
                        if (charAt < '0') {
                            break;
                        }
                        z = false;
                        if (charAt > '9') {
                            break;
                        }
                        int i3 = charAt - '0';
                        int i4 = i3;
                        if (z2) {
                            int i5 = i3 * 2;
                            i4 = i5;
                            if (i5 > 9) {
                                i4 = (i5 % 10) + 1;
                            }
                        }
                        i2 += i4;
                        i--;
                        z2 = !z2;
                    } else {
                        z = i2 % 10 == 0;
                    }
                }
            }
        }
        return z;
    }
}
