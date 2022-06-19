package com.google.android.gms.internal.ads;

import java.util.logging.Logger;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/con.class */
final class con {

    /* renamed from: a */
    private static final Logger f13444a = Logger.getLogger(con.class.getName());

    /* renamed from: b */
    private static final coo f13445b = new C2872a();

    /* renamed from: com.google.android.gms.internal.ads.con$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/con$a.class */
    static final class C2872a {
        private C2872a() {
        }
    }

    private con() {
    }

    /* renamed from: a */
    public static boolean m10943a(@NullableDecl String str) {
        return str == null || str.isEmpty();
    }

    /* renamed from: b */
    public static String m10942b(@NullableDecl String str) {
        String str2 = str;
        if (str == null) {
            str2 = "";
        }
        return str2;
    }

    /* renamed from: c */
    public static String m10941c(@NullableDecl String str) {
        String str2 = str;
        if (m10943a(str)) {
            str2 = null;
        }
        return str2;
    }
}
