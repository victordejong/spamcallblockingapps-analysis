package com.mopub.mobileads.resource;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.util.Dips;
import com.mopub.common.util.Numbers;
import com.mopub.mobileads.resource.DrawableConstants;
/* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/resource/RadialCountdownDrawable.class */
public class RadialCountdownDrawable extends BaseWidgetDrawable {

    /* renamed from: a */
    public final Paint f5023a;

    /* renamed from: b */
    public final Paint f5024b;

    /* renamed from: c */
    public final Paint f5025c;

    /* renamed from: d */
    public final Paint f5026d;

    /* renamed from: e */
    public Rect f5027e = new Rect();

    /* renamed from: f */
    public final int f5028f;

    /* renamed from: g */
    public int f5029g;

    /* renamed from: h */
    public int f5030h;

    /* renamed from: i */
    public float f5031i;

    public RadialCountdownDrawable(Context context) {
        int dipsToIntPixels = Dips.dipsToIntPixels(3.0f, context);
        this.f5028f = dipsToIntPixels;
        float dipsToFloatPixels = Dips.dipsToFloatPixels(18.0f, context);
        Paint paint = new Paint();
        this.f5023a = paint;
        paint.setColor(-16777216);
        paint.setStyle(DrawableConstants.RadialCountdown.BACKGROUND_STYLE);
        paint.setAntiAlias(true);
        Paint paint2 = new Paint();
        this.f5024b = paint2;
        paint2.setColor(-1);
        paint2.setAlpha(128);
        paint2.setStyle(DrawableConstants.RadialCountdown.PROGRESS_CIRCLE_STYLE);
        paint2.setStrokeWidth(dipsToIntPixels);
        paint2.setAntiAlias(true);
        Paint paint3 = new Paint();
        this.f5025c = paint3;
        paint3.setColor(-1);
        paint3.setAlpha(255);
        paint3.setStyle(DrawableConstants.RadialCountdown.PROGRESS_ARC_STYLE);
        paint3.setStrokeWidth(dipsToIntPixels);
        paint3.setAntiAlias(true);
        Paint paint4 = new Paint();
        this.f5026d = paint4;
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
        canvas.drawCircle(f, f2, (this.f5028f / 2) + min, this.f5023a);
        canvas.drawCircle(f, f2, min, this.f5024b);
        m3496a(canvas, this.f5026d, this.f5027e, String.valueOf(this.f5030h));
        canvas.drawArc(new RectF(getBounds()), -90.0f, this.f5031i, false, this.f5025c);
    }

    @Deprecated
    @VisibleForTesting
    public int getInitialCountdownMilliseconds() {
        return this.f5029g;
    }

    public void setInitialCountdown(int i) {
        this.f5029g = i;
    }

    public void updateCountdownProgress(int i) {
        this.f5030h = (int) Numbers.convertMillisecondsToSecondsRoundedUp(this.f5029g - i);
        this.f5031i = (i * 360.0f) / this.f5029g;
        invalidateSelf();
    }
}
