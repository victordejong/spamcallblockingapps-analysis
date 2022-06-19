package com.unknownphone.callblocker.custom;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.LinearLayout;
/* loaded from: classes-dex2jar.jar:com/unknownphone/callblocker/custom/ViewSwitchLayout.class */
public class ViewSwitchLayout extends LinearLayout {
    public ViewSwitchLayout(Context context) {
        this(context, null, 0);
    }

    public ViewSwitchLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ViewSwitchLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        setOrientation(1);
    }

    public int getIndex() {
        int i = 0;
        while (true) {
            if (i >= getChildCount()) {
                i = -1;
                break;
            } else if (getChildAt(i).getVisibility() == 0) {
                break;
            } else {
                i++;
            }
        }
        return i;
    }

    public void setView(int i) {
        int i2 = 0;
        while (i2 < getChildCount()) {
            getChildAt(i2).setVisibility(i2 == i ? 0 : 8);
            i2++;
        }
    }
}
