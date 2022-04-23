package com.privacystar.core.p011ui.debug.actions;

import android.content.Context;
import com.privacystar.core.data.sqlite.SQLiteMigration;
import com.privacystar.core.p011ui.debug.DebugAction;
/* renamed from: com.privacystar.core.ui.debug.actions.TestSQLiteMigrationAndClean */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/debug/actions/TestSQLiteMigrationAndClean.class */
public class TestSQLiteMigrationAndClean extends DebugAction {
    @Override // com.privacystar.core.p011ui.debug.DebugAction
    public String getTitle() {
        return "Test & Clean SQLite Migration";
    }

    @Override // com.privacystar.core.p011ui.debug.DebugAction
    public void onPerformAction(Context context) {
        SQLiteMigration.from().testFullUpgrade(context);
        SQLiteMigration.from().deleteDatabase(context);
    }
}
