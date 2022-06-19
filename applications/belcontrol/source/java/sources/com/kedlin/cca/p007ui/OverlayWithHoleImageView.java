package com.kedlin.cca.p007ui;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.util.AttributeSet;
import android.widget.ImageView;
/* renamed from: com.kedlin.cca.ui.OverlayWithHoleImageView */
/* loaded from: classes3-dex2jar.jar:com/kedlin/cca/ui/OverlayWithHoleImageView.class */
public class OverlayWithHoleImageView extends ImageView {

    /* renamed from: a */
    public Bitmap f4052a;

    /* renamed from: b */
    public Canvas f4053b;

    /* renamed from: c */
    public Paint f4054c;

    /* renamed from: d */
    public Paint f4055d;

    /* renamed from: f */
    public boolean f4056f = false;

    /* renamed from: g */
    public int f4057g;

    public OverlayWithHoleImageView(Context context) {
        super(context);
        m4130a();
    }

    public OverlayWithHoleImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m4130a();
    }

    public OverlayWithHoleImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m4130a();
    }

    /* renamed from: a */
    public final void m4130a() {
        Paint paint = new Paint();
        this.f4054c = paint;
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
        this.f4054c.setAntiAlias(true);
        Paint paint2 = new Paint();
        this.f4055d = paint2;
        paint2.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_ATOP));
        this.f4055d.setAntiAlias(true);
    }

    /* renamed from: b */
    public final void m4129b(int i, int i2) {
        this.f4052a = Bitmap.createBitmap(i, i2, Bitmap.Config.ARGB_8888);
        this.f4053b = new Canvas(this.f4052a);
    }

    @Override // android.widget.ImageView, android.view.View
    public void onDraw(Canvas canvas) {
        if (this.f4056f) {
            int width = getWidth() / 2;
            int height = getHeight() / 2;
            if (width > 0 && height > 0) {
                if (this.f4052a == null || this.f4053b == null) {
                    m4129b(getWidth(), getHeight());
                }
                this.f4052a.eraseColor(0);
                float f = width;
                float f2 = height;
                this.f4053b.drawCircle(f, f2, Math.min(width, height), this.f4055d);
                this.f4053b.drawCircle(f, f2, this.f4057g, this.f4054c);
                canvas.drawBitmap(this.f4052a, 0.0f, 0.0f, (Paint) null);
            }
        }
        super.onDraw(canvas);
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        if (i != i3 || i2 != i4) {
            m4129b(i, i2);
        }
        super.onSizeChanged(i, i2, i3, i4);
    }

    public void setColor(int i) {
        this.f4055d.setColor(i);
        postInvalidate();
    }

    public void setRadius(int i) {
        this.f4057g = i;
        postInvalidate();
    }

    public void setReadyForDraw(boolean z) {
        this.f4056f = z;
        postInvalidate();
    }
}
