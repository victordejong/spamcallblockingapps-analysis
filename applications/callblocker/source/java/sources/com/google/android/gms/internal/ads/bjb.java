package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import com.google.android.gms.common.p132c.C2586c;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bjb.class */
public final class bjb {
    /* renamed from: a */
    public static PackageInfo m11862a(Context context, ApplicationInfo applicationInfo) {
        PackageInfo packageInfo;
        try {
            packageInfo = C2586c.m14193a(context).m14194b(applicationInfo.packageName, 0);
        } catch (PackageManager.NameNotFoundException e) {
            packageInfo = null;
        }
        return packageInfo;
    }
}
