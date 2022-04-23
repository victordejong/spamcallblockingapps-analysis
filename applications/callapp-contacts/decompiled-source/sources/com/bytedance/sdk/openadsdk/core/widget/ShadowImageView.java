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

    /* renamed from: a  reason: collision with root package name */
    private Paint f9287a;

    /* renamed from: b  reason: collision with root package name */
    private RectF f9288b;

    public ShadowImageView(Context context) {
        super(context);
        a();
    }

    public ShadowImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a();
    }

    public ShadowImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a();
    }

    private void a() {
        Paint paint = new Paint();
        this.f9287a = paint;
        paint.setStyle(Paint.Style.FILL_AND_STROKE);
        this.f9287a.setColor(Color.parseColor("#99333333"));
        this.f9287a.setAntiAlias(true);
        this.f9287a.setStrokeWidth(BitmapDescriptorFactory.HUE_RED);
        this.f9288b = new RectF();
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        RectF rectF = this.f9288b;
        canvas.drawRoundRect(rectF, rectF.right / 2.0f, this.f9288b.bottom / 2.0f, this.f9287a);
        super.onDraw(canvas);
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.f9288b.right != getMeasuredWidth() || this.f9288b.bottom != getMeasuredHeight()) {
            this.f9288b.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getMeasuredWidth(), getMeasuredHeight());
        }
    }
}
