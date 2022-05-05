package com.android.contacts.activities;

import android.app.Activity;
import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:com/android/contacts/activities/TransactionSafeActivity.class */
public abstract class TransactionSafeActivity extends Activity {
    private boolean mIsSafeToCommitTransactions;

    public boolean isSafeToCommitTransactions() {
        return this.mIsSafeToCommitTransactions;
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.mIsSafeToCommitTransactions = true;
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        this.mIsSafeToCommitTransactions = true;
    }

    @Override // android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        this.mIsSafeToCommitTransactions = false;
    }

    @Override // android.app.Activity
    public void onStart() {
        super.onStart();
        this.mIsSafeToCommitTransactions = true;
    }
}
