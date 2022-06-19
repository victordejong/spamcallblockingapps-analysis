package com.callapp.contacts.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import androidx.core.app.JobIntentService;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.service.jobs.SimChangedServiceV1;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/receiver/SimChangedReceiver.class */
public class SimChangedReceiver extends BroadcastReceiver {

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/receiver/SimChangedReceiver$SimChangedTask.class */
    static class SimChangedTask extends Task {

        /* renamed from: a */
        private final BroadcastReceiver.PendingResult f27384a;

        /* renamed from: b */
        private final Intent f27385b;

        public SimChangedTask(BroadcastReceiver.PendingResult pendingResult, Intent intent) {
            this.f27384a = pendingResult;
            this.f27385b = intent;
        }

        @Override // com.callapp.contacts.manager.task.Task
        public void doTask() {
            try {
                JobIntentService.m44627a(CallAppApplication.get(), SimChangedServiceV1.class, -311217, this.f27385b);
            } finally {
                this.f27384a.finish();
            }
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        new SimChangedTask(goAsync(), intent).execute();
    }
}
