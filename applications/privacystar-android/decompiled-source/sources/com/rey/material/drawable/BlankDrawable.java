package com.rey.material.drawable;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.drawable.Drawable;
/* loaded from: classes2-dex2jar.jar:com/rey/material/drawable/BlankDrawable.class */
public class BlankDrawable extends Drawable {
    private static BlankDrawable mInstance;

    public static BlankDrawable getInstance() {
        if (mInstance == null) {
            synchronized (BlankDrawable.class) {
                try {
                    if (mInstance == null) {
                        mInstance = new BlankDrawable();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return mInstance;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -2;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }
}
