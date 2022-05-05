package com.flurry.sdk;

import java.util.Locale;
/* renamed from: com.flurry.sdk.io */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/io.class */
public final class C3305io {

    /* renamed from: a */
    public static C3305io f5596a;

    /* renamed from: a */
    public static C3305io m32733a() {
        C3305io ioVar;
        synchronized (C3305io.class) {
            try {
                if (f5596a == null) {
                    f5596a = new C3305io();
                }
                ioVar = f5596a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return ioVar;
    }

    /* renamed from: b */
    public static String m32732b() {
        return Locale.getDefault().getLanguage() + "_" + Locale.getDefault().getCountry();
    }
}
