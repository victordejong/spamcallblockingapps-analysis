package com.privacystar.core.p011ui.debug.actions;

import android.content.Context;
import com.privacystar.core.data.sqlite.RealmConverter;
import com.privacystar.core.p011ui.debug.DebugAction;
import io.realm.Realm;
/* renamed from: com.privacystar.core.ui.debug.actions.TestSQLiteConversion */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/debug/actions/TestSQLiteConversion.class */
public class TestSQLiteConversion extends DebugAction {
    @Override // com.privacystar.core.p011ui.debug.DebugAction
    public String getTitle() {
        return "Test SQLite Conversion";
    }

    @Override // com.privacystar.core.p011ui.debug.DebugAction
    public void onPerformAction(Context context) {
        Realm defaultInstance = Realm.getDefaultInstance();
        try {
            RealmConverter.convertSQLiteToRealm(context, defaultInstance);
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
