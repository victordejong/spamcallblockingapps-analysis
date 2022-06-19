package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.base.C0610R;
import com.google.android.gms.common.C0614R;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.common.util.DeviceProperties;
import com.google.android.gms.common.wrappers.Wrappers;
import java.util.Locale;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/zab.class */
public final class zab {
    @GuardedBy("sCache")
    private static final h4<String, String> zaa = new h4<>();
    @GuardedBy("sCache")
    private static Locale zab;

    public static String zaa(Context context) {
        return context.getResources().getString(C0610R.string.common_google_play_services_notification_channel_name);
    }

    public static String zaa(Context context, int i) {
        String str;
        Resources resources = context.getResources();
        switch (i) {
            case 1:
                return resources.getString(C0610R.string.common_google_play_services_install_title);
            case 2:
                return resources.getString(C0610R.string.common_google_play_services_update_title);
            case 3:
                return resources.getString(C0610R.string.common_google_play_services_enable_title);
            case 4:
            case 6:
            case 18:
                return null;
            case 5:
                Log.e("GoogleApiAvailability", "An invalid account was specified when connecting. Please provide a valid account.");
                return zaa(context, "common_google_play_services_invalid_account_title");
            case 7:
                Log.e("GoogleApiAvailability", "Network error occurred. Please retry request later.");
                return zaa(context, "common_google_play_services_network_error_title");
            case 8:
                str = "Internal error occurred. Please see logs for detailed information";
                break;
            case 9:
                str = "Google Play services is invalid. Cannot recover.";
                break;
            case 10:
                str = "Developer error occurred. Please see logs for detailed information";
                break;
            case 11:
                str = "The application is not licensed to the user.";
                break;
            case 12:
            case 13:
            case 14:
            case 15:
            case 19:
            default:
                StringBuilder sb = new StringBuilder(33);
                sb.append("Unexpected error code ");
                sb.append(i);
                str = sb.toString();
                break;
            case 16:
                str = "One of the API components you attempted to connect to is not available.";
                break;
            case 17:
                Log.e("GoogleApiAvailability", "The specified account could not be signed in.");
                return zaa(context, "common_google_play_services_sign_in_failed_title");
            case 20:
                Log.e("GoogleApiAvailability", "The current user profile is restricted and could not use authenticated features.");
                return zaa(context, "common_google_play_services_restricted_profile_title");
        }
        Log.e("GoogleApiAvailability", str);
        return null;
    }

    private static String zaa(Context context, String str) {
        h4<String, String> h4Var = zaa;
        synchronized (h4Var) {
            Locale c = q9.a(context.getResources().getConfiguration()).c(0);
            if (!c.equals(zab)) {
                h4Var.clear();
                zab = c;
            }
            String str2 = (String) h4Var.get(str);
            if (str2 != null) {
                return str2;
            }
            Resources remoteResource = GooglePlayServicesUtil.getRemoteResource(context);
            if (remoteResource == null) {
                return null;
            }
            int identifier = remoteResource.getIdentifier(str, "string", "com.google.android.gms");
            if (identifier == 0) {
                String valueOf = String.valueOf(str);
                Log.w("GoogleApiAvailability", valueOf.length() != 0 ? "Missing resource: ".concat(valueOf) : new String("Missing resource: "));
                return null;
            }
            String string = remoteResource.getString(identifier);
            if (!TextUtils.isEmpty(string)) {
                h4Var.put(str, string);
                return string;
            }
            String valueOf2 = String.valueOf(str);
            Log.w("GoogleApiAvailability", valueOf2.length() != 0 ? "Got empty resource: ".concat(valueOf2) : new String("Got empty resource: "));
            return null;
        }
    }

    private static String zaa(Context context, String str, String str2) {
        Resources resources = context.getResources();
        String zaa2 = zaa(context, str);
        String str3 = zaa2;
        if (zaa2 == null) {
            str3 = resources.getString(C0614R.string.common_google_play_services_unknown_issue);
        }
        return String.format(resources.getConfiguration().locale, str3, str2);
    }

    private static String zab(Context context) {
        String packageName = context.getPackageName();
        try {
            return Wrappers.packageManager(context).getApplicationLabel(packageName).toString();
        } catch (PackageManager.NameNotFoundException | NullPointerException e) {
            String str = context.getApplicationInfo().name;
            return TextUtils.isEmpty(str) ? packageName : str;
        }
    }

    public static String zab(Context context, int i) {
        String zaa2 = i == 6 ? zaa(context, "common_google_play_services_resolution_required_title") : zaa(context, i);
        String str = zaa2;
        if (zaa2 == null) {
            str = context.getResources().getString(C0610R.string.common_google_play_services_notification_ticker);
        }
        return str;
    }

    public static String zac(Context context, int i) {
        Resources resources = context.getResources();
        String zab2 = zab(context);
        if (i != 1) {
            if (i == 2) {
                return DeviceProperties.isWearableWithoutPlayStore(context) ? resources.getString(C0610R.string.common_google_play_services_wear_update_text) : resources.getString(C0610R.string.common_google_play_services_update_text, zab2);
            } else if (i == 3) {
                return resources.getString(C0610R.string.common_google_play_services_enable_text, zab2);
            } else {
                if (i == 5) {
                    return zaa(context, "common_google_play_services_invalid_account_text", zab2);
                }
                if (i == 7) {
                    return zaa(context, "common_google_play_services_network_error_text", zab2);
                }
                if (i == 9) {
                    return resources.getString(C0610R.string.common_google_play_services_unsupported_text, zab2);
                }
                if (i == 20) {
                    return zaa(context, "common_google_play_services_restricted_profile_text", zab2);
                }
                switch (i) {
                    case 16:
                        return zaa(context, "common_google_play_services_api_unavailable_text", zab2);
                    case 17:
                        return zaa(context, "common_google_play_services_sign_in_failed_text", zab2);
                    case 18:
                        return resources.getString(C0610R.string.common_google_play_services_updating_text, zab2);
                    default:
                        return resources.getString(C0614R.string.common_google_play_services_unknown_issue, zab2);
                }
            }
        }
        return resources.getString(C0610R.string.common_google_play_services_install_text, zab2);
    }

    public static String zad(Context context, int i) {
        return (i == 6 || i == 19) ? zaa(context, "common_google_play_services_resolution_required_text", zab(context)) : zac(context, i);
    }

    public static String zae(Context context, int i) {
        return context.getResources().getString(i != 1 ? i != 2 ? i != 3 ? 17039370 : C0610R.string.common_google_play_services_enable_button : C0610R.string.common_google_play_services_update_button : C0610R.string.common_google_play_services_install_button);
    }
}
