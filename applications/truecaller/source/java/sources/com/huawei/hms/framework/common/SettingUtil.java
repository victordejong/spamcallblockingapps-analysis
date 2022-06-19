package com.huawei.hms.framework.common;

import android.content.ContentResolver;
import android.provider.Settings;
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/framework/common/SettingUtil.class */
public class SettingUtil {
    private static final String TAG = "SettingUtil";

    public static int getSecureInt(ContentResolver contentResolver, String str, int i) {
        try {
            i = Settings.Secure.getInt(contentResolver, str, i);
        } catch (RuntimeException e) {
            Logger.m38046e(TAG, "Settings Secure getInt throwFromSystemServer:", e);
        }
        return i;
    }

    public static int getSystemInt(ContentResolver contentResolver, String str, int i) {
        try {
            i = Settings.System.getInt(contentResolver, str, i);
        } catch (RuntimeException e) {
            Logger.m38046e(TAG, "Settings System getInt throwFromSystemServer:", e);
        }
        return i;
    }
}
