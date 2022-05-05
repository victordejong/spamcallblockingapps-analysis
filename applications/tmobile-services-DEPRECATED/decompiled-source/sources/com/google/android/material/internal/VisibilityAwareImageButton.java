package com.google.android.material.internal;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.AttributeSet;
import android.widget.ImageButton;
import androidx.annotation.RestrictTo;
@SuppressLint({"AppCompatCustomView"})
@RestrictTo
/* loaded from: classes-dex2jar.jar:com/google/android/material/internal/VisibilityAwareImageButton.class */
public class VisibilityAwareImageButton extends ImageButton {

    /* renamed from: f */
    private int f10964f;

    public VisibilityAwareImageButton(Context context) {
        this(context, null);
    }

    public VisibilityAwareImageButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public VisibilityAwareImageButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f10964f = getVisibility();
    }

    /* renamed from: a */
    public final void m9422a(int i, boolean z) {
        super.setVisibility(i);
        if (z) {
            this.f10964f = i;
        }
    }

    public final int getUserSetVisibility() {
        return this.f10964f;
    }

    @Override // android.widget.ImageView, android.view.View
    public void setVisibility(int i) {
        m9422a(i, true);
    }
}
