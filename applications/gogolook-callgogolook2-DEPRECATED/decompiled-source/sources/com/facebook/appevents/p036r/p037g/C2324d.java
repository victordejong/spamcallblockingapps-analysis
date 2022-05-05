package com.facebook.appevents.p036r.p037g;

import android.text.method.PasswordTransformationMethod;
import android.util.Patterns;
import android.widget.TextView;
/* renamed from: com.facebook.appevents.r.g.d */
/* loaded from: classes-dex2jar.jar:com/facebook/appevents/r/g/d.class */
public class C2324d {
    /* JADX WARN: Code restructure failed: missing block: B:15:0x003b, code lost:
        if (m35178b(r0) != false) goto L_0x003e;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m35180a(android.view.View r2) {
        /*
            r0 = r2
            boolean r0 = r0 instanceof android.widget.TextView
            r3 = r0
            r0 = 0
            r4 = r0
            r0 = r4
            r5 = r0
            r0 = r3
            if (r0 == 0) goto L_0x0040
            r0 = r2
            android.widget.TextView r0 = (android.widget.TextView) r0
            r2 = r0
            r0 = r2
            boolean r0 = m35177c(r0)
            if (r0 != 0) goto L_0x003e
            r0 = r2
            boolean r0 = m35179a(r0)
            if (r0 != 0) goto L_0x003e
            r0 = r2
            boolean r0 = m35176d(r0)
            if (r0 != 0) goto L_0x003e
            r0 = r2
            boolean r0 = m35174f(r0)
            if (r0 != 0) goto L_0x003e
            r0 = r2
            boolean r0 = m35175e(r0)
            if (r0 != 0) goto L_0x003e
            r0 = r4
            r5 = r0
            r0 = r2
            boolean r0 = m35178b(r0)
            if (r0 == 0) goto L_0x0040
        L_0x003e:
            r0 = 1
            r5 = r0
        L_0x0040:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.appevents.p036r.p037g.C2324d.m35180a(android.view.View):boolean");
    }

    /* renamed from: a */
    public static boolean m35179a(TextView textView) {
        String replaceAll = C2326f.m35157j(textView).replaceAll("\\s", "");
        int length = replaceAll.length();
        boolean z = false;
        if (length >= 12) {
            if (length > 19) {
                z = false;
            } else {
                int i = 0;
                boolean z2 = false;
                for (int i2 = length - 1; i2 >= 0; i2--) {
                    char charAt = replaceAll.charAt(i2);
                    if (charAt < '0' || charAt > '9') {
                        return false;
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
                    i += i4;
                    z2 = !z2;
                }
                z = false;
                if (i % 10 == 0) {
                    z = true;
                }
            }
        }
        return z;
    }

    /* renamed from: b */
    public static boolean m35178b(TextView textView) {
        if (textView.getInputType() == 32) {
            return true;
        }
        String j = C2326f.m35157j(textView);
        if (j == null || j.length() == 0) {
            return false;
        }
        return Patterns.EMAIL_ADDRESS.matcher(j).matches();
    }

    /* renamed from: c */
    public static boolean m35177c(TextView textView) {
        if (textView.getInputType() == 128) {
            return true;
        }
        return textView.getTransformationMethod() instanceof PasswordTransformationMethod;
    }

    /* renamed from: d */
    public static boolean m35176d(TextView textView) {
        return textView.getInputType() == 96;
    }

    /* renamed from: e */
    public static boolean m35175e(TextView textView) {
        return textView.getInputType() == 3;
    }

    /* renamed from: f */
    public static boolean m35174f(TextView textView) {
        return textView.getInputType() == 112;
    }
}
