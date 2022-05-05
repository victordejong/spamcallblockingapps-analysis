package com.a.a.a;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.preference.PreferenceManager;
import java.util.UUID;
/* loaded from: classes-dex2jar.jar:com/a/a/a/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static String f346a = null;

    public static String a(Context context) {
        String str;
        if ("google_sdk".equals(Build.PRODUCT) || "sdk".equals(Build.PRODUCT)) {
            str = "00000000-0000-0000-0000-000000000000";
        } else {
            SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context.getApplicationContext());
            if (f346a == null) {
                String string = defaultSharedPreferences.getString("applicationInstallationId", null);
                f346a = string;
                if (string == null) {
                    f346a = UUID.randomUUID().toString();
                    SharedPreferences.Editor edit = defaultSharedPreferences.edit();
                    edit.putString("applicationInstallationId", f346a);
                    edit.commit();
                }
            }
            str = f346a;
        }
        return str;
    }
}
