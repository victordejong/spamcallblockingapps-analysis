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
    public final void a(Intent intent) {
        Prefs.gy.set(Boolean.FALSE);
        if (!Prefs.aV.isNotNull()) {
            new Task() { // from class: com.callapp.contacts.service.jobs.ShowRegistrationReminderService.1
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    if (CallLogUtils.d() && !Prefs.bB.get().booleanValue()) {
                        Intent flags = new Intent(CallAppApplication.get(), SetupWizardActivity.class).setFlags(268435456);
                        flags.putExtra("CAME_FROM_SETUP_REMINDER_KEY", true);
                        Activities.a(CallAppApplication.get(), flags);
                    }
                }
            }.schedule(2000);
        }
    }
}
