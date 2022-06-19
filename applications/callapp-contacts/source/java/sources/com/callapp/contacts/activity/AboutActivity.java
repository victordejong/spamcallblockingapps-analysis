package com.callapp.contacts.activity;

import android.app.Dialog;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.EditText;
import android.widget.TextView;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.base.BaseFullScreenActivity;
import com.callapp.contacts.manager.FeedbackManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.AndroidUtils;
import com.callapp.contacts.util.DefaultInterfaceImplUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.http.HttpUtils;
import com.callapp.framework.util.StringUtils;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/AboutActivity.class */
public class AboutActivity extends BaseFullScreenActivity {

    /* renamed from: a */
    private final String f19410a = "9513";

    /* renamed from: a */
    static /* synthetic */ void m31795a(AboutActivity aboutActivity) {
        final Dialog dialog = new Dialog(aboutActivity);
        View inflate = LayoutInflater.from(aboutActivity).inflate(2131559125, (ViewGroup) null);
        dialog.requestWindowFeature(1);
        dialog.setContentView(inflate);
        Window window = dialog.getWindow();
        window.setLayout(-2, -2);
        window.setAttributes(dialog.getWindow().getAttributes());
        final EditText editText = (EditText) dialog.findViewById(2131364493);
        dialog.findViewById(2131363803).setOnClickListener(new DefaultInterfaceImplUtils.ClickListener() { // from class: com.callapp.contacts.activity.AboutActivity.3
            @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.ClickListener
            /* renamed from: a */
            public final void mo26371a(View view) {
                if (!StringUtils.m26042b(editText.getText().toString(), "9513")) {
                    FeedbackManager.get().m28669a(Activities.getString(2131887047), (Integer) null);
                    dialog.dismiss();
                    return;
                }
                dialog.dismiss();
                Prefs.f26465ed.set(Boolean.TRUE);
                AndroidUtils.m27633a(AboutActivity.this, Activities.getString(2131887415));
            }
        });
        editText.requestFocus();
        dialog.getWindow().setSoftInputMode(4);
        dialog.show();
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity
    public int getLayoutResourceId() {
        return 2131558434;
    }

    @Override // com.callapp.contacts.activity.base.BaseFullScreenActivity, com.callapp.contacts.activity.base.BaseActivity
    public int getStatusBarColor() {
        return ThemeUtils.getColor(2131100114);
    }

    @Override // com.callapp.contacts.activity.base.BaseFullScreenActivity, com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ((TextView) findViewById(2131362018)).setText(Activities.getString(2131886245));
        ((TextView) findViewById(2131364030)).setText(Activities.getString(2131886127));
        int i = 0;
        ((TextView) findViewById(2131361885)).setText(Activities.m27697a(2131886129, CallAppApplication.get().getVersion()));
        TextView textView = (TextView) findViewById(2131361884);
        textView.setText(Activities.getString(2131886128));
        textView.setOnClickListener(new DefaultInterfaceImplUtils.ClickListener() { // from class: com.callapp.contacts.activity.AboutActivity.1
            @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.ClickListener
            /* renamed from: a */
            public final void mo26371a(View view) {
                Activities.m27655b(AboutActivity.this, Activities.m27697a(2131887848, HttpUtils.getCallAppDomain()));
            }
        });
        TextView textView2 = (TextView) findViewById(2131364498);
        if (Prefs.f26465ed.get().booleanValue()) {
            i = 8;
        }
        textView2.setVisibility(i);
        textView2.setText(Activities.getString(2131888133));
        textView2.setOnClickListener(new DefaultInterfaceImplUtils.ClickListener() { // from class: com.callapp.contacts.activity.AboutActivity.2
            @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.ClickListener
            /* renamed from: a */
            public final void mo26371a(View view) {
                AboutActivity.m31795a(AboutActivity.this);
            }
        });
    }
}
