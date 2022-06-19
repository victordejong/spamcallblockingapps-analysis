package com.tenor.android.core.util;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.tenor.android.core.constant.StringConstant;
/* loaded from: classes3-dex2jar.jar:com/tenor/android/core/util/AbstractSessionUtils.class */
public abstract class AbstractSessionUtils {
    private static final String DEVICE_PREF = "device_preferences";
    private static final String KEY_ANDROID_ADVERTISE_ID = "KEY_ANDROID_ADVERTISE_ID";
    private static final String KEY_ANON_ID = "KEY_ANON_ID";
    private static final String KEY_KEYBOARD_ID = "KEY_KEYBOARD_ID";

    public static String getAndroidAdvertiseId(Context context) {
        return getPreferences(context).getString(KEY_ANDROID_ADVERTISE_ID, "");
    }

    public static String getAnonId(Context context) {
        synchronized (AbstractSessionUtils.class) {
            try {
                String string = getPreferences(context).getString(KEY_ANON_ID, "");
                if (!TextUtils.isEmpty(string)) {
                    return string;
                }
                return migrateKeyboardId(context);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static SharedPreferences getPreferences(Context context) {
        return context.getSharedPreferences(DEVICE_PREF, 0);
    }

    public static boolean hasAnonId(Context context) {
        return !TextUtils.isEmpty(getAnonId(context));
    }

    private static String migrateKeyboardId(Context context) {
        synchronized (AbstractSessionUtils.class) {
            try {
                if (!getPreferences(context).contains(KEY_KEYBOARD_ID)) {
                    return "";
                }
                String string = getPreferences(context).getString(KEY_KEYBOARD_ID, "");
                setAnonId(context, string);
                getPreferences(context).edit().remove(KEY_KEYBOARD_ID).apply();
                return string;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void remove(Context context, String... strArr) {
        SharedPreferences.Editor edit = getPreferences(context).edit();
        for (String str : strArr) {
            edit.remove(str);
        }
        edit.apply();
    }

    public static void setAndroidAdvertiseId(Context context, String str) {
        getPreferences(context).edit().putString(KEY_ANDROID_ADVERTISE_ID, StringConstant.getOrEmpty(str)).apply();
    }

    public static void setAnonId(Context context, String str) {
        synchronized (AbstractSessionUtils.class) {
            try {
                if (TextUtils.isEmpty(str)) {
                    return;
                }
                getPreferences(context).edit().putString(KEY_ANON_ID, str).apply();
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
