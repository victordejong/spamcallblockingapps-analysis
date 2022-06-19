package com.applovin.impl.adview;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import com.applovin.impl.adview.AbstractC0996i;
@SuppressLint({"ViewConstructor"})
/* renamed from: com.applovin.impl.adview.q */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/adview/q.class */
public final class C1022q extends AbstractC0996i {

    /* renamed from: c */
    private static final Paint f3698c = new Paint(1);

    /* renamed from: d */
    private static final Paint f3699d = new Paint(1);

    public C1022q(Context context) {
        super(context);
        f3698c.setARGB(80, 0, 0, 0);
        Paint paint = f3699d;
        paint.setColor(-1);
        paint.setStyle(Paint.Style.STROKE);
    }

    @Override // com.applovin.impl.adview.AbstractC0996i
    /* renamed from: a */
    public void mo6794a(int i) {
        setViewScale(i / 30.0f);
    }

    public float getCenter() {
        return getSize() / 2.0f;
    }

    public float getCrossOffset() {
        return this.f3641a * 8.0f;
    }

    public float getStrokeWidth() {
        return this.f3641a * 2.0f;
    }

    @Override // com.applovin.impl.adview.AbstractC0996i
    public AbstractC0996i.EnumC0997a getStyle() {
        return AbstractC0996i.EnumC0997a.WHITE_ON_TRANSPARENT;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        float center = getCenter();
        canvas.drawCircle(center, center, center, f3698c);
        float crossOffset = getCrossOffset();
        float size = getSize() - crossOffset;
        Paint paint = f3699d;
        paint.setStrokeWidth(getStrokeWidth());
        canvas.drawLine(crossOffset, crossOffset, size, size, paint);
        canvas.drawLine(crossOffset, size, size, crossOffset, paint);
    }
}
