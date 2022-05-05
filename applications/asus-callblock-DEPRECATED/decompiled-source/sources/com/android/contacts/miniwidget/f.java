package com.android.contacts.miniwidget;

import android.content.Context;
import android.provider.Settings;
import com.android.contacts.preference.ContactsPreferences;
import com.android.contacts.util.PhoneCapabilityTester;
import java.util.Locale;
/* loaded from: classes-dex2jar.jar:com/android/contacts/miniwidget/f.class */
public final class f {
    public static String a(Context context) {
        String str;
        if (!PhoneCapabilityTester.IsAsusDevice() || !Locale.getDefault().equals(Locale.TRADITIONAL_CHINESE)) {
            int b2 = b(context);
            str = b2 == 1 ? "sort_key" : b2 == 2 ? "sort_key_alt" : null;
        } else {
            str = "display_name";
        }
        return str;
    }

    private static int b(Context context) {
        int c;
        if (!context.getResources().getBoolean(2130968592)) {
            c = c(context);
        } else {
            try {
                c = Settings.System.getInt(context.getContentResolver(), ContactsPreferences.SORT_ORDER_KEY);
            } catch (Settings.SettingNotFoundException e) {
                c = c(context);
            }
        }
        return c;
    }

    private static int c(Context context) {
        return context.getResources().getBoolean(2130968583) ? 1 : 2;
    }
}
