package com.truecaller.p183ui.components;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import androidx.appcompat.widget.Toolbar;
/* renamed from: com.truecaller.ui.components.NonClickableToolbar */
/* loaded from: classes15-dex2jar.jar:com/truecaller/ui/components/NonClickableToolbar.class */
public class NonClickableToolbar extends Toolbar {
    public NonClickableToolbar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return false;
    }
}
