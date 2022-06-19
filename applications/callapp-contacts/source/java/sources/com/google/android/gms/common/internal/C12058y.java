package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.text.TextUtils;
import android.util.Log;
import androidx.core.p037os.ConfigurationCompat;
import androidx.p023b.C0441g;
import com.google.android.gms.common.C11957f;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.common.p352d.C11946c;
import com.google.android.gms.common.util.C12106j;
import com.google.android.gms.p348a.C11673a;
import java.util.Locale;
/* renamed from: com.google.android.gms.common.internal.y */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/internal/y.class */
public final class C12058y {

    /* renamed from: a */
    private static final C0441g<String, String> f39575a = new C0441g<>();

    /* renamed from: b */
    private static Locale f39576b;

    /* renamed from: a */
    public static String m19088a(Context context) {
        return context.getResources().getString(C11673a.C11676c.common_google_play_services_notification_channel_name);
    }

    /* renamed from: a */
    public static String m19087a(Context context, int i) {
        Resources resources = context.getResources();
        switch (i) {
            case 1:
                return resources.getString(C11673a.C11676c.common_google_play_services_install_title);
            case 2:
                return resources.getString(C11673a.C11676c.common_google_play_services_update_title);
            case 3:
                return resources.getString(C11673a.C11676c.common_google_play_services_enable_title);
            case 4:
            case 6:
            case 18:
                return null;
            case 5:
                Log.e("GoogleApiAvailability", "An invalid account was specified when connecting. Please provide a valid account.");
                return m19086a(context, "common_google_play_services_invalid_account_title");
            case 7:
                Log.e("GoogleApiAvailability", "Network error occurred. Please retry request later.");
                return m19086a(context, "common_google_play_services_network_error_title");
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
                return m19086a(context, "common_google_play_services_sign_in_failed_title");
            case 20:
                Log.e("GoogleApiAvailability", "The current user profile is restricted and could not use authenticated features.");
                return m19086a(context, "common_google_play_services_restricted_profile_title");
        }
    }

    /* renamed from: a */
    private static String m19086a(Context context, String str) {
        C0441g<String, String> c0441g = f39575a;
        synchronized (c0441g) {
            Locale m44297a = ConfigurationCompat.getLocales(context.getResources().getConfiguration()).m44297a(0);
            if (!m44297a.equals(f39576b)) {
                c0441g.clear();
                f39576b = m44297a;
            }
            String str2 = c0441g.get(str);
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
            c0441g.put(str, string);
            return string;
        }
    }

    /* renamed from: a */
    private static String m19085a(Context context, String str, String str2) {
        Resources resources = context.getResources();
        String m19086a = m19086a(context, str);
        String str3 = m19086a;
        if (m19086a == null) {
            str3 = resources.getString(C11957f.C11958a.common_google_play_services_unknown_issue);
        }
        return String.format(resources.getConfiguration().locale, str3, str2);
    }

    /* renamed from: b */
    private static String m19084b(Context context) {
        String packageName = context.getPackageName();
        try {
            return C11946c.m19258a(context).m19260b(packageName).toString();
        } catch (PackageManager.NameNotFoundException | NullPointerException e) {
            String str = context.getApplicationInfo().name;
            return TextUtils.isEmpty(str) ? packageName : str;
        }
    }

    /* renamed from: b */
    public static String m19083b(Context context, int i) {
        String m19086a = i == 6 ? m19086a(context, "common_google_play_services_resolution_required_title") : m19087a(context, i);
        return m19086a == null ? context.getResources().getString(C11673a.C11676c.common_google_play_services_notification_ticker) : m19086a;
    }

    /* renamed from: c */
    public static String m19082c(Context context, int i) {
        Resources resources = context.getResources();
        String m19084b = m19084b(context);
        if (i != 1) {
            if (i == 2) {
                return C12106j.m19033b(context) ? resources.getString(C11673a.C11676c.common_google_play_services_wear_update_text) : resources.getString(C11673a.C11676c.common_google_play_services_update_text, m19084b);
            } else if (i == 3) {
                return resources.getString(C11673a.C11676c.common_google_play_services_enable_text, m19084b);
            } else {
                if (i == 5) {
                    return m19085a(context, "common_google_play_services_invalid_account_text", m19084b);
                }
                if (i == 7) {
                    return m19085a(context, "common_google_play_services_network_error_text", m19084b);
                }
                if (i == 9) {
                    return resources.getString(C11673a.C11676c.common_google_play_services_unsupported_text, m19084b);
                }
                if (i == 20) {
                    return m19085a(context, "common_google_play_services_restricted_profile_text", m19084b);
                }
                switch (i) {
                    case 16:
                        return m19085a(context, "common_google_play_services_api_unavailable_text", m19084b);
                    case 17:
                        return m19085a(context, "common_google_play_services_sign_in_failed_text", m19084b);
                    case 18:
                        return resources.getString(C11673a.C11676c.common_google_play_services_updating_text, m19084b);
                    default:
                        return resources.getString(C11957f.C11958a.common_google_play_services_unknown_issue, m19084b);
                }
            }
        }
        return resources.getString(C11673a.C11676c.common_google_play_services_install_text, m19084b);
    }

    /* renamed from: d */
    public static String m19081d(Context context, int i) {
        return (i == 6 || i == 19) ? m19085a(context, "common_google_play_services_resolution_required_text", m19084b(context)) : m19082c(context, i);
    }

    /* renamed from: e */
    public static String m19080e(Context context, int i) {
        Resources resources = context.getResources();
        return i != 1 ? i != 2 ? i != 3 ? resources.getString(17039370) : resources.getString(C11673a.C11676c.common_google_play_services_enable_button) : resources.getString(C11673a.C11676c.common_google_play_services_update_button) : resources.getString(C11673a.C11676c.common_google_play_services_install_button);
    }
}
