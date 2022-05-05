package com.privacystar.core.p011ui.debug.actions;

import android.content.Context;
import com.privacystar.core.p011ui.debug.DebugAction;
import com.privacystar.core.service.network.handler.BlockListPutHandler;
import java.util.ArrayList;
/* renamed from: com.privacystar.core.ui.debug.actions.TestBlockListPut */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/debug/actions/TestBlockListPut.class */
public class TestBlockListPut extends DebugAction {
    @Override // com.privacystar.core.p011ui.debug.DebugAction
    public String getTitle() {
        return "Test Block List Put";
    }

    @Override // com.privacystar.core.p011ui.debug.DebugAction
    public void onPerformAction(Context context) {
        ArrayList arrayList = new ArrayList();
        arrayList.add("5017770001");
        arrayList.add("5017770002");
        arrayList.add("5017770003");
        arrayList.add("5017770004");
        arrayList.add("5017779999");
        BlockListPutHandler.getInstance().generateAndEnqueueRequest(arrayList);
    }
}
