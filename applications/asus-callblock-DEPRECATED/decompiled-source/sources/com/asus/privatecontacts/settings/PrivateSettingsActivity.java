package com.asus.privatecontacts.settings;

import android.app.ActionBar;
import android.content.Intent;
import android.os.Bundle;
import android.view.MenuItem;
import com.android.contacts.util.ImplicitIntentsUtil;
import com.android.contacts.util.PhoneCapabilityTester;
import com.asus.privatecontacts.e;
import com.asus.privatecontacts.pin.PrivatePinSettingActivity;
import com.asus.privatecontacts.settings.a;
/* loaded from: classes-dex2jar.jar:com/asus/privatecontacts/settings/PrivateSettingsActivity.class */
public class PrivateSettingsActivity extends e implements a.AbstractC0088a {
    @Override // com.asus.privatecontacts.settings.a.AbstractC0088a
    public final void a() {
        setStayPrivate(true);
        Intent intent = new Intent("com.asus.contacts.intent.action.private_pin");
        intent.putExtra("extra_pin_request", true);
        intent.putExtra("extra_callback_intent", new Intent(this, PrivatePinSettingActivity.class));
        startActivityForResult(intent, 10001);
    }

    @Override // android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        if (i == 10001 && i2 == -1) {
            setStayPrivate(true);
            ImplicitIntentsUtil.startActivityInApp(this, new Intent(this, PrivatePinSettingActivity.class));
        }
        super.onActivityResult(i, i2, intent);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.asus.privatecontacts.e, com.android.contacts.activities.TransactionSafeActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(2131427635);
        boolean isCarMode = PhoneCapabilityTester.isCarMode(getApplicationContext());
        if (!PhoneCapabilityTester.isUsingTwoPanes(this)) {
            if (isCarMode) {
                setRequestedOrientation(-1);
            } else {
                setRequestedOrientation(1);
            }
        }
        ActionBar actionBar = getActionBar();
        actionBar.setDisplayOptions(12, 12);
        actionBar.setDisplayShowHomeEnabled(false);
        a aVar = new a();
        aVar.f3081a = this;
        getFragmentManager().beginTransaction().replace(2131296875, aVar).commit();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.asus.privatecontacts.e, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        boolean z;
        switch (menuItem.getItemId()) {
            case 16908332:
                finish();
                z = true;
                break;
            default:
                z = super.onOptionsItemSelected(menuItem);
                break;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.asus.privatecontacts.e, android.app.Activity
    public void onPause() {
        super.onPause();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.asus.privatecontacts.e, com.android.contacts.activities.TransactionSafeActivity, android.app.Activity
    public void onResume() {
        super.onResume();
    }
}
