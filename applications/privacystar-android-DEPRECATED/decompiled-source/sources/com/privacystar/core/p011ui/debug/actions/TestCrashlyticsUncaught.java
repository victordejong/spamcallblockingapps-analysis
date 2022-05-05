package com.privacystar.core.p011ui.debug.actions;

import android.content.Context;
import com.privacystar.core.p011ui.debug.DebugAction;
/* renamed from: com.privacystar.core.ui.debug.actions.TestCrashlyticsUncaught */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/debug/actions/TestCrashlyticsUncaught.class */
public class TestCrashlyticsUncaught extends DebugAction {
    @Override // com.privacystar.core.p011ui.debug.DebugAction
    public String getTitle() {
        return "Crashlytics uncaught";
    }

    @Override // com.privacystar.core.p011ui.debug.DebugAction
    public void onPerformAction(Context context) {
        throw new RuntimeException("This is a test crash for Crashlytics.");
    }
}
