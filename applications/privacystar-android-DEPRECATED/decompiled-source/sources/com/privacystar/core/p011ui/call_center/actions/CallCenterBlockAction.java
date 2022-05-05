package com.privacystar.core.p011ui.call_center.actions;

import android.content.Context;
import android.widget.Toast;
import com.privacystar.core.C1566R;
import com.privacystar.core.p011ui.call_center.CallCenterAction;
import timber.log.Timber;
/* renamed from: com.privacystar.core.ui.call_center.actions.CallCenterBlockAction */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/call_center/actions/CallCenterBlockAction.class */
public class CallCenterBlockAction extends CallCenterAction {
    @Override // com.privacystar.core.p011ui.call_center.CallCenterAction
    public int getImageID() {
        return C1566R.C1568drawable.ic_pan_tool_black_24dp;
    }

    @Override // com.privacystar.core.p011ui.call_center.CallCenterAction
    public int getLabelID() {
        return C1566R.string.call_block;
    }

    @Override // com.privacystar.core.p011ui.call_center.CallCenterAction
    public void performAction(Context context) {
        Timber.m37d("Button Clicked", new Object[0]);
        Toast.makeText(context, "Would Block", 0).show();
    }
}
