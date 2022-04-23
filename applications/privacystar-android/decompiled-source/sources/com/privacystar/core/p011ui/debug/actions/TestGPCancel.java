package com.privacystar.core.p011ui.debug.actions;

import android.content.Context;
import com.privacystar.core.PSApplication;
import com.privacystar.core.p011ui.debug.DebugAction;
import com.privacystar.core.service.jobs.GooglePlayCancelJob;
/* renamed from: com.privacystar.core.ui.debug.actions.TestGPCancel */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/debug/actions/TestGPCancel.class */
public class TestGPCancel extends DebugAction {
    @Override // com.privacystar.core.p011ui.debug.DebugAction
    public String getTitle() {
        return "Test GP Cancel Subscriptions";
    }

    @Override // com.privacystar.core.p011ui.debug.DebugAction
    public void onPerformAction(Context context) {
        PSApplication.getInstance().getJobManager().addJobInBackground(new GooglePlayCancelJob());
    }
}
