package com.android.contacts.activities;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.android.contacts.b;
import com.android.contacts.copycontacts.a;
import com.android.contacts.model.account.AccountWithDataSet;
import com.android.contacts.util.ImplicitIntentsUtil;
import com.android.contacts.util.PhoneCapabilityTester;
import com.android.contacts.vcard.SelectAccountActivity;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/android/contacts/activities/AsusSelectAccountActivity.class */
public class AsusSelectAccountActivity extends Activity {
    public static final int DELETE_DUPLICATE = 1;
    public static final int DELETE_MULTIPLE = 2;
    private static final String TAG = AsusSelectAccountActivity.class.getSimpleName();
    private a mAccountListAdapter;
    private int mFlag = 0;
    private final AdapterView.OnItemClickListener mAccountListItemClickListener = new AdapterView.OnItemClickListener() { // from class: com.android.contacts.activities.AsusSelectAccountActivity.1
        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            if (AsusSelectAccountActivity.this.mAccountListAdapter != null) {
                AccountWithDataSet a2 = AsusSelectAccountActivity.this.mAccountListAdapter.getItem(i);
                int b2 = AsusSelectAccountActivity.this.mAccountListAdapter.b(i);
                if (!AsusSelectAccountActivity.this.mAccountListAdapter.f779a && b2 == 0) {
                    Log.d(AsusSelectAccountActivity.TAG, "mAccountListItemClickListener isLoadCountFinish = " + AsusSelectAccountActivity.this.mAccountListAdapter.f779a);
                } else if (b2 <= 0) {
                } else {
                    if (AsusSelectAccountActivity.this.mFlag == 1) {
                        Intent intent = new Intent(AsusSelectAccountActivity.this, AsusDeleteDuplicateActivity.class);
                        intent.putExtra(AsusDeleteDuplicateActivity.ACCOUNT_FROM, a2.name);
                        ImplicitIntentsUtil.startActivityInApp(AsusSelectAccountActivity.this, intent);
                        AsusSelectAccountActivity.this.finish();
                        return;
                    }
                    Intent intent2 = new Intent("android.intent.action.ASUS_MULTIPLE_PICKER_DELETEALL");
                    intent2.putExtra(SelectAccountActivity.ACCOUNT_NAME, a2.name);
                    intent2.putExtra(SelectAccountActivity.ACCOUNT_TYPE, a2.type);
                    ImplicitIntentsUtil.startActivityInApp(AsusSelectAccountActivity.this, intent2);
                    AsusSelectAccountActivity.this.finish();
                }
            }
        }
    };

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (!NecessaryPermissionDenyActivity.startPermissionActivity(this)) {
            boolean z = (getResources().getConfiguration().uiMode & 15) == 3;
            if (PhoneCapabilityTester.isUsingTwoPanes(this) || z) {
                setRequestedOrientation(-1);
            } else {
                setRequestedOrientation(1);
            }
            List<AccountWithDataSet> a2 = com.android.contacts.model.a.a(this).a(true);
            this.mFlag = getIntent().getFlags();
            int size = a2.size();
            int i = size;
            if (this.mFlag == 1) {
                AccountWithDataSet accountWithDataSet = new AccountWithDataSet(b.a.c, b.a.d, null);
                AccountWithDataSet accountWithDataSet2 = PhoneCapabilityTester.IsAsusDevice() ? new AccountWithDataSet(b.a.c, "asus.local.simcard2", null) : new AccountWithDataSet("SIM2", b.a.d, null);
                int i2 = size;
                if (a2.contains(accountWithDataSet)) {
                    i2 = size - 1;
                }
                i = i2;
                if (a2.contains(accountWithDataSet2)) {
                    i = i2 - 1;
                }
            }
            if (i < 0) {
                throw new IllegalStateException("Cannot have a negative number of accounts");
            }
            if (this.mFlag == 1) {
                if (i >= 2) {
                    setContentView(2131427355);
                    setTitle(getString(2131755112));
                    ListView listView = (ListView) findViewById(2131296272);
                    this.mAccountListAdapter = new a(this, a.EnumC0029a.f780a, null, true);
                    listView.setAdapter((ListAdapter) this.mAccountListAdapter);
                    listView.setOnItemClickListener(this.mAccountListItemClickListener);
                } else if (i == 1) {
                    Intent intent = new Intent(this, AsusDeleteDuplicateActivity.class);
                    intent.putExtra(AsusDeleteDuplicateActivity.ACCOUNT_FROM, "Device");
                    ImplicitIntentsUtil.startActivityInApp(this, intent);
                    finish();
                } else if (b.f607a.booleanValue()) {
                    Log.d(TAG, "accountNumber: " + i);
                }
            } else if (i >= 2) {
                setContentView(2131427355);
                setTitle(getString(2131755112));
                ListView listView2 = (ListView) findViewById(2131296272);
                this.mAccountListAdapter = new a(this, a.EnumC0029a.d);
                listView2.setAdapter((ListAdapter) this.mAccountListAdapter);
                listView2.setOnItemClickListener(this.mAccountListItemClickListener);
            } else if (i == 1) {
                Intent intent2 = new Intent("android.intent.action.ASUS_MULTIPLE_PICKER_DELETEALL");
                if (PhoneCapabilityTester.IsAsusDevice()) {
                    intent2.putExtra(SelectAccountActivity.ACCOUNT_NAME, a2.get(0).name);
                    intent2.putExtra(SelectAccountActivity.ACCOUNT_TYPE, a2.get(0).type);
                } else {
                    intent2.putExtra(SelectAccountActivity.ACCOUNT_NAME, "asus_all_accounts");
                    intent2.putExtra(SelectAccountActivity.ACCOUNT_TYPE, "asus_all_accounts");
                }
                ImplicitIntentsUtil.startActivityInApp(this, intent2);
                finish();
            } else {
                if (b.f607a.booleanValue()) {
                    Log.d(TAG, "accountNumber: " + i);
                }
                Intent intent3 = new Intent("android.intent.action.ASUS_MULTIPLE_PICKER_DELETEALL");
                intent3.putExtra(SelectAccountActivity.ACCOUNT_NAME, "asus_all_accounts");
                intent3.putExtra(SelectAccountActivity.ACCOUNT_TYPE, "asus_all_accounts");
                ImplicitIntentsUtil.startActivityInApp(this, intent3);
                finish();
            }
            if (PhoneCapabilityTester.IsSystemApp()) {
                com.android.contacts.a.b.a();
                com.android.contacts.a.b.a(18, (Activity) this, "Select a contact source", true);
            }
        }
    }
}
