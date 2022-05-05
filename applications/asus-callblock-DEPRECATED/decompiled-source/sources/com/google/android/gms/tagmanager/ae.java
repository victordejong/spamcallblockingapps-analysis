package com.google.android.gms.tagmanager;

import android.content.Context;
import android.content.SharedPreferences;
import android.net.Uri;
import com.asus.updatesdk.BuildConfig;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/ae.class */
public class ae {

    /* renamed from: a  reason: collision with root package name */
    static Map<String, String> f4269a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    private static String f4270b;

    public static String a(Context context, String str, String str2) {
        String str3 = f4269a.get(str);
        String str4 = str3;
        if (str3 == null) {
            SharedPreferences sharedPreferences = context.getSharedPreferences("gtm_click_referrers", 0);
            String string = sharedPreferences != null ? sharedPreferences.getString(str, BuildConfig.FLAVOR) : BuildConfig.FLAVOR;
            f4269a.put(str, string);
            str4 = string;
        }
        return a(str4, str2);
    }

    private static String a(String str, String str2) {
        if (str2 != null) {
            String valueOf = String.valueOf(str);
            str = Uri.parse(valueOf.length() != 0 ? "http://hostname/?".concat(valueOf) : new String("http://hostname/?")).getQueryParameter(str2);
        } else if (str.length() <= 0) {
            str = null;
        }
        return str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Context context, String str) {
        ce.a(context, "gtm_install_referrer", "referrer", str);
        c(context, str);
    }

    public static void a(String str) {
        synchronized (ae.class) {
            try {
                f4270b = str;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static String b(Context context, String str) {
        if (f4270b == null) {
            synchronized (ae.class) {
                try {
                    if (f4270b == null) {
                        SharedPreferences sharedPreferences = context.getSharedPreferences("gtm_install_referrer", 0);
                        if (sharedPreferences != null) {
                            f4270b = sharedPreferences.getString("referrer", BuildConfig.FLAVOR);
                        } else {
                            f4270b = BuildConfig.FLAVOR;
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return a(f4270b, str);
    }

    public static void c(Context context, String str) {
        String a2 = a(str, "conv");
        if (a2 != null && a2.length() > 0) {
            f4269a.put(a2, str);
            ce.a(context, "gtm_click_referrers", a2, str);
        }
    }
}
