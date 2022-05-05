package com.privacystar.core.p011ui.debug.actions;

import android.content.Context;
import com.privacystar.core.p011ui.call_center.CallCenterService;
import com.privacystar.core.p011ui.debug.DebugAction;
/* renamed from: com.privacystar.core.ui.debug.actions.TestCallCenterTelemarketer */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/debug/actions/TestCallCenterTelemarketer.class */
public class TestCallCenterTelemarketer extends DebugAction {
    @Override // com.privacystar.core.p011ui.debug.DebugAction
    public String getTitle() {
        return "Call Center offender - telemarketer";
    }

    @Override // com.privacystar.core.p011ui.debug.DebugAction
    public void onPerformAction(Context context) {
        context.startService(CallCenterService.debugIntent("5017772221", context));
    }
}
