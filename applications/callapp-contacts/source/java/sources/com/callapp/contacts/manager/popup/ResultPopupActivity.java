package com.callapp.contacts.manager.popup;

import android.content.Intent;
import android.os.Bundle;
import com.callapp.contacts.manager.FeedbackManager;
import com.callapp.contacts.util.BaseTransparentActivity;
import com.callapp.contacts.util.CLog;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/popup/ResultPopupActivity.class */
public class ResultPopupActivity extends BaseTransparentActivity {
    /* renamed from: a */
    private static void m28184a() {
        FeedbackManager.get().m28670a("ResultPopupActivity got non ResultPopup instance", 80);
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        Popup m28200a = PopupManager.get().m28200a(Integer.valueOf(i));
        if (!(m28200a instanceof ResultPopup)) {
            m28184a();
            finish();
            return;
        }
        try {
            ((ResultPopup) m28200a).onActivityResult(this, i, i2, intent);
        } catch (RuntimeException e) {
            CLog.m27608a(m28200a.getClass(), e, "Exception in onActivityResult()");
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
        Popup m28205a = PopupManager.get().m28205a(intent);
        if (m28205a instanceof ResultPopup) {
            ((ResultPopup) m28205a).mo27637a(this);
            return;
        }
        m28184a();
        finish();
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity
    public boolean shouldAssertPermissions() {
        return false;
    }
}
