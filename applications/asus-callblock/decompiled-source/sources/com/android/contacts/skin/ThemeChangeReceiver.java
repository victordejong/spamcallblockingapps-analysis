package com.android.contacts.skin;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.text.TextUtils;
import android.util.Log;
import com.asus.themesdk.a;
import com.asus.themesdk.b;
import com.asus.themesdk.c;
import com.asus.themesdk.d;
import com.asus.updatesdk.BuildConfig;
import com.asus.updatesdk.cdn.CdnUtils;
/* loaded from: classes-dex2jar.jar:com/android/contacts/skin/ThemeChangeReceiver.class */
public class ThemeChangeReceiver extends BroadcastReceiver {
    private static void a(Context context, String str) {
        a.a(str, context);
        context.sendBroadcast(new Intent("asus.intent.action.FINISH_ACTIVITY"));
        Log.d("ThemeChangeReceiverContacts", "sendThemeChangedBroadcast");
    }

    private static void a(Resources resources, int i, String str, Context context) {
        Log.d("ThemeChangeReceiverContacts", "applyTheme applyScope:" + i);
        if (resources == null) {
            a(context, "default");
            Log.d("ThemeChangeReceiverContacts", "Contacts return to Default Theme");
        } else if (i == 0) {
            SharedPreferences.Editor edit = context.getSharedPreferences("download_theme", 0).edit();
            for (int i2 = 1; i2 <= 4; i2++) {
                try {
                    String str2 = "asus_contacts_global_theme_color" + i2;
                    edit.putInt(str2, resources.getColor(resources.getIdentifier(str2, "color", str)));
                } catch (Exception e) {
                    if (edit != null) {
                        Log.d("ThemeChangeReceiverContacts", "Exception:" + e.toString());
                        for (int i3 = 1; i3 <= 4; i3++) {
                            edit.remove("asus_contacts_global_theme_color" + i3);
                        }
                        edit.apply();
                    }
                    a(context, "default");
                    return;
                }
            }
            edit.apply();
            a(context, "com.asus.themeapp.global");
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String str;
        Resources resources;
        if (context != null && intent != null) {
            String packageName = context.getPackageName();
            int checkPermission = context.getPackageManager().checkPermission("com.asus.permission.APPLY_THEME", context.getPackageName());
            Log.d("ThemeChangeReceiverContacts", "permission result:" + checkPermission);
            if (checkPermission == 0) {
                d a2 = d.a(context);
                String action = intent.getAction();
                Log.d("ThemeChangeReceiverContacts", "action:" + action);
                if (TextUtils.equals("asus.intent.action.THEME_CHANGE", action)) {
                    a(context, "default");
                    Log.d("ThemeChangeReceiverContacts", "asus.intent.action.THEME_CHANGE Contacts return to Default Theme");
                } else if (TextUtils.equals("com.asus.themeapp.THEME_CHANGE", action)) {
                    Log.d("ThemeChangeReceiverContacts", "com.asus.themeapp.THEME_CHANGE");
                    if (intent.getStringArrayListExtra("com.asus.themeapp.extra.MODULES") != null) {
                        String stringExtra = intent.getStringExtra("com.asus.themeapp.extra.PACKAGE_NAME");
                        String stringExtra2 = intent.getStringExtra("com.asus.themeapp.extra.PUBLIC_KEY");
                        a2.c = stringExtra;
                        a2.f = "zip";
                        String a3 = b.a(a2.f3105b, a2.d + "_decrypted" + a2.e);
                        if (!a2.f3104a || TextUtils.equals(stringExtra, "com.asus.res.defaulttheme")) {
                            str = BuildConfig.FLAVOR;
                        } else {
                            str = a2.a(d.a(stringExtra, a2.f), b.a(stringExtra), c.a(stringExtra, stringExtra2), a3);
                        }
                        int intExtra = intent.getIntExtra("com.asus.themeapp.extra.APPLY_SCOPE", 0);
                        Log.d("ThemeChangeReceiverContacts", "pkgName:" + stringExtra + " key:" + stringExtra2 + " filePath:" + str + " resourcePackage:" + packageName);
                        if (!TextUtils.isEmpty(str)) {
                            if (a2.f3104a) {
                                if (TextUtils.equals(a2.f, CdnUtils.NODE_APK)) {
                                    resources = a2.a();
                                } else if (TextUtils.equals(a2.f, "zip")) {
                                    PackageManager packageManager = a2.f3105b.getPackageManager();
                                    if (TextUtils.isEmpty(a2.d) || packageManager == null) {
                                        resources = null;
                                    } else {
                                        resources = a.a(packageManager, b.a(a2.f3105b, a2.d + "_decrypted" + a2.e));
                                    }
                                }
                                a(resources, intExtra, packageName, context);
                                return;
                            }
                            resources = null;
                            a(resources, intExtra, packageName, context);
                            return;
                        }
                        a(context, "default");
                    }
                } else if (TextUtils.equals("com.asus.themeapp.THEME_CHANGE_DIY", action)) {
                    a(context, "default");
                    Log.d("ThemeChangeReceiverContacts", "com.asus.themeapp.THEME_CHANGE_DIY Contacts return to Default Theme");
                }
            }
        }
    }
}
