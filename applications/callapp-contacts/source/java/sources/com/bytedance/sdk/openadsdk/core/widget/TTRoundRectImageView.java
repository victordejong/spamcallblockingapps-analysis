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

    /* renamed from: a */
    private Paint f17506a;

    /* renamed from: b */
    private int f17507b;

    /* renamed from: c */
    private int f17508c;

    /* renamed from: d */
    private Matrix f17509d;

    public TTRoundRectImageView(Context context) {
        this(context, null);
    }

    public TTRoundRectImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TTRoundRectImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f17507b = 25;
        this.f17508c = 25;
        Paint paint = new Paint();
        this.f17506a = paint;
        paint.setAntiAlias(true);
        this.f17506a.setFilterBitmap(true);
        this.f17509d = new Matrix();
    }

    /* renamed from: a */
    private Bitmap m34061a(Drawable drawable) {
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
        if (drawable == null) {
            super.onDraw(canvas);
            return;
        }
        Bitmap m34061a = m34061a(drawable);
        if (m34061a == null) {
            super.onDraw(canvas);
            return;
        }
        Shader.TileMode tileMode = Shader.TileMode.REPEAT;
        BitmapShader bitmapShader = new BitmapShader(m34061a, tileMode, tileMode);
        float f = 1.0f;
        if (m34061a.getWidth() != getWidth() || m34061a.getHeight() != getHeight()) {
            f = Math.max((getWidth() * 1.0f) / m34061a.getWidth(), (getHeight() * 1.0f) / m34061a.getHeight());
        }
        this.f17509d.setScale(f, f);
        bitmapShader.setLocalMatrix(this.f17509d);
        this.f17506a.setShader(bitmapShader);
        canvas.drawRoundRect(new RectF(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getWidth(), getHeight()), this.f17507b, this.f17508c, this.f17506a);
    }

    public void setXRound(int i) {
        this.f17507b = i;
        postInvalidate();
    }

    public void setYRound(int i) {
        this.f17508c = i;
        postInvalidate();
    }
}
