package com.privacystar.core.p011ui.call_center;

import android.content.Context;
import android.view.View;
import java.io.Serializable;
/* renamed from: com.privacystar.core.ui.call_center.CallCenterAction */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/call_center/CallCenterAction.class */
public abstract class CallCenterAction implements Serializable, View.OnClickListener {
    public abstract int getImageID();

    public abstract int getLabelID();

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        performAction(view.getContext());
    }

    public abstract void performAction(Context context);
}
