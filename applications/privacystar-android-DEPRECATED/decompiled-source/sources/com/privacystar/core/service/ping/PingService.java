package com.privacystar.core.service.ping;

import com.google.android.gms.gcm.GcmTaskService;
import com.google.android.gms.gcm.TaskParams;
import com.privacystar.core.service.analytics.AnalyticsManager;
import com.privacystar.core.service.analytics.Event;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/ping/PingService.class */
public class PingService extends GcmTaskService {
    @Override // com.google.android.gms.gcm.GcmTaskService
    public int onRunTask(TaskParams taskParams) {
        AnalyticsManager.INSTANCE.fire(Event.PingEvent.INSTANCE);
        return 0;
    }
}
