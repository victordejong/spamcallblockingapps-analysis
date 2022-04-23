package com.android.contacts.activities;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.android.contacts.activities.AsusGlobalGroupEditorActivity;
import com.android.contacts.copycontacts.a;
import com.android.contacts.model.account.AccountWithDataSet;
import com.android.contacts.util.ImplicitIntentsUtil;
import com.android.contacts.util.PhoneCapabilityTester;
import com.android.contacts.vcard.ExportVCardActivity;
import com.android.contacts.vcard.SelectAccountActivity;
import com.asus.updatesdk.BuildConfig;
/* loaded from: classes-dex2jar.jar:com/android/contacts/activities/AsusAccountChooseActivity.class */
public class AsusAccountChooseActivity extends Activity {
    public static final int DELETE_CONTACT = 2;
    public static final int EXPORT_TO_SIM = 1;
    public static final int EXPORT_TO_VCARD = 3;
    private static final String TAG = AsusAccountChooseActivity.class.getSimpleName();
    private a mAccountListAdapter;
    private int resId;
    private int simIndex;
    private int mFlag = 0;
    private final AdapterView.OnItemClickListener mAccountListItemClickListener = new AdapterView.OnItemClickListener() { // from class: com.android.contacts.activities.AsusAccountChooseActivity.1
        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            if (AsusAccountChooseActivity.this.mAccountListAdapter != null) {
                AccountWithDataSet a2 = AsusAccountChooseActivity.this.mAccountListAdapter.getItem(i);
                Intent intent = null;
                if (AsusAccountChooseActivity.this.mFlag == 1) {
                    intent = new Intent("android.intent.action.ASUS_MULTIPLE_PICKER_SIM_EXPORT");
                    intent.putExtra(AsusGlobalGroupEditorActivity.AsusGlobalGroupsColumns.TITLE, AsusAccountChooseActivity.this.resId);
                    intent.putExtra("simIndex", AsusAccountChooseActivity.this.simIndex);
                } else if (AsusAccountChooseActivity.this.mFlag == 2) {
                    intent = new Intent("android.intent.action.ASUS_MULTIPLE_PICKER_DELETEALL");
                } else if (AsusAccountChooseActivity.this.mFlag == 3) {
                    intent = new Intent(AsusAccountChooseActivity.this, ExportVCardActivity.class);
                }
                intent.putExtra(SelectAccountActivity.ACCOUNT_NAME, a2.name);
                intent.putExtra(SelectAccountActivity.ACCOUNT_TYPE, a2.type);
                intent.putExtra(SelectAccountActivity.DATA_SET, a2.f1998a);
                ImplicitIntentsUtil.startActivityInApp(AsusAccountChooseActivity.this, intent);
                AsusAccountChooseActivity.this.finish();
            }
        }
    };

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        String string;
        int i = 0;
        super.onCreate(bundle);
        if (!NecessaryPermissionDenyActivity.startPermissionActivity(this)) {
            boolean z = (getResources().getConfiguration().uiMode & 15) == 3;
            if (PhoneCapabilityTester.isUsingTwoPanes(this) || z) {
                setRequestedOrientation(-1);
            } else {
                setRequestedOrientation(1);
            }
            Intent intent = getIntent();
            this.mFlag = intent.getFlags();
            this.resId = intent.getIntExtra(AsusGlobalGroupEditorActivity.AsusGlobalGroupsColumns.TITLE, 0);
            this.simIndex = this.resId == 2131755626 ? 2 : 1;
            if (this.mFlag == 1) {
                i = this.simIndex == 2 ? a.EnumC0029a.g : a.EnumC0029a.f;
                string = getString(2131755100);
            } else if (this.mFlag == 2 || this.mFlag == 3) {
                i = a.EnumC0029a.d;
                string = getString(2131755070);
            } else {
                string = BuildConfig.FLAVOR;
            }
            if (com.android.contacts.model.a.a(this).a(true).size() < 0) {
                throw new IllegalStateException("Cannot have a negative number of accounts");
            }
            setContentView(2131427355);
            setTitle(string);
            ListView listView = (ListView) findViewById(2131296272);
            this.mAccountListAdapter = new a(this, i, null, true);
            listView.setAdapter((ListAdapter) this.mAccountListAdapter);
            listView.setOnItemClickListener(this.mAccountListItemClickListener);
        }
    }
}
