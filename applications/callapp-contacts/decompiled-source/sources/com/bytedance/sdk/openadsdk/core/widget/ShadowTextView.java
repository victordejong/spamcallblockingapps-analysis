package com.bytedance.sdk.openadsdk.core.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.widget.TextView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/widget/ShadowTextView.class */
public class ShadowTextView extends TextView {

    /* renamed from: a  reason: collision with root package name */
    private Paint f9289a;

    /* renamed from: b  reason: collision with root package name */
    private RectF f9290b;

    /* renamed from: c  reason: collision with root package name */
    private int f9291c;

    public ShadowTextView(Context context) {
        this(context, null);
    }

    public ShadowTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ShadowTextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f9291c = 0;
        a();
    }

    private void a() {
        setTextColor(-1);
        Paint paint = new Paint();
        this.f9289a = paint;
        paint.setStyle(Paint.Style.FILL_AND_STROKE);
        this.f9289a.setColor(Color.parseColor("#99333333"));
        this.f9289a.setAntiAlias(true);
        this.f9289a.setStrokeWidth(BitmapDescriptorFactory.HUE_RED);
        this.f9290b = new RectF();
    }

    @Override // android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        RectF rectF = this.f9290b;
        canvas.drawRoundRect(rectF, rectF.bottom / 2.0f, this.f9290b.bottom / 2.0f, this.f9289a);
        canvas.translate((this.f9290b.right / 2.0f) - (getPaint().measureText(getText().toString()) / 2.0f), BitmapDescriptorFactory.HUE_RED);
        super.onDraw(canvas);
    }

    @Override // android.widget.TextView, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        if (measuredWidth <= 0 || measuredHeight <= 0) {
            this.f9290b.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
            return;
        }
        int measureText = (int) getPaint().measureText("00");
        this.f9291c = measureText;
        int i3 = measuredWidth;
        if (measuredWidth < measureText) {
            i3 = measureText;
        }
        int i4 = i3 + ((measuredHeight / 2) * 2);
        setMeasuredDimension(i4, measuredHeight);
        this.f9290b.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, i4, measuredHeight);
    }
}
