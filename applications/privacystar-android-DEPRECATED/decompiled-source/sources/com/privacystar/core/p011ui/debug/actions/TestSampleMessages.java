package com.privacystar.core.p011ui.debug.actions;

import android.content.Context;
import com.privacystar.core.data.model.helper.MessageRealm;
import com.privacystar.core.p011ui.debug.DebugAction;
import io.realm.Realm;
/* renamed from: com.privacystar.core.ui.debug.actions.TestSampleMessages */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/debug/actions/TestSampleMessages.class */
public class TestSampleMessages extends DebugAction {
    @Override // com.privacystar.core.p011ui.debug.DebugAction
    public String getTitle() {
        return "Test sample messages.";
    }

    @Override // com.privacystar.core.p011ui.debug.DebugAction
    public void onPerformAction(Context context) {
        Realm defaultInstance = Realm.getDefaultInstance();
        try {
            MessageRealm.initializeDebugMessages(defaultInstance);
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
