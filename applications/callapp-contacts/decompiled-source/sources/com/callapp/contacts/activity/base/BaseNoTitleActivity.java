package com.callapp.contacts.activity.base;

import com.callapp.contacts.util.ThemeUtils;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/base/BaseNoTitleActivity.class */
public abstract class BaseNoTitleActivity extends BaseActivity {
    @Override // com.callapp.contacts.activity.base.BaseActivity
    protected int getThemeResId() {
        return ThemeUtils.getNoTitleTheme();
    }
}
