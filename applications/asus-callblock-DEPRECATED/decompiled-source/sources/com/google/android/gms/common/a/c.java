package com.google.android.gms.common.a;

import android.content.Context;
import android.content.pm.PackageManager;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/a/c.class */
public final class c {
    public static boolean a(Context context, String str) {
        boolean z = false;
        try {
            if ((context.getPackageManager().getApplicationInfo(str, 0).flags & 2097152) != 0) {
                z = true;
            }
        } catch (PackageManager.NameNotFoundException e) {
        }
        return z;
    }
}
