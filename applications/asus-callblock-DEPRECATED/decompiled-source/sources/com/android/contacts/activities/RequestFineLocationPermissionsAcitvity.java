package com.android.contacts.activities;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.util.Log;
import com.android.contacts.util.PermissionsUtil;
/* loaded from: classes-dex2jar.jar:com/android/contacts/activities/RequestFineLocationPermissionsAcitvity.class */
public class RequestFineLocationPermissionsAcitvity extends RequestPermissionsActivityBase {
    private static final String TAG = RequestFineLocationPermissionsAcitvity.class.getSimpleName();
    private static boolean bFinishWhileUserDeny = false;
    private static Activity mPreviousAcitivity = null;
    private static final String[] REQUIRED_PERMISSIONS = {PermissionsUtil.LOCATION};

    public static boolean startPermissionActivity(Context context, boolean z) {
        boolean z2;
        if (Build.VERSION.SDK_INT >= 23) {
            bFinishWhileUserDeny = z;
            z2 = startPermissionActivity(context, REQUIRED_PERMISSIONS, RequestFineLocationPermissionsAcitvity.class);
        } else {
            z2 = false;
        }
        return z2;
    }

    protected static boolean startPermissionActivity(Context context, String[] strArr, Class<?> cls) {
        boolean z;
        if (!hasPermissions(context, strArr)) {
            if (context instanceof Activity) {
                Log.d(TAG, "REQUIRED_PERMISSIONS not granted -> show dialog");
                Intent intent = new Intent(context, cls);
                intent.putExtra(RequestPermissionsActivityBase.PREVIOUS_ACTIVITY_INTENT, ((Activity) context).getIntent());
                ((Activity) context).startActivity(intent);
                mPreviousAcitivity = (Activity) context;
            } else {
                Log.d(TAG, "Not Activity, maybe call From service or intent");
            }
            z = true;
        } else {
            z = false;
        }
        return z;
    }

    @Override // com.android.contacts.activities.RequestPermissionsActivityBase
    protected String[] getDesiredPermissions() {
        return REQUIRED_PERMISSIONS;
    }

    @Override // com.android.contacts.activities.RequestPermissionsActivityBase
    protected String[] getRequiredPermissions() {
        return REQUIRED_PERMISSIONS;
    }

    @Override // com.android.contacts.activities.RequestPermissionsActivityBase, android.app.Activity
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        if (strArr == null || strArr.length <= 0 || !isAllGranted(strArr, iArr)) {
            if (bFinishWhileUserDeny && mPreviousAcitivity != null) {
                mPreviousAcitivity.finish();
            }
            onRequestPermissionsResultDeny(strArr, iArr);
        } else {
            this.mPreviousActivityIntent.setFlags(65536);
            finish();
            overridePendingTransition(0, 0);
        }
        mPreviousAcitivity = null;
    }
}
