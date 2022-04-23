package com.privacystar.core.p011ui.debug.actions;

import android.content.Context;
import com.privacystar.core.p011ui.debug.DebugAction;
import io.realm.Realm;
/* renamed from: com.privacystar.core.ui.debug.actions.TestPlayStoreReceiptDelta */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/debug/actions/TestPlayStoreReceiptDelta.class */
public class TestPlayStoreReceiptDelta extends DebugAction {
    @Override // com.privacystar.core.p011ui.debug.DebugAction
    public String getTitle() {
        return "Test Purchase Cache";
    }

    @Override // com.privacystar.core.p011ui.debug.DebugAction
    public void onPerformAction(Context context) {
        Realm defaultInstance = Realm.getDefaultInstance();
        if (defaultInstance != null) {
            defaultInstance.close();
        }
    }
}
