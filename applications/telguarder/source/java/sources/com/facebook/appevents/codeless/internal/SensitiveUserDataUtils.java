package com.facebook.appevents.codeless.internal;

import android.text.method.PasswordTransformationMethod;
import android.util.Patterns;
import android.widget.TextView;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
/* loaded from: classes-dex2jar.jar:com/facebook/appevents/codeless/internal/SensitiveUserDataUtils.class */
public class SensitiveUserDataUtils {
    private static boolean isCreditCard(TextView textView) {
        if (CrashShieldHandler.isObjectCrashing(SensitiveUserDataUtils.class)) {
            return false;
        }
        try {
            String replaceAll = ViewHierarchy.getTextOfView(textView).replaceAll("\\s", "");
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
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, SensitiveUserDataUtils.class);
            return false;
        }
    }

    private static boolean isEmail(TextView textView) {
        if (CrashShieldHandler.isObjectCrashing(SensitiveUserDataUtils.class)) {
            return false;
        }
        try {
            if (textView.getInputType() == 32) {
                return true;
            }
            String textOfView = ViewHierarchy.getTextOfView(textView);
            if (textOfView != null && textOfView.length() != 0) {
                return Patterns.EMAIL_ADDRESS.matcher(textOfView).matches();
            }
            return false;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, SensitiveUserDataUtils.class);
            return false;
        }
    }

    private static boolean isPassword(TextView textView) {
        if (CrashShieldHandler.isObjectCrashing(SensitiveUserDataUtils.class)) {
            return false;
        }
        try {
            if (textView.getInputType() != 128) {
                return textView.getTransformationMethod() instanceof PasswordTransformationMethod;
            }
            return true;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, SensitiveUserDataUtils.class);
            return false;
        }
    }

    private static boolean isPersonName(TextView textView) {
        boolean z = false;
        if (CrashShieldHandler.isObjectCrashing(SensitiveUserDataUtils.class)) {
            return false;
        }
        try {
            if (textView.getInputType() == 96) {
                z = true;
            }
            return z;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, SensitiveUserDataUtils.class);
            return false;
        }
    }

    private static boolean isPhoneNumber(TextView textView) {
        boolean z = false;
        if (CrashShieldHandler.isObjectCrashing(SensitiveUserDataUtils.class)) {
            return false;
        }
        try {
            if (textView.getInputType() == 3) {
                z = true;
            }
            return z;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, SensitiveUserDataUtils.class);
            return false;
        }
    }

    private static boolean isPostalAddress(TextView textView) {
        boolean z = false;
        if (CrashShieldHandler.isObjectCrashing(SensitiveUserDataUtils.class)) {
            return false;
        }
        try {
            if (textView.getInputType() == 112) {
                z = true;
            }
            return z;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, SensitiveUserDataUtils.class);
            return false;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0047, code lost:
        if (isEmail(r0) != false) goto L21;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean isSensitiveUserData(android.view.View r3) {
        /*
            java.lang.Class<com.facebook.appevents.codeless.internal.SensitiveUserDataUtils> r0 = com.facebook.appevents.codeless.internal.SensitiveUserDataUtils.class
            boolean r0 = com.facebook.internal.instrument.crashshield.CrashShieldHandler.isObjectCrashing(r0)
            r4 = r0
            r0 = 0
            r5 = r0
            r0 = r4
            if (r0 == 0) goto Le
            r0 = 0
            return r0
        Le:
            r0 = r5
            r4 = r0
            r0 = r3
            boolean r0 = r0 instanceof android.widget.TextView     // Catch: java.lang.Throwable -> L4e
            if (r0 == 0) goto L4c
            r0 = r3
            android.widget.TextView r0 = (android.widget.TextView) r0     // Catch: java.lang.Throwable -> L4e
            r3 = r0
            r0 = r3
            boolean r0 = isPassword(r0)     // Catch: java.lang.Throwable -> L4e
            if (r0 != 0) goto L4a
            r0 = r3
            boolean r0 = isCreditCard(r0)     // Catch: java.lang.Throwable -> L4e
            if (r0 != 0) goto L4a
            r0 = r3
            boolean r0 = isPersonName(r0)     // Catch: java.lang.Throwable -> L4e
            if (r0 != 0) goto L4a
            r0 = r3
            boolean r0 = isPostalAddress(r0)     // Catch: java.lang.Throwable -> L4e
            if (r0 != 0) goto L4a
            r0 = r3
            boolean r0 = isPhoneNumber(r0)     // Catch: java.lang.Throwable -> L4e
            if (r0 != 0) goto L4a
            r0 = r3
            boolean r0 = isEmail(r0)     // Catch: java.lang.Throwable -> L4e
            r6 = r0
            r0 = r5
            r4 = r0
            r0 = r6
            if (r0 == 0) goto L4c
        L4a:
            r0 = 1
            r4 = r0
        L4c:
            r0 = r4
            return r0
        L4e:
            r3 = move-exception
            r0 = r3
            java.lang.Class<com.facebook.appevents.codeless.internal.SensitiveUserDataUtils> r1 = com.facebook.appevents.codeless.internal.SensitiveUserDataUtils.class
            com.facebook.internal.instrument.crashshield.CrashShieldHandler.handleThrowable(r0, r1)
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.appevents.codeless.internal.SensitiveUserDataUtils.isSensitiveUserData(android.view.View):boolean");
    }
}
