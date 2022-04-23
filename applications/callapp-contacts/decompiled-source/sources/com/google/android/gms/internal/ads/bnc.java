package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import com.google.android.gms.common.d.c;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bnc.class */
public final class bnc {
    public static PackageInfo a(Context context, ApplicationInfo applicationInfo) {
        PackageInfo packageInfo;
        try {
            packageInfo = c.a(context).b(applicationInfo.packageName, 0);
        } catch (PackageManager.NameNotFoundException e) {
            packageInfo = null;
        }
        return packageInfo;
    }
}
