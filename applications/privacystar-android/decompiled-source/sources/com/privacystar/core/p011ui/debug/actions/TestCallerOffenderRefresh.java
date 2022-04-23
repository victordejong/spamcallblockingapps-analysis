package com.privacystar.core.p011ui.debug.actions;

import android.content.Context;
import com.privacystar.core.data.call.caller.CallerHelper;
import com.privacystar.core.p011ui.debug.DebugAction;
import io.realm.Realm;
/* renamed from: com.privacystar.core.ui.debug.actions.TestCallerOffenderRefresh */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/debug/actions/TestCallerOffenderRefresh.class */
public class TestCallerOffenderRefresh extends DebugAction {
    @Override // com.privacystar.core.p011ui.debug.DebugAction
    public String getTitle() {
        return "Test Offender Refresh";
    }

    @Override // com.privacystar.core.p011ui.debug.DebugAction
    public void onPerformAction(Context context) {
        Realm defaultInstance = Realm.getDefaultInstance();
        try {
            CallerHelper.updateAllCallerOffenderCache(defaultInstance);
            if (defaultInstance != null) {
                defaultInstance.close();
            }
            defaultInstance = Realm.getDefaultInstance();
            try {
                CallerHelper.updateAllCallerOffenderCacheBulk(defaultInstance);
                if (defaultInstance != null) {
                    defaultInstance.close();
                }
            } catch (Throwable th) {
                try {
                    throw th;
                } finally {
                }
            }
        } catch (Throwable th2) {
            try {
                throw th2;
            } finally {
            }
        }
    }
}
