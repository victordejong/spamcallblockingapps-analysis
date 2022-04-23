package com.android.contacts.detail;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.util.AttributeSet;
import android.widget.ImageView;
/* loaded from: classes-dex2jar.jar:com/android/contacts/detail/TransformableImageView.class */
public class TransformableImageView extends ImageView {
    public TransformableImageView(Context context) {
        super(context);
    }

    public TransformableImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public TransformableImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        float f;
        float f2;
        float f3;
        int saveCount = canvas.getSaveCount();
        canvas.save();
        canvas.translate(getPaddingLeft(), getPaddingTop());
        Matrix matrix = new Matrix();
        int intrinsicWidth = getDrawable().getIntrinsicWidth();
        int intrinsicHeight = getDrawable().getIntrinsicHeight();
        int width = (getWidth() - getPaddingLeft()) - getPaddingRight();
        int height = (getHeight() - getPaddingTop()) - getPaddingBottom();
        if (intrinsicWidth * height > width * intrinsicHeight) {
            f = height / intrinsicHeight;
            f3 = (width - (intrinsicWidth * f)) * 0.5f;
            f2 = 0.0f;
        } else {
            f = width / intrinsicWidth;
            f2 = (height - (intrinsicHeight * f)) * 0.5f;
            f3 = 0.0f;
        }
        matrix.setScale(f, f);
        matrix.postTranslate((int) (f3 + 0.5f), (int) (f2 + 0.5f));
        canvas.concat(matrix);
        getDrawable().draw(canvas);
        canvas.restoreToCount(saveCount);
    }
}
