package com.privacystar.core.p011ui.debug.actions;

import android.content.Context;
import com.privacystar.core.p011ui.call_center.CallCenterService;
import com.privacystar.core.p011ui.debug.DebugAction;
/* renamed from: com.privacystar.core.ui.debug.actions.TestCallCenterScam */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/debug/actions/TestCallCenterScam.class */
public class TestCallCenterScam extends DebugAction {
    @Override // com.privacystar.core.p011ui.debug.DebugAction
    public String getTitle() {
        return "Call Center offender - scam";
    }

    @Override // com.privacystar.core.p011ui.debug.DebugAction
    public void onPerformAction(Context context) {
        context.startService(CallCenterService.debugIntent("4075301839", context));
    }
}
