package com.bytedance.sdk.openadsdk.core.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.widget.ImageView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/widget/ShadowImageView.class */
public class ShadowImageView extends ImageView {

    /* renamed from: a */
    private Paint f17455a;

    /* renamed from: b */
    private RectF f17456b;

    public ShadowImageView(Context context) {
        super(context);
        m34078a();
    }

    public ShadowImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m34078a();
    }

    public ShadowImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m34078a();
    }

    /* renamed from: a */
    private void m34078a() {
        Paint paint = new Paint();
        this.f17455a = paint;
        paint.setStyle(Paint.Style.FILL_AND_STROKE);
        this.f17455a.setColor(Color.parseColor("#99333333"));
        this.f17455a.setAntiAlias(true);
        this.f17455a.setStrokeWidth(BitmapDescriptorFactory.HUE_RED);
        this.f17456b = new RectF();
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        RectF rectF = this.f17456b;
        canvas.drawRoundRect(rectF, rectF.right / 2.0f, this.f17456b.bottom / 2.0f, this.f17455a);
        super.onDraw(canvas);
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.f17456b.right == getMeasuredWidth() && this.f17456b.bottom == getMeasuredHeight()) {
            return;
        }
        this.f17456b.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getMeasuredWidth(), getMeasuredHeight());
    }
}
