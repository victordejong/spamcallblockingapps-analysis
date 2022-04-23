package com.privacystar.core.p011ui.debug.actions;

import android.content.Context;
import android.widget.Toast;
import com.privacystar.core.data.activity_log.LogGrouping;
import com.privacystar.core.p011ui.debug.DebugAction;
import com.privacystar.core.service.PreferenceUtil;
/* renamed from: com.privacystar.core.ui.debug.actions.LogGroupingAdjacent */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/debug/actions/LogGroupingAdjacent.class */
public class LogGroupingAdjacent extends DebugAction {
    @Override // com.privacystar.core.p011ui.debug.DebugAction
    public String getTitle() {
        return "Enable Adjacent LogGrouping";
    }

    @Override // com.privacystar.core.p011ui.debug.DebugAction
    public void onPerformAction(Context context) {
        PreferenceUtil.putActivityLogGrouping(LogGrouping.ADJACENT_CALLER_EVENTS);
        Toast.makeText(context, "Enabled log grouping by like adjacent callers.", 0).show();
    }
}
