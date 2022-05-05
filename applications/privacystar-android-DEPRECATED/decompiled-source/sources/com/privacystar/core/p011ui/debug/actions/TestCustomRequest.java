package com.privacystar.core.p011ui.debug.actions;

import android.content.Context;
import android.content.Intent;
import com.privacystar.core.p011ui.debug.DebugAction;
import com.privacystar.core.p011ui.debug.network.CustNetworkRequest;
/* renamed from: com.privacystar.core.ui.debug.actions.TestCustomRequest */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/debug/actions/TestCustomRequest.class */
public class TestCustomRequest extends DebugAction {
    private String customUrl = "";

    @Override // com.privacystar.core.p011ui.debug.DebugAction
    public String getTitle() {
        return "Test Custom Network Request";
    }

    @Override // com.privacystar.core.p011ui.debug.DebugAction
    public void onPerformAction(Context context) {
        context.startActivity(new Intent(context, CustNetworkRequest.class));
    }
}
