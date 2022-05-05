package com.android.contacts.ezmode;

import android.content.Context;
import android.provider.Settings;
import com.android.contacts.preference.ContactsPreferences;
import com.android.contacts.util.CompatUtils;
import com.android.contacts.util.PhoneCapabilityTester;
/* loaded from: classes-dex2jar.jar:com/android/contacts/ezmode/h.class */
public final class h {
    public static boolean a() {
        return PhoneCapabilityTester.IsSystemApp() && CompatUtils.isMarshmallowCompatible();
    }

    public static boolean a(Context context) {
        boolean z = true;
        boolean isUsingTwoPanes = PhoneCapabilityTester.isUsingTwoPanes(context);
        boolean ezmodeOn = ContactsPreferences.getEzmodeOn(context);
        if (PhoneCapabilityTester.IsAsusDevice() || a()) {
            int i = Settings.System.getInt(context.getContentResolver(), "asus_easy_launcher", 0);
            if (isUsingTwoPanes || i != 1 || !ezmodeOn) {
                z = false;
            }
        } else if (isUsingTwoPanes || !ezmodeOn) {
            z = false;
        }
        return z;
    }

    public static boolean b(Context context) {
        boolean z = true;
        boolean isUsingTwoPanes = PhoneCapabilityTester.isUsingTwoPanes(context);
        if (PhoneCapabilityTester.IsAsusDevice() || a()) {
            int i = Settings.System.getInt(context.getContentResolver(), "asus_easy_launcher", 0);
            if (isUsingTwoPanes || i != 1) {
                z = false;
            }
        } else if (isUsingTwoPanes) {
            z = false;
        }
        return z;
    }
}
