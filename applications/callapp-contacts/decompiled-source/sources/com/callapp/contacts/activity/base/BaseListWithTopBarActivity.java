package com.callapp.contacts.activity.base;

import android.os.Bundle;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.TopBarUtils;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/base/BaseListWithTopBarActivity.class */
public abstract class BaseListWithTopBarActivity extends BaseListActivity {
    @Override // com.callapp.contacts.activity.base.BaseTopBarActivity
    public TopBarUtils.TopBarTitle getTopBarTitleType() {
        return TopBarUtils.TopBarTitle.TITLE_TOP_BAR;
    }

    @Override // com.callapp.contacts.activity.base.BaseTopBarActivity, com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        TopBarUtils.a(this, getSupportActionBar(), getTopBarTitleType(), 2131558429);
    }

    @Override // com.callapp.contacts.activity.base.BaseTopBarActivity, android.app.Activity
    public void setTitle(int i) {
        setTitle(Activities.getString(i));
    }

    @Override // com.callapp.contacts.activity.base.BaseTopBarActivity, android.app.Activity
    public void setTitle(CharSequence charSequence) {
        TopBarUtils.a(getSupportActionBar(), charSequence);
    }
}
