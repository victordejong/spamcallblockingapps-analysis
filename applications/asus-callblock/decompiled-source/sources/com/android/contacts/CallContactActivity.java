package com.android.contacts;

import android.content.DialogInterface;
import android.net.Uri;
import android.os.Bundle;
import com.android.contacts.interactions.PhoneNumberInteraction;
import com.android.contacts.util.CallUtil;
import com.android.contacts.util.ImplicitIntentsUtil;
import com.android.contacts.util.PhoneCapabilityTester;
/* loaded from: classes-dex2jar.jar:com/android/contacts/CallContactActivity.class */
public class CallContactActivity extends p implements DialogInterface.OnDismissListener {
    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.p, com.android.contacts.activities.TransactionSafeActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Uri data = getIntent().getData();
        if (data == null) {
            finish();
        }
        boolean z = (getResources().getConfiguration().uiMode & 15) == 3;
        if (PhoneCapabilityTester.isUsingTwoPanes(this) || z) {
            setRequestedOrientation(-1);
        } else {
            setRequestedOrientation(1);
        }
        if (bundle == null) {
            if ("vnd.android.cursor.item/contact".equals(getContentResolver().getType(data))) {
                PhoneNumberInteraction.a(this, data);
                return;
            }
            ImplicitIntentsUtil.startActivityOutsideApp(this, CallUtil.getCallIntent(data));
            finish();
        }
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        if (!isChangingConfigurations()) {
            finish();
        }
    }
}
