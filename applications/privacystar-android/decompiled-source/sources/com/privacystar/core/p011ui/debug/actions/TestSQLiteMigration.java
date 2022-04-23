package com.privacystar.core.p011ui.debug.actions;

import android.content.Context;
import com.privacystar.core.data.sqlite.SQLiteMigration;
import com.privacystar.core.p011ui.debug.DebugAction;
/* renamed from: com.privacystar.core.ui.debug.actions.TestSQLiteMigration */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/debug/actions/TestSQLiteMigration.class */
public class TestSQLiteMigration extends DebugAction {
    @Override // com.privacystar.core.p011ui.debug.DebugAction
    public String getTitle() {
        return "Test SQLite Migration";
    }

    @Override // com.privacystar.core.p011ui.debug.DebugAction
    public void onPerformAction(Context context) {
        SQLiteMigration.from().testFullUpgrade(context);
    }
}
