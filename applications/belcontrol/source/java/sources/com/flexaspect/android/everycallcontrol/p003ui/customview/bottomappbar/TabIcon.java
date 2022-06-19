package com.flexaspect.android.everycallcontrol.p003ui.customview.bottomappbar;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ImageView;
/* renamed from: com.flexaspect.android.everycallcontrol.ui.customview.bottomappbar.TabIcon */
/* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/TabIcon.class */
public class TabIcon extends ImageView {

    /* renamed from: b */
    public static final int[] f2819b = {2130969748};

    /* renamed from: c */
    public static final int[] f2820c = {2130969750};

    /* renamed from: d */
    public static final int[] f2821d = {2130969749};

    /* renamed from: f */
    public static final int[] f2822f = {2130969751};

    /* renamed from: a */
    public boolean f2823a = false;

    public TabIcon(Context context) {
        super(context);
    }

    public TabIcon(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public TabIcon(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @Override // android.widget.ImageView, android.view.View
    public int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 3);
        if (isPressed() || isFocused() || isSelected()) {
            ImageView.mergeDrawableStates(onCreateDrawableState, this.f2823a ? f2822f : f2820c);
        } else {
            ImageView.mergeDrawableStates(onCreateDrawableState, this.f2823a ? f2821d : f2819b);
        }
        return onCreateDrawableState;
    }

    public void setBadge(boolean z) {
        this.f2823a = z;
        refreshDrawableState();
    }
}
