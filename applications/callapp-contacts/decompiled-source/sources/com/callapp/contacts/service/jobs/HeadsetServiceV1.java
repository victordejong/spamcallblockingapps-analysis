package com.callapp.contacts.service.jobs;

import android.content.Intent;
import androidx.core.app.SafeJobIntentService;
import com.callapp.contacts.manager.ProximityManager;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.receiver.HeadsetReceiver;
import com.callapp.contacts.util.CLog;
import com.verizon.ads.verizonsspwaterfallprovider.VerizonSSPWaterfallProvider;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/service/jobs/HeadsetServiceV1.class */
public class HeadsetServiceV1 extends SafeJobIntentService {
    @Override // androidx.core.app.JobIntentService
    public final void a(Intent intent) {
        if (!PhoneManager.get().isDefaultPhoneApp()) {
            int intExtra = intent.getIntExtra(VerizonSSPWaterfallProvider.USER_DATA_STATE_KEY, -1);
            if (intExtra == 0) {
                CLog.a(HeadsetReceiver.class, "Headset is unplugged");
                PhoneManager.get().g();
            } else if (intExtra == 1) {
                CLog.a(HeadsetReceiver.class, "Headset is plugged");
                ProximityManager.get().b();
            }
        }
    }
}
