package com.telguarder.features.userConsentHandling;

import androidx.core.app.ActivityCompat;
import permissions.dispatcher.PermissionUtils;
/* loaded from: classes2-dex2jar.jar:com/telguarder/features/userConsentHandling/NumberLookupConsentActivityPermissionsDispatcher.class */
final class NumberLookupConsentActivityPermissionsDispatcher {
    private static final String[] PERMISSION_STARTNEXTACTIVITY = {"android.permission.READ_PHONE_STATE", "android.permission.READ_CALL_LOG", "android.permission.READ_CONTACTS", "android.permission.ACCESS_COARSE_LOCATION", "android.permission.ANSWER_PHONE_CALLS"};
    private static final int REQUEST_STARTNEXTACTIVITY = 2;

    private NumberLookupConsentActivityPermissionsDispatcher() {
    }

    public static void onRequestPermissionsResult(NumberLookupConsentActivity numberLookupConsentActivity, int i, int[] iArr) {
        if (i != 2) {
            return;
        }
        if (PermissionUtils.verifyPermissions(iArr)) {
            numberLookupConsentActivity.startNextActivity();
        } else {
            numberLookupConsentActivity.showDeniedForPermissions();
        }
    }

    public static void startNextActivityWithPermissionCheck(NumberLookupConsentActivity numberLookupConsentActivity) {
        String[] strArr = PERMISSION_STARTNEXTACTIVITY;
        if (PermissionUtils.hasSelfPermissions(numberLookupConsentActivity, strArr)) {
            numberLookupConsentActivity.startNextActivity();
        } else {
            ActivityCompat.requestPermissions(numberLookupConsentActivity, strArr, 2);
        }
    }
}
