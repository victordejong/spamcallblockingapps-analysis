package com.google.android.gms.common;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.HideFirstParty;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.internal.zzt;
import com.google.android.gms.common.util.DeviceProperties;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.android.gms.internal.common.zzd;
import com.tenor.android.core.constant.StringConstant;
import p193e.p1432d.p1439c.p1440a.C22128a;
@ShowFirstParty
@KeepForSdk
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/GoogleApiAvailabilityLight.class */
public class GoogleApiAvailabilityLight {
    @KeepForSdk

    /* renamed from: a */
    public static final int f5674a = GooglePlayServicesUtilLight.GOOGLE_PLAY_SERVICES_VERSION_CODE;

    /* renamed from: b */
    public static final GoogleApiAvailabilityLight f5675b = new GoogleApiAvailabilityLight();

    @ShowFirstParty
    @KeepForSdk
    /* renamed from: a */
    public Intent mo39066a(Context context, int i, String str) {
        if (i != 1 && i != 2) {
            if (i != 3) {
                return null;
            }
            Uri uri = zzt.f6065a;
            Uri fromParts = Uri.fromParts("package", "com.google.android.gms", null);
            Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
            intent.setData(fromParts);
            return intent;
        } else if (context != null && DeviceProperties.m38784c(context)) {
            Uri uri2 = zzt.f6065a;
            Intent intent2 = new Intent("com.google.android.clockwork.home.UPDATE_ANDROID_WEAR_ACTION");
            intent2.setPackage("com.google.android.wearable.app");
            return intent2;
        } else {
            StringBuilder m8728C = C22128a.m8728C("gcore_");
            m8728C.append(f5674a);
            m8728C.append(StringConstant.DASH);
            if (!TextUtils.isEmpty(str)) {
                m8728C.append(str);
            }
            m8728C.append(StringConstant.DASH);
            if (context != null) {
                m8728C.append(context.getPackageName());
            }
            m8728C.append(StringConstant.DASH);
            if (context != null) {
                try {
                    m8728C.append(Wrappers.m38764a(context).m38766c(context.getPackageName(), 0).versionCode);
                } catch (PackageManager.NameNotFoundException e) {
                }
            }
            String sb = m8728C.toString();
            Uri uri3 = zzt.f6065a;
            Intent intent3 = new Intent("android.intent.action.VIEW");
            Uri.Builder appendQueryParameter = Uri.parse("market://details").buildUpon().appendQueryParameter("id", "com.google.android.gms");
            if (!TextUtils.isEmpty(sb)) {
                appendQueryParameter.appendQueryParameter("pcampaignid", sb);
            }
            intent3.setData(appendQueryParameter.build());
            intent3.setPackage("com.android.vending");
            intent3.addFlags(524288);
            return intent3;
        }
    }

    @KeepForSdk
    /* renamed from: b */
    public PendingIntent mo39065b(Context context, int i, int i2) {
        return m39064c(context, i, i2, null);
    }

    @ShowFirstParty
    @KeepForSdk
    /* renamed from: c */
    public PendingIntent m39064c(Context context, int i, int i2, String str) {
        Intent mo39066a = mo39066a(context, i, str);
        if (mo39066a == null) {
            return null;
        }
        return zzd.zza(context, i2, mo39066a, zzd.zza | 134217728);
    }

    @HideFirstParty
    @KeepForSdk
    /* renamed from: d */
    public int mo39063d(Context context) {
        return mo39062e(context, f5674a);
    }

    @KeepForSdk
    /* renamed from: e */
    public int mo39062e(Context context, int i) {
        int isGooglePlayServicesAvailable = GooglePlayServicesUtilLight.isGooglePlayServicesAvailable(context, i);
        if (GooglePlayServicesUtilLight.isPlayServicesPossiblyUpdating(context, isGooglePlayServicesAvailable)) {
            return 18;
        }
        return isGooglePlayServicesAvailable;
    }
}
