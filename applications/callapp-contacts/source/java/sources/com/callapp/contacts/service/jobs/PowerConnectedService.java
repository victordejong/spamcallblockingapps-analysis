package com.callapp.contacts.service.jobs;

import android.content.Intent;
import androidx.core.app.SafeJobIntentService;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.receiver.ScreenOffReceiver;
import com.callapp.contacts.sync.service.RealSyncService;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/service/jobs/PowerConnectedService.class */
public class PowerConnectedService extends SafeJobIntentService {
    @Override // androidx.core.app.JobIntentService
    /* renamed from: a */
    public final void mo27756a(Intent intent) {
        Prefs.f26542gA.set(Boolean.FALSE);
        ScreenOffReceiver.m27890a(getApplicationContext());
        RealSyncService.m27754b(true);
    }
}
