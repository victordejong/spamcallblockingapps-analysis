package com.android.contacts.copycontacts;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.android.contacts.activities.AsusDeleteDuplicateActivity;
import com.android.contacts.activities.NecessaryPermissionDenyActivity;
import com.android.contacts.activities.PeopleActivity;
import com.android.contacts.b;
import com.android.contacts.copycontacts.a;
import com.android.contacts.model.a;
import com.android.contacts.model.account.AccountWithDataSet;
import com.android.contacts.util.ImplicitIntentsUtil;
import com.android.contacts.util.PhoneCapabilityTester;
import com.android.vcard.VCardConfig;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/android/contacts/copycontacts/AsusCopyContactsToActivity.class */
public class AsusCopyContactsToActivity extends Activity {

    /* renamed from: a  reason: collision with root package name */
    private static final String f773a = AsusCopyContactsToActivity.class.getSimpleName();
    private a c;
    private AccountWithDataSet d;
    private AccountWithDataSet e;

    /* renamed from: b  reason: collision with root package name */
    private final int f774b = 1;
    private int f = 0;
    private final AdapterView.OnItemClickListener g = new AdapterView.OnItemClickListener() { // from class: com.android.contacts.copycontacts.AsusCopyContactsToActivity.1
        @Override // android.widget.AdapterView.OnItemClickListener
        public final void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            if (AsusCopyContactsToActivity.this.c != null) {
                AsusCopyContactsToActivity.this.e = AsusCopyContactsToActivity.this.c.getItem(i);
                AsusCopyContactsToActivity.this.showDialog(1);
            }
        }
    };

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        String str;
        super.onCreate(bundle);
        if (!NecessaryPermissionDenyActivity.startPermissionActivity(this)) {
            boolean z = (getResources().getConfiguration().uiMode & 15) == 3;
            if (PhoneCapabilityTester.isUsingTwoPanes(this) || z) {
                setRequestedOrientation(-1);
            } else {
                setRequestedOrientation(1);
            }
            Bundle extras = getIntent().getExtras();
            String string = extras.getString(AsusDeleteDuplicateActivity.ACCOUNT_FROM);
            if (b.f607a.booleanValue()) {
                Log.d(f773a, "mAccountFrom == " + PhoneCapabilityTester.privacyLogCheck(string));
            }
            this.f = extras.getInt("contactsNumber");
            List<AccountWithDataSet> a2 = a.a(this).a(true);
            int size = a2.size();
            if (string == null || bundle != null) {
                string = bundle.getString(AsusDeleteDuplicateActivity.ACCOUNT_FROM);
                str = bundle.getString("accountTo");
            } else {
                str = null;
            }
            for (AccountWithDataSet accountWithDataSet : a2) {
                if (accountWithDataSet.name.equals(string)) {
                    this.d = accountWithDataSet;
                }
                if (str != null && accountWithDataSet.name.equals(str)) {
                    this.e = accountWithDataSet;
                }
            }
            if (this.d == null) {
                finish();
                if (b.f607a.booleanValue()) {
                    Log.d(f773a, "mAccountFrom == null");
                }
            }
            AccountWithDataSet accountWithDataSet2 = new AccountWithDataSet(b.a.c, b.a.d, null);
            if (PhoneCapabilityTester.IsAsusDevice()) {
                new AccountWithDataSet(b.a.c, "asus.local.simcard2", null);
            } else {
                new AccountWithDataSet("SIM2", b.a.d, null);
            }
            if (a2.contains(accountWithDataSet2)) {
                size--;
            }
            if (size < 0) {
                throw new IllegalStateException("Cannot have a negative number of accounts");
            }
            setContentView(2131427355);
            setTitle(getString(2131755099));
            ListView listView = (ListView) findViewById(2131296272);
            this.c = new a(this, a.EnumC0029a.f780a, this.d, false);
            listView.setAdapter((ListAdapter) this.c);
            listView.setOnItemClickListener(this.g);
        }
    }

    @Override // android.app.Activity
    protected Dialog onCreateDialog(int i) {
        Dialog show;
        switch (i) {
            case 1:
                com.android.contacts.model.a a2 = com.android.contacts.model.a.a(this);
                com.android.contacts.model.account.a a3 = a2.a(this.d.type, this.d.f1998a);
                com.android.contacts.model.account.a a4 = a2.a(this.e.type, this.e.f1998a);
                show = new AlertDialog.Builder(this).setCancelable(false).setTitle(getResources().getString(2131755075)).setMessage(getString(2131755074, new Object[]{a3.g ? (String) a3.a(this) : ((Object) a3.a(this)) + "(" + this.d.name + ")", a4.g ? (String) a4.a(this) : ((Object) a4.a(this)) + "(" + this.e.name + ")"})).setPositiveButton(getResources().getString(17039370), new DialogInterface.OnClickListener() { // from class: com.android.contacts.copycontacts.AsusCopyContactsToActivity.3
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i2) {
                        Intent intent = new Intent(AsusCopyContactsToActivity.this, PeopleActivity.class);
                        intent.addFlags(VCardConfig.FLAG_APPEND_TYPE_PARAM);
                        Bundle bundle = new Bundle();
                        bundle.putString(AsusDeleteDuplicateActivity.ACCOUNT_FROM, AsusCopyContactsToActivity.this.d.name);
                        bundle.putString("accountTo", AsusCopyContactsToActivity.this.e.name);
                        bundle.putInt("contactsNumber", AsusCopyContactsToActivity.this.f);
                        intent.putExtra("accountData", bundle);
                        ImplicitIntentsUtil.startActivityInApp(AsusCopyContactsToActivity.this, intent);
                        dialogInterface.cancel();
                        dialogInterface.dismiss();
                        AsusCopyContactsToActivity.this.finish();
                        if (b.f607a.booleanValue()) {
                            Log.d(AsusCopyContactsToActivity.f773a, "accountFrom: " + PhoneCapabilityTester.privacyLogCheck(AsusCopyContactsToActivity.this.d.name) + "accountTo: mAccountTo.name");
                        }
                    }
                }).setNegativeButton(getResources().getString(17039360), new DialogInterface.OnClickListener() { // from class: com.android.contacts.copycontacts.AsusCopyContactsToActivity.2
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i2) {
                        dialogInterface.cancel();
                        dialogInterface.dismiss();
                        AsusCopyContactsToActivity.this.finish();
                    }
                }).show();
                break;
            default:
                show = super.onCreateDialog(i);
                break;
        }
        return show;
    }

    @Override // android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString(AsusDeleteDuplicateActivity.ACCOUNT_FROM, this.d.name);
        if (this.e != null) {
            bundle.putString("accountTo", this.e.name);
        }
    }
}
