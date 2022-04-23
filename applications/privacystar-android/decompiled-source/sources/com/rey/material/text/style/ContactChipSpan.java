package com.rey.material.text.style;

import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.Typeface;
import android.text.BoringLayout;
import android.text.Layout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.style.ReplacementSpan;
/* loaded from: classes2-dex2jar.jar:com/rey/material/text/style/ContactChipSpan.class */
public class ContactChipSpan extends ReplacementSpan {
    private int mBackgroundColor;
    private Bitmap mBitmap;
    private BitmapShader mBitmapShader;
    private BoringLayout mBoringLayout;
    private CharSequence mContactName;
    private int mHeight;
    private int mPaddingLeft;
    private int mPaddingRight;
    private int mWidth;
    private Paint mPaint = new Paint(1);
    private TextPaint mTextPaint = new TextPaint(this.mPaint);
    private RectF mRect = new RectF();
    private Matrix mMatrix = new Matrix();

    public ContactChipSpan(CharSequence charSequence, int i, int i2, int i3, int i4, Typeface typeface, int i5, int i6, int i7) {
        this.mPaint.setStyle(Paint.Style.FILL);
        this.mPaint.setColor(i5);
        this.mPaint.setTypeface(typeface);
        this.mPaint.setTextSize(i6);
        this.mContactName = charSequence;
        this.mPaddingLeft = i3;
        this.mPaddingRight = i4;
        this.mBackgroundColor = i7;
        this.mHeight = i;
        this.mWidth = Math.round(Math.min(i2, this.mPaint.measureText(charSequence, 0, charSequence.length()) + i3 + i4 + i));
        int max = Math.max(0, ((this.mWidth - this.mPaddingLeft) - this.mPaddingRight) - this.mHeight);
        Paint.FontMetricsInt fontMetricsInt = this.mTextPaint.getFontMetricsInt();
        BoringLayout.Metrics metrics = new BoringLayout.Metrics();
        metrics.width = Math.round(this.mTextPaint.measureText(this.mContactName, 0, this.mContactName.length()) + 0.5f);
        metrics.ascent = fontMetricsInt.ascent;
        metrics.bottom = fontMetricsInt.bottom;
        metrics.descent = fontMetricsInt.descent;
        metrics.top = fontMetricsInt.top;
        metrics.leading = fontMetricsInt.leading;
        this.mBoringLayout = BoringLayout.make(this.mContactName, this.mTextPaint, max, Layout.Alignment.ALIGN_NORMAL, 1.0f, 1.0f, metrics, true, TextUtils.TruncateAt.END, max);
    }

    @Override // android.text.style.ReplacementSpan
    public void draw(Canvas canvas, CharSequence charSequence, int i, int i2, float f, int i3, int i4, int i5, Paint paint) {
        canvas.save();
        canvas.translate(f, i3);
        float f2 = this.mHeight / 2.0f;
        this.mPaint.setShader(null);
        this.mPaint.setColor(this.mBackgroundColor);
        this.mRect.set(1.0f, 0.0f, this.mHeight + 1, this.mHeight);
        canvas.drawArc(this.mRect, 90.0f, 180.0f, true, this.mPaint);
        this.mRect.set(this.mWidth - this.mHeight, 0.0f, this.mWidth, this.mHeight);
        canvas.drawArc(this.mRect, 270.0f, 180.0f, true, this.mPaint);
        this.mRect.set(f2, 0.0f, this.mWidth - f2, this.mHeight);
        canvas.drawRect(this.mRect, this.mPaint);
        if (this.mBitmap != null) {
            this.mPaint.setShader(this.mBitmapShader);
            canvas.drawCircle(f2, f2, f2, this.mPaint);
        }
        if (!(this.mContactName == null || this.mBoringLayout == null)) {
            canvas.translate(this.mHeight + this.mPaddingLeft, (this.mHeight - this.mBoringLayout.getHeight()) / 2.0f);
            this.mBoringLayout.draw(canvas);
        }
        canvas.restore();
    }

    @Override // android.text.style.ReplacementSpan
    public int getSize(Paint paint, CharSequence charSequence, int i, int i2, Paint.FontMetricsInt fontMetricsInt) {
        if (fontMetricsInt != null) {
            int i3 = (fontMetricsInt.ascent + fontMetricsInt.descent) / 2;
            fontMetricsInt.ascent = Math.min(fontMetricsInt.ascent, i3 - (this.mHeight / 2));
            fontMetricsInt.descent = Math.max(fontMetricsInt.descent, i3 + (this.mHeight / 2));
            fontMetricsInt.top = Math.min(fontMetricsInt.top, fontMetricsInt.ascent);
            fontMetricsInt.bottom = Math.max(fontMetricsInt.bottom, fontMetricsInt.descent);
        }
        return this.mWidth;
    }

    public void setImage(Bitmap bitmap) {
        if (this.mBitmap != bitmap) {
            this.mBitmap = bitmap;
            if (this.mBitmap != null) {
                this.mBitmapShader = new BitmapShader(this.mBitmap, Shader.TileMode.CLAMP, Shader.TileMode.CLAMP);
                this.mMatrix.reset();
                float min = this.mHeight / Math.min(this.mBitmap.getWidth(), this.mBitmap.getHeight());
                this.mMatrix.setScale(min, min, 0.0f, 0.0f);
                this.mMatrix.postTranslate((this.mHeight - (this.mBitmap.getWidth() * min)) / 2.0f, (this.mHeight - (this.mBitmap.getHeight() * min)) / 2.0f);
                this.mBitmapShader.setLocalMatrix(this.mMatrix);
            }
        }
    }
}
