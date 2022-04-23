package com.android.contacts.activities;

import android.app.Activity;
import android.app.DialogFragment;
import android.app.FragmentTransaction;
import android.app.ProgressDialog;
import android.content.Intent;
import android.os.Bundle;
import android.view.MenuItem;
import com.android.contacts.a.b;
import com.android.contacts.calllog.i;
import com.android.contacts.calllog.j;
import com.android.contacts.interactions.a;
import com.android.contacts.util.PhoneCapabilityTester;
import java.util.ArrayList;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/android/contacts/activities/CallLogMultiPickerActivity.class */
public class CallLogMultiPickerActivity extends Activity implements a.AbstractC0041a {
    public static final int BlockListAddCallLogPicker = 1;
    public static final String CallLogPickerModeString = "CALL_LOG_PICKER_MODE";
    public static final int Delete_Call_Log_Picker = 0;
    private static final String TAG = "CallLogMultiPickerActivity";
    private int callLogPickerMode;
    private j mCallLogPickerFragment = null;
    private Bundle mSaveState = null;
    private ProgressDialog mProgressDelete = null;
    private boolean mIsCarMode = false;

    private void configureIntentExtra(Intent intent) {
        Bundle extras = intent.getExtras();
        if (extras != null) {
            this.callLogPickerMode = extras.getInt(CallLogPickerModeString, 0);
            this.mCallLogPickerFragment.f = false;
            return;
        }
        this.callLogPickerMode = 0;
    }

    public int getCallLogPickerMode() {
        return this.callLogPickerMode;
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.mIsCarMode = PhoneCapabilityTester.isCarMode(getApplicationContext());
        if (PhoneCapabilityTester.isUsingTwoPanes(this) || this.mIsCarMode) {
            setRequestedOrientation(-1);
        } else {
            setRequestedOrientation(1);
        }
        this.mCallLogPickerFragment = new j();
        configureIntentExtra(getIntent());
        FragmentTransaction beginTransaction = getFragmentManager().beginTransaction();
        beginTransaction.replace(16908290, this.mCallLogPickerFragment, "CallLogPickerFragment");
        beginTransaction.commit();
        if (bundle != null) {
            this.mSaveState = bundle;
        }
        if (PhoneCapabilityTester.IsSystemApp()) {
            b.a();
            b.a(18, (Activity) this, "Delete call log", true);
        }
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        this.mProgressDelete = null;
        this.mCallLogPickerFragment = null;
        super.onDestroy();
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        switch (menuItem.getItemId()) {
            case 16908332:
                finish();
                break;
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        this.mCallLogPickerFragment.f717b = this.mSaveState;
    }

    @Override // android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        boolean z = this.mCallLogPickerFragment.c;
        i iVar = this.mCallLogPickerFragment.e;
        if (iVar != null) {
            ArrayList<String> arrayList = new ArrayList<>();
            for (Map.Entry<Integer, Integer> entry : iVar.d.entrySet()) {
                Integer key = entry.getKey();
                if (entry.getValue().intValue() == 1) {
                    arrayList.add(key.toString());
                }
            }
            bundle.putStringArrayList("userselected", arrayList);
            bundle.putBoolean("isSelectAllChecked", z);
        }
    }

    @Override // android.app.Activity
    protected void onStart() {
        super.onStart();
        if (j.c() && this.mProgressDelete == null) {
            DialogFragment a2 = a.a();
            a2.show(getFragmentManager(), (String) null);
            a2.setCancelable(false);
        }
    }

    @Override // com.android.contacts.interactions.a.AbstractC0041a
    public void setProgressDialog(ProgressDialog progressDialog) {
        this.mProgressDelete = progressDialog;
        this.mCallLogPickerFragment.d = progressDialog;
    }
}
