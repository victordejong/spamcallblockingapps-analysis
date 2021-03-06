package com.callapp.contacts.service.jobs;

import android.content.Intent;
import androidx.core.app.SafeJobIntentService;
import com.callapp.contacts.receiver.ScreenOffReceiver;
import com.callapp.contacts.sync.service.RealSyncService;
import com.callapp.contacts.util.CLog;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/service/jobs/ScreenOffServiceV1.class */
public class ScreenOffServiceV1 extends SafeJobIntentService {
    @Override // androidx.core.app.JobIntentService
    /* renamed from: a */
    public final void mo27756a(Intent intent) {
        CLog.m27610a(ScreenOffReceiver.class, "ScreenOffService called with ACTION = [%s],", intent.getAction());
        if ("android.intent.action.SCREEN_OFF".equals(intent.getAction())) {
            RealSyncService.m27754b(true);
        }
    }
}
