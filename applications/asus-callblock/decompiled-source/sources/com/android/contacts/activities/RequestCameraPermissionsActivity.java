package com.android.contacts.activities;

import android.app.Activity;
import android.app.Fragment;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.util.Log;
import android.widget.Toast;
import com.android.contacts.editor.ContactEditorFragment;
import com.android.contacts.group.GroupDetailFragment;
import com.android.contacts.model.a;
import com.android.contacts.util.CoverUtils;
import com.android.contacts.util.ImplicitIntentsUtil;
import com.android.contacts.util.PermissionsUtil;
/* loaded from: classes-dex2jar.jar:com/android/contacts/activities/RequestCameraPermissionsActivity.class */
public class RequestCameraPermissionsActivity extends RequestPermissionsActivityBase {
    public static final int REQ_FROM_CONTACT_PHOTO_AND_GROUP_COVER = 1001;
    public static final int REQ_FROM_DETAIL_COVER = 1;
    public static final int REQ_PRIVATE_CONTACT = 2;
    private static Fragment fragment;
    private static final String TAG = RequestCameraPermissionsActivity.class.getSimpleName();
    private static final String[] REQUIRED_PERMISSIONS = {PermissionsUtil.CONTACTS, "android.permission.CAMERA"};
    private static int req = 0;

    /* renamed from: a  reason: collision with root package name */
    private static Activity f525a = null;
    private static Intent intentPhoto = null;

    public static boolean startPermissionActivity(Context context, Intent intent, int i, Fragment fragment2) {
        boolean z;
        if (Build.VERSION.SDK_INT >= 23) {
            req = i;
            intentPhoto = intent;
            fragment = fragment2;
            z = startPermissionActivity(context, REQUIRED_PERMISSIONS, RequestCameraPermissionsActivity.class);
        } else {
            z = false;
        }
        return z;
    }

    protected static boolean startPermissionActivity(Context context, String[] strArr, Class<?> cls) {
        boolean z;
        if (!hasPermissions(context, strArr)) {
            if (context instanceof Activity) {
                Log.d(TAG, "REQUIRED_PERMISSIONS not granted -> show dialog");
                Intent intent = new Intent(context, cls);
                intent.putExtra(RequestPermissionsActivityBase.PREVIOUS_ACTIVITY_INTENT, ((Activity) context).getIntent());
                ((Activity) context).startActivity(intent);
                f525a = (Activity) context;
            } else {
                Log.d(TAG, "Not Activity, maybe call From service or intent");
            }
            z = true;
        } else {
            fragment = null;
            a.a(context);
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
            onRequestPermissionsResultDeny(strArr, iArr);
            if (f525a instanceof PhotoSelectionActivity) {
                f525a.finish();
            }
            fragment = null;
            f525a = null;
            intentPhoto = null;
            return;
        }
        this.mPreviousActivityIntent.setFlags(65536);
        switch (req) {
            case 1:
                if (f525a != null) {
                    CoverUtils.chooseFromCameraIntent(f525a);
                    break;
                }
                break;
            case 2:
                if (f525a != null) {
                    ImplicitIntentsUtil.startActivityInApp(f525a, intentPhoto);
                    f525a.finish();
                    break;
                }
                break;
            case REQ_FROM_CONTACT_PHOTO_AND_GROUP_COVER /* 1001 */:
                if (getPackageManager().resolveActivity(intentPhoto, 65536) != null) {
                    if (!(fragment instanceof ContactEditorFragment)) {
                        if (!(fragment instanceof GroupDetailFragment)) {
                            f525a.startActivityForResult(intentPhoto, req);
                            f525a.finish();
                            break;
                        } else {
                            GroupDetailFragment groupDetailFragment = (GroupDetailFragment) fragment;
                            fragment = groupDetailFragment;
                            groupDetailFragment.startActivityForResult(intentPhoto, req);
                            break;
                        }
                    } else {
                        ContactEditorFragment contactEditorFragment = (ContactEditorFragment) fragment;
                        fragment = contactEditorFragment;
                        contactEditorFragment.startActivityForResult(intentPhoto, req);
                        break;
                    }
                } else {
                    Toast.makeText(this, 2131755026, 0).show();
                    break;
                }
        }
        fragment = null;
        f525a = null;
        intentPhoto = null;
        finish();
        overridePendingTransition(0, 0);
    }
}
