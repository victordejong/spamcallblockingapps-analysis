package com.asus.updatesdk.utility;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import android.text.TextUtils;
/* loaded from: classes-dex2jar.jar:com/asus/updatesdk/utility/PreferenceUtils.class */
public class PreferenceUtils {
    public static final String KEY_IUD_JSON_FILE = "ud_sdk_iud_json_file";
    public static final String KEY_IUD_VERSION = "ud_sdk_iud_version";
    public static final String KEY_LANGUAGE_LOCALE = "ud_sdk_language_locale";
    public static final String KEY_MASTER_PACKAGE = "ud_sdk_master_package";
    public static final String KEY_MERGE_JSON_SUCCESS = "ud_sdk_merge_json_success";
    public static final String KEY_PLAY_CHECK_TIME = "ud_sdk_play_check_time";
    public static final String KEY_PLAY_JSON_FILE = "ud_sdk_play_json_file";
    public static final String KEY_REPORT_DAY = "ud_sdk_report_day";
    public static final String KEY_STRINGS_JSON_FILE = "ud_sdk_strings_json_file";
    public static final String KEY_STRINGS_VERSION = "ud_sdk_strings_version";

    /* renamed from: a  reason: collision with root package name */
    private static SharedPreferences f3182a;

    private static SharedPreferences a(Context context) {
        if (f3182a == null) {
            f3182a = PreferenceManager.getDefaultSharedPreferences(context);
        }
        return f3182a;
    }

    private static SharedPreferences a(Context context, String str) {
        return TextUtils.isEmpty(str) ? a(context) : context.getSharedPreferences(str, 0);
    }

    private static SharedPreferences.Editor b(Context context) {
        return a(context).edit();
    }

    private static SharedPreferences.Editor b(Context context, String str) {
        return a(context, str).edit();
    }

    public static boolean contains(Context context, String str) {
        return a(context).contains(str);
    }

    public static boolean contains(Context context, String str, String str2) {
        return a(context, str2).contains(str);
    }

    public static boolean getBoolean(Context context, String str, boolean z) {
        return a(context).getBoolean(str, z);
    }

    public static boolean getBoolean(Context context, String str, boolean z, String str2) {
        return a(context, str2).getBoolean(str, z);
    }

    public static int getInt(Context context, String str, int i) {
        return a(context).getInt(str, i);
    }

    public static int getInt(Context context, String str, int i, String str2) {
        return a(context, str2).getInt(str, i);
    }

    public static long getLong(Context context, String str, long j) {
        return a(context).getLong(str, j);
    }

    public static long getLong(Context context, String str, long j, String str2) {
        return a(context, str2).getLong(str, j);
    }

    public static String getString(Context context, String str, String str2) {
        return a(context).getString(str, str2);
    }

    public static String getString(Context context, String str, String str2, String str3) {
        return a(context, str3).getString(str, str2);
    }

    public static void putBoolean(Context context, String str, boolean z) {
        b(context).putBoolean(str, z).apply();
    }

    public static void putBoolean(Context context, String str, boolean z, String str2) {
        b(context, str2).putBoolean(str, z).apply();
    }

    public static void putInt(Context context, String str, int i) {
        b(context).putInt(str, i).apply();
    }

    public static void putInt(Context context, String str, int i, String str2) {
        b(context, str2).putInt(str, i).apply();
    }

    public static void putLong(Context context, String str, long j) {
        b(context).putLong(str, j).apply();
    }

    public static void putLong(Context context, String str, long j, String str2) {
        b(context, str2).putLong(str, j).apply();
    }

    public static void putString(Context context, String str, String str2) {
        b(context).putString(str, str2).apply();
    }

    public static void putString(Context context, String str, String str2, String str3) {
        b(context, str3).putString(str, str2).apply();
    }

    public static void remove(Context context, String str) {
        b(context).remove(str).apply();
    }

    public static void remove(Context context, String str, String str2) {
        b(context, str2).remove(str).apply();
    }
}
