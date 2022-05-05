package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.collection.SimpleArrayMap;
import com.google.android.gms.base.C1012R;
import com.google.android.gms.common.C1017R;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.common.util.DeviceProperties;
import com.google.android.gms.common.wrappers.Wrappers;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/ConnectionErrorMessages.class */
public final class ConnectionErrorMessages {
    @GuardedBy

    /* renamed from: a */
    private static final SimpleArrayMap<String, String> f7482a = new SimpleArrayMap<>();

    private ConnectionErrorMessages() {
    }

    /* renamed from: a */
    public static String m14566a(Context context) {
        String packageName = context.getPackageName();
        try {
            return Wrappers.m14278a(context).m14284d(packageName).toString();
        } catch (PackageManager.NameNotFoundException | NullPointerException e) {
            String str = context.getApplicationInfo().name;
            return TextUtils.isEmpty(str) ? packageName : str;
        }
    }

    /* renamed from: b */
    public static String m14565b(Context context) {
        return context.getResources().getString(C1012R.string.common_google_play_services_notification_channel_name);
    }

    @NonNull
    /* renamed from: c */
    public static String m14564c(Context context, int i) {
        Resources resources = context.getResources();
        return i != 1 ? i != 2 ? i != 3 ? resources.getString(17039370) : resources.getString(C1012R.string.common_google_play_services_enable_button) : resources.getString(C1012R.string.common_google_play_services_update_button) : resources.getString(C1012R.string.common_google_play_services_install_button);
    }

    @NonNull
    /* renamed from: d */
    public static String m14563d(Context context, int i) {
        Resources resources = context.getResources();
        String a = m14566a(context);
        if (i == 1) {
            return resources.getString(C1012R.string.common_google_play_services_install_text, a);
        }
        if (i == 2) {
            return DeviceProperties.m14329d(context) ? resources.getString(C1012R.string.common_google_play_services_wear_update_text) : resources.getString(C1012R.string.common_google_play_services_update_text, a);
        }
        if (i == 3) {
            return resources.getString(C1012R.string.common_google_play_services_enable_text, a);
        }
        if (i == 5) {
            return m14558i(context, "common_google_play_services_invalid_account_text", a);
        }
        if (i == 7) {
            return m14558i(context, "common_google_play_services_network_error_text", a);
        }
        if (i == 9) {
            return resources.getString(C1012R.string.common_google_play_services_unsupported_text, a);
        }
        if (i == 20) {
            return m14558i(context, "common_google_play_services_restricted_profile_text", a);
        }
        switch (i) {
            case 16:
                return m14558i(context, "common_google_play_services_api_unavailable_text", a);
            case 17:
                return m14558i(context, "common_google_play_services_sign_in_failed_text", a);
            case 18:
                return resources.getString(C1012R.string.common_google_play_services_updating_text, a);
            default:
                return resources.getString(C1017R.string.common_google_play_services_unknown_issue, a);
        }
    }

    @NonNull
    /* renamed from: e */
    public static String m14562e(Context context, int i) {
        return (i == 6 || i == 19) ? m14558i(context, "common_google_play_services_resolution_required_text", m14566a(context)) : m14563d(context, i);
    }

    @NonNull
    /* renamed from: f */
    public static String m14561f(Context context, int i) {
        String h = i == 6 ? m14559h(context, "common_google_play_services_resolution_required_title") : m14560g(context, i);
        String str = h;
        if (h == null) {
            str = context.getResources().getString(C1012R.string.common_google_play_services_notification_ticker);
        }
        return str;
    }

    @Nullable
    /* renamed from: g */
    public static String m14560g(Context context, int i) {
        Resources resources = context.getResources();
        switch (i) {
            case 1:
                return resources.getString(C1012R.string.common_google_play_services_install_title);
            case 2:
                return resources.getString(C1012R.string.common_google_play_services_update_title);
            case 3:
                return resources.getString(C1012R.string.common_google_play_services_enable_title);
            case 4:
            case 6:
            case 18:
                return null;
            case 5:
                Log.e("GoogleApiAvailability", "An invalid account was specified when connecting. Please provide a valid account.");
                return m14559h(context, "common_google_play_services_invalid_account_title");
            case 7:
                Log.e("GoogleApiAvailability", "Network error occurred. Please retry request later.");
                return m14559h(context, "common_google_play_services_network_error_title");
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
                return m14559h(context, "common_google_play_services_sign_in_failed_title");
            case 20:
                Log.e("GoogleApiAvailability", "The current user profile is restricted and could not use authenticated features.");
                return m14559h(context, "common_google_play_services_restricted_profile_title");
        }
    }

    @Nullable
    /* renamed from: h */
    private static String m14559h(Context context, String str) {
        synchronized (f7482a) {
            String str2 = f7482a.get(str);
            if (str2 != null) {
                return str2;
            }
            Resources f = GooglePlayServicesUtil.m15055f(context);
            if (f == null) {
                return null;
            }
            int identifier = f.getIdentifier(str, "string", "com.google.android.gms");
            if (identifier == 0) {
                String valueOf = String.valueOf(str);
                Log.w("GoogleApiAvailability", valueOf.length() != 0 ? "Missing resource: ".concat(valueOf) : new String("Missing resource: "));
                return null;
            }
            String string = f.getString(identifier);
            if (TextUtils.isEmpty(string)) {
                String valueOf2 = String.valueOf(str);
                Log.w("GoogleApiAvailability", valueOf2.length() != 0 ? "Got empty resource: ".concat(valueOf2) : new String("Got empty resource: "));
                return null;
            }
            f7482a.put(str, string);
            return string;
        }
    }

    /* renamed from: i */
    private static String m14558i(Context context, String str, String str2) {
        Resources resources = context.getResources();
        String h = m14559h(context, str);
        String str3 = h;
        if (h == null) {
            str3 = resources.getString(C1017R.string.common_google_play_services_unknown_issue);
        }
        return String.format(resources.getConfiguration().locale, str3, str2);
    }
}
