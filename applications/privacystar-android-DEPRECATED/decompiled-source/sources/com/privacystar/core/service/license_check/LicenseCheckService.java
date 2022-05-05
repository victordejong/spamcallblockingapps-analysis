package com.privacystar.core.service.license_check;

import android.os.Bundle;
import com.google.android.gms.gcm.GcmTaskService;
import com.google.android.gms.gcm.TaskParams;
import com.privacystar.core.service.network.handler.LicenseHandler;
import timber.log.Timber;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/license_check/LicenseCheckService.class */
public class LicenseCheckService extends GcmTaskService {
    @Override // com.google.android.gms.gcm.GcmTaskService
    public int onRunTask(TaskParams taskParams) {
        Timber.m37d("Service running, queueing a License check request.", new Object[0]);
        Bundle extras = taskParams.getExtras();
        if (extras != null) {
            long j = extras.getLong(LicenseCheckUtil.LICENSE_REFRESH_PERIOD);
            long j2 = extras.getLong(LicenseCheckUtil.LICENSE_REFRESH_FLEX);
            if (!(j == 0 || j2 == 0)) {
                LicenseCheckUtil.setNextCheckTime(j, j2);
            }
        }
        LicenseHandler.getInstance().generateAndSendRequest(getApplicationContext());
        return 0;
    }
}
