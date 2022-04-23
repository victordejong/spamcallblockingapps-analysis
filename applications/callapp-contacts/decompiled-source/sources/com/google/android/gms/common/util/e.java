package com.google.android.gms.common.util;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import com.google.android.gms.common.d.c;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/util/e.class */
public final class e {
    private e() {
    }

    public static int a(Context context, String str) {
        PackageInfo packageInfo;
        Bundle bundle;
        try {
            packageInfo = c.a(context).b(str, 128);
        } catch (PackageManager.NameNotFoundException e) {
            packageInfo = null;
        }
        if (packageInfo == null || packageInfo.applicationInfo == null || (bundle = packageInfo.applicationInfo.metaData) == null) {
            return -1;
        }
        return bundle.getInt("com.google.android.gms.version", -1);
    }
}
