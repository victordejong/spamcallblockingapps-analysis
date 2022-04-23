package com.android.contacts.util;

import android.app.AppOpsManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Process;
import android.support.v4.content.c;
/* loaded from: classes-dex2jar.jar:com/android/contacts/util/PermissionsUtil.class */
public class PermissionsUtil {
    public static final String CONTACTS = "android.permission.READ_CONTACTS";
    public static final String LOCATION = "android.permission.ACCESS_FINE_LOCATION";
    public static final String PHONE = "android.permission.CALL_PHONE";
    public static final String READ_SMS = "android.permission.READ_SMS";

    public static boolean hasAppOp(Context context, String str) {
        return ((AppOpsManager) context.getSystemService("appops")).checkOpNoThrow(str, Process.myUid(), context.getPackageName()) == 0;
    }

    public static boolean hasContactsPermissions(Context context) {
        return hasPermission(context, CONTACTS);
    }

    public static boolean hasLocationPermissions(Context context) {
        return hasPermission(context, LOCATION);
    }

    public static boolean hasPermission(Context context, String str) {
        boolean z;
        if (!CompatUtils.isMarshmallowCompatible() || context == null) {
            z = true;
            if (CompatUtils.isMarshmallowCompatible()) {
                z = true;
                if (context == null) {
                    z = false;
                }
            }
        } else {
            z = context.checkSelfPermission(str) == 0;
        }
        return z;
    }

    public static boolean hasPhonePermissions(Context context) {
        return hasPermission(context, PHONE);
    }

    public static boolean hasReadSmsPermissions(Context context) {
        return hasPermission(context, READ_SMS);
    }

    public static void notifyPermissionGranted(Context context, String str) {
        c.a(context).a(new Intent(str));
    }

    public static void registerPermissionReceiver(Context context, BroadcastReceiver broadcastReceiver, String str) {
        c.a(context).a(broadcastReceiver, new IntentFilter(str));
    }

    public static void unregisterPermissionReceiver(Context context, BroadcastReceiver broadcastReceiver) {
        c.a(context).a(broadcastReceiver);
    }
}
