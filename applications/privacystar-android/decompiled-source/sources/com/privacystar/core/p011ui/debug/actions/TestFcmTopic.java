package com.privacystar.core.p011ui.debug.actions;

import android.content.Context;
import com.privacystar.core.C1566R;
import com.privacystar.core.p011ui.debug.DebugAction;
import com.privacystar.core.service.firebase.PSFirebaseInstanceIDService;
import timber.log.Timber;
/* renamed from: com.privacystar.core.ui.debug.actions.TestFcmTopic */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/debug/actions/TestFcmTopic.class */
public class TestFcmTopic extends DebugAction {
    @Override // com.privacystar.core.p011ui.debug.DebugAction
    public String getTitle() {
        return "Test FCM Topic Subscription";
    }

    @Override // com.privacystar.core.p011ui.debug.DebugAction
    public void onPerformAction(Context context) {
        String string = context.getString(C1566R.string.fcm_topic_offender_deltas);
        Timber.m37d("Subscribing to [%s]", string);
        PSFirebaseInstanceIDService.subscribeToTopic(string);
    }
}
