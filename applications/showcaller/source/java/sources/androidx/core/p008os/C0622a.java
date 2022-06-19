package androidx.core.p008os;

import android.os.Build;
/* renamed from: androidx.core.os.a */
/* loaded from: classes-dex2jar.jar:androidx/core/os/a.class */
public class C0622a {
    /* renamed from: a */
    protected static boolean m33202a(String str, String str2) {
        boolean z = false;
        if ("REL".equals(str2)) {
            return false;
        }
        if (str2.compareTo(str) >= 0) {
            z = true;
        }
        return z;
    }

    @Deprecated
    /* renamed from: b */
    public static boolean m33201b() {
        return Build.VERSION.SDK_INT >= 30;
    }

    /* renamed from: c */
    public static boolean m33200c() {
        return Build.VERSION.SDK_INT >= 31 || m33202a("S", Build.VERSION.CODENAME);
    }
}
