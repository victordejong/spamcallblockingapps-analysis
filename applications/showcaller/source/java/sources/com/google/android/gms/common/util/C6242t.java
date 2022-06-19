package com.google.android.gms.common.util;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.pm.PackageManager;
import android.util.Log;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.C6096f;
import com.google.android.gms.common.p272k.C6198c;
/* renamed from: com.google.android.gms.common.util.t */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/t.class */
public final class C6242t {
    /* renamed from: a */
    public static boolean m16767a(@RecentlyNonNull Context context, int i) {
        if (!m16766b(context, i, "com.google.android.gms")) {
            return false;
        }
        try {
            return C6096f.m17191a(context).m17190b(context.getPackageManager().getPackageInfo("com.google.android.gms", 64));
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
    public static boolean m16766b(@RecentlyNonNull Context context, int i, @RecentlyNonNull String str) {
        return C6198c.m16885a(context).m16886h(i, str);
    }
}
