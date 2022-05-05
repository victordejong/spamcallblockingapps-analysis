package com.privacystar.core.p011ui.debug.actions;

import android.content.Context;
import com.privacystar.core.p011ui.debug.DebugAction;
import com.privacystar.core.service.license_check.LicenseCheckUtil;
/* renamed from: com.privacystar.core.ui.debug.actions.TestLicenseCheckTask */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/debug/actions/TestLicenseCheckTask.class */
public class TestLicenseCheckTask extends DebugAction {
    @Override // com.privacystar.core.p011ui.debug.DebugAction
    public String getTitle() {
        return "Test Scheduled License Check";
    }

    @Override // com.privacystar.core.p011ui.debug.DebugAction
    public void onPerformAction(Context context) {
        LicenseCheckUtil.startLicenseExpireTask(context, System.currentTimeMillis() + 35000);
    }
}
