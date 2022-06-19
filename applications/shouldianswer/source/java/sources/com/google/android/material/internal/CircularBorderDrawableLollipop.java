package com.google.android.material.internal;

import android.graphics.Outline;
/* loaded from: classes-dex2jar.jar:com/google/android/material/internal/CircularBorderDrawableLollipop.class */
public class CircularBorderDrawableLollipop extends CircularBorderDrawable {
    @Override // android.graphics.drawable.Drawable
    public void getOutline(Outline outline) {
        copyBounds(this.rect);
        outline.setOval(this.rect);
    }
}
