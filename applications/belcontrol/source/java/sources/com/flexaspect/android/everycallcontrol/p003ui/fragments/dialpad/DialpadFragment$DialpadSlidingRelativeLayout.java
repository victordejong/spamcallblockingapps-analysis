package com.flexaspect.android.everycallcontrol.p003ui.fragments.dialpad;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.RelativeLayout;
/* renamed from: com.flexaspect.android.everycallcontrol.ui.fragments.dialpad.DialpadFragment$DialpadSlidingRelativeLayout */
/* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment$DialpadSlidingRelativeLayout.class */
public class DialpadFragment$DialpadSlidingRelativeLayout extends RelativeLayout {
    public DialpadFragment$DialpadSlidingRelativeLayout(Context context) {
        super(context);
    }

    public DialpadFragment$DialpadSlidingRelativeLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public DialpadFragment$DialpadSlidingRelativeLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public float getYFraction() {
        int height = getHeight();
        if (height == 0) {
            return 0.0f;
        }
        return getTranslationY() / height;
    }

    public void setYFraction(float f) {
        setTranslationY(f * getHeight());
    }
}
