package com.privacystar.core.p011ui.debug.actions;

import android.content.Context;
import com.privacystar.core.p011ui.call_center.CallCenterService;
import com.privacystar.core.p011ui.debug.DebugAction;
/* renamed from: com.privacystar.core.ui.debug.actions.TestCallCenterContacts */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/debug/actions/TestCallCenterContacts.class */
public class TestCallCenterContacts extends DebugAction {
    @Override // com.privacystar.core.p011ui.debug.DebugAction
    public String getTitle() {
        return "Call Center Contacts - No Photo";
    }

    @Override // com.privacystar.core.p011ui.debug.DebugAction
    public void onPerformAction(Context context) {
        context.startService(CallCenterService.debugIntent("5015801761", context));
    }
}
