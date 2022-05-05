package com.privacystar.core.p011ui.debug.actions;

import android.content.Context;
import android.widget.Toast;
import com.privacystar.core.data.activity_log.LogGrouping;
import com.privacystar.core.p011ui.debug.DebugAction;
import com.privacystar.core.service.PreferenceUtil;
/* renamed from: com.privacystar.core.ui.debug.actions.LogGroupingNone */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/debug/actions/LogGroupingNone.class */
public class LogGroupingNone extends DebugAction {
    @Override // com.privacystar.core.p011ui.debug.DebugAction
    public String getTitle() {
        return "Disable All LogGrouping";
    }

    @Override // com.privacystar.core.p011ui.debug.DebugAction
    public void onPerformAction(Context context) {
        PreferenceUtil.putActivityLogGrouping(LogGrouping.NONE);
        Toast.makeText(context, "Disabled all log grouping.", 0).show();
    }
}
