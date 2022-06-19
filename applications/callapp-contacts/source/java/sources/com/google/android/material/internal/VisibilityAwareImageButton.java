package com.google.android.material.internal;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ImageButton;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/internal/VisibilityAwareImageButton.class */
public class VisibilityAwareImageButton extends ImageButton {

    /* renamed from: d */
    public int f53314d;

    public VisibilityAwareImageButton(Context context) {
        this(context, null);
    }

    public VisibilityAwareImageButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public VisibilityAwareImageButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f53314d = getVisibility();
    }

    /* renamed from: a */
    public final void m10609a(int i, boolean z) {
        super.setVisibility(i);
        if (z) {
            this.f53314d = i;
        }
    }

    @Override // android.widget.ImageView, android.view.View
    public void setVisibility(int i) {
        m10609a(i, true);
    }
}
