package com.mopub.mobileads.resource;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import com.mopub.common.util.Dips;
import com.mopub.common.util.Numbers;
import com.mopub.mobileads.resource.DrawableConstants;
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/resource/RadialCountdownDrawable.class */
public class RadialCountdownDrawable extends BaseWidgetDrawable {

    /* renamed from: a */
    private final Paint f59727a;

    /* renamed from: b */
    private final Paint f59728b;

    /* renamed from: c */
    private final Paint f59729c;

    /* renamed from: d */
    private final Paint f59730d;

    /* renamed from: e */
    private Rect f59731e = new Rect();

    /* renamed from: f */
    private final int f59732f;

    /* renamed from: g */
    private int f59733g;

    /* renamed from: h */
    private int f59734h;

    /* renamed from: i */
    private float f59735i;

    public RadialCountdownDrawable(Context context) {
        int dipsToIntPixels = Dips.dipsToIntPixels(3.0f, context);
        this.f59732f = dipsToIntPixels;
        float dipsToFloatPixels = Dips.dipsToFloatPixels(18.0f, context);
        Paint paint = new Paint();
        this.f59727a = paint;
        paint.setColor(-16777216);
        paint.setStyle(DrawableConstants.RadialCountdown.BACKGROUND_STYLE);
        paint.setAntiAlias(true);
        Paint paint2 = new Paint();
        this.f59728b = paint2;
        paint2.setColor(-1);
        paint2.setAlpha(128);
        paint2.setStyle(DrawableConstants.RadialCountdown.PROGRESS_CIRCLE_STYLE);
        paint2.setStrokeWidth(dipsToIntPixels);
        paint2.setAntiAlias(true);
        Paint paint3 = new Paint();
        this.f59729c = paint3;
        paint3.setColor(-1);
        paint3.setAlpha(255);
        paint3.setStyle(DrawableConstants.RadialCountdown.PROGRESS_ARC_STYLE);
        paint3.setStrokeWidth(dipsToIntPixels);
        paint3.setAntiAlias(true);
        Paint paint4 = new Paint();
        this.f59730d = paint4;
        paint4.setColor(-1);
        paint4.setTextAlign(DrawableConstants.RadialCountdown.TEXT_ALIGN);
        paint4.setTextSize(dipsToFloatPixels);
        paint4.setAntiAlias(true);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        int centerX = getBounds().centerX();
        int centerY = getBounds().centerY();
        int min = Math.min(centerX, centerY);
        float f = centerX;
        float f2 = centerY;
        canvas.drawCircle(f, f2, (this.f59732f / 2) + min, this.f59727a);
        canvas.drawCircle(f, f2, min, this.f59728b);
        m6315a(canvas, this.f59730d, this.f59731e, String.valueOf(this.f59734h));
        canvas.drawArc(new RectF(getBounds()), -90.0f, this.f59735i, false, this.f59729c);
    }

    @Deprecated
    public int getInitialCountdownMilliseconds() {
        return this.f59733g;
    }

    public void setInitialCountdown(int i) {
        this.f59733g = i;
    }

    public void updateCountdownProgress(int i) {
        this.f59734h = (int) Numbers.convertMillisecondsToSecondsRoundedUp(this.f59733g - i);
        this.f59735i = (i * 360.0f) / this.f59733g;
        invalidateSelf();
    }
}
