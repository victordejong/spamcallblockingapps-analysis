package com.callapp.contacts.activity.setup;

import android.app.Activity;
import android.app.Dialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.manager.NotificationManager;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.popup.DialogPopup;
import com.callapp.contacts.manager.popup.PopupManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.popup.contact.DialogSimpleWithContent;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.AndroidUtils;
import com.callapp.contacts.util.BaseTransparentActivity;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/setup/FinishSetupReminderActivity.class */
public class FinishSetupReminderActivity extends BaseTransparentActivity {

    /* renamed from: a */
    private View f24374a;

    /* renamed from: b */
    private Dialog f24375b;

    /* renamed from: a */
    static /* synthetic */ void m29559a() {
        NotificationManager.get().m28578a(5);
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        AnalyticsManager.get().m28450a("Login Reminder", "Reminder Viewed");
        AnalyticsManager.get().m28449a(Constants.REGISTRATION, "RegistrationAlmostFinish_notification_open", SetupWizardActivity.getCurrentSetupStage().name());
        if (Prefs.f26246aW.get().booleanValue()) {
            finish();
            return;
        }
        Dialog dialog = this.f24375b;
        if (dialog != null) {
            dialog.dismiss();
        }
        if (this.f24374a == null) {
            this.f24374a = getLayoutInflater().inflate(2131558612, (ViewGroup) null);
        }
        ((TextView) this.f24374a.findViewById(2131363661)).setText(Activities.getString(2131887651));
        PopupManager.get().m28209a(this, new DialogSimpleWithContent() { // from class: com.callapp.contacts.activity.setup.FinishSetupReminderActivity.1
            @Override // com.callapp.contacts.popup.contact.DialogSimpleWithContent
            public int getContentResId() {
                return 2131558612;
            }

            @Override // com.callapp.contacts.popup.contact.DialogSimple
            public String getPositiveBtnText() {
                return Activities.getString(2131887299);
            }

            @Override // com.callapp.contacts.popup.contact.DialogSimple
            public DialogPopup.IDialogOnClickListener getPositiveListener() {
                return new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.setup.FinishSetupReminderActivity.1.1
                    @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                    public void onClickListener(Activity activity) {
                        AndroidUtils.m27635a(getActivity());
                        Intent intent = new Intent(CallAppApplication.get(), SetupWizardActivity.class);
                        intent.addFlags(268435456);
                        intent.putExtra("CAME_FROM_SETUP_REMINDER_KEY", true);
                        Activities.m27685a(CallAppApplication.get(), intent);
                        FinishSetupReminderActivity.m29559a();
                        FinishSetupReminderActivity.this.finish();
                    }
                };
            }

            @Override // com.callapp.contacts.popup.contact.DialogSimple
            public int getTitleResId() {
                return 2131886623;
            }

            @Override // com.callapp.contacts.manager.popup.DialogPopup
            public void onDialogCancelled(DialogInterface dialogInterface) {
                super.onDialogCancelled(dialogInterface);
                FinishSetupReminderActivity.m29559a();
                FinishSetupReminderActivity.this.finish();
            }

            @Override // com.callapp.contacts.popup.contact.DialogSimple, com.callapp.contacts.manager.popup.DialogPopup
            public View ovViewCreated(LayoutInflater layoutInflater, ViewGroup viewGroup) {
                return layoutInflater.inflate(getContentResId(), (ViewGroup) null);
            }
        });
    }
}
