package com.privacystar.core.p011ui.debug.actions;

import android.content.Context;
import com.privacystar.core.p011ui.debug.DebugAction;
import com.privacystar.core.util.SystemUtil;
import com.privacystar.core.util.ThemeUtil;
import com.privacystar.core.util.enums.CarrierMobileCode;
/* renamed from: com.privacystar.core.ui.debug.actions.TestThemeSprint */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/debug/actions/TestThemeSprint.class */
public class TestThemeSprint extends DebugAction {
    @Override // com.privacystar.core.p011ui.debug.DebugAction
    public String getTitle() {
        return "Test Theme - Sprint";
    }

    @Override // com.privacystar.core.p011ui.debug.DebugAction
    public void onPerformAction(Context context) {
        ThemeUtil.changeTheme(getActivity(), CarrierMobileCode.SPRINT_PREPAID);
        SystemUtil.INSTANCE.internallyRestartApp(context);
    }
}
