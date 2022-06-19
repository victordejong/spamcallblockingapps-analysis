package com.telguarder.features.main;

import android.content.Intent;
import android.net.Uri;
import android.provider.Settings;
import androidx.core.app.ActivityCompat;
import permissions.dispatcher.PermissionUtils;
/* loaded from: classes2-dex2jar.jar:com/telguarder/features/main/MainActivityPermissionsDispatcher.class */
public final class MainActivityPermissionsDispatcher {
    private static final String[] PERMISSION_INITCONTENT = {"android.permission.READ_PHONE_STATE", "android.permission.READ_CALL_LOG", "android.permission.READ_CONTACTS", "android.permission.ACCESS_COARSE_LOCATION", "android.permission.ANSWER_PHONE_CALLS", "android.permission.CALL_PHONE"};
    private static final String[] PERMISSION_SYSTEMALERTWINDOW = {"android.permission.SYSTEM_ALERT_WINDOW"};
    private static final int REQUEST_INITCONTENT = 0;
    private static final int REQUEST_SYSTEMALERTWINDOW = 1;

    private MainActivityPermissionsDispatcher() {
    }

    public static void initContentWithPermissionCheck(MainActivity mainActivity) {
        String[] strArr = PERMISSION_INITCONTENT;
        if (PermissionUtils.hasSelfPermissions(mainActivity, strArr)) {
            mainActivity.initContent();
        } else {
            ActivityCompat.requestPermissions(mainActivity, strArr, 0);
        }
    }

    public static void onActivityResult(MainActivity mainActivity, int i) {
        if (i != 1) {
            return;
        }
        if (!PermissionUtils.hasSelfPermissions(mainActivity, PERMISSION_SYSTEMALERTWINDOW) && !Settings.canDrawOverlays(mainActivity)) {
            return;
        }
        mainActivity.systemAlertWindow();
    }

    public static void onRequestPermissionsResult(MainActivity mainActivity, int i, int[] iArr) {
        if (i == 0 && PermissionUtils.verifyPermissions(iArr)) {
            mainActivity.initContent();
        }
    }

    public static void systemAlertWindowWithPermissionCheck(MainActivity mainActivity) {
        if (PermissionUtils.hasSelfPermissions(mainActivity, PERMISSION_SYSTEMALERTWINDOW) || Settings.canDrawOverlays(mainActivity)) {
            mainActivity.systemAlertWindow();
            return;
        }
        mainActivity.startActivityForResult(new Intent("android.settings.action.MANAGE_OVERLAY_PERMISSION", Uri.parse("package:" + mainActivity.getPackageName())), 1);
    }
}
