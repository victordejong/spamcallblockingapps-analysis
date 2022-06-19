package com.google.android.material.textfield;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.view.View;
import com.google.android.flexbox.FlexItem;
/* loaded from: classes-dex2jar.jar:com/google/android/material/textfield/CutoutDrawable.class */
class CutoutDrawable extends GradientDrawable {
    private int savedLayer;
    private final Paint cutoutPaint = new Paint(1);
    private final RectF cutoutBounds = new RectF();

    public CutoutDrawable() {
        setPaintStyles();
    }

    private void postDraw(Canvas canvas) {
        if (!useHardwareLayer(getCallback())) {
            canvas.restoreToCount(this.savedLayer);
        }
    }

    private void preDraw(Canvas canvas) {
        Drawable.Callback callback = getCallback();
        if (useHardwareLayer(callback)) {
            ((View) callback).setLayerType(2, null);
        } else {
            saveCanvasLayer(canvas);
        }
    }

    private void saveCanvasLayer(Canvas canvas) {
        if (Build.VERSION.SDK_INT >= 21) {
            this.savedLayer = canvas.saveLayer(FlexItem.FLEX_GROW_DEFAULT, FlexItem.FLEX_GROW_DEFAULT, canvas.getWidth(), canvas.getHeight(), null);
        } else {
            this.savedLayer = canvas.saveLayer(FlexItem.FLEX_GROW_DEFAULT, FlexItem.FLEX_GROW_DEFAULT, canvas.getWidth(), canvas.getHeight(), null, 31);
        }
    }

    private void setPaintStyles() {
        this.cutoutPaint.setStyle(Paint.Style.FILL_AND_STROKE);
        this.cutoutPaint.setColor(-1);
        this.cutoutPaint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
    }

    private boolean useHardwareLayer(Drawable.Callback callback) {
        return callback instanceof View;
    }

    @Override // android.graphics.drawable.GradientDrawable, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        preDraw(canvas);
        super.draw(canvas);
        canvas.drawRect(this.cutoutBounds, this.cutoutPaint);
        postDraw(canvas);
    }

    public boolean hasCutout() {
        return !this.cutoutBounds.isEmpty();
    }

    public void removeCutout() {
        setCutout(FlexItem.FLEX_GROW_DEFAULT, FlexItem.FLEX_GROW_DEFAULT, FlexItem.FLEX_GROW_DEFAULT, FlexItem.FLEX_GROW_DEFAULT);
    }

    void setCutout(float f, float f2, float f3, float f4) {
        if (f == this.cutoutBounds.left && f2 == this.cutoutBounds.top && f3 == this.cutoutBounds.right && f4 == this.cutoutBounds.bottom) {
            return;
        }
        this.cutoutBounds.set(f, f2, f3, f4);
        invalidateSelf();
    }

    public void setCutout(RectF rectF) {
        setCutout(rectF.left, rectF.top, rectF.right, rectF.bottom);
    }
}
