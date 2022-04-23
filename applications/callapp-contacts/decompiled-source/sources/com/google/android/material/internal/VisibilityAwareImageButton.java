package com.google.android.material.internal;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ImageButton;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/internal/VisibilityAwareImageButton.class */
public class VisibilityAwareImageButton extends ImageButton {

    /* renamed from: d  reason: collision with root package name */
    public int f30607d;

    public VisibilityAwareImageButton(Context context) {
        this(context, null);
    }

    public VisibilityAwareImageButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public VisibilityAwareImageButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f30607d = getVisibility();
    }

    public final void a(int i, boolean z) {
        super.setVisibility(i);
        if (z) {
            this.f30607d = i;
        }
    }

    @Override // android.widget.ImageView, android.view.View
    public void setVisibility(int i) {
        a(i, true);
    }
}
