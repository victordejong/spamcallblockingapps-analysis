package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import com.google.android.gms.common.p352d.C11946c;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bnc.class */
public final class bnc {
    /* renamed from: a */
    public static PackageInfo m17729a(Context context, ApplicationInfo applicationInfo) {
        PackageInfo packageInfo;
        try {
            packageInfo = C11946c.m19258a(context).m19259b(applicationInfo.packageName, 0);
        } catch (PackageManager.NameNotFoundException e) {
            packageInfo = null;
        }
        return packageInfo;
    }
}
