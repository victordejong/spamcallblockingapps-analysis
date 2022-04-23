package com.privacystar.core.util;

import android.content.Context;
import android.os.Build;
import com.privacystar.core.application.AppManagerImpl;
import com.privacystar.core.p011ui.intro.IntroManagerImpl;
import java.util.HashSet;
import javax.annotation.Nonnull;
import timber.log.Timber;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/util/PermissionUtils.class */
public final class PermissionUtils {
    public static final int EULA_PERMISSION_REQUEST = 98769;
    public static final String INTENT_EXTRA_REQUEST_ID = "requestId";
    public static final int LOCATION_PERMISSION_REQUEST = 98768;
    public static final int RESUME_PERMISSION_REQUEST = 98767;
    public static final int UI_PERMISSION_REQUEST_NO_UPDATE = 98765;
    public static final int UI_PERMISSION_REQUEST_UPDATE = 98766;
    private static final String[] generalPermissions = {"android.permission.READ_CONTACTS", "android.permission.READ_CALL_LOG", "android.permission.READ_PHONE_STATE", "android.permission.ANSWER_PHONE_CALLS", "android.permission.CALL_PHONE"};
    private static final String[] deviceNumberPermissions = {"android.permission.READ_PHONE_STATE"};
    private static final String[] locationPermissions = {"android.permission.ACCESS_FINE_LOCATION"};
    private static final String[] analyticsPermissions = {"android.permission.READ_PHONE_STATE"};

    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/util/PermissionUtils$PermissionRequestResult.class */
    public enum PermissionRequestResult {
        GRANTED,
        DENIED,
        NEVER_ASK_AGAIN,
        INVALID
    }

    public static boolean checkOwnedPermissions(Context context, String... strArr) {
        return getUnownedPermissions(context, strArr).length == 0;
    }

    public static boolean checkPermission(Context context, String str) {
        boolean z = true;
        if (Build.VERSION.SDK_INT < 23) {
            return true;
        }
        if (context.checkSelfPermission(str) != 0) {
            z = false;
        }
        return z;
    }

    public static String[] getAnalyticsPermissions() {
        return analyticsPermissions;
    }

    public static String[] getDeviceNumberPermissions() {
        return deviceNumberPermissions;
    }

    @Nonnull
    public static String[] getGeneralPermissions() {
        return generalPermissions;
    }

    public static String[] getLocationPermissions() {
        return locationPermissions;
    }

    public static String[] getUnownedPermissions(Context context, String... strArr) {
        HashSet hashSet = new HashSet();
        for (String str : strArr) {
            if (((!str.equals("android.permission.ANSWER_PHONE_CALLS") && !str.equals("android.permission.CALL_PHONE")) || Build.VERSION.SDK_INT >= 26) && !checkPermission(context, str)) {
                hashSet.add(str);
            }
        }
        return (String[]) hashSet.toArray(new String[hashSet.size()]);
    }

    public static boolean hasCallLogPermission(Context context) {
        if (Build.VERSION.SDK_INT >= 23) {
            return checkPermission(context, "android.permission.READ_CALL_LOG");
        }
        return true;
    }

    public static boolean hasContactPermission(Context context) {
        if (Build.VERSION.SDK_INT >= 23) {
            return checkPermission(context, "android.permission.READ_CONTACTS");
        }
        return true;
    }

    public static boolean hasDeviceNumberPermissions(Context context) {
        return Build.VERSION.SDK_INT < 23 || getUnownedPermissions(context, getDeviceNumberPermissions()).length <= getDeviceNumberPermissions().length - 1;
    }

    public static boolean hasGeneralPermissions(Context context) {
        return Build.VERSION.SDK_INT < 23 || getUnownedPermissions(context, getGeneralPermissions()).length <= 0;
    }

    public static boolean hasMinimumPermissions(Context context) {
        if (Build.VERSION.SDK_INT < 23) {
            return true;
        }
        String[] unownedPermissions = getUnownedPermissions(context, IntroManagerImpl.INSTANCE.minPermissionsRequired());
        Timber.m37d("unknownedPermissions length = %d", Integer.valueOf(unownedPermissions.length));
        return unownedPermissions.length <= 0;
    }

    public static boolean hasMinimumPermissionsForRegistration(Context context) {
        return Build.VERSION.SDK_INT < 23 || getUnownedPermissions(context, AppManagerImpl.INSTANCE.permissionsRequiredForRegistration()).length <= 0;
    }

    public static boolean hasPhoneStatePermission(Context context) {
        if (Build.VERSION.SDK_INT >= 23) {
            return checkPermission(context, "android.permission.READ_PHONE_STATE");
        }
        return true;
    }
}
