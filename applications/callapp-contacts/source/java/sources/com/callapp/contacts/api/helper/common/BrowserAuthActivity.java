package com.callapp.contacts.api.helper.common;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.util.Pair;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.contact.details.ContactDetailsActivity;
import com.callapp.contacts.activity.setup.SetupWizardActivity;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.util.BaseTransparentActivity;
import com.callapp.contacts.util.webview.AuthWebViewDialog;
import com.callapp.framework.util.StringUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/common/BrowserAuthActivity.class */
public class BrowserAuthActivity extends BaseTransparentActivity {
    /* renamed from: a */
    static /* synthetic */ void m29270a(BrowserAuthActivity browserAuthActivity, Intent intent) {
        if (intent != null) {
            intent.addFlags(268435456);
            intent.putExtra(ContactDetailsActivity.EXTRA_BRING_TO_FRONT_RETRY, true);
            browserAuthActivity.startActivity(intent);
        }
        browserAuthActivity.finish();
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Intent intent = getIntent();
        if (intent == null) {
            finish();
        } else {
            onNewIntent(intent);
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onNewIntent(Intent intent) {
        Class<?> cls;
        super.onNewIntent(intent);
        if (intent == null) {
            finish();
            return;
        }
        Uri data = intent.getData();
        if (data == null) {
            finish();
            return;
        }
        String queryParameter = data.getQueryParameter("activity");
        if (StringUtils.m26059a((CharSequence) queryParameter)) {
            cls = SetupWizardActivity.class;
        } else {
            try {
                cls = Class.forName(queryParameter);
            } catch (ClassNotFoundException e) {
                cls = null;
            }
        }
        Intent intent2 = cls == null ? null : new Intent(CallAppApplication.get(), cls);
        Pair<LoginListener, String> m26873b = AuthWebViewDialog.m26873b(data.toString());
        final LoginListener loginListener = (LoginListener) m26873b.first;
        final String str = (String) m26873b.second;
        final Intent intent3 = intent2;
        new Task() { // from class: com.callapp.contacts.api.helper.common.BrowserAuthActivity.1
            @Override // com.callapp.contacts.manager.task.Task
            public void doTask() {
                try {
                    try {
                        if (StringUtils.m26059a((CharSequence) str)) {
                            LoginListener loginListener2 = loginListener;
                            if (loginListener2 != null) {
                                loginListener2.mo26203c();
                            }
                        } else {
                            LoginListener loginListener3 = loginListener;
                            if (loginListener3 != null) {
                                loginListener3.mo26204b(str);
                            }
                        }
                    } catch (Exception e2) {
                        loginListener.mo26205b();
                    }
                } finally {
                    BrowserAuthActivity.m29270a(BrowserAuthActivity.this, intent3);
                }
            }
        }.execute();
    }
}
