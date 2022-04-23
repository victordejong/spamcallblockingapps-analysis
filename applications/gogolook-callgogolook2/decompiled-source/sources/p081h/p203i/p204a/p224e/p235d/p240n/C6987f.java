package p081h.p203i.p204a.p224e.p235d.p240n;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.collection.SimpleArrayMap;
import com.google.android.gms.base.R$string;
import com.google.android.gms.common.GooglePlayServicesUtil;
import javax.annotation.concurrent.GuardedBy;
import p081h.p203i.p204a.p224e.p235d.p249s.C7078j;
import p081h.p203i.p204a.p224e.p235d.p251t.C7097c;
/* renamed from: h.i.a.e.d.n.f */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/n/f.class */
public final class C6987f {
    @GuardedBy("sCache")

    /* renamed from: a */
    public static final SimpleArrayMap<String, String> f17115a = new SimpleArrayMap<>();

    /* renamed from: a */
    public static String m21380a(Context context) {
        String packageName = context.getPackageName();
        try {
            return C7097c.m21085b(context).m21088b(packageName).toString();
        } catch (PackageManager.NameNotFoundException | NullPointerException e) {
            String str = context.getApplicationInfo().name;
            return TextUtils.isEmpty(str) ? packageName : str;
        }
    }

    @NonNull
    /* renamed from: a */
    public static String m21379a(Context context, int i) {
        Resources resources = context.getResources();
        return i != 1 ? i != 2 ? i != 3 ? resources.getString(17039370) : resources.getString(R$string.common_google_play_services_enable_button) : resources.getString(R$string.common_google_play_services_update_button) : resources.getString(R$string.common_google_play_services_install_button);
    }

    @Nullable
    /* renamed from: a */
    public static String m21378a(Context context, String str) {
        synchronized (f17115a) {
            String str2 = f17115a.get(str);
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
                if (valueOf.length() != 0) {
                    "Missing resource: ".concat(valueOf);
                } else {
                    new String("Missing resource: ");
                }
                return null;
            }
            String string = remoteResource.getString(identifier);
            if (TextUtils.isEmpty(string)) {
                String valueOf2 = String.valueOf(str);
                if (valueOf2.length() != 0) {
                    "Got empty resource: ".concat(valueOf2);
                } else {
                    new String("Got empty resource: ");
                }
                return null;
            }
            f17115a.put(str, string);
            return string;
        }
    }

    /* renamed from: a */
    public static String m21377a(Context context, String str, String str2) {
        Resources resources = context.getResources();
        String a = m21378a(context, str);
        String str3 = a;
        if (a == null) {
            str3 = resources.getString(com.google.android.gms.common.R$string.common_google_play_services_unknown_issue);
        }
        return String.format(resources.getConfiguration().locale, str3, str2);
    }

    /* renamed from: b */
    public static String m21376b(Context context) {
        return context.getResources().getString(R$string.common_google_play_services_notification_channel_name);
    }

    @NonNull
    /* renamed from: b */
    public static String m21375b(Context context, int i) {
        Resources resources = context.getResources();
        String a = m21380a(context);
        if (i == 1) {
            return resources.getString(R$string.common_google_play_services_install_text, a);
        }
        if (i == 2) {
            return C7078j.m21143c(context) ? resources.getString(R$string.common_google_play_services_wear_update_text) : resources.getString(R$string.common_google_play_services_update_text, a);
        }
        if (i == 3) {
            return resources.getString(R$string.common_google_play_services_enable_text, a);
        }
        if (i == 5) {
            return m21377a(context, "common_google_play_services_invalid_account_text", a);
        }
        if (i == 7) {
            return m21377a(context, "common_google_play_services_network_error_text", a);
        }
        if (i == 9) {
            return resources.getString(R$string.common_google_play_services_unsupported_text, a);
        }
        if (i == 20) {
            return m21377a(context, "common_google_play_services_restricted_profile_text", a);
        }
        switch (i) {
            case 16:
                return m21377a(context, "common_google_play_services_api_unavailable_text", a);
            case 17:
                return m21377a(context, "common_google_play_services_sign_in_failed_text", a);
            case 18:
                return resources.getString(R$string.common_google_play_services_updating_text, a);
            default:
                return resources.getString(com.google.android.gms.common.R$string.common_google_play_services_unknown_issue, a);
        }
    }

    @NonNull
    /* renamed from: c */
    public static String m21374c(Context context, int i) {
        return i == 6 ? m21377a(context, "common_google_play_services_resolution_required_text", m21380a(context)) : m21375b(context, i);
    }

    @NonNull
    /* renamed from: d */
    public static String m21373d(Context context, int i) {
        String a = i == 6 ? m21378a(context, "common_google_play_services_resolution_required_title") : m21372e(context, i);
        String str = a;
        if (a == null) {
            str = context.getResources().getString(R$string.common_google_play_services_notification_ticker);
        }
        return str;
    }

    @Nullable
    /* renamed from: e */
    public static String m21372e(Context context, int i) {
        Resources resources = context.getResources();
        switch (i) {
            case 1:
                return resources.getString(R$string.common_google_play_services_install_title);
            case 2:
                return resources.getString(R$string.common_google_play_services_update_title);
            case 3:
                return resources.getString(R$string.common_google_play_services_enable_title);
            case 4:
            case 6:
            case 18:
                return null;
            case 5:
                Log.e("GoogleApiAvailability", "An invalid account was specified when connecting. Please provide a valid account.");
                return m21378a(context, "common_google_play_services_invalid_account_title");
            case 7:
                Log.e("GoogleApiAvailability", "Network error occurred. Please retry request later.");
                return m21378a(context, "common_google_play_services_network_error_title");
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
                return m21378a(context, "common_google_play_services_sign_in_failed_title");
            case 20:
                Log.e("GoogleApiAvailability", "The current user profile is restricted and could not use authenticated features.");
                return m21378a(context, "common_google_play_services_restricted_profile_title");
        }
    }
}
