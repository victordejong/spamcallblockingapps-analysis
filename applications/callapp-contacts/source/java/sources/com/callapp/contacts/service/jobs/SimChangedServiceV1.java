package com.callapp.contacts.service.jobs;

import android.content.Intent;
import androidx.core.app.SafeJobIntentService;
import com.callapp.contacts.manager.Singletons;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/service/jobs/SimChangedServiceV1.class */
public class SimChangedServiceV1 extends SafeJobIntentService {
    @Override // androidx.core.app.JobIntentService
    /* renamed from: a */
    public final void mo27756a(Intent intent) {
        Singletons.get().getSimManager().m28162a();
    }
}
