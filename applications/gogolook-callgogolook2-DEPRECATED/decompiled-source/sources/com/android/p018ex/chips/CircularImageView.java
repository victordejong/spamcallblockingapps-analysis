package com.android.p018ex.chips;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.util.AttributeSet;
import android.widget.ImageView;
/* renamed from: com.android.ex.chips.CircularImageView */
/* loaded from: classes-dex2jar.jar:com/android/ex/chips/CircularImageView.class */
public class CircularImageView extends ImageView {

    /* renamed from: f */
    public static float f828f = 1.0f;

    /* renamed from: a */
    public final Matrix f829a;

    /* renamed from: b */
    public final RectF f830b;

    /* renamed from: c */
    public final RectF f831c;

    /* renamed from: d */
    public final Paint f832d;

    /* renamed from: e */
    public final Paint f833e;

    public CircularImageView(Context context) {
        this(context, null, 0);
    }

    public CircularImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public CircularImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f829a = new Matrix();
        this.f830b = new RectF();
        this.f831c = new RectF();
        this.f832d = new Paint();
        this.f832d.setAntiAlias(true);
        this.f832d.setFilterBitmap(true);
        this.f832d.setDither(true);
        this.f833e = new Paint();
        this.f833e.setColor(0);
        this.f833e.setStyle(Paint.Style.STROKE);
        this.f833e.setStrokeWidth(f828f);
        this.f833e.setAntiAlias(true);
    }

    /* renamed from: a */
    public void m37010a(Bitmap bitmap, Canvas canvas, RectF rectF, RectF rectF2) {
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        BitmapShader bitmapShader = new BitmapShader(bitmap, tileMode, tileMode);
        this.f829a.reset();
        this.f829a.setRectToRect(rectF, rectF2, Matrix.ScaleToFit.FILL);
        bitmapShader.setLocalMatrix(this.f829a);
        this.f832d.setShader(bitmapShader);
        canvas.drawCircle(rectF2.centerX(), rectF2.centerY(), rectF2.width() / 2.0f, this.f832d);
        canvas.drawCircle(rectF2.centerX(), rectF2.centerY(), (rectF2.width() / 2.0f) - (f828f / 2.0f), this.f833e);
    }

    @Override // android.widget.ImageView, android.view.View
    public void onDraw(Canvas canvas) {
        Bitmap bitmap;
        Drawable drawable = getDrawable();
        BitmapDrawable bitmapDrawable = drawable instanceof StateListDrawable ? ((StateListDrawable) drawable).getCurrent() != null ? (BitmapDrawable) drawable.getCurrent() : null : (BitmapDrawable) drawable;
        if (bitmapDrawable != null && (bitmap = bitmapDrawable.getBitmap()) != null) {
            this.f830b.set(0.0f, 0.0f, bitmap.getWidth(), bitmap.getHeight());
            this.f831c.set(getPaddingLeft(), getPaddingTop(), getWidth() - getPaddingRight(), getHeight() - getPaddingBottom());
            m37010a(bitmap, canvas, this.f830b, this.f831c);
        }
    }
}
