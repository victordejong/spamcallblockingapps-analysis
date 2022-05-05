package com.android.contacts.util;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Log;
/* loaded from: classes-dex2jar.jar:com/android/contacts/util/AsusPreferenceManager.class */
public class AsusPreferenceManager {
    private static final String ASUS_SHARE_DATA = "asus_share_data";
    private static final String BIGDIALPAD_SETTING = "bigdialpad_setting";
    private static final String COVER_PHOTO_NAME = "cover_photo_name";
    private static final String COVER_PHOTO_PREF = "cover_photo_pref";
    private static final String EZMODE_ENABLED = "ezmode_enabled";
    private static final String NEED_UPDATE_SETTING_TABLE = "need_update_setting";
    private static String TAG = "AsusPreferenceManager";
    private static boolean DEBUG = true;

    public static boolean containsBigDialPadSetting(Context context) {
        return context.getSharedPreferences(ASUS_SHARE_DATA, 0).contains(BIGDIALPAD_SETTING);
    }

    public static String getCameraPhotoNameStr(Context context) {
        return context.getSharedPreferences(COVER_PHOTO_PREF, 0).getString(COVER_PHOTO_NAME, null);
    }

    public static boolean getEzModeEnabled(Context context) {
        boolean z = context.getSharedPreferences(ASUS_SHARE_DATA, 0).getBoolean(EZMODE_ENABLED, false);
        if (DEBUG) {
            Log.d(TAG, "isEzModeEnabled: " + z);
        }
        return z;
    }

    public static boolean getOriginBigDialpadSetting(Context context) {
        boolean z = context.getSharedPreferences(ASUS_SHARE_DATA, 0).getBoolean(BIGDIALPAD_SETTING, false);
        if (DEBUG) {
            Log.d(TAG, "isBigDialpadEnabled: " + z);
        }
        return z;
    }

    public static void writeCameraPhotoNameStr(Context context, String str) {
        SharedPreferences.Editor edit = context.getSharedPreferences(COVER_PHOTO_PREF, 0).edit();
        edit.putString(COVER_PHOTO_NAME, str);
        edit.commit();
    }

    public static void writeEzModeEnabled(Context context, boolean z) {
        SharedPreferences.Editor edit = context.getSharedPreferences(ASUS_SHARE_DATA, 0).edit();
        edit.putBoolean(EZMODE_ENABLED, z);
        if (DEBUG) {
            Log.d(TAG, "EZMODE_ENABLED: " + z);
        }
        edit.commit();
    }

    public static void writeOriginBigDialpadSetting(Context context, boolean z) {
        SharedPreferences.Editor edit = context.getSharedPreferences(ASUS_SHARE_DATA, 0).edit();
        edit.putBoolean(BIGDIALPAD_SETTING, z);
        if (DEBUG) {
            Log.d(TAG, "BIGDIALPAD_SETTING: " + z);
        }
        edit.commit();
    }
}
