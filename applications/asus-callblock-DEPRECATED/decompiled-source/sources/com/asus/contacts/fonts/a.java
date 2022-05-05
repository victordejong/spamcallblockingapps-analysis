package com.asus.contacts.fonts;

import android.app.Activity;
import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Typeface;
import android.os.Build;
import android.preference.PreferenceManager;
import android.util.Log;
import com.android.contacts.activities.DialtactsActivity;
import com.android.contacts.util.ImplicitIntentsUtil;
/* loaded from: classes-dex2jar.jar:com/asus/contacts/fonts/a.class */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static final String f2637a = a.class.getSimpleName();

    public static int a() {
        return Build.BRAND.toLowerCase().equals("asus") ? 16974130 : 16973939;
    }

    public static int a(Context context, String str) {
        int i = -1;
        try {
            i = PreferenceManager.getDefaultSharedPreferences(context).getInt(str, -1);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return i;
    }

    public static Typeface a(Context context) {
        String b2 = b(context, "key_font_style", "###");
        Typeface typeface = null;
        if (b2 != null) {
            typeface = null;
            if (!b2.equals("###")) {
                typeface = d.a(context, b2);
            }
        }
        return typeface;
    }

    public static void a(Activity activity) {
        if (!ActivityManager.isUserAMonkey()) {
            try {
                a((Context) activity, "key_app_restart", true);
                ImplicitIntentsUtil.startActivityInApp(activity, new Intent(activity, DialtactsActivity.class));
                System.exit(0);
            } catch (Exception e) {
                Log.e(f2637a, "Failed to restart contacts application...");
                e.printStackTrace();
            }
        }
    }

    public static boolean a(Context context, String str, int i) {
        boolean z;
        try {
            SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(context).edit();
            edit.putInt(str, i);
            edit.commit();
            z = true;
        } catch (Exception e) {
            e.printStackTrace();
            z = false;
        }
        return z;
    }

    public static boolean a(Context context, String str, String str2) {
        boolean z;
        try {
            SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(context).edit();
            edit.putString(str, str2);
            edit.commit();
            z = true;
        } catch (Exception e) {
            e.printStackTrace();
            z = false;
        }
        return z;
    }

    public static boolean a(Context context, String str, boolean z) {
        boolean z2;
        if (context != null) {
            try {
                SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(context).edit();
                edit.putBoolean(str, z);
                edit.commit();
            } catch (Exception e) {
                e.printStackTrace();
                z2 = false;
            }
        }
        z2 = true;
        return z2;
    }

    public static String b(Context context, String str, String str2) {
        String str3 = null;
        try {
            str3 = PreferenceManager.getDefaultSharedPreferences(context).getString(str, str2);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return str3;
    }

    public static boolean b(Context context, String str) {
        boolean z = false;
        if (context != null) {
            try {
                z = PreferenceManager.getDefaultSharedPreferences(context).getBoolean(str, false);
            } catch (Exception e) {
                e.printStackTrace();
                z = false;
            }
        }
        return z;
    }

    public static boolean c(Context context, String str) {
        return context == null ? false : context.getResources().getString(2131756224).equals(str);
    }
}
