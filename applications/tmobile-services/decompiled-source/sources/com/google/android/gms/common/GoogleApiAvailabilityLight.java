package com.google.android.gms.common;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.HideFirstParty;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.internal.zzg;
import com.google.android.gms.common.util.DeviceProperties;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.common.wrappers.Wrappers;
import org.apache.commons.cli.HelpFormatter;
@ShowFirstParty
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/GoogleApiAvailabilityLight.class */
public class GoogleApiAvailabilityLight {
    @KeepForSdk

    /* renamed from: a */
    public static final int f6980a = GooglePlayServicesUtilLight.f6984a;

    /* renamed from: b */
    private static final GoogleApiAvailabilityLight f6981b = new GoogleApiAvailabilityLight();

    @KeepForSdk
    /* renamed from: h */
    public static GoogleApiAvailabilityLight m15064h() {
        return f6981b;
    }

    @VisibleForTesting
    /* renamed from: o */
    private static String m15057o(@Nullable Context context, @Nullable String str) {
        StringBuilder sb = new StringBuilder();
        sb.append("gcore_");
        sb.append(f6980a);
        sb.append(HelpFormatter.DEFAULT_OPT_PREFIX);
        if (!TextUtils.isEmpty(str)) {
            sb.append(str);
        }
        sb.append(HelpFormatter.DEFAULT_OPT_PREFIX);
        if (context != null) {
            sb.append(context.getPackageName());
        }
        sb.append(HelpFormatter.DEFAULT_OPT_PREFIX);
        if (context != null) {
            try {
                sb.append(Wrappers.m14278a(context).m14283e(context.getPackageName(), 0).versionCode);
            } catch (PackageManager.NameNotFoundException e) {
            }
        }
        return sb.toString();
    }

    @KeepForSdk
    /* renamed from: a */
    public void m15071a(Context context) {
        GooglePlayServicesUtilLight.m15054a(context);
    }

    @ShowFirstParty
    @KeepForSdk
    /* renamed from: b */
    public int m15070b(Context context) {
        return GooglePlayServicesUtilLight.m15052c(context);
    }

    @Deprecated
    @Nullable
    @ShowFirstParty
    @KeepForSdk
    /* renamed from: c */
    public Intent m15069c(int i) {
        return mo15068d(null, i, null);
    }

    @Nullable
    @ShowFirstParty
    @KeepForSdk
    /* renamed from: d */
    public Intent mo15068d(Context context, int i, @Nullable String str) {
        if (i == 1 || i == 2) {
            return (context == null || !DeviceProperties.m14329d(context)) ? zzg.m14413a("com.google.android.gms", m15057o(context, str)) : zzg.m14411c();
        }
        if (i != 3) {
            return null;
        }
        return zzg.m14412b("com.google.android.gms");
    }

    @Nullable
    @KeepForSdk
    /* renamed from: e */
    public PendingIntent mo15067e(Context context, int i, int i2) {
        return m15066f(context, i, i2, null);
    }

    @Nullable
    @ShowFirstParty
    @KeepForSdk
    /* renamed from: f */
    public PendingIntent m15066f(Context context, int i, int i2, @Nullable String str) {
        Intent d = mo15068d(context, i, str);
        if (d == null) {
            return null;
        }
        return PendingIntent.getActivity(context, i2, d, 134217728);
    }

    @KeepForSdk
    /* renamed from: g */
    public String mo15065g(int i) {
        return GooglePlayServicesUtilLight.m15051d(i);
    }

    @HideFirstParty
    @KeepForSdk
    /* renamed from: i */
    public int mo15063i(Context context) {
        return mo15062j(context, f6980a);
    }

    @KeepForSdk
    /* renamed from: j */
    public int mo15062j(Context context, int i) {
        int h = GooglePlayServicesUtilLight.m15047h(context, i);
        int i2 = h;
        if (GooglePlayServicesUtilLight.m15046i(context, h)) {
            i2 = 18;
        }
        return i2;
    }

    @ShowFirstParty
    @KeepForSdk
    /* renamed from: k */
    public boolean m15061k(Context context, int i) {
        return GooglePlayServicesUtilLight.m15046i(context, i);
    }

    @KeepForSdk
    /* renamed from: l */
    public boolean m15060l(Context context, String str) {
        return GooglePlayServicesUtilLight.m15044k(context, str);
    }

    @KeepForSdk
    /* renamed from: m */
    public boolean mo15059m(int i) {
        return GooglePlayServicesUtilLight.m15043l(i);
    }

    @KeepForSdk
    /* renamed from: n */
    public void m15058n(Context context, int i) throws GooglePlayServicesRepairableException, GooglePlayServicesNotAvailableException {
        GooglePlayServicesUtilLight.m15053b(context, i);
    }
}
