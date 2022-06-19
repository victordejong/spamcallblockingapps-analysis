package com.facebook.appevents.p280b.p281a;

import android.text.method.PasswordTransformationMethod;
import android.util.Patterns;
import android.view.View;
import android.widget.TextView;
import com.facebook.internal.p299b.p301b.C10249a;
/* renamed from: com.facebook.appevents.b.a.d */
/* loaded from: classes3-dex2jar.jar:com/facebook/appevents/b/a/d.class */
public class C9979d {
    /* renamed from: a */
    public static boolean m23715a(View view) {
        if (C10249a.m23108a(C9979d.class)) {
            return false;
        }
        try {
            if (!(view instanceof TextView)) {
                return false;
            }
            TextView textView = (TextView) view;
            if (m23714a(textView) || m23709f(textView) || m23712c(textView) || m23711d(textView) || m23710e(textView)) {
                return true;
            }
            return m23713b(textView);
        } catch (Throwable th) {
            C10249a.m23106a(th, C9979d.class);
            return false;
        }
    }

    /* renamed from: a */
    private static boolean m23714a(TextView textView) {
        if (C10249a.m23108a(C9979d.class)) {
            return false;
        }
        try {
            if (textView.getInputType() != 128) {
                return textView.getTransformationMethod() instanceof PasswordTransformationMethod;
            }
            return true;
        } catch (Throwable th) {
            C10249a.m23106a(th, C9979d.class);
            return false;
        }
    }

    /* renamed from: b */
    private static boolean m23713b(TextView textView) {
        if (C10249a.m23108a(C9979d.class)) {
            return false;
        }
        try {
            if (textView.getInputType() == 32) {
                return true;
            }
            String m23697e = C9981f.m23697e(textView);
            if (m23697e != null && m23697e.length() != 0) {
                return Patterns.EMAIL_ADDRESS.matcher(m23697e).matches();
            }
            return false;
        } catch (Throwable th) {
            C10249a.m23106a(th, C9979d.class);
            return false;
        }
    }

    /* renamed from: c */
    private static boolean m23712c(TextView textView) {
        if (C10249a.m23108a(C9979d.class)) {
            return false;
        }
        try {
            return textView.getInputType() == 96;
        } catch (Throwable th) {
            C10249a.m23106a(th, C9979d.class);
            return false;
        }
    }

    /* renamed from: d */
    private static boolean m23711d(TextView textView) {
        if (C10249a.m23108a(C9979d.class)) {
            return false;
        }
        try {
            return textView.getInputType() == 112;
        } catch (Throwable th) {
            C10249a.m23106a(th, C9979d.class);
            return false;
        }
    }

    /* renamed from: e */
    private static boolean m23710e(TextView textView) {
        if (C10249a.m23108a(C9979d.class)) {
            return false;
        }
        try {
            return textView.getInputType() == 3;
        } catch (Throwable th) {
            C10249a.m23106a(th, C9979d.class);
            return false;
        }
    }

    /* renamed from: f */
    private static boolean m23709f(TextView textView) {
        if (C10249a.m23108a(C9979d.class)) {
            return false;
        }
        try {
            String replaceAll = C9981f.m23697e(textView).replaceAll("\\s", "");
            int length = replaceAll.length();
            if (length < 12 || length > 19) {
                return false;
            }
            int i = 0;
            boolean z = false;
            for (int i2 = length - 1; i2 >= 0; i2--) {
                char charAt = replaceAll.charAt(i2);
                if (charAt < '0' || charAt > '9') {
                    return false;
                }
                int i3 = charAt - '0';
                int i4 = i3;
                if (z) {
                    int i5 = i3 * 2;
                    i4 = i5;
                    if (i5 > 9) {
                        i4 = (i5 % 10) + 1;
                    }
                }
                i += i4;
                z = !z;
            }
            return i % 10 == 0;
        } catch (Throwable th) {
            C10249a.m23106a(th, C9979d.class);
            return false;
        }
    }
}
