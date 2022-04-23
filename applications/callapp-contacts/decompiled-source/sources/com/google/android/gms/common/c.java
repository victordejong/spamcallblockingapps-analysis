package com.google.android.gms.common;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import com.google.android.gms.common.internal.bq;
import com.google.android.gms.common.util.j;
import com.sinch.verification.core.verification.VerificationLanguage;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/c.class */
public class c {

    /* renamed from: b  reason: collision with root package name */
    public static final int f22789b = d.GOOGLE_PLAY_SERVICES_VERSION_CODE;

    /* renamed from: a  reason: collision with root package name */
    private static final c f22788a = new c();

    public static c b() {
        return f22788a;
    }

    public static int c(Context context) {
        return d.getApkVersion(context);
    }

    public int a(Context context) {
        return b(context, f22789b);
    }

    public PendingIntent a(Context context, int i, int i2) {
        return a(context, i, i2, null);
    }

    public final PendingIntent a(Context context, int i, int i2, String str) {
        Intent a2 = a(context, i, str);
        if (a2 == null) {
            return null;
        }
        return PendingIntent.getActivity(context, i2, a2, 134217728);
    }

    public Intent a(Context context, int i, String str) {
        if (i == 1 || i == 2) {
            if (context != null && j.b(context)) {
                return bq.b();
            }
            StringBuilder sb = new StringBuilder();
            sb.append("gcore_");
            sb.append(f22789b);
            sb.append(VerificationLanguage.REGION_PREFIX);
            if (!TextUtils.isEmpty(str)) {
                sb.append(str);
            }
            sb.append(VerificationLanguage.REGION_PREFIX);
            if (context != null) {
                sb.append(context.getPackageName());
            }
            sb.append(VerificationLanguage.REGION_PREFIX);
            if (context != null) {
                try {
                    sb.append(com.google.android.gms.common.d.c.a(context).b(context.getPackageName(), 0).versionCode);
                } catch (PackageManager.NameNotFoundException e) {
                }
            }
            return bq.a(sb.toString());
        } else if (i != 3) {
            return null;
        } else {
            return bq.a();
        }
    }

    public boolean a(int i) {
        return d.isUserRecoverableError(i);
    }

    public int b(Context context, int i) {
        int isGooglePlayServicesAvailable = d.isGooglePlayServicesAvailable(context, i);
        if (d.isPlayServicesPossiblyUpdating(context, isGooglePlayServicesAvailable)) {
            return 18;
        }
        return isGooglePlayServicesAvailable;
    }

    public String b(int i) {
        return d.getErrorString(i);
    }
}
