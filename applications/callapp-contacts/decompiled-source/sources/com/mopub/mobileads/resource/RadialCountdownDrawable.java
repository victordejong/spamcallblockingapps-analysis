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

    /* renamed from: a  reason: collision with root package name */
    private final Paint f34418a;

    /* renamed from: b  reason: collision with root package name */
    private final Paint f34419b;

    /* renamed from: c  reason: collision with root package name */
    private final Paint f34420c;

    /* renamed from: d  reason: collision with root package name */
    private final Paint f34421d;
    private Rect e = new Rect();
    private final int f;
    private int g;
    private int h;
    private float i;

    public RadialCountdownDrawable(Context context) {
        int dipsToIntPixels = Dips.dipsToIntPixels(3.0f, context);
        this.f = dipsToIntPixels;
        float dipsToFloatPixels = Dips.dipsToFloatPixels(18.0f, context);
        Paint paint = new Paint();
        this.f34418a = paint;
        paint.setColor(-16777216);
        paint.setStyle(DrawableConstants.RadialCountdown.BACKGROUND_STYLE);
        paint.setAntiAlias(true);
        Paint paint2 = new Paint();
        this.f34419b = paint2;
        paint2.setColor(-1);
        paint2.setAlpha(128);
        paint2.setStyle(DrawableConstants.RadialCountdown.PROGRESS_CIRCLE_STYLE);
        paint2.setStrokeWidth(dipsToIntPixels);
        paint2.setAntiAlias(true);
        Paint paint3 = new Paint();
        this.f34420c = paint3;
        paint3.setColor(-1);
        paint3.setAlpha(255);
        paint3.setStyle(DrawableConstants.RadialCountdown.PROGRESS_ARC_STYLE);
        paint3.setStrokeWidth(dipsToIntPixels);
        paint3.setAntiAlias(true);
        Paint paint4 = new Paint();
        this.f34421d = paint4;
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
        canvas.drawCircle(f, f2, (this.f / 2) + min, this.f34418a);
        canvas.drawCircle(f, f2, min, this.f34419b);
        a(canvas, this.f34421d, this.e, String.valueOf(this.h));
        canvas.drawArc(new RectF(getBounds()), -90.0f, this.i, false, this.f34420c);
    }

    @Deprecated
    public int getInitialCountdownMilliseconds() {
        return this.g;
    }

    public void setInitialCountdown(int i) {
        this.g = i;
    }

    public void updateCountdownProgress(int i) {
        this.h = (int) Numbers.convertMillisecondsToSecondsRoundedUp(this.g - i);
        this.i = (i * 360.0f) / this.g;
        invalidateSelf();
    }
}
