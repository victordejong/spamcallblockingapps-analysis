package com.privacystar.core.p011ui.debug.actions;

import android.content.Context;
import com.privacystar.core.p011ui.debug.DebugAction;
import com.privacystar.core.service.firebase.FirebaseMessageSender;
import timber.log.Timber;
/* renamed from: com.privacystar.core.ui.debug.actions.TestFcmRegisterUpstream */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/debug/actions/TestFcmRegisterUpstream.class */
public class TestFcmRegisterUpstream extends DebugAction {
    @Override // com.privacystar.core.p011ui.debug.DebugAction
    public String getTitle() {
        return "Test FCM Register Upstream";
    }

    @Override // com.privacystar.core.p011ui.debug.DebugAction
    public void onPerformAction(Context context) {
        Timber.m37d("Registering upstream with FCM.", new Object[0]);
        FirebaseMessageSender.registerUpstream();
    }
}
