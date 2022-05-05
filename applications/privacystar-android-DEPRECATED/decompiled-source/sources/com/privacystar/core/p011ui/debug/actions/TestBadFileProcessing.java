package com.privacystar.core.p011ui.debug.actions;

import android.content.Context;
import com.privacystar.core.PSApplication;
import com.privacystar.core.p011ui.debug.DebugAction;
import com.privacystar.core.service.jobs.OffenderProcessingJob;
/* renamed from: com.privacystar.core.ui.debug.actions.TestBadFileProcessing */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/debug/actions/TestBadFileProcessing.class */
public class TestBadFileProcessing extends DebugAction {
    private String customUrl = "";

    @Override // com.privacystar.core.p011ui.debug.DebugAction
    public String getTitle() {
        return "Test bad file handling";
    }

    @Override // com.privacystar.core.p011ui.debug.DebugAction
    public void onPerformAction(Context context) {
        PSApplication.getInstance().getJobManager().addJobInBackground(new OffenderProcessingJob().withBinaryData("missing_filename.fake").isFullUpdate(false).withShortName("gibberish").withControlNumber(0L));
    }
}
