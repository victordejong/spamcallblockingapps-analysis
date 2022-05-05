package com.privacystar.core.p011ui.debug.actions;

import android.content.Context;
import com.privacystar.core.p011ui.debug.DebugAction;
import com.privacystar.core.service.network.handler.LicenseHandler;
/* renamed from: com.privacystar.core.ui.debug.actions.TestLicenseRequest */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/debug/actions/TestLicenseRequest.class */
public class TestLicenseRequest extends DebugAction {
    private String customUrl = "";

    @Override // com.privacystar.core.p011ui.debug.DebugAction
    public String getTitle() {
        return "Test License Request";
    }

    @Override // com.privacystar.core.p011ui.debug.DebugAction
    public void onPerformAction(Context context) {
        LicenseHandler.getInstance().generateAndSendRequest(context);
    }
}
