package com.google.android.material.internal;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ImageButton;
import androidx.annotation.RestrictTo;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes2-dex2jar.jar:com/google/android/material/internal/VisibilityAwareImageButton.class */
public class VisibilityAwareImageButton extends ImageButton {

    /* renamed from: a */
    public int f7519a;

    public VisibilityAwareImageButton(Context context) {
        this(context, null);
    }

    public VisibilityAwareImageButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public VisibilityAwareImageButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f7519a = getVisibility();
    }

    /* renamed from: a */
    public final void m31326a(int i, boolean z) {
        super.setVisibility(i);
        if (z) {
            this.f7519a = i;
        }
    }

    /* renamed from: b */
    public final int m31325b() {
        return this.f7519a;
    }

    @Override // android.widget.ImageView, android.view.View
    public void setVisibility(int i) {
        m31326a(i, true);
    }
}
