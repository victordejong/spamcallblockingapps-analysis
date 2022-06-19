package com.google.android.gms.common.util;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.pm.PackageManager;
import android.util.Log;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.C1556d;
import com.google.android.gms.common.p080g.C1562c;
/* renamed from: com.google.android.gms.common.util.s */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/s.class */
public final class C1622s {
    /* renamed from: a */
    public static boolean m8200a(@RecentlyNonNull Context context, int i) {
        if (!m8199b(context, i, "com.google.android.gms")) {
            return false;
        }
        try {
            return C1556d.m8444a(context).m8443b(context.getPackageManager().getPackageInfo("com.google.android.gms", 64));
        } catch (PackageManager.NameNotFoundException e) {
            if (!Log.isLoggable("UidVerifier", 3)) {
                return false;
            }
            Log.d("UidVerifier", "Package manager can't find google play services package, defaulting to false");
            return false;
        }
    }

    @TargetApi(19)
    /* renamed from: b */
    public static boolean m8199b(@RecentlyNonNull Context context, int i, @RecentlyNonNull String str) {
        return C1562c.m8427a(context).m8428h(i, str);
    }
}
