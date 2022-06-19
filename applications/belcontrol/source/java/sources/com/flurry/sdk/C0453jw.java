package com.flurry.sdk;

import java.util.Locale;
/* renamed from: com.flurry.sdk.jw */
/* loaded from: classes-dex2jar.jar:com/flurry/sdk/jw.class */
public final class C0453jw {

    /* renamed from: a */
    private static C0453jw f3424a;

    private C0453jw() {
    }

    /* renamed from: a */
    public static C0453jw m4673a() {
        C0453jw c0453jw;
        synchronized (C0453jw.class) {
            try {
                if (f3424a == null) {
                    f3424a = new C0453jw();
                }
                c0453jw = f3424a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return c0453jw;
    }

    /* renamed from: b */
    public static String m4672b() {
        return Locale.getDefault().getLanguage() + "_" + Locale.getDefault().getCountry();
    }
}
