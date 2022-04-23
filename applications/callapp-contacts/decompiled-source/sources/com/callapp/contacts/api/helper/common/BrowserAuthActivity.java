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
    static /* synthetic */ void a(BrowserAuthActivity browserAuthActivity, Intent intent) {
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
        Class cls;
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
        final Intent intent2 = null;
        if (StringUtils.a((CharSequence) queryParameter)) {
            cls = SetupWizardActivity.class;
        } else {
            try {
                cls = Class.forName(queryParameter);
            } catch (ClassNotFoundException e) {
                cls = null;
            }
        }
        if (cls != null) {
            intent2 = new Intent(CallAppApplication.get(), cls);
        }
        Pair<LoginListener, String> b2 = AuthWebViewDialog.b(data.toString());
        final LoginListener loginListener = (LoginListener) b2.first;
        final String str = (String) b2.second;
        new Task() { // from class: com.callapp.contacts.api.helper.common.BrowserAuthActivity.1
            @Override // com.callapp.contacts.manager.task.Task
            public void doTask() {
                try {
                    try {
                        if (StringUtils.a((CharSequence) str)) {
                            LoginListener loginListener2 = loginListener;
                            if (loginListener2 != null) {
                                loginListener2.c();
                            }
                        } else {
                            LoginListener loginListener3 = loginListener;
                            if (loginListener3 != null) {
                                loginListener3.b(str);
                            }
                        }
                    } catch (Exception e2) {
                        loginListener.b();
                    }
                } finally {
                    BrowserAuthActivity.a(BrowserAuthActivity.this, intent2);
                }
            }
        }.execute();
    }
}
