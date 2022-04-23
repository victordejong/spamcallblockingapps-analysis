package com.google.android.gms.internal.ads;

import java.util.logging.Logger;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cyc.class */
public final class cyc {

    /* renamed from: a  reason: collision with root package name */
    private static final Logger f26561a = Logger.getLogger(cyc.class.getName());

    /* renamed from: b  reason: collision with root package name */
    private static final cyd f26562b = new a();

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cyc$a.class */
    static final class a {
        private a() {
        }
    }

    private cyc() {
    }

    public static boolean a(String str) {
        return str == null || str.isEmpty();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String b(String str) {
        String str2 = str;
        if (str == null) {
            str2 = "";
        }
        return str2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String c(String str) {
        String str2 = str;
        if (a(str)) {
            str2 = null;
        }
        return str2;
    }
}
