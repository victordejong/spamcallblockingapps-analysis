package com.android.contacts.activities;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.SystemClock;
import android.os.Trace;
import android.util.Log;
import android.widget.Toast;
import com.android.contacts.interactions.b;
import com.android.contacts.interactions.c;
import com.android.contacts.model.a;
import com.android.contacts.util.PermissionsUtil;
import com.android.contacts.util.PhoneCapabilityTester;
import com.asus.updatesdk.BuildConfig;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:com/android/contacts/activities/RequestPermissionsActivityBase.class */
public abstract class RequestPermissionsActivityBase extends Activity {
    protected static final String NEED_REQUEST_PERMISSION = "need_request_permission";
    private static final int PERMISSIONS_REQUEST_ALL_PERMISSIONS = 1;
    public static final String PREVIOUS_ACTIVITY_INTENT = "previous_intent";
    private static final String TAG = RequestPermissionsActivityBase.class.getSimpleName();
    private final long AUTOMATED_RESULT_THRESHOLD_MILLLIS = 400;
    protected Intent mPreviousActivityIntent;
    private long mRequestTimeMillis;

    /* JADX INFO: Access modifiers changed from: protected */
    public static boolean hasPermissions(Context context, String[] strArr) {
        boolean z = false;
        Trace.beginSection("hasPermission");
        try {
            int length = strArr.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    Trace.endSection();
                    z = true;
                    break;
                } else if (context.checkSelfPermission(strArr[i]) != 0) {
                    break;
                } else {
                    i++;
                }
            }
        } catch (Exception e) {
            Log.d(TAG, "hasPermissions exception:" + e.toString());
        } finally {
            Trace.endSection();
        }
        return z;
    }

    private boolean isPermissionRequired(String str) {
        return Arrays.asList(getRequiredPermissions()).contains(str);
    }

    private void requestPermissions() {
        String[] desiredPermissions;
        Trace.beginSection("requestPermissions");
        try {
            ArrayList arrayList = new ArrayList();
            for (String str : getDesiredPermissions()) {
                if (checkSelfPermission(str) != 0) {
                    arrayList.add(str);
                }
            }
            Log.d(TAG, "unsatisfiedPermissions.size():" + arrayList.size());
            if (arrayList.size() == 0) {
                Log.d(TAG, "Request permission activity was called even though all permissions are satisfied.");
                finish();
            } else {
                this.mRequestTimeMillis = SystemClock.elapsedRealtime();
                requestPermissions((String[]) arrayList.toArray(new String[arrayList.size()]), 1);
            }
        } finally {
            Trace.endSection();
        }
    }

    protected static boolean startPermissionActivity(Context context, String[] strArr, Class<?> cls) {
        boolean z;
        if (!hasPermissions(context, strArr)) {
            if (context instanceof Activity) {
                Log.d(TAG, "REQUIRED_PERMISSIONS not granted -> show dialog");
                Intent intent = new Intent(context, cls);
                intent.putExtra(PREVIOUS_ACTIVITY_INTENT, ((Activity) context).getIntent());
                ((Activity) context).startActivity(intent);
                ((Activity) context).finish();
            } else {
                Log.d(TAG, "Not Activity, maybe call From service or intent");
            }
            z = true;
        } else {
            a.a(context);
            PhoneCapabilityTester.IsSystemAppChecking(context);
            z = false;
        }
        return z;
    }

    protected abstract String[] getDesiredPermissions();

    /* JADX INFO: Access modifiers changed from: protected */
    public String getPermissionGroupName(String str) {
        String str2;
        PackageManager packageManager = getPackageManager();
        try {
            str2 = getString(packageManager.getPermissionGroupInfo(packageManager.getPermissionInfo(str, 0).group, 0).labelRes);
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            str2 = BuildConfig.FLAVOR;
        }
        return str2;
    }

    protected abstract String[] getRequiredPermissions();

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean isAllGranted(String[] strArr, int[] iArr) {
        boolean z = false;
        int i = 0;
        while (true) {
            if (i < strArr.length) {
                if (iArr[i] != 0 && isPermissionRequired(strArr[i])) {
                    break;
                }
                i++;
            } else {
                z = true;
                break;
            }
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        boolean z;
        super.onCreate(bundle);
        if (getIntent() == null || getIntent().getExtras() == null) {
            z = true;
        } else {
            this.mPreviousActivityIntent = (Intent) getIntent().getExtras().get(PREVIOUS_ACTIVITY_INTENT);
            z = Boolean.valueOf(getIntent().getExtras().getBoolean(NEED_REQUEST_PERMISSION, true)).booleanValue();
        }
        if (bundle == null && z) {
            requestPermissions();
        }
    }

    @Override // android.app.Activity
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        if (strArr == null || strArr.length <= 0 || !isAllGranted(strArr, iArr)) {
            Toast.makeText(this, 2131755856, 0).show();
            finish();
            return;
        }
        this.mPreviousActivityIntent.setFlags(65536);
        startActivity(this.mPreviousActivityIntent);
        finish();
        overridePendingTransition(0, 0);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onRequestPermissionsResultDeny(String[] strArr, int[] iArr) {
        Iterator it;
        long elapsedRealtime = SystemClock.elapsedRealtime();
        Log.i(TAG, "(currentTimeMillis - mRequestTimeMillis) = " + (elapsedRealtime - this.mRequestTimeMillis));
        boolean z = elapsedRealtime - this.mRequestTimeMillis < 400;
        HashSet hashSet = new HashSet();
        boolean z2 = false;
        for (int i = 0; i < strArr.length; i++) {
            String str = strArr[i];
            if (iArr[i] == -1) {
                hashSet.add(getPermissionGroupName(str));
            }
            if (PermissionsUtil.CONTACTS.equals(str)) {
                z2 = true;
            } else {
                z2 = z2;
                if (PhoneCapabilityTester.isPhone(this)) {
                    z2 = z2;
                    if ("android.permission.READ_CALL_LOG".equals(str)) {
                        z2 = true;
                    }
                }
            }
        }
        if (z2) {
            Log.i(TAG, "Necessary deny for " + Arrays.toString(strArr));
            if (z) {
                b.a(getFragmentManager());
            } else {
                NecessaryPermissionDenyActivity.startPermissionActivity(this, this.mPreviousActivityIntent);
            }
        } else if (z) {
            Log.i(TAG, "Never ask again is checked for " + Arrays.toString(strArr));
            String str2 = String.format(getString(2131755942), getString(2131756492)) + "<br>";
            while (hashSet.iterator().hasNext()) {
                str2 = str2 + "<br><b> - " + ((String) it.next()) + "</b>";
            }
            c.a(getFragmentManager(), str2 + "<br><br>" + getString(2131755943));
        } else {
            Log.i(TAG, "Deny for " + Arrays.toString(strArr));
            Toast.makeText(this, 2131755856, 0).show();
            finish();
        }
    }
}
