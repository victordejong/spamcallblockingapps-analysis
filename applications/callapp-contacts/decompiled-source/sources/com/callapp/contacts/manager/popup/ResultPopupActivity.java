package com.callapp.contacts.manager.popup;

import android.content.Intent;
import android.os.Bundle;
import com.callapp.contacts.manager.FeedbackManager;
import com.callapp.contacts.util.BaseTransparentActivity;
import com.callapp.contacts.util.CLog;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/popup/ResultPopupActivity.class */
public class ResultPopupActivity extends BaseTransparentActivity {
    private static void a() {
        FeedbackManager.get().a("ResultPopupActivity got non ResultPopup instance", 80);
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        Popup a2 = PopupManager.get().a(Integer.valueOf(i));
        if (a2 instanceof ResultPopup) {
            try {
                ((ResultPopup) a2).onActivityResult(this, i, i2, intent);
            } catch (RuntimeException e) {
                CLog.a(a2.getClass(), e, "Exception in onActivityResult()");
            }
        } else {
            a();
            finish();
        }
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setKeyguardDismissAndScreenWindowFlags();
        onNewIntent(getIntent());
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        Popup a2 = PopupManager.get().a(intent);
        if (a2 instanceof ResultPopup) {
            ((ResultPopup) a2).a(this);
            return;
        }
        a();
        finish();
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity
    public boolean shouldAssertPermissions() {
        return false;
    }
}
