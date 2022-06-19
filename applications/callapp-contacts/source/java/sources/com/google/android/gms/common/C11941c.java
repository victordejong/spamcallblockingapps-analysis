package com.google.android.gms.common;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import com.google.android.gms.common.internal.C12018bq;
import com.google.android.gms.common.p352d.C11946c;
import com.google.android.gms.common.util.C12106j;
import com.sinch.verification.core.verification.VerificationLanguage;
/* renamed from: com.google.android.gms.common.c */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/c.class */
public class C11941c {

    /* renamed from: b */
    public static final int f39428b = C11943d.GOOGLE_PLAY_SERVICES_VERSION_CODE;

    /* renamed from: a */
    private static final C11941c f39427a = new C11941c();

    /* renamed from: b */
    public static C11941c m19271b() {
        return f39427a;
    }

    /* renamed from: c */
    public static int m19268c(Context context) {
        return C11943d.getApkVersion(context);
    }

    /* renamed from: a */
    public int mo19275a(Context context) {
        return mo19269b(context, f39428b);
    }

    /* renamed from: a */
    public PendingIntent mo19274a(Context context, int i, int i2) {
        return m19273a(context, i, i2, null);
    }

    /* renamed from: a */
    public final PendingIntent m19273a(Context context, int i, int i2, String str) {
        Intent mo19272a = mo19272a(context, i, str);
        if (mo19272a == null) {
            return null;
        }
        return PendingIntent.getActivity(context, i2, mo19272a, 134217728);
    }

    /* renamed from: a */
    public Intent mo19272a(Context context, int i, String str) {
        if (i != 1 && i != 2) {
            if (i == 3) {
                return C12018bq.m19195a();
            }
            return null;
        } else if (context != null && C12106j.m19033b(context)) {
            return C12018bq.m19193b();
        } else {
            StringBuilder sb = new StringBuilder();
            sb.append("gcore_");
            sb.append(f39428b);
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
                    sb.append(C11946c.m19258a(context).m19259b(context.getPackageName(), 0).versionCode);
                } catch (PackageManager.NameNotFoundException e) {
                }
            }
            return C12018bq.m19194a(sb.toString());
        }
    }

    /* renamed from: a */
    public boolean mo19276a(int i) {
        return C11943d.isUserRecoverableError(i);
    }

    /* renamed from: b */
    public int mo19269b(Context context, int i) {
        int isGooglePlayServicesAvailable = C11943d.isGooglePlayServicesAvailable(context, i);
        if (C11943d.isPlayServicesPossiblyUpdating(context, isGooglePlayServicesAvailable)) {
            return 18;
        }
        return isGooglePlayServicesAvailable;
    }

    /* renamed from: b */
    public String mo19270b(int i) {
        return C11943d.getErrorString(i);
    }
}
