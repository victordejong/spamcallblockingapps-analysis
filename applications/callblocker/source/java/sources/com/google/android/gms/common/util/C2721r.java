package com.google.android.gms.common.util;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.pm.PackageManager;
import android.util.Log;
import com.google.android.gms.common.C2596i;
import com.google.android.gms.common.p132c.C2586c;
/* renamed from: com.google.android.gms.common.util.r */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/r.class */
public final class C2721r {
    /* renamed from: a */
    public static boolean m13825a(Context context, int i) {
        boolean z;
        if (!m13824a(context, i, "com.google.android.gms")) {
            z = false;
        } else {
            try {
                z = C2596i.m14146a(context).m14145a(context.getPackageManager().getPackageInfo("com.google.android.gms", 64));
            } catch (PackageManager.NameNotFoundException e) {
                z = false;
                if (Log.isLoggable("UidVerifier", 3)) {
                    Log.d("UidVerifier", "Package manager can't find google play services package, defaulting to false");
                    z = false;
                }
            }
        }
        return z;
    }

    @TargetApi(19)
    /* renamed from: a */
    public static boolean m13824a(Context context, int i, String str) {
        return C2586c.m14193a(context).m14200a(i, str);
    }
}
