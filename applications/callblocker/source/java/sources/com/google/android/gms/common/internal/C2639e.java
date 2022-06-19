package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.text.TextUtils;
import android.util.Log;
import androidx.p013b.C0386g;
import com.google.android.gms.common.C2594g;
import com.google.android.gms.common.C2674j;
import com.google.android.gms.common.p132c.C2586c;
import com.google.android.gms.common.util.C2712i;
import com.google.android.gms.p117a.C2240a;
import javax.annotation.concurrent.GuardedBy;
/* renamed from: com.google.android.gms.common.internal.e */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/e.class */
public final class C2639e {
    @GuardedBy("sCache")

    /* renamed from: a */
    private static final C0386g<String, String> f7382a = new C0386g<>();

    /* renamed from: a */
    public static String m14036a(Context context) {
        String str;
        String packageName = context.getPackageName();
        try {
            str = C2586c.m14193a(context).m14195b(packageName).toString();
        } catch (PackageManager.NameNotFoundException | NullPointerException e) {
            String str2 = context.getApplicationInfo().name;
            str = packageName;
            if (!TextUtils.isEmpty(str2)) {
                str = str2;
            }
        }
        return str;
    }

    /* renamed from: a */
    public static String m14035a(Context context, int i) {
        Resources resources = context.getResources();
        String str = null;
        switch (i) {
            case 1:
                str = resources.getString(C2240a.C2242b.common_google_play_services_install_title);
                break;
            case 2:
                str = resources.getString(C2240a.C2242b.common_google_play_services_update_title);
                break;
            case 3:
                str = resources.getString(C2240a.C2242b.common_google_play_services_enable_title);
                break;
            case 4:
            case 6:
            case 18:
                break;
            case 5:
                Log.e("GoogleApiAvailability", "An invalid account was specified when connecting. Please provide a valid account.");
                str = m14034a(context, "common_google_play_services_invalid_account_title");
                break;
            case 7:
                Log.e("GoogleApiAvailability", "Network error occurred. Please retry request later.");
                str = m14034a(context, "common_google_play_services_network_error_title");
                break;
            case 8:
                Log.e("GoogleApiAvailability", "Internal error occurred. Please see logs for detailed information");
                str = null;
                break;
            case 9:
                Log.e("GoogleApiAvailability", "Google Play services is invalid. Cannot recover.");
                str = null;
                break;
            case 10:
                Log.e("GoogleApiAvailability", "Developer error occurred. Please see logs for detailed information");
                str = null;
                break;
            case 11:
                Log.e("GoogleApiAvailability", "The application is not licensed to the user.");
                str = null;
                break;
            case 12:
            case 13:
            case 14:
            case 15:
            case 19:
            default:
                Log.e("GoogleApiAvailability", new StringBuilder(33).append("Unexpected error code ").append(i).toString());
                str = null;
                break;
            case 16:
                Log.e("GoogleApiAvailability", "One of the API components you attempted to connect to is not available.");
                str = null;
                break;
            case 17:
                Log.e("GoogleApiAvailability", "The specified account could not be signed in.");
                str = m14034a(context, "common_google_play_services_sign_in_failed_title");
                break;
            case 20:
                Log.e("GoogleApiAvailability", "The current user profile is restricted and could not use authenticated features.");
                str = m14034a(context, "common_google_play_services_restricted_profile_title");
                break;
        }
        return str;
    }

    /* renamed from: a */
    private static String m14034a(Context context, String str) {
        String string;
        synchronized (f7382a) {
            String str2 = f7382a.get(str);
            if (str2 != null) {
                string = str2;
            } else {
                Resources m14160a = C2594g.m14160a(context);
                if (m14160a == null) {
                    string = null;
                } else {
                    int identifier = m14160a.getIdentifier(str, "string", "com.google.android.gms");
                    if (identifier == 0) {
                        String valueOf = String.valueOf(str);
                        Log.w("GoogleApiAvailability", valueOf.length() != 0 ? "Missing resource: ".concat(valueOf) : new String("Missing resource: "));
                        string = null;
                    } else {
                        string = m14160a.getString(identifier);
                        if (TextUtils.isEmpty(string)) {
                            String valueOf2 = String.valueOf(str);
                            Log.w("GoogleApiAvailability", valueOf2.length() != 0 ? "Got empty resource: ".concat(valueOf2) : new String("Got empty resource: "));
                            string = null;
                        } else {
                            f7382a.put(str, string);
                        }
                    }
                }
            }
        }
        return string;
    }

    /* renamed from: a */
    private static String m14033a(Context context, String str, String str2) {
        Resources resources = context.getResources();
        String m14034a = m14034a(context, str);
        String str3 = m14034a;
        if (m14034a == null) {
            str3 = resources.getString(C2674j.C2675a.common_google_play_services_unknown_issue);
        }
        return String.format(resources.getConfiguration().locale, str3, str2);
    }

    /* renamed from: b */
    public static String m14032b(Context context) {
        return context.getResources().getString(C2240a.C2242b.common_google_play_services_notification_channel_name);
    }

    /* renamed from: b */
    public static String m14031b(Context context, int i) {
        String m14034a = i == 6 ? m14034a(context, "common_google_play_services_resolution_required_title") : m14035a(context, i);
        String str = m14034a;
        if (m14034a == null) {
            str = context.getResources().getString(C2240a.C2242b.common_google_play_services_notification_ticker);
        }
        return str;
    }

    /* renamed from: c */
    public static String m14030c(Context context, int i) {
        String m14033a;
        Resources resources = context.getResources();
        String m14036a = m14036a(context);
        switch (i) {
            case 1:
                m14033a = resources.getString(C2240a.C2242b.common_google_play_services_install_text, m14036a);
                break;
            case 2:
                if (!C2712i.m13856b(context)) {
                    m14033a = resources.getString(C2240a.C2242b.common_google_play_services_update_text, m14036a);
                    break;
                } else {
                    m14033a = resources.getString(C2240a.C2242b.common_google_play_services_wear_update_text);
                    break;
                }
            case 3:
                m14033a = resources.getString(C2240a.C2242b.common_google_play_services_enable_text, m14036a);
                break;
            case 4:
            case 6:
            case 8:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
            case 19:
            default:
                m14033a = resources.getString(C2674j.C2675a.common_google_play_services_unknown_issue, m14036a);
                break;
            case 5:
                m14033a = m14033a(context, "common_google_play_services_invalid_account_text", m14036a);
                break;
            case 7:
                m14033a = m14033a(context, "common_google_play_services_network_error_text", m14036a);
                break;
            case 9:
                m14033a = resources.getString(C2240a.C2242b.common_google_play_services_unsupported_text, m14036a);
                break;
            case 16:
                m14033a = m14033a(context, "common_google_play_services_api_unavailable_text", m14036a);
                break;
            case 17:
                m14033a = m14033a(context, "common_google_play_services_sign_in_failed_text", m14036a);
                break;
            case 18:
                m14033a = resources.getString(C2240a.C2242b.common_google_play_services_updating_text, m14036a);
                break;
            case 20:
                m14033a = m14033a(context, "common_google_play_services_restricted_profile_text", m14036a);
                break;
        }
        return m14033a;
    }

    /* renamed from: d */
    public static String m14029d(Context context, int i) {
        return (i == 6 || i == 19) ? m14033a(context, "common_google_play_services_resolution_required_text", m14036a(context)) : m14030c(context, i);
    }

    /* renamed from: e */
    public static String m14028e(Context context, int i) {
        String string;
        Resources resources = context.getResources();
        switch (i) {
            case 1:
                string = resources.getString(C2240a.C2242b.common_google_play_services_install_button);
                break;
            case 2:
                string = resources.getString(C2240a.C2242b.common_google_play_services_update_button);
                break;
            case 3:
                string = resources.getString(C2240a.C2242b.common_google_play_services_enable_button);
                break;
            default:
                string = resources.getString(17039370);
                break;
        }
        return string;
    }
}
