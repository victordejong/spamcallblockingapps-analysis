package com.privacystar.core.p011ui.debug.actions;

import android.content.Context;
import com.privacystar.core.p011ui.debug.DebugAction;
import com.privacystar.core.service.googleplay.p010v3.BillingHelper;
import com.privacystar.core.service.googleplay.p010v3.IABV3Helper;
/* renamed from: com.privacystar.core.ui.debug.actions.TestGPSubYear */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/debug/actions/TestGPSubYear.class */
public class TestGPSubYear extends DebugAction {
    @Override // com.privacystar.core.p011ui.debug.DebugAction
    public String getTitle() {
        return "Test GP Month Year";
    }

    @Override // com.privacystar.core.p011ui.debug.DebugAction
    public void onPerformAction(Context context) {
        BillingHelper.attemptPurchase(context, "privacystar_annual", IABV3Helper.SkuType.SUBSCRIPTION);
    }
}
