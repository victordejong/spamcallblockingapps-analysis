package com.callapp.contacts.activity.base;

import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import androidx.appcompat.app.ActionBar;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.TopBarUtils;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/base/BaseTopBarActivity.class */
public abstract class BaseTopBarActivity extends BaseActivity {
    protected void a() {
        TopBarUtils.a(this, getSupportActionBar(), getTopBarTitleType(), 2131558429);
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity
    protected int getLayoutResourceId() {
        return 2131558468;
    }

    public TopBarUtils.TopBarTitle getTopBarTitleType() {
        return TopBarUtils.TopBarTitle.TITLE_TOP_BAR;
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        a();
        ColorDrawable colorDrawable = new ColorDrawable(ThemeUtils.a(this, 2131099784));
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.a(colorDrawable);
        }
    }

    @Override // android.app.Activity
    public void setTitle(int i) {
        setTitle(Activities.getString(i));
    }

    @Override // android.app.Activity
    public void setTitle(CharSequence charSequence) {
        TopBarUtils.a(getSupportActionBar(), charSequence);
    }
}
