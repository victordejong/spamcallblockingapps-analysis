package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.text.TextUtils;
import android.util.Log;
import androidx.core.p008os.C0625c;
import com.google.android.gms.common.C6088d;
import com.google.android.gms.common.C6097g;
import com.google.android.gms.common.p272k.C6198c;
import com.google.android.gms.common.util.C6231i;
import java.util.Locale;
import p020b.p036e.C1502g;
import p078c.p084c.p085a.p086a.p087a.C1833c;
/* renamed from: com.google.android.gms.common.internal.z */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/z.class */
public final class C6191z {

    /* renamed from: a */
    private static final C1502g<String, String> f19617a = new C1502g<>();

    /* renamed from: b */
    private static Locale f19618b;

    /* renamed from: a */
    public static String m16909a(Context context, int i) {
        Resources resources = context.getResources();
        switch (i) {
            case 1:
                return resources.getString(C1833c.common_google_play_services_install_title);
            case 2:
                return resources.getString(C1833c.common_google_play_services_update_title);
            case 3:
                return resources.getString(C1833c.common_google_play_services_enable_title);
            case 4:
            case 6:
            case 18:
                return null;
            case 5:
                Log.e("GoogleApiAvailability", "An invalid account was specified when connecting. Please provide a valid account.");
                return m16901i(context, "common_google_play_services_invalid_account_title");
            case 7:
                Log.e("GoogleApiAvailability", "Network error occurred. Please retry request later.");
                return m16901i(context, "common_google_play_services_network_error_title");
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
                return m16901i(context, "common_google_play_services_sign_in_failed_title");
            case 20:
                Log.e("GoogleApiAvailability", "The current user profile is restricted and could not use authenticated features.");
                return m16901i(context, "common_google_play_services_restricted_profile_title");
        }
    }

    /* renamed from: b */
    public static String m16908b(Context context, int i) {
        String m16901i = i == 6 ? m16901i(context, "common_google_play_services_resolution_required_title") : m16909a(context, i);
        return m16901i == null ? context.getResources().getString(C1833c.common_google_play_services_notification_ticker) : m16901i;
    }

    /* renamed from: c */
    public static String m16907c(Context context, int i) {
        Resources resources = context.getResources();
        String m16904f = m16904f(context);
        if (i != 1) {
            if (i == 2) {
                return C6231i.m16796h(context) ? resources.getString(C1833c.common_google_play_services_wear_update_text) : resources.getString(C1833c.common_google_play_services_update_text, m16904f);
            } else if (i == 3) {
                return resources.getString(C1833c.common_google_play_services_enable_text, m16904f);
            } else {
                if (i == 5) {
                    return m16902h(context, "common_google_play_services_invalid_account_text", m16904f);
                }
                if (i == 7) {
                    return m16902h(context, "common_google_play_services_network_error_text", m16904f);
                }
                if (i == 9) {
                    return resources.getString(C1833c.common_google_play_services_unsupported_text, m16904f);
                }
                if (i == 20) {
                    return m16902h(context, "common_google_play_services_restricted_profile_text", m16904f);
                }
                switch (i) {
                    case 16:
                        return m16902h(context, "common_google_play_services_api_unavailable_text", m16904f);
                    case 17:
                        return m16902h(context, "common_google_play_services_sign_in_failed_text", m16904f);
                    case 18:
                        return resources.getString(C1833c.common_google_play_services_updating_text, m16904f);
                    default:
                        return resources.getString(C6097g.common_google_play_services_unknown_issue, m16904f);
                }
            }
        }
        return resources.getString(C1833c.common_google_play_services_install_text, m16904f);
    }

    /* renamed from: d */
    public static String m16906d(Context context, int i) {
        return (i == 6 || i == 19) ? m16902h(context, "common_google_play_services_resolution_required_text", m16904f(context)) : m16907c(context, i);
    }

    /* renamed from: e */
    public static String m16905e(Context context, int i) {
        Resources resources = context.getResources();
        return i != 1 ? i != 2 ? i != 3 ? resources.getString(17039370) : resources.getString(C1833c.common_google_play_services_enable_button) : resources.getString(C1833c.common_google_play_services_update_button) : resources.getString(C1833c.common_google_play_services_install_button);
    }

    /* renamed from: f */
    public static String m16904f(Context context) {
        String packageName = context.getPackageName();
        try {
            return C6198c.m16885a(context).m16890d(packageName).toString();
        } catch (PackageManager.NameNotFoundException | NullPointerException e) {
            String str = context.getApplicationInfo().name;
            return TextUtils.isEmpty(str) ? packageName : str;
        }
    }

    /* renamed from: g */
    public static String m16903g(Context context) {
        return context.getResources().getString(C1833c.common_google_play_services_notification_channel_name);
    }

    /* renamed from: h */
    private static String m16902h(Context context, String str, String str2) {
        Resources resources = context.getResources();
        String m16901i = m16901i(context, str);
        String str3 = m16901i;
        if (m16901i == null) {
            str3 = resources.getString(C6097g.common_google_play_services_unknown_issue);
        }
        return String.format(resources.getConfiguration().locale, str3, str2);
    }

    /* renamed from: i */
    private static String m16901i(Context context, String str) {
        C1502g<String, String> c1502g = f19617a;
        synchronized (c1502g) {
            Locale m33190c = C0625c.m33195a(context.getResources().getConfiguration()).m33190c(0);
            if (!m33190c.equals(f19618b)) {
                c1502g.clear();
                f19618b = m33190c;
            }
            String str2 = c1502g.get(str);
            if (str2 != null) {
                return str2;
            }
            Resources m17216e = C6088d.m17216e(context);
            if (m17216e == null) {
                return null;
            }
            int identifier = m17216e.getIdentifier(str, "string", "com.google.android.gms");
            if (identifier == 0) {
                Log.w("GoogleApiAvailability", str.length() != 0 ? "Missing resource: ".concat(str) : new String("Missing resource: "));
                return null;
            }
            String string = m17216e.getString(identifier);
            if (TextUtils.isEmpty(string)) {
                Log.w("GoogleApiAvailability", str.length() != 0 ? "Got empty resource: ".concat(str) : new String("Got empty resource: "));
                return null;
            }
            c1502g.put(str, string);
            return string;
        }
    }
}
