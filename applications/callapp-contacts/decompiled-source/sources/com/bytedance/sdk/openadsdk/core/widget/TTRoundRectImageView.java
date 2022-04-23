package com.bytedance.sdk.openadsdk.core.widget;

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
import android.util.AttributeSet;
import android.widget.ImageView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView.class */
public class TTRoundRectImageView extends ImageView {

    /* renamed from: a  reason: collision with root package name */
    private Paint f9306a;

    /* renamed from: b  reason: collision with root package name */
    private int f9307b;

    /* renamed from: c  reason: collision with root package name */
    private int f9308c;

    /* renamed from: d  reason: collision with root package name */
    private Matrix f9309d;

    public TTRoundRectImageView(Context context) {
        this(context, null);
    }

    public TTRoundRectImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TTRoundRectImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f9307b = 25;
        this.f9308c = 25;
        Paint paint = new Paint();
        this.f9306a = paint;
        paint.setAntiAlias(true);
        this.f9306a.setFilterBitmap(true);
        this.f9309d = new Matrix();
    }

    private Bitmap a(Drawable drawable) {
        if (drawable == null) {
            return null;
        }
        if (drawable instanceof BitmapDrawable) {
            return ((BitmapDrawable) drawable).getBitmap();
        }
        int width = drawable.getIntrinsicWidth() <= 0 ? getWidth() : drawable.getIntrinsicWidth();
        int height = drawable.getIntrinsicHeight() <= 0 ? getHeight() : drawable.getIntrinsicHeight();
        Bitmap createBitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        drawable.setBounds(0, 0, width, height);
        drawable.draw(canvas);
        return createBitmap;
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        Drawable drawable = getDrawable();
        if (drawable != null) {
            Bitmap a2 = a(drawable);
            if (a2 != null) {
                Shader.TileMode tileMode = Shader.TileMode.REPEAT;
                BitmapShader bitmapShader = new BitmapShader(a2, tileMode, tileMode);
                float f = 1.0f;
                if (!(a2.getWidth() == getWidth() && a2.getHeight() == getHeight())) {
                    f = Math.max((getWidth() * 1.0f) / a2.getWidth(), (getHeight() * 1.0f) / a2.getHeight());
                }
                this.f9309d.setScale(f, f);
                bitmapShader.setLocalMatrix(this.f9309d);
                this.f9306a.setShader(bitmapShader);
                canvas.drawRoundRect(new RectF(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getWidth(), getHeight()), this.f9307b, this.f9308c, this.f9306a);
                return;
            }
            super.onDraw(canvas);
            return;
        }
        super.onDraw(canvas);
    }

    public void setXRound(int i) {
        this.f9307b = i;
        postInvalidate();
    }

    public void setYRound(int i) {
        this.f9308c = i;
        postInvalidate();
    }
}
