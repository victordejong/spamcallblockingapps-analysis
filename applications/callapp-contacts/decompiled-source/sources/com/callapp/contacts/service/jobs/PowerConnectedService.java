package com.callapp.contacts.service.jobs;

import android.content.Intent;
import androidx.core.app.SafeJobIntentService;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.receiver.ScreenOffReceiver;
import com.callapp.contacts.sync.service.RealSyncService;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/service/jobs/PowerConnectedService.class */
public class PowerConnectedService extends SafeJobIntentService {
    @Override // androidx.core.app.JobIntentService
    public final void a(Intent intent) {
        Prefs.gA.set(Boolean.FALSE);
        ScreenOffReceiver.a(getApplicationContext());
        RealSyncService.b(true);
    }
}
