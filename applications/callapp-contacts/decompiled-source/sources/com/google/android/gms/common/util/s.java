package com.google.android.gms.common.util;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.util.Log;
import com.google.android.gms.common.d;
import com.google.android.gms.common.d.c;
import com.google.android.gms.common.e;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/util/s.class */
public final class s {
    private s() {
    }

    public static boolean a(Context context, int i) {
        if (!a(context, i, "com.google.android.gms")) {
            return false;
        }
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo("com.google.android.gms", 64);
            e a2 = e.a(context);
            if (packageInfo == null) {
                return false;
            }
            if (e.a(packageInfo, false)) {
                return true;
            }
            if (!e.a(packageInfo, true)) {
                return false;
            }
            if (d.honorsDebugCertificates(a2.f22808a)) {
                return true;
            }
            Log.w("GoogleSignatureVerifier", "Test-keys aren't accepted on this build.");
            return false;
        } catch (PackageManager.NameNotFoundException e) {
            Log.isLoggable("UidVerifier", 3);
            return false;
        }
    }

    public static boolean a(Context context, int i, String str) {
        return c.a(context).a(i, str);
    }
}
