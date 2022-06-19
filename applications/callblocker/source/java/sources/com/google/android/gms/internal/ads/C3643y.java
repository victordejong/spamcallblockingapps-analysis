package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import java.util.List;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* renamed from: com.google.android.gms.internal.ads.y */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/y.class */
public final class C3643y {
    /* renamed from: a */
    public static boolean m6757a(Context context) {
        boolean z;
        PackageManager packageManager = context.getPackageManager();
        if (packageManager == null) {
            z = false;
        } else {
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("http://www.example.com"));
            ResolveInfo resolveActivity = packageManager.resolveActivity(intent, 0);
            List<ResolveInfo> queryIntentActivities = packageManager.queryIntentActivities(intent, 65536);
            z = false;
            if (queryIntentActivities != null) {
                z = false;
                if (resolveActivity != null) {
                    int i = 0;
                    while (true) {
                        z = false;
                        if (i >= queryIntentActivities.size()) {
                            break;
                        }
                        if (resolveActivity.activityInfo.name.equals(queryIntentActivities.get(i).activityInfo.name)) {
                            z = resolveActivity.activityInfo.packageName.equals(dif.m9432a(context));
                            break;
                        }
                        i++;
                    }
                }
            }
        }
        return z;
    }
}
