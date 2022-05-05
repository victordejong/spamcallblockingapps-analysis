package com.privacystar.core.p011ui.debug.actions;

import android.content.Context;
import com.privacystar.core.p011ui.debug.DebugAction;
import com.privacystar.core.service.network.handler.BulkLookupHandler;
import io.realm.Realm;
import java.util.ArrayList;
/* renamed from: com.privacystar.core.ui.debug.actions.TestBulkLookupRequest */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/debug/actions/TestBulkLookupRequest.class */
public class TestBulkLookupRequest extends DebugAction {
    @Override // com.privacystar.core.p011ui.debug.DebugAction
    public String getTitle() {
        return "Test Bulk Lookup Request";
    }

    @Override // com.privacystar.core.p011ui.debug.DebugAction
    public void onPerformAction(Context context) {
        ArrayList arrayList = new ArrayList();
        arrayList.add("5012912102");
        arrayList.add("5015551234");
        arrayList.add("1111111111");
        arrayList.add("5012799067");
        arrayList.add("8278389382");
        Realm defaultInstance = Realm.getDefaultInstance();
        try {
            BulkLookupHandler.getInstance().lookupCallers(defaultInstance, arrayList);
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
