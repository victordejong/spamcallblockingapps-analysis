package com.callapp.contacts.util;

import android.os.Build;
import android.os.Bundle;
import android.os.PersistableBundle;
import com.callapp.contacts.activity.base.BaseActivity;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/BaseTransparentActivity.class */
public abstract class BaseTransparentActivity extends BaseActivity {
    public final boolean finishActivityOnLastPopupCanceled() {
        return getLayoutResourceId() == 0;
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity
    public int getBackgroundColor() {
        return 0;
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity
    public int getLayoutResourceId() {
        return 0;
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity
    public int getThemeResId() {
        return ThemeUtils.getTransparentTheme();
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity
    public boolean isColoringTheStatusBar() {
        return false;
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle, PersistableBundle persistableBundle) {
        super.onCreate(bundle, persistableBundle);
        if (Build.VERSION.SDK_INT == 26) {
            setRequestedOrientation(-1);
        } else {
            setRequestedOrientation(1);
        }
    }
}
