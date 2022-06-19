package com.google.android.material.internal;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.AttributeSet;
import android.widget.ImageButton;
@SuppressLint({"AppCompatCustomView"})
/* loaded from: classes2-dex2jar.jar:com/google/android/material/internal/VisibilityAwareImageButton.class */
public class VisibilityAwareImageButton extends ImageButton {

    /* renamed from: d */
    private int f36918d;

    public VisibilityAwareImageButton(Context context) {
        this(context, null);
    }

    public VisibilityAwareImageButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public VisibilityAwareImageButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f36918d = getVisibility();
    }

    /* renamed from: b */
    public final void m4623b(int i, boolean z) {
        super.setVisibility(i);
        if (z) {
            this.f36918d = i;
        }
    }

    public final int getUserSetVisibility() {
        return this.f36918d;
    }

    @Override // android.widget.ImageView, android.view.View
    public void setVisibility(int i) {
        m4623b(i, true);
    }
}
