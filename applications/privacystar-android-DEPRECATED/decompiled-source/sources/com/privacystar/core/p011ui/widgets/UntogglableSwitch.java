package com.privacystar.core.p011ui.widgets;

import android.content.Context;
import android.support.annotation.NonNull;
import android.util.AttributeSet;
import android.view.MotionEvent;
import com.rey.material.widget.Switch;
/* renamed from: com.privacystar.core.ui.widgets.UntogglableSwitch */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/widgets/UntogglableSwitch.class */
public class UntogglableSwitch extends Switch {
    public UntogglableSwitch(Context context) {
        super(context);
    }

    public UntogglableSwitch(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public UntogglableSwitch(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public void forceToggle() {
        super.toggle();
    }

    @Override // com.rey.material.widget.Switch, android.view.View
    public boolean onTouchEvent(@NonNull MotionEvent motionEvent) {
        if (motionEvent.getAction() != 1) {
            return false;
        }
        callOnClick();
        return true;
    }

    @Override // com.rey.material.widget.Switch, android.widget.Checkable
    public void toggle() {
    }
}
