package com.facebook.appevents.b.a;

import android.text.method.PasswordTransformationMethod;
import android.util.Patterns;
import android.view.View;
import android.widget.TextView;
import com.facebook.internal.b.b.a;
/* loaded from: classes3-dex2jar.jar:com/facebook/appevents/b/a/d.class */
public class d {
    public static boolean a(View view) {
        if (a.a(d.class)) {
            return false;
        }
        try {
            if (!(view instanceof TextView)) {
                return false;
            }
            TextView textView = (TextView) view;
            if (a(textView) || f(textView) || c(textView) || d(textView) || e(textView)) {
                return true;
            }
            return b(textView);
        } catch (Throwable th) {
            a.a(th, d.class);
            return false;
        }
    }

    private static boolean a(TextView textView) {
        if (a.a(d.class)) {
            return false;
        }
        try {
            if (textView.getInputType() == 128) {
                return true;
            }
            return textView.getTransformationMethod() instanceof PasswordTransformationMethod;
        } catch (Throwable th) {
            a.a(th, d.class);
            return false;
        }
    }

    private static boolean b(TextView textView) {
        if (a.a(d.class)) {
            return false;
        }
        try {
            if (textView.getInputType() == 32) {
                return true;
            }
            String e = f.e(textView);
            if (!(e == null || e.length() == 0)) {
                return Patterns.EMAIL_ADDRESS.matcher(e).matches();
            }
            return false;
        } catch (Throwable th) {
            a.a(th, d.class);
            return false;
        }
    }

    private static boolean c(TextView textView) {
        if (a.a(d.class)) {
            return false;
        }
        try {
            return textView.getInputType() == 96;
        } catch (Throwable th) {
            a.a(th, d.class);
            return false;
        }
    }

    private static boolean d(TextView textView) {
        if (a.a(d.class)) {
            return false;
        }
        try {
            return textView.getInputType() == 112;
        } catch (Throwable th) {
            a.a(th, d.class);
            return false;
        }
    }

    private static boolean e(TextView textView) {
        if (a.a(d.class)) {
            return false;
        }
        try {
            return textView.getInputType() == 3;
        } catch (Throwable th) {
            a.a(th, d.class);
            return false;
        }
    }

    private static boolean f(TextView textView) {
        if (a.a(d.class)) {
            return false;
        }
        try {
            String replaceAll = f.e(textView).replaceAll("\\s", "");
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
            a.a(th, d.class);
            return false;
        }
    }
}
