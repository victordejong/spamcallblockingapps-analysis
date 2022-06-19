package com.callapp.contacts.activity.base;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/base/BaseListActivity.class */
public abstract class BaseListActivity extends BaseTopBarActivity {

    /* renamed from: a */
    private BaseListImpl f20301a = new BaseListImpl(null);

    public BaseListFunctions getBaseListFunctions() {
        return this.f20301a;
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.Window.Callback
    public void onContentChanged() {
        super.onContentChanged();
        this.f20301a.m31487a(this);
    }
}
