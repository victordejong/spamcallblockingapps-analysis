package com.android.contacts.a;

import android.content.Context;
import android.database.ContentObserver;
import android.net.Uri;
import android.preference.PreferenceManager;
import android.provider.Settings;
import android.util.Log;
import com.android.contacts.util.CompatUtils;
import com.android.contacts.util.PhoneCapabilityTester;
/* loaded from: classes-dex2jar.jar:com/android/contacts/a/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static String f501a;

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x0035 -> B:7:0x0025). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0043 -> B:7:0x0025). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0051 -> B:7:0x0025). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x005f -> B:7:0x0025). Please submit an issue!!! */
    static {
        f501a = null;
        if (!PhoneCapabilityTester.IsSystemApp()) {
            Log.d("GATracker", "non-ASUS Contacts GATracker");
        } else if (!CompatUtils.isNCompatible()) {
            try {
                f501a = (String) Class.forName("android.provider.Settings$System").getField("ASUS_ANALYTICS").get(String.class);
            } catch (ClassNotFoundException e) {
                Log.e("GATracker", e.toString());
            } catch (IllegalAccessException e2) {
                Log.e("GATracker", e2.toString());
            } catch (IllegalArgumentException e3) {
                Log.e("GATracker", e3.toString());
            } catch (NoSuchFieldException e4) {
                Log.e("GATracker", e4.toString());
            }
            if (f501a == null) {
                Log.d("GATracker", "Disable Contacts GATracker");
            } else {
                Log.d("GATracker", "Enable Contacts GATracker");
            }
        }
    }

    public static void a(Context context, ContentObserver contentObserver) {
        if (CompatUtils.isNCompatible()) {
            Uri uriFor = Settings.Secure.getUriFor("asus_analytics");
            if (uriFor != null) {
                context.getContentResolver().registerContentObserver(uriFor, false, contentObserver);
            }
        } else if (f501a != null) {
            context.getContentResolver().registerContentObserver(Settings.System.getUriFor(f501a), false, contentObserver);
        }
    }

    public static boolean a(Context context) {
        boolean z = true;
        if (!PhoneCapabilityTester.IsSystemApp()) {
            z = PreferenceManager.getDefaultSharedPreferences(context).getBoolean("NON_ASUS_GA_ENABLE", true);
            Log.d("GATracker", "non-ASUS enable Contacts GATracker : " + z);
        } else if (CompatUtils.isNCompatible()) {
            if (Settings.Secure.getInt(context.getContentResolver(), "asus_analytics", 0) != 1) {
                z = false;
            }
        } else if (f501a == null) {
            z = false;
        } else if (Settings.System.getInt(context.getContentResolver(), f501a, 0) != 1) {
            z = false;
        }
        return z;
    }

    public static void b(Context context, ContentObserver contentObserver) {
        context.getContentResolver().unregisterContentObserver(contentObserver);
    }
}
