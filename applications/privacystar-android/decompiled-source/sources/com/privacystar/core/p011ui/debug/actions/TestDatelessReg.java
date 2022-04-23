package com.privacystar.core.p011ui.debug.actions;

import android.content.Context;
import com.privacystar.core.p011ui.debug.DebugAction;
import com.privacystar.core.service.network.handler.LicenseHandler;
import com.privacystar.core.service.network.model.response.LicenseResponse;
/* renamed from: com.privacystar.core.ui.debug.actions.TestDatelessReg */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/debug/actions/TestDatelessReg.class */
public class TestDatelessReg extends DebugAction {
    @Override // com.privacystar.core.p011ui.debug.DebugAction
    public String getTitle() {
        return "Test Dateless Registration";
    }

    @Override // com.privacystar.core.p011ui.debug.DebugAction
    public void onPerformAction(Context context) {
        LicenseResponse licenseResponse = new LicenseResponse();
        licenseResponse.setToken("04e866e2-ed56-11e6-9d0d-0acf05c0ed90");
        licenseResponse.setLicFeatures("1,3,4,6,7,8,9,10,12,13,14,17,18");
        licenseResponse.setLicState(LicenseResponse.LicenseState.ACTIVE);
        licenseResponse.setTokenTtl(604800);
        LicenseHandler.processLicenseResponse(licenseResponse);
    }
}
