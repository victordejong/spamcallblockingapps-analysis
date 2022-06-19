package com.google.android.gms.internal.ads;

import java.util.logging.Logger;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cyc.class */
public final class cyc {

    /* renamed from: a */
    private static final Logger f46755a = Logger.getLogger(cyc.class.getName());

    /* renamed from: b */
    private static final cyd f46756b = new C12295a();

    /* renamed from: com.google.android.gms.internal.ads.cyc$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cyc$a.class */
    static final class C12295a {
        private C12295a() {
        }
    }

    private cyc() {
    }

    /* renamed from: a */
    public static boolean m17069a(String str) {
        return str == null || str.isEmpty();
    }

    /* renamed from: b */
    public static String m17068b(String str) {
        String str2 = str;
        if (str == null) {
            str2 = "";
        }
        return str2;
    }

    /* renamed from: c */
    public static String m17067c(String str) {
        String str2 = str;
        if (m17069a(str)) {
            str2 = null;
        }
        return str2;
    }
}
