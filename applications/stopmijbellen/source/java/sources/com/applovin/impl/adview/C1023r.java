package com.applovin.impl.adview;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import com.applovin.impl.adview.AbstractC0996i;
@SuppressLint({"ViewConstructor"})
/* renamed from: com.applovin.impl.adview.r */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/adview/r.class */
public final class C1023r extends AbstractC0996i {

    /* renamed from: c */
    private static final Paint f3700c = new Paint(1);

    /* renamed from: d */
    private static final Paint f3701d = new Paint(1);

    /* renamed from: e */
    private final float[] f3702e = {30.0f, 30.0f, 50.0f, 50.0f, 30.0f, 70.0f, 55.0f, 30.0f, 75.0f, 50.0f, 55.0f, 70.0f};

    /* renamed from: f */
    private Path f3703f;

    public C1023r(Context context) {
        super(context);
        f3700c.setARGB(80, 0, 0, 0);
        Paint paint = f3701d;
        paint.setColor(-1);
        paint.setStyle(Paint.Style.STROKE);
    }

    /* renamed from: a */
    private void m6795a() {
        int i = 0;
        while (true) {
            float[] fArr = this.f3702e;
            if (i >= fArr.length) {
                Path path = new Path();
                this.f3703f = path;
                float[] fArr2 = this.f3702e;
                path.moveTo(fArr2[0], fArr2[1]);
                Path path2 = this.f3703f;
                float[] fArr3 = this.f3702e;
                path2.lineTo(fArr3[2], fArr3[3]);
                Path path3 = this.f3703f;
                float[] fArr4 = this.f3702e;
                path3.lineTo(fArr4[4], fArr4[5]);
                Path path4 = this.f3703f;
                float[] fArr5 = this.f3702e;
                path4.moveTo(fArr5[6], fArr5[7]);
                Path path5 = this.f3703f;
                float[] fArr6 = this.f3702e;
                path5.lineTo(fArr6[8], fArr6[9]);
                Path path6 = this.f3703f;
                float[] fArr7 = this.f3702e;
                path6.lineTo(fArr7[10], fArr7[11]);
                return;
            }
            fArr[i] = fArr[i] * 0.3f * this.f3641a;
            i++;
        }
    }

    @Override // com.applovin.impl.adview.AbstractC0996i
    /* renamed from: a */
    public void mo6794a(int i) {
        setViewScale(i / 30.0f);
        m6795a();
    }

    public float getCenter() {
        return getSize() / 2.0f;
    }

    public float getStrokeWidth() {
        return this.f3641a * 2.0f;
    }

    @Override // com.applovin.impl.adview.AbstractC0996i
    public AbstractC0996i.EnumC0997a getStyle() {
        return AbstractC0996i.EnumC0997a.TRANSPARENT_SKIP;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        float center = getCenter();
        canvas.drawCircle(center, center, center, f3700c);
        Paint paint = f3701d;
        paint.setStrokeWidth(getStrokeWidth());
        canvas.drawPath(this.f3703f, paint);
    }
}
