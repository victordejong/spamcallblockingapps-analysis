package androidx.core.p025os;

import android.os.Build;
/* renamed from: androidx.core.os.a */
/* loaded from: classes-dex2jar.jar:androidx/core/os/a.class */
public class C0589a {
    /* renamed from: a */
    public static boolean m6070a() {
        boolean z = true;
        if (Build.VERSION.CODENAME.length() != 1 || Build.VERSION.CODENAME.charAt(0) < 'Q' || Build.VERSION.CODENAME.charAt(0) > 'Z') {
            z = false;
        }
        return z;
    }
}
