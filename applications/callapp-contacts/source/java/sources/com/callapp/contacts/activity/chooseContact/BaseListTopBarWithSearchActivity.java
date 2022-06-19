package com.callapp.contacts.activity.chooseContact;

import com.callapp.contacts.activity.base.BaseListFunctions;
import com.callapp.contacts.activity.base.BaseListImpl;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/chooseContact/BaseListTopBarWithSearchActivity.class */
public abstract class BaseListTopBarWithSearchActivity extends TopBarWithSearchActivity {

    /* renamed from: b */
    private BaseListImpl f20865b = new BaseListImpl(null);

    public BaseListFunctions getBaseListFunctions() {
        return this.f20865b;
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.Window.Callback
    public void onContentChanged() {
        super.onContentChanged();
        this.f20865b.m31487a(this);
    }
}
