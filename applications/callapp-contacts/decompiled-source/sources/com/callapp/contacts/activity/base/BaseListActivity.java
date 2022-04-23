package com.callapp.contacts.activity.base;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/base/BaseListActivity.class */
public abstract class BaseListActivity extends BaseTopBarActivity {

    /* renamed from: a  reason: collision with root package name */
    private BaseListImpl f11119a = new BaseListImpl(null);

    public BaseListFunctions getBaseListFunctions() {
        return this.f11119a;
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.Window.Callback
    public void onContentChanged() {
        super.onContentChanged();
        this.f11119a.a(this);
    }
}
