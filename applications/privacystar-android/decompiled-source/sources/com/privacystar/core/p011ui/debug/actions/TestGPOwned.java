package com.privacystar.core.p011ui.debug.actions;

import android.content.Context;
import com.privacystar.core.p011ui.debug.DebugAction;
import com.privacystar.core.service.googleplay.p010v3.BillingHelper;
/* renamed from: com.privacystar.core.ui.debug.actions.TestGPOwned */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/debug/actions/TestGPOwned.class */
public class TestGPOwned extends DebugAction {
    @Override // com.privacystar.core.p011ui.debug.DebugAction
    public String getTitle() {
        return "Test GP Owned Items";
    }

    @Override // com.privacystar.core.p011ui.debug.DebugAction
    public void onPerformAction(Context context) {
        BillingHelper.checkPurchases(context);
    }
}
