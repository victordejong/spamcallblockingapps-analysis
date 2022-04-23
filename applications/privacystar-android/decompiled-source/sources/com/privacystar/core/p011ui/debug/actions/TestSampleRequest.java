package com.privacystar.core.p011ui.debug.actions;

import android.content.Context;
import com.privacystar.core.C1566R;
import com.privacystar.core.PSApplication;
import com.privacystar.core.p011ui.debug.DebugAction;
import com.privacystar.core.service.jobs.WebRequestJob;
/* renamed from: com.privacystar.core.ui.debug.actions.TestSampleRequest */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/debug/actions/TestSampleRequest.class */
public class TestSampleRequest extends DebugAction {
    @Override // com.privacystar.core.p011ui.debug.DebugAction
    public String getTitle() {
        return "Test Sample Network Request";
    }

    @Override // com.privacystar.core.p011ui.debug.DebugAction
    public void onPerformAction(Context context) {
        PSApplication.getInstance().getJobManager().addJobInBackground(new WebRequestJob(PSApplication.getInstance().getResources().getString(C1566R.string.raw_request_default_url)));
    }
}
