package com.android.contacts.vcard;

import android.app.Dialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import com.android.contacts.model.a;
import com.android.contacts.model.account.AccountWithDataSet;
import com.android.contacts.p;
import com.android.contacts.util.AccountSelectionUtil;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/android/contacts/vcard/SelectAccountActivity.class */
public class SelectAccountActivity extends p {
    public static final String ACCOUNT_NAME = "account_name";
    public static final String ACCOUNT_TYPE = "account_type";
    public static final String DATA_SET = "data_set";
    private static final String LOG_TAG = "SelectAccountActivity";
    private AccountSelectionUtil.AccountSelectedListener mAccountSelectionListener;

    /* loaded from: classes-dex2jar.jar:com/android/contacts/vcard/SelectAccountActivity$CancelListener.class */
    private class CancelListener implements DialogInterface.OnCancelListener, DialogInterface.OnClickListener {
        private CancelListener() {
        }

        @Override // android.content.DialogInterface.OnCancelListener
        public void onCancel(DialogInterface dialogInterface) {
            SelectAccountActivity.this.finish();
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            SelectAccountActivity.this.finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.p, com.android.contacts.activities.TransactionSafeActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        List<AccountWithDataSet> a2 = a.a(this).a(true);
        if (a2.size() == 0) {
            Log.w(LOG_TAG, "Account does not exist");
            finish();
        } else if (a2.size() == 1) {
            AccountWithDataSet accountWithDataSet = a2.get(0);
            Intent intent = new Intent();
            intent.putExtra(ACCOUNT_NAME, accountWithDataSet.name);
            intent.putExtra(ACCOUNT_TYPE, accountWithDataSet.type);
            intent.putExtra(DATA_SET, accountWithDataSet.f1998a);
            setResult(-1, intent);
            finish();
        } else {
            Log.i(LOG_TAG, "The number of available accounts: " + a2.size());
            this.mAccountSelectionListener = new AccountSelectionUtil.AccountSelectedListener(this, a2, 2131755695) { // from class: com.android.contacts.vcard.SelectAccountActivity.1
                @Override // com.android.contacts.util.AccountSelectionUtil.AccountSelectedListener, android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    dialogInterface.dismiss();
                    AccountWithDataSet accountWithDataSet2 = this.mAccountList.get(i);
                    Intent intent2 = new Intent();
                    intent2.putExtra(SelectAccountActivity.ACCOUNT_NAME, accountWithDataSet2.name);
                    intent2.putExtra(SelectAccountActivity.ACCOUNT_TYPE, accountWithDataSet2.type);
                    intent2.putExtra(SelectAccountActivity.DATA_SET, accountWithDataSet2.f1998a);
                    SelectAccountActivity.this.setResult(-1, intent2);
                    SelectAccountActivity.this.finish();
                }
            };
            showDialog(2131755695);
        }
    }

    @Override // android.app.Activity
    protected Dialog onCreateDialog(int i, Bundle bundle) {
        Dialog selectAccountDialog;
        switch (i) {
            case 2131755695:
                if (this.mAccountSelectionListener != null) {
                    selectAccountDialog = AccountSelectionUtil.getSelectAccountDialog(this, i, this.mAccountSelectionListener, new CancelListener());
                    break;
                } else {
                    throw new NullPointerException("mAccountSelectionListener must not be null.");
                }
            default:
                selectAccountDialog = super.onCreateDialog(i, bundle);
                break;
        }
        return selectAccountDialog;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.activities.TransactionSafeActivity, android.app.Activity
    public void onStart() {
        super.onStart();
        setVisible(true);
    }
}
