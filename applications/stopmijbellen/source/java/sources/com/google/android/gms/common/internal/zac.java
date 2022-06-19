package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.base.C1671R;
import com.google.android.gms.common.C1675R;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.common.util.DeviceProperties;
import com.google.android.gms.common.wrappers.Wrappers;
import java.util.Locale;
import javax.annotation.concurrent.GuardedBy;
import p120i0.C3058c;
import p120i0.C3061f;
import p226s.C4263g;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/zac.class */
public final class zac {
    @GuardedBy("sCache")
    private static final C4263g<String, String> zaa = new C4263g<>();
    @GuardedBy("sCache")
    private static Locale zab;

    public static String zaa(Context context, int i) {
        Resources resources = context.getResources();
        switch (i) {
            case 1:
                return resources.getString(C1671R.string.common_google_play_services_install_title);
            case 2:
                return resources.getString(C1671R.string.common_google_play_services_update_title);
            case 3:
                return resources.getString(C1671R.string.common_google_play_services_enable_title);
            case 4:
            case 6:
            case 18:
                return null;
            case 5:
                return zai(context, "common_google_play_services_invalid_account_title");
            case 7:
                return zai(context, "common_google_play_services_network_error_title");
            case 8:
            case 9:
            case 10:
            case 11:
            case 16:
                return null;
            case 12:
            case 13:
            case 14:
            case 15:
            case 19:
            default:
                return null;
            case 17:
                return zai(context, "common_google_play_services_sign_in_failed_title");
            case 20:
                return zai(context, "common_google_play_services_restricted_profile_title");
        }
    }

    public static String zab(Context context, int i) {
        String zai = i == 6 ? zai(context, "common_google_play_services_resolution_required_title") : zaa(context, i);
        return zai == null ? context.getResources().getString(C1671R.string.common_google_play_services_notification_ticker) : zai;
    }

    public static String zac(Context context, int i) {
        Resources resources = context.getResources();
        String zaf = zaf(context);
        if (i != 1) {
            if (i == 2) {
                return DeviceProperties.isWearableWithoutPlayStore(context) ? resources.getString(C1671R.string.common_google_play_services_wear_update_text) : resources.getString(C1671R.string.common_google_play_services_update_text, zaf);
            } else if (i == 3) {
                return resources.getString(C1671R.string.common_google_play_services_enable_text, zaf);
            } else {
                if (i == 5) {
                    return zah(context, "common_google_play_services_invalid_account_text", zaf);
                }
                if (i == 7) {
                    return zah(context, "common_google_play_services_network_error_text", zaf);
                }
                if (i == 9) {
                    return resources.getString(C1671R.string.common_google_play_services_unsupported_text, zaf);
                }
                if (i == 20) {
                    return zah(context, "common_google_play_services_restricted_profile_text", zaf);
                }
                switch (i) {
                    case 16:
                        return zah(context, "common_google_play_services_api_unavailable_text", zaf);
                    case 17:
                        return zah(context, "common_google_play_services_sign_in_failed_text", zaf);
                    case 18:
                        return resources.getString(C1671R.string.common_google_play_services_updating_text, zaf);
                    default:
                        return resources.getString(C1675R.string.common_google_play_services_unknown_issue, zaf);
                }
            }
        }
        return resources.getString(C1671R.string.common_google_play_services_install_text, zaf);
    }

    public static String zad(Context context, int i) {
        return (i == 6 || i == 19) ? zah(context, "common_google_play_services_resolution_required_text", zaf(context)) : zac(context, i);
    }

    public static String zae(Context context, int i) {
        Resources resources = context.getResources();
        return i != 1 ? i != 2 ? i != 3 ? resources.getString(17039370) : resources.getString(C1671R.string.common_google_play_services_enable_button) : resources.getString(C1671R.string.common_google_play_services_update_button) : resources.getString(C1671R.string.common_google_play_services_install_button);
    }

    public static String zaf(Context context) {
        String packageName = context.getPackageName();
        try {
            return Wrappers.packageManager(context).getApplicationLabel(packageName).toString();
        } catch (PackageManager.NameNotFoundException | NullPointerException e) {
            String str = context.getApplicationInfo().name;
            return TextUtils.isEmpty(str) ? packageName : str;
        }
    }

    public static String zag(Context context) {
        return context.getResources().getString(C1671R.string.common_google_play_services_notification_channel_name);
    }

    private static String zah(Context context, String str, String str2) {
        Resources resources = context.getResources();
        String zai = zai(context, str);
        String str3 = zai;
        if (zai == null) {
            str3 = resources.getString(C1675R.string.common_google_play_services_unknown_issue);
        }
        return String.format(resources.getConfiguration().locale, str3, str2);
    }

    private static String zai(Context context, String str) {
        C4263g<String, String> c4263g = zaa;
        synchronized (c4263g) {
            Configuration configuration = context.getResources().getConfiguration();
            Locale locale = (Build.VERSION.SDK_INT >= 24 ? new C3058c(new C3061f(configuration.getLocales())) : C3058c.m2664a(configuration.locale)).f10392a.get(0);
            if (!locale.equals(zab)) {
                c4263g.clear();
                zab = locale;
            }
            String orDefault = c4263g.getOrDefault(str, null);
            if (orDefault != null) {
                return orDefault;
            }
            Resources remoteResource = GooglePlayServicesUtil.getRemoteResource(context);
            if (remoteResource == null) {
                return null;
            }
            int identifier = remoteResource.getIdentifier(str, "string", "com.google.android.gms");
            if (identifier == 0) {
                Log.w("GoogleApiAvailability", str.length() != 0 ? "Missing resource: ".concat(str) : new String("Missing resource: "));
                return null;
            }
            String string = remoteResource.getString(identifier);
            if (TextUtils.isEmpty(string)) {
                Log.w("GoogleApiAvailability", str.length() != 0 ? "Got empty resource: ".concat(str) : new String("Got empty resource: "));
                return null;
            }
            c4263g.put(str, string);
            return string;
        }
    }
}
