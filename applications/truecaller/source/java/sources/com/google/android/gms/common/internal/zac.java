package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.support.p001v4.media.session.MediaSessionCompat;
import android.text.TextUtils;
import com.google.android.gms.base.C2047R;
import com.google.android.gms.common.C2052R;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.common.util.DeviceProperties;
import com.google.android.gms.common.wrappers.Wrappers;
import java.util.Locale;
import p1727n3.p1788g.C26187h;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/internal/zac.class */
public final class zac {

    /* renamed from: a */
    public static final C26187h<String, String> f6013a = new C26187h<>();

    /* renamed from: b */
    public static Locale f6014b;

    /* renamed from: a */
    public static String m38834a(Context context, int i) {
        Resources resources = context.getResources();
        if (i != 1) {
            if (i == 2) {
                return resources.getString(C2047R.string.common_google_play_services_update_title);
            }
            if (i == 3) {
                return resources.getString(C2047R.string.common_google_play_services_enable_title);
            }
            if (i == 5) {
                return m38829f(context, "common_google_play_services_invalid_account_title");
            }
            if (i == 7) {
                return m38829f(context, "common_google_play_services_network_error_title");
            }
            if (i == 17) {
                return m38829f(context, "common_google_play_services_sign_in_failed_title");
            }
            if (i == 20) {
                return m38829f(context, "common_google_play_services_restricted_profile_title");
            }
            return null;
        }
        return resources.getString(C2047R.string.common_google_play_services_install_title);
    }

    /* renamed from: b */
    public static String m38833b(Context context, int i) {
        Resources resources = context.getResources();
        String m38831d = m38831d(context);
        if (i != 1) {
            if (i == 2) {
                return DeviceProperties.m38784c(context) ? resources.getString(C2047R.string.common_google_play_services_wear_update_text) : resources.getString(C2047R.string.common_google_play_services_update_text, m38831d);
            } else if (i == 3) {
                return resources.getString(C2047R.string.common_google_play_services_enable_text, m38831d);
            } else {
                if (i == 5) {
                    return m38830e(context, "common_google_play_services_invalid_account_text", m38831d);
                }
                if (i == 7) {
                    return m38830e(context, "common_google_play_services_network_error_text", m38831d);
                }
                if (i == 9) {
                    return resources.getString(C2047R.string.common_google_play_services_unsupported_text, m38831d);
                }
                if (i == 20) {
                    return m38830e(context, "common_google_play_services_restricted_profile_text", m38831d);
                }
                switch (i) {
                    case 16:
                        return m38830e(context, "common_google_play_services_api_unavailable_text", m38831d);
                    case 17:
                        return m38830e(context, "common_google_play_services_sign_in_failed_text", m38831d);
                    case 18:
                        return resources.getString(C2047R.string.common_google_play_services_updating_text, m38831d);
                    default:
                        return resources.getString(C2052R.string.common_google_play_services_unknown_issue, m38831d);
                }
            }
        }
        return resources.getString(C2047R.string.common_google_play_services_install_text, m38831d);
    }

    /* renamed from: c */
    public static String m38832c(Context context, int i) {
        Resources resources = context.getResources();
        return i != 1 ? i != 2 ? i != 3 ? resources.getString(17039370) : resources.getString(C2047R.string.common_google_play_services_enable_button) : resources.getString(C2047R.string.common_google_play_services_update_button) : resources.getString(C2047R.string.common_google_play_services_install_button);
    }

    /* renamed from: d */
    public static String m38831d(Context context) {
        String packageName = context.getPackageName();
        try {
            return Wrappers.m38764a(context).m38767b(packageName).toString();
        } catch (PackageManager.NameNotFoundException | NullPointerException e) {
            String str = context.getApplicationInfo().name;
            return TextUtils.isEmpty(str) ? packageName : str;
        }
    }

    /* renamed from: e */
    public static String m38830e(Context context, String str, String str2) {
        Resources resources = context.getResources();
        String m38829f = m38829f(context, str);
        String str3 = m38829f;
        if (m38829f == null) {
            str3 = resources.getString(C2052R.string.common_google_play_services_unknown_issue);
        }
        return String.format(resources.getConfiguration().locale, str3, str2);
    }

    /* renamed from: f */
    public static String m38829f(Context context, String str) {
        C26187h<String, String> c26187h = f6013a;
        synchronized (c26187h) {
            Locale m1718b = MediaSessionCompat.m43225k0(context.getResources().getConfiguration()).m1718b(0);
            if (!m1718b.equals(f6014b)) {
                c26187h.clear();
                f6014b = m1718b;
            }
            String orDefault = c26187h.getOrDefault(str, null);
            if (orDefault != null) {
                return orDefault;
            }
            Resources remoteResource = GooglePlayServicesUtil.getRemoteResource(context);
            if (remoteResource == null) {
                return null;
            }
            int identifier = remoteResource.getIdentifier(str, "string", "com.google.android.gms");
            if (identifier == 0) {
                if (str.length() != 0) {
                    "Missing resource: ".concat(str);
                } else {
                    new String("Missing resource: ");
                }
                return null;
            }
            String string = remoteResource.getString(identifier);
            if (!TextUtils.isEmpty(string)) {
                c26187h.put(str, string);
                return string;
            }
            if (str.length() != 0) {
                "Got empty resource: ".concat(str);
            } else {
                new String("Got empty resource: ");
            }
            return null;
        }
    }
}
