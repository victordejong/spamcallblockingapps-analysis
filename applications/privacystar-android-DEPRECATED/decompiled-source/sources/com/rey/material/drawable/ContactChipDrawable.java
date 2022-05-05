package com.rey.material.drawable;

import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.text.BoringLayout;
import android.text.Layout;
import android.text.TextPaint;
import android.text.TextUtils;
/* loaded from: classes2-dex2jar.jar:com/rey/material/drawable/ContactChipDrawable.class */
public class ContactChipDrawable extends Drawable {
    private int mBackgroundColor;
    private Bitmap mBitmap;
    private BitmapShader mBitmapShader;
    private BoringLayout mBoringLayout;
    private CharSequence mContactName;
    private int mPaddingLeft;
    private int mPaddingRight;
    private Paint mPaint = new Paint(1);
    private TextPaint mTextPaint = new TextPaint(this.mPaint);
    private BoringLayout.Metrics mMetrics = new BoringLayout.Metrics();
    private RectF mRect = new RectF();
    private Matrix mMatrix = new Matrix();

    public ContactChipDrawable(int i, int i2, Typeface typeface, int i3, int i4, int i5) {
        this.mPaint.setStyle(Paint.Style.FILL);
        this.mPaint.setColor(i3);
        this.mPaint.setTypeface(typeface);
        this.mPaint.setTextSize(i4);
        Paint.FontMetricsInt fontMetricsInt = this.mTextPaint.getFontMetricsInt();
        this.mMetrics.ascent = fontMetricsInt.ascent;
        this.mMetrics.bottom = fontMetricsInt.bottom;
        this.mMetrics.descent = fontMetricsInt.descent;
        this.mMetrics.top = fontMetricsInt.top;
        this.mMetrics.leading = fontMetricsInt.leading;
        this.mPaddingLeft = i;
        this.mPaddingRight = i2;
        this.mBackgroundColor = i5;
    }

    private void updateLayout() {
        if (this.mContactName != null) {
            Rect bounds = getBounds();
            if (bounds.width() != 0 && bounds.height() != 0) {
                int max = Math.max(0, ((bounds.width() - bounds.height()) - this.mPaddingLeft) - this.mPaddingRight);
                this.mMetrics.width = Math.round(this.mTextPaint.measureText(this.mContactName, 0, this.mContactName.length()) + 0.5f);
                if (this.mBoringLayout == null) {
                    this.mBoringLayout = BoringLayout.make(this.mContactName, this.mTextPaint, max, Layout.Alignment.ALIGN_NORMAL, 1.0f, 1.0f, this.mMetrics, true, TextUtils.TruncateAt.END, max);
                } else {
                    this.mBoringLayout = this.mBoringLayout.replaceOrMake(this.mContactName, this.mTextPaint, max, Layout.Alignment.ALIGN_NORMAL, 1.0f, 1.0f, this.mMetrics, true, TextUtils.TruncateAt.END, max);
                }
            }
        }
    }

    private void updateMatrix() {
        if (this.mBitmap != null) {
            Rect bounds = getBounds();
            if (bounds.width() != 0 && bounds.height() != 0) {
                this.mMatrix.reset();
                float height = bounds.height() / Math.min(this.mBitmap.getWidth(), this.mBitmap.getHeight());
                this.mMatrix.setScale(height, height, 0.0f, 0.0f);
                this.mMatrix.postTranslate((bounds.height() - (this.mBitmap.getWidth() * height)) / 2.0f, (bounds.height() - (this.mBitmap.getHeight() * height)) / 2.0f);
                this.mBitmapShader.setLocalMatrix(this.mMatrix);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        int save = canvas.save();
        Rect bounds = getBounds();
        float height = bounds.height() / 2.0f;
        this.mPaint.setShader(null);
        this.mPaint.setColor(this.mBackgroundColor);
        this.mRect.set(1.0f, 0.0f, bounds.height() + 1, bounds.height());
        canvas.drawArc(this.mRect, 90.0f, 180.0f, true, this.mPaint);
        this.mRect.set(bounds.width() - bounds.height(), 0.0f, bounds.width(), bounds.height());
        canvas.drawArc(this.mRect, 270.0f, 180.0f, true, this.mPaint);
        this.mRect.set(height, 0.0f, bounds.width() - height, bounds.height());
        canvas.drawRect(this.mRect, this.mPaint);
        if (this.mBitmap != null) {
            this.mPaint.setShader(this.mBitmapShader);
            canvas.drawCircle(height, height, height, this.mPaint);
        }
        if (!(this.mContactName == null || this.mBoringLayout == null)) {
            canvas.translate(bounds.height() + this.mPaddingLeft, (bounds.height() - this.mBoringLayout.getHeight()) / 2.0f);
            this.mBoringLayout.draw(canvas);
        }
        canvas.restoreToCount(save);
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        updateLayout();
        updateMatrix();
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.mPaint.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.mPaint.setColorFilter(colorFilter);
    }

    public void setContactName(CharSequence charSequence) {
        this.mContactName = charSequence;
        updateLayout();
        invalidateSelf();
    }

    public void setImage(Bitmap bitmap) {
        if (this.mBitmap != bitmap) {
            this.mBitmap = bitmap;
            if (this.mBitmap != null) {
                this.mBitmapShader = new BitmapShader(this.mBitmap, Shader.TileMode.CLAMP, Shader.TileMode.CLAMP);
                updateMatrix();
            }
            invalidateSelf();
        }
    }
}
