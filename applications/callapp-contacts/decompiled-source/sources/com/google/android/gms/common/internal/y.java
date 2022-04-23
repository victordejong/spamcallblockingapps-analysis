package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.text.TextUtils;
import android.util.Log;
import androidx.b.g;
import androidx.core.os.ConfigurationCompat;
import com.google.android.gms.a.a;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.common.d.c;
import com.google.android.gms.common.f;
import com.google.android.gms.common.util.j;
import java.util.Locale;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/internal/y.class */
public final class y {

    /* renamed from: a  reason: collision with root package name */
    private static final g<String, String> f22909a = new g<>();

    /* renamed from: b  reason: collision with root package name */
    private static Locale f22910b;

    public static String a(Context context) {
        return context.getResources().getString(a.c.common_google_play_services_notification_channel_name);
    }

    public static String a(Context context, int i) {
        Resources resources = context.getResources();
        switch (i) {
            case 1:
                return resources.getString(a.c.common_google_play_services_install_title);
            case 2:
                return resources.getString(a.c.common_google_play_services_update_title);
            case 3:
                return resources.getString(a.c.common_google_play_services_enable_title);
            case 4:
            case 6:
            case 18:
                return null;
            case 5:
                Log.e("GoogleApiAvailability", "An invalid account was specified when connecting. Please provide a valid account.");
                return a(context, "common_google_play_services_invalid_account_title");
            case 7:
                Log.e("GoogleApiAvailability", "Network error occurred. Please retry request later.");
                return a(context, "common_google_play_services_network_error_title");
            case 8:
                Log.e("GoogleApiAvailability", "Internal error occurred. Please see logs for detailed information");
                return null;
            case 9:
                Log.e("GoogleApiAvailability", "Google Play services is invalid. Cannot recover.");
                return null;
            case 10:
                Log.e("GoogleApiAvailability", "Developer error occurred. Please see logs for detailed information");
                return null;
            case 11:
                Log.e("GoogleApiAvailability", "The application is not licensed to the user.");
                return null;
            case 12:
            case 13:
            case 14:
            case 15:
            case 19:
            default:
                StringBuilder sb = new StringBuilder(33);
                sb.append("Unexpected error code ");
                sb.append(i);
                Log.e("GoogleApiAvailability", sb.toString());
                return null;
            case 16:
                Log.e("GoogleApiAvailability", "One of the API components you attempted to connect to is not available.");
                return null;
            case 17:
                Log.e("GoogleApiAvailability", "The specified account could not be signed in.");
                return a(context, "common_google_play_services_sign_in_failed_title");
            case 20:
                Log.e("GoogleApiAvailability", "The current user profile is restricted and could not use authenticated features.");
                return a(context, "common_google_play_services_restricted_profile_title");
        }
    }

    private static String a(Context context, String str) {
        g<String, String> gVar = f22909a;
        synchronized (gVar) {
            Locale a2 = ConfigurationCompat.getLocales(context.getResources().getConfiguration()).a(0);
            if (!a2.equals(f22910b)) {
                gVar.clear();
                f22910b = a2;
            }
            String str2 = gVar.get(str);
            if (str2 != null) {
                return str2;
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
            gVar.put(str, string);
            return string;
        }
    }

    private static String a(Context context, String str, String str2) {
        Resources resources = context.getResources();
        String a2 = a(context, str);
        String str3 = a2;
        if (a2 == null) {
            str3 = resources.getString(f.a.common_google_play_services_unknown_issue);
        }
        return String.format(resources.getConfiguration().locale, str3, str2);
    }

    private static String b(Context context) {
        String packageName = context.getPackageName();
        try {
            return c.a(context).b(packageName).toString();
        } catch (PackageManager.NameNotFoundException | NullPointerException e) {
            String str = context.getApplicationInfo().name;
            return TextUtils.isEmpty(str) ? packageName : str;
        }
    }

    public static String b(Context context, int i) {
        String a2 = i == 6 ? a(context, "common_google_play_services_resolution_required_title") : a(context, i);
        return a2 == null ? context.getResources().getString(a.c.common_google_play_services_notification_ticker) : a2;
    }

    public static String c(Context context, int i) {
        Resources resources = context.getResources();
        String b2 = b(context);
        if (i == 1) {
            return resources.getString(a.c.common_google_play_services_install_text, b2);
        }
        if (i == 2) {
            return j.b(context) ? resources.getString(a.c.common_google_play_services_wear_update_text) : resources.getString(a.c.common_google_play_services_update_text, b2);
        }
        if (i == 3) {
            return resources.getString(a.c.common_google_play_services_enable_text, b2);
        }
        if (i == 5) {
            return a(context, "common_google_play_services_invalid_account_text", b2);
        }
        if (i == 7) {
            return a(context, "common_google_play_services_network_error_text", b2);
        }
        if (i == 9) {
            return resources.getString(a.c.common_google_play_services_unsupported_text, b2);
        }
        if (i == 20) {
            return a(context, "common_google_play_services_restricted_profile_text", b2);
        }
        switch (i) {
            case 16:
                return a(context, "common_google_play_services_api_unavailable_text", b2);
            case 17:
                return a(context, "common_google_play_services_sign_in_failed_text", b2);
            case 18:
                return resources.getString(a.c.common_google_play_services_updating_text, b2);
            default:
                return resources.getString(f.a.common_google_play_services_unknown_issue, b2);
        }
    }

    public static String d(Context context, int i) {
        return (i == 6 || i == 19) ? a(context, "common_google_play_services_resolution_required_text", b(context)) : c(context, i);
    }

    public static String e(Context context, int i) {
        Resources resources = context.getResources();
        return i != 1 ? i != 2 ? i != 3 ? resources.getString(17039370) : resources.getString(a.c.common_google_play_services_enable_button) : resources.getString(a.c.common_google_play_services_update_button) : resources.getString(a.c.common_google_play_services_install_button);
    }
}
