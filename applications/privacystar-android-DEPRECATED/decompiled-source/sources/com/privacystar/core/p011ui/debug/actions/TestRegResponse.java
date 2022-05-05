package com.privacystar.core.p011ui.debug.actions;

import android.content.Context;
import com.privacystar.core.p011ui.debug.DebugAction;
import com.privacystar.core.service.network.handler.RegistrationHandler;
/* renamed from: com.privacystar.core.ui.debug.actions.TestRegResponse */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/debug/actions/TestRegResponse.class */
public class TestRegResponse extends DebugAction {
    @Override // com.privacystar.core.p011ui.debug.DebugAction
    public String getTitle() {
        return "Test Registration";
    }

    @Override // com.privacystar.core.p011ui.debug.DebugAction
    public void onPerformAction(Context context) {
        RegistrationHandler.getInstance().checkRegistration(context, true);
    }
}
