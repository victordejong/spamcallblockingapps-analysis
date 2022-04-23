package com.privacystar.core.p011ui.debug.actions;

import android.content.Context;
import com.privacystar.core.data.sqlite.RealmConverter;
import com.privacystar.core.data.sqlite.SQLiteMigration;
import com.privacystar.core.p011ui.debug.DebugAction;
import io.realm.Realm;
/* renamed from: com.privacystar.core.ui.debug.actions.TestSQLiteMigrationConvertAndClean */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/debug/actions/TestSQLiteMigrationConvertAndClean.class */
public class TestSQLiteMigrationConvertAndClean extends DebugAction {
    @Override // com.privacystar.core.p011ui.debug.DebugAction
    public String getTitle() {
        return "SQLite Migrate, Populate, Convert & Clean";
    }

    @Override // com.privacystar.core.p011ui.debug.DebugAction
    public void onPerformAction(Context context) {
        Realm defaultInstance = Realm.getDefaultInstance();
        try {
            SQLiteMigration.from().testFullUpgrade(context);
            RealmConverter.generateTestData(context);
            RealmConverter.convertSQLiteToRealm(context, defaultInstance);
            SQLiteMigration.from().deleteDatabase(context);
            if (defaultInstance != null) {
                defaultInstance.close();
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (defaultInstance != null) {
                    if (th != null) {
                        try {
                            defaultInstance.close();
                        } catch (Throwable th3) {
                            th.addSuppressed(th3);
                        }
                    } else {
                        defaultInstance.close();
                    }
                }
                throw th2;
            }
        }
    }
}
