package com.privacystar.core.p011ui.debug.actions;

import android.content.Context;
import com.privacystar.core.p011ui.debug.DebugAction;
import timber.log.Timber;
/* renamed from: com.privacystar.core.ui.debug.actions.TestCrashlyticsCaught */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/debug/actions/TestCrashlyticsCaught.class */
public class TestCrashlyticsCaught extends DebugAction {
    @Override // com.privacystar.core.p011ui.debug.DebugAction
    public String getTitle() {
        return "Crashlytics caught";
    }

    @Override // com.privacystar.core.p011ui.debug.DebugAction
    public void onPerformAction(Context context) {
        try {
            throw new RuntimeException("This is a test crash for Crashlytics.");
        } catch (Exception e) {
            Timber.m32e(e, "Caught intentionally thrown exception.", new Object[0]);
        }
    }
}
