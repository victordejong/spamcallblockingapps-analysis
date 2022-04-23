package com.google.android.gms.common;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.HideFirstParty;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.internal.zzi;
import com.google.android.gms.common.util.DeviceProperties;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.common.wrappers.Wrappers;
@ShowFirstParty
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/GoogleApiAvailabilityLight.class */
public class GoogleApiAvailabilityLight {
    @KeepForSdk

    /* renamed from: a */
    public static final int f23021a = GooglePlayServicesUtilLight.GOOGLE_PLAY_SERVICES_VERSION_CODE;

    /* renamed from: b */
    public static final GoogleApiAvailabilityLight f23022b = new GoogleApiAvailabilityLight();

    @KeepForSdk
    /* renamed from: a */
    public static GoogleApiAvailabilityLight m17812a() {
        return f23022b;
    }

    @VisibleForTesting
    /* renamed from: b */
    public static String m17801b(Context context, String str) {
        StringBuilder sb = new StringBuilder();
        sb.append("gcore_");
        sb.append(f23021a);
        sb.append("-");
        if (!TextUtils.isEmpty(str)) {
            sb.append(str);
        }
        sb.append("-");
        if (context != null) {
            sb.append(context.getPackageName());
        }
        sb.append("-");
        if (context != null) {
            try {
                sb.append(Wrappers.m17026b(context).m17028b(context.getPackageName(), 0).versionCode);
            } catch (PackageManager.NameNotFoundException e) {
            }
        }
        return sb.toString();
    }

    @KeepForSdk
    /* renamed from: a */
    public int mo17809a(Context context, int i) {
        int isGooglePlayServicesAvailable = GooglePlayServicesUtilLight.isGooglePlayServicesAvailable(context, i);
        int i2 = isGooglePlayServicesAvailable;
        if (GooglePlayServicesUtilLight.isPlayServicesPossiblyUpdating(context, isGooglePlayServicesAvailable)) {
            i2 = 18;
        }
        return i2;
    }

    @KeepForSdk
    /* renamed from: a */
    public PendingIntent mo17808a(Context context, int i, int i2) {
        return m17807a(context, i, i2, null);
    }

    @ShowFirstParty
    @KeepForSdk
    /* renamed from: a */
    public PendingIntent m17807a(Context context, int i, int i2, String str) {
        Intent a = mo17806a(context, i, str);
        if (a == null) {
            return null;
        }
        return PendingIntent.getActivity(context, i2, a, 134217728);
    }

    @ShowFirstParty
    @KeepForSdk
    @Deprecated
    /* renamed from: a */
    public Intent m17811a(int i) {
        return mo17806a((Context) null, i, (String) null);
    }

    @ShowFirstParty
    @KeepForSdk
    /* renamed from: a */
    public Intent mo17806a(Context context, int i, String str) {
        if (i == 1 || i == 2) {
            return (context == null || !DeviceProperties.m17081e(context)) ? zzi.m17167a("com.google.android.gms", m17801b(context, str)) : zzi.m17169a();
        }
        if (i != 3) {
            return null;
        }
        return zzi.m17168a("com.google.android.gms");
    }

    @KeepForSdk
    /* renamed from: a */
    public void m17810a(Context context) {
        GooglePlayServicesUtilLight.cancelAvailabilityErrorNotifications(context);
    }

    @KeepForSdk
    /* renamed from: a */
    public boolean m17805a(Context context, String str) {
        return GooglePlayServicesUtilLight.zza(context, str);
    }

    @ShowFirstParty
    @KeepForSdk
    /* renamed from: b */
    public int m17803b(Context context) {
        return GooglePlayServicesUtilLight.getApkVersion(context);
    }

    @KeepForSdk
    /* renamed from: b */
    public String mo17804b(int i) {
        return GooglePlayServicesUtilLight.getErrorString(i);
    }

    @ShowFirstParty
    @KeepForSdk
    /* renamed from: b */
    public boolean m17802b(Context context, int i) {
        return GooglePlayServicesUtilLight.isPlayServicesPossiblyUpdating(context, i);
    }

    @HideFirstParty
    @KeepForSdk
    /* renamed from: c */
    public int mo17799c(Context context) {
        return mo17809a(context, f23021a);
    }

    @KeepForSdk
    /* renamed from: c */
    public void m17798c(Context context, int i) throws GooglePlayServicesRepairableException, GooglePlayServicesNotAvailableException {
        GooglePlayServicesUtilLight.ensurePlayServicesAvailable(context, i);
    }

    @KeepForSdk
    /* renamed from: c */
    public boolean mo17800c(int i) {
        return GooglePlayServicesUtilLight.isUserRecoverableError(i);
    }
}
