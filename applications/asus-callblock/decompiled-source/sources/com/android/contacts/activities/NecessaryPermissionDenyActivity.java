package com.android.contacts.activities;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.text.Html;
import android.util.Log;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.android.contacts.interactions.b;
import com.android.contacts.model.a;
import com.android.contacts.util.PermissionsUtil;
import com.android.contacts.util.PhoneCapabilityTester;
/* loaded from: classes-dex2jar.jar:com/android/contacts/activities/NecessaryPermissionDenyActivity.class */
public class NecessaryPermissionDenyActivity extends RequestPermissionsActivityBase implements b.a {
    private static final String IMPORT_VCARD_DATA = ".vcf";
    private static final String KEY_CHECK_RESTART = "check_restart";
    private static final String TAG = NecessaryPermissionDenyActivity.class.getSimpleName();
    protected static final String[] REQUIRED_PERMISSIONS = {PermissionsUtil.CONTACTS, "android.permission.READ_CALL_LOG"};
    protected static final String[] REQUIRED_PERMISSIONS_WITHOUT_PHONE = {PermissionsUtil.CONTACTS};
    private boolean isNeedCheckRestartApp = false;
    protected RelativeLayout mLayout = null;
    private boolean isPhone = false;

    public static boolean startPermissionActivity(Context context) {
        return startPermissionActivity(context, null);
    }

    public static boolean startPermissionActivity(Context context, Intent intent) {
        boolean z = false;
        if (Build.VERSION.SDK_INT >= 23) {
            boolean hasPermissions = !PhoneCapabilityTester.isPhone(context) ? hasPermissions(context, REQUIRED_PERMISSIONS_WITHOUT_PHONE) : hasPermissions(context, REQUIRED_PERMISSIONS);
            if (!hasPermissions && (context instanceof Activity)) {
                Log.i(TAG, "NecessaryPermissionDenyActivity activity start: " + context.toString());
                Activity activity = (Activity) context;
                Intent intent2 = new Intent(activity, NecessaryPermissionDenyActivity.class);
                if (intent == null) {
                    intent2.putExtra(RequestPermissionsActivityBase.PREVIOUS_ACTIVITY_INTENT, activity.getIntent());
                } else {
                    intent2.putExtra(RequestPermissionsActivityBase.PREVIOUS_ACTIVITY_INTENT, intent);
                }
                intent2.putExtra("need_request_permission", false);
                intent2.setFlags(65536);
                activity.startActivity(intent2);
                activity.finish();
            }
            z = false;
            if (!hasPermissions) {
                z = true;
            }
        }
        return z;
    }

    @Override // com.android.contacts.activities.RequestPermissionsActivityBase
    protected String[] getDesiredPermissions() {
        return !this.isPhone ? REQUIRED_PERMISSIONS_WITHOUT_PHONE : REQUIRED_PERMISSIONS;
    }

    @Override // com.android.contacts.interactions.b.a
    public Intent getPreviousIntent() {
        return this.mPreviousActivityIntent;
    }

    @Override // com.android.contacts.activities.RequestPermissionsActivityBase
    protected String[] getRequiredPermissions() {
        return !this.isPhone ? REQUIRED_PERMISSIONS_WITHOUT_PHONE : REQUIRED_PERMISSIONS;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.activities.RequestPermissionsActivityBase, android.app.Activity
    public void onCreate(Bundle bundle) {
        String string;
        this.isPhone = PhoneCapabilityTester.isPhone(this);
        super.onCreate(bundle);
        if (!PhoneCapabilityTester.isUsingTwoPanes(this)) {
            setRequestedOrientation(1);
        } else {
            setRequestedOrientation(-1);
        }
        setContentView(2131427608);
        getActionBar().hide();
        this.mLayout = (RelativeLayout) findViewById(2131297233);
        TextView textView = (TextView) findViewById(2131297234);
        TextView textView2 = (TextView) findViewById(2131297232);
        getPermissionGroupName(PermissionsUtil.CONTACTS);
        if (this.isPhone) {
            string = getResources().getString(2131755872, "<b>" + getString(2131756492) + "</b>", "<b>" + getPermissionGroupName(PermissionsUtil.CONTACTS) + "</b>", "<b>" + getPermissionGroupName(PermissionsUtil.PHONE) + "</b>");
            textView.setText(2131755876);
        } else {
            string = getResources().getString(2131755871, "<b>" + getString(2131756492) + "</b>", "<b>" + getPermissionGroupName(PermissionsUtil.CONTACTS) + "</b>");
            textView.setText(2131755875);
        }
        textView2.setText(Html.fromHtml(string));
    }

    public void onPermissionButtonClick(View view) {
        this.isNeedCheckRestartApp = true;
        if (!hasPermissions(this, getRequiredPermissions())) {
            RequestNecessaryPermissionsActivity.startPermissionActivity(this, this.mPreviousActivityIntent, getRequiredPermissions());
            return;
        }
        PhoneCapabilityTester.IsSystemAppChecking(getApplicationContext());
        a.a(this);
        a.a();
        this.mPreviousActivityIntent.setFlags(65536);
        startActivity(this.mPreviousActivityIntent);
        finish();
        overridePendingTransition(0, 0);
    }

    @Override // com.android.contacts.activities.RequestPermissionsActivityBase, android.app.Activity
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
    }

    @Override // android.app.Activity
    protected void onRestoreInstanceState(Bundle bundle) {
        super.onRestoreInstanceState(bundle);
        if (bundle != null) {
            this.isNeedCheckRestartApp = bundle.getBoolean(KEY_CHECK_RESTART);
        }
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        if (!this.isNeedCheckRestartApp) {
            return;
        }
        if (hasPermissions(this, getRequiredPermissions())) {
            Log.d(TAG, "primary permission all grant");
            PhoneCapabilityTester.IsSystemAppChecking(getApplicationContext());
            a.a(this);
            a.a();
            boolean z = true;
            if ("android.intent.action.VIEW".equals(this.mPreviousActivityIntent.getAction())) {
                z = true;
                if (this.mPreviousActivityIntent != null) {
                    z = true;
                    if (this.mPreviousActivityIntent.getDataString() != null) {
                        z = true;
                        if (this.mPreviousActivityIntent.getDataString().endsWith(IMPORT_VCARD_DATA)) {
                            z = true;
                            if (!PermissionsUtil.hasPermission(this, "android.permission.READ_EXTERNAL_STORAGE")) {
                                Log.d(TAG, "User import vcard but not grant storage permission.");
                                z = false;
                            }
                        }
                    }
                }
            }
            if (!z) {
                finish();
                return;
            }
            startActivity(this.mPreviousActivityIntent);
            finish();
            overridePendingTransition(0, 0);
            return;
        }
        startPermissionActivity(this, getPreviousIntent());
    }

    @Override // android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean(KEY_CHECK_RESTART, this.isNeedCheckRestartApp);
    }

    @Override // com.android.contacts.interactions.b.a
    public void setNeedToRestart(boolean z) {
        this.isNeedCheckRestartApp = z;
    }
}
