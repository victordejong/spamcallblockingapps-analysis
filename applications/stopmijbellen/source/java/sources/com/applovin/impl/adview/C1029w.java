package com.applovin.impl.adview;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import com.applovin.impl.adview.AbstractC0996i;
@SuppressLint({"ViewConstructor"})
/* renamed from: com.applovin.impl.adview.w */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/adview/w.class */
public final class C1029w extends AbstractC0996i {

    /* renamed from: c */
    private static final Paint f3717c = new Paint(1);

    /* renamed from: d */
    private static final Paint f3718d = new Paint(1);

    /* renamed from: e */
    private static final Paint f3719e = new Paint(1);

    public C1029w(Context context) {
        super(context);
        f3717c.setColor(-1);
        f3718d.setColor(-16777216);
        Paint paint = f3719e;
        paint.setColor(-1);
        paint.setStyle(Paint.Style.STROKE);
    }

    public float getCenter() {
        return getSize() / 2.0f;
    }

    public float getCrossOffset() {
        return this.f3641a * 10.0f;
    }

    public float getInnerCircleOffset() {
        return this.f3641a * 2.0f;
    }

    public float getInnerCircleRadius() {
        return getCenter() - getInnerCircleOffset();
    }

    public float getStrokeWidth() {
        return this.f3641a * 3.0f;
    }

    @Override // com.applovin.impl.adview.AbstractC0996i
    public AbstractC0996i.EnumC0997a getStyle() {
        return AbstractC0996i.EnumC0997a.WHITE_ON_BLACK;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        float center = getCenter();
        canvas.drawCircle(center, center, center, f3717c);
        canvas.drawCircle(center, center, getInnerCircleRadius(), f3718d);
        float crossOffset = getCrossOffset();
        float size = getSize() - crossOffset;
        Paint paint = f3719e;
        paint.setStrokeWidth(getStrokeWidth());
        canvas.drawLine(crossOffset, crossOffset, size, size, paint);
        canvas.drawLine(crossOffset, size, size, crossOffset, paint);
    }
}
