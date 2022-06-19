package com.google.android.gms.internal.ads;

import java.util.logging.Logger;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/mw1.class */
final class mw1 {
    static {
        Logger.getLogger(mw1.class.getName());
    }

    private mw1() {
    }

    /* renamed from: a */
    public static boolean m6477a(@NullableDecl String str) {
        return str == null || str.isEmpty();
    }

    /* renamed from: b */
    public static String m6476b(@NullableDecl String str) {
        String str2 = str;
        if (str == null) {
            str2 = "";
        }
        return str2;
    }
}
