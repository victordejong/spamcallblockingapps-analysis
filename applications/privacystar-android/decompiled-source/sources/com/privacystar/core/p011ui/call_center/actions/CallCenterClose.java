package com.privacystar.core.p011ui.call_center.actions;

import android.app.Activity;
import android.content.Context;
import com.privacystar.core.p011ui.call_center.CallCenterAction;
import timber.log.Timber;
/* renamed from: com.privacystar.core.ui.call_center.actions.CallCenterClose */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/call_center/actions/CallCenterClose.class */
public class CallCenterClose extends CallCenterAction {
    @Override // com.privacystar.core.p011ui.call_center.CallCenterAction
    public int getImageID() {
        return 0;
    }

    @Override // com.privacystar.core.p011ui.call_center.CallCenterAction
    public int getLabelID() {
        return 0;
    }

    @Override // com.privacystar.core.p011ui.call_center.CallCenterAction
    public void performAction(Context context) {
        if (context instanceof Activity) {
            ((Activity) context).finish();
        } else {
            Timber.m28v("Couldn't close activity", new Object[0]);
        }
    }
}
