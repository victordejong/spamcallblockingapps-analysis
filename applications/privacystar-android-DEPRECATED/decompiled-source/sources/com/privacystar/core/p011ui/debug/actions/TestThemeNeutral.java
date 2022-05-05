package com.privacystar.core.p011ui.debug.actions;

import android.content.Context;
import com.privacystar.core.p011ui.debug.DebugAction;
import com.privacystar.core.util.SystemUtil;
import com.privacystar.core.util.ThemeUtil;
import com.privacystar.core.util.enums.CarrierMobileCode;
/* renamed from: com.privacystar.core.ui.debug.actions.TestThemeNeutral */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/debug/actions/TestThemeNeutral.class */
public class TestThemeNeutral extends DebugAction {
    @Override // com.privacystar.core.p011ui.debug.DebugAction
    public String getTitle() {
        return "Test Theme - Default";
    }

    @Override // com.privacystar.core.p011ui.debug.DebugAction
    public void onPerformAction(Context context) {
        ThemeUtil.changeTheme(getActivity(), CarrierMobileCode.UNKNOWN);
        SystemUtil.INSTANCE.internallyRestartApp(context);
    }
}
