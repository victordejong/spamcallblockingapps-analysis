package com.android.contacts.util;

import android.os.Build;
import android.telecom.PhoneAccountHandle;
import android.telecom.TelecomManager;
import android.text.TextUtils;
import android.util.Log;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/android/contacts/util/TelecomManagerCompat.class */
public class TelecomManagerCompat {
    private static final String TAG = "TelecomManagerCompat";
    public static final String TELECOM_MANAGER_CLASS = "android.telecom.TelecomManager";

    public static List<PhoneAccountHandle> getCallCapablePhoneAccounts(TelecomManager telecomManager) {
        return (telecomManager == null || (!CompatUtils.isMarshmallowCompatible() && !CompatUtils.isMethodAvailable(TELECOM_MANAGER_CLASS, "getCallCapablePhoneAccounts", new Class[0]))) ? new ArrayList<>() : telecomManager.getCallCapablePhoneAccounts();
    }

    public static String getDefaultDialerPackage(TelecomManager telecomManager) {
        String str;
        if (telecomManager == null || !CompatUtils.isDefaultDialerCompatible()) {
            str = null;
        } else {
            if (Build.TYPE.equals("userdebug")) {
                Log.d(TAG, "DefaultDialerPackage: " + telecomManager.getDefaultDialerPackage());
            }
            str = telecomManager.getDefaultDialerPackage();
        }
        return str;
    }

    public static String getSystemDialerPackage(TelecomManager telecomManager) {
        String str;
        if (telecomManager == null || !CompatUtils.isDefaultDialerCompatible()) {
            str = null;
        } else {
            if (Build.TYPE.equals("userdebug")) {
                Log.d(TAG, "SystemDialerPackage: " + telecomManager.getDefaultDialerPackage());
            }
            str = telecomManager.getSystemDialerPackage();
        }
        return str;
    }

    public static boolean handleMmi(TelecomManager telecomManager, String str, PhoneAccountHandle phoneAccountHandle) {
        boolean z = false;
        if (telecomManager != null) {
            if (TextUtils.isEmpty(str)) {
                z = false;
            } else if (CompatUtils.isMarshmallowCompatible()) {
                z = telecomManager.handleMmi(str, phoneAccountHandle);
            } else {
                Object invokeMethod = CompatUtils.invokeMethod(telecomManager, "handleMmi", new Class[]{PhoneAccountHandle.class, String.class}, new Object[]{phoneAccountHandle, str});
                z = invokeMethod != null ? ((Boolean) invokeMethod).booleanValue() : telecomManager.handleMmi(str);
            }
        }
        return z;
    }
}
