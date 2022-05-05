package com.android.contacts.ipcall;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import android.util.Log;
import com.asus.contacts.a;
import com.asus.updatesdk.BuildConfig;
import com.asus.updatesdk.utility.SystemPropertiesReflection;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/android/contacts/ipcall/b.class */
public class b {

    /* renamed from: a  reason: collision with root package name */
    public static final String f1497a = b.class.getSimpleName();

    public static int a(Context context) {
        int i = 0;
        if (context != null) {
            i = context.getSharedPreferences("ip_call_settings", 0).getInt("prefs_count", 0);
        }
        return i;
    }

    public static boolean a(Context context, int i) {
        boolean z = false;
        if (context != null) {
            SharedPreferences.Editor f = f(context);
            if (i == 0) {
                f.putBoolean("disable_ip_call", true);
            } else {
                f.putBoolean("disable_ip_call", false);
            }
            f.putInt("selected_index", i);
            z = f.commit();
        }
        return z;
    }

    public static boolean a(Context context, String str) {
        boolean z;
        if (context != null) {
            int a2 = a(context);
            SharedPreferences.Editor f = f(context);
            f.putString(String.valueOf(a2 + 1), str);
            f.putInt("prefs_count", a2 + 1);
            z = f.commit();
        } else {
            z = false;
        }
        return z;
    }

    public static boolean a(Context context, ArrayList<AsusIpCodeItem> arrayList) {
        boolean z = false;
        if (context == null) {
            Log.d(f1497a, "[removeIpCodes] context is null");
        } else if (arrayList != null) {
            SharedPreferences.Editor f = f(context);
            f.clear().commit();
            f.putBoolean("disable_ip_call", true).putInt("selected_index", 0).putInt("prefs_count", arrayList.size());
            for (int i = 0; i < arrayList.size(); i++) {
                AsusIpCodeItem asusIpCodeItem = arrayList.get(i);
                f.putString(String.valueOf(i + 1), asusIpCodeItem.f1489a);
                if (asusIpCodeItem.f1490b) {
                    f.putBoolean("disable_ip_call", false);
                    f.putInt("selected_index", i + 1);
                }
                Log.d(f1497a, "index: " + (i + 1) + ", IP code: " + asusIpCodeItem.f1489a);
            }
            z = f.commit();
        } else {
            Log.d(f1497a, "[removeIpCodes] keepList is null");
        }
        return z;
    }

    public static boolean b(Context context) {
        boolean z = true;
        if (context != null) {
            boolean z2 = context.getSharedPreferences("ip_call_settings", 0).getBoolean("disable_ip_call", true);
            String a2 = a.a(SystemPropertiesReflection.Key.BUILD_ASUS_SKU);
            boolean z3 = !TextUtils.isEmpty(a2) && ("CN".equalsIgnoreCase(a2) || "CMCC".equalsIgnoreCase(a2) || "CUCC".equalsIgnoreCase(a2));
            if (z2 || !z3) {
                z = false;
            }
        } else {
            z = false;
        }
        return z;
    }

    public static ArrayList<AsusIpCodeItem> c(Context context) {
        ArrayList<AsusIpCodeItem> arrayList = new ArrayList<>();
        if (context != null) {
            arrayList.clear();
            SharedPreferences sharedPreferences = context.getSharedPreferences("ip_call_settings", 0);
            int i = sharedPreferences.getInt("prefs_count", 0);
            int i2 = sharedPreferences.getInt("selected_index", 0);
            arrayList.add(new AsusIpCodeItem(0, context.getResources().getString(2131755713), i2 == 0));
            int i3 = 1;
            while (i3 <= i) {
                arrayList.add(new AsusIpCodeItem(i3, sharedPreferences.getString(String.valueOf(i3), "null"), i3 == i2));
                i3++;
            }
        } else {
            Log.d(f1497a, "context is null");
        }
        return arrayList;
    }

    public static boolean d(Context context) {
        boolean z = false;
        if (context != null) {
            z = false;
            if (context.getSharedPreferences("ip_call_settings", 0).getInt("prefs_count", -1) == -1) {
                Log.d(f1497a, "[initIpCallPreferences] IP call setting SharedPreferences does not exist! Create new SharedPreferences...");
                SharedPreferences.Editor f = f(context);
                f.clear();
                f.putBoolean("disable_ip_call", true).putInt("selected_index", 0).putInt("prefs_count", 0);
                z = f.commit();
            }
        }
        return z;
    }

    public static String e(Context context) {
        String str;
        if (context != null) {
            SharedPreferences sharedPreferences = context.getSharedPreferences("ip_call_settings", 0);
            str = sharedPreferences.getString(String.valueOf(sharedPreferences.getInt("selected_index", 0)), BuildConfig.FLAVOR);
        } else {
            str = BuildConfig.FLAVOR;
        }
        return str;
    }

    private static SharedPreferences.Editor f(Context context) {
        return context.getSharedPreferences("ip_call_settings", 0).edit();
    }
}
