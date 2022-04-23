package com.callapp.contacts.activity.base;

import android.os.Build;
import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/base/BaseFullScreenActivity.class */
public abstract class BaseFullScreenActivity extends BaseActivity {
    @Override // com.callapp.contacts.activity.base.BaseActivity
    public int getStatusBarColor() {
        return 0;
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        if (Build.VERSION.SDK_INT >= 21) {
            getWindow().getDecorView().setSystemUiVisibility(1024);
        }
        super.onCreate(bundle);
        showActionBar(false);
        if (getActionBar() != null) {
            getActionBar().hide();
        }
    }
}
