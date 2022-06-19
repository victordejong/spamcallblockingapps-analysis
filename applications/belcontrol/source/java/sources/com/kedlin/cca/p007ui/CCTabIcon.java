package com.kedlin.cca.p007ui;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ImageButton;
/* renamed from: com.kedlin.cca.ui.CCTabIcon */
/* loaded from: classes3-dex2jar.jar:com/kedlin/cca/ui/CCTabIcon.class */
public class CCTabIcon extends ImageButton {

    /* renamed from: b */
    public static final int[] f3835b = {2130969748};

    /* renamed from: c */
    public static final int[] f3836c = {2130969750};

    /* renamed from: d */
    public static final int[] f3837d = {2130969749};

    /* renamed from: f */
    public static final int[] f3838f = {2130969751};

    /* renamed from: a */
    public boolean f3839a = false;

    public CCTabIcon(Context context) {
        super(context);
    }

    public CCTabIcon(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public CCTabIcon(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @Override // android.widget.ImageView, android.view.View
    public int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 3);
        if (isPressed() || isFocused() || isSelected()) {
            ImageButton.mergeDrawableStates(onCreateDrawableState, this.f3839a ? f3838f : f3836c);
        } else {
            ImageButton.mergeDrawableStates(onCreateDrawableState, this.f3839a ? f3837d : f3835b);
        }
        return onCreateDrawableState;
    }

    public void setBadge(boolean z) {
        this.f3839a = z;
        refreshDrawableState();
    }
}
