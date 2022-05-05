package com.android.contacts.activities;

import android.content.Intent;
import android.os.Bundle;
import com.android.contacts.p;
import com.android.contacts.util.PhoneCapabilityTester;
/* loaded from: classes-dex2jar.jar:com/android/contacts/activities/GroupBrowserActivity.class */
public class GroupBrowserActivity extends p {
    private static final String TAG = "GroupBrowserActivity";

    private void configureContentView(boolean z, Bundle bundle) {
        if (z) {
            setContentView(2131427568);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.p, com.android.contacts.activities.TransactionSafeActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        boolean z = (getResources().getConfiguration().uiMode & 15) == 3;
        if (PhoneCapabilityTester.isUsingTwoPanes(this) || z) {
            setRequestedOrientation(-1);
        } else {
            setRequestedOrientation(1);
        }
        configureContentView(true, bundle);
    }

    @Override // android.app.Activity
    protected void onNewIntent(Intent intent) {
        setIntent(intent);
        configureContentView(false, null);
    }
}
