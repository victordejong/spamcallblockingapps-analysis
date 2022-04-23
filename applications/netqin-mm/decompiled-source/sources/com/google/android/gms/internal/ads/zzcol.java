package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import com.google.android.gms.common.wrappers.Wrappers;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcol.class */
public final class zzcol {
    /* renamed from: a */
    public static PackageInfo m13973a(Context context, ApplicationInfo applicationInfo) {
        PackageInfo packageInfo;
        try {
            packageInfo = Wrappers.m17026b(context).m17028b(applicationInfo.packageName, 0);
        } catch (PackageManager.NameNotFoundException e) {
            packageInfo = null;
        }
        return packageInfo;
    }
}
