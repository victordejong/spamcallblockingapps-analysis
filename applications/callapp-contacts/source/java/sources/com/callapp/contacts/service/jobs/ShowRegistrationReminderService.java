package com.callapp.contacts.service.jobs;

import android.content.Intent;
import androidx.core.app.SafeJobIntentService;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.setup.SetupWizardActivity;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.CallLogUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/service/jobs/ShowRegistrationReminderService.class */
public class ShowRegistrationReminderService extends SafeJobIntentService {
    @Override // androidx.core.app.JobIntentService
    /* renamed from: a */
    public final void mo27756a(Intent intent) {
        Prefs.f26592gy.set(Boolean.FALSE);
        if (Prefs.f26245aV.isNotNull()) {
            return;
        }
        new Task() { // from class: com.callapp.contacts.service.jobs.ShowRegistrationReminderService.1
            @Override // com.callapp.contacts.manager.task.Task
            public void doTask() {
                if (!CallLogUtils.m27550d() || Prefs.f26278bB.get().booleanValue()) {
                    return;
                }
                Intent flags = new Intent(CallAppApplication.get(), SetupWizardActivity.class).setFlags(268435456);
                flags.putExtra("CAME_FROM_SETUP_REMINDER_KEY", true);
                Activities.m27685a(CallAppApplication.get(), flags);
            }
        }.schedule(2000);
    }
}
