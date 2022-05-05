package com.mopub.mobileads.resource;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import androidx.annotation.NonNull;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.util.Dips;
import com.mopub.common.util.Numbers;
import com.mopub.mobileads.resource.DrawableConstants;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/resource/RadialCountdownDrawable.class */
public class RadialCountdownDrawable extends BaseWidgetDrawable {
    @NonNull

    /* renamed from: a */
    public final Paint f8869a = new Paint();
    @NonNull

    /* renamed from: b */
    public final Paint f8870b = new Paint();
    @NonNull

    /* renamed from: c */
    public final Paint f8871c = new Paint();
    @NonNull

    /* renamed from: d */
    public Rect f8872d = new Rect();

    /* renamed from: e */
    public int f8873e;

    /* renamed from: f */
    public int f8874f;

    /* renamed from: g */
    public float f8875g;

    public RadialCountdownDrawable(@NonNull Context context) {
        int dipsToIntPixels = Dips.dipsToIntPixels(3.0f, context);
        float dipsToFloatPixels = Dips.dipsToFloatPixels(18.0f, context);
        this.f8869a.setColor(-1);
        this.f8869a.setAlpha(128);
        this.f8869a.setStyle(DrawableConstants.RadialCountdown.BACKGROUND_STYLE);
        float f = dipsToIntPixels;
        this.f8869a.setStrokeWidth(f);
        this.f8869a.setAntiAlias(true);
        this.f8870b.setColor(-1);
        this.f8870b.setAlpha(255);
        this.f8870b.setStyle(DrawableConstants.RadialCountdown.PROGRESS_STYLE);
        this.f8870b.setStrokeWidth(f);
        this.f8870b.setAntiAlias(true);
        this.f8871c.setColor(-1);
        this.f8871c.setTextAlign(DrawableConstants.RadialCountdown.TEXT_ALIGN);
        this.f8871c.setTextSize(dipsToFloatPixels);
        this.f8871c.setAntiAlias(true);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        int centerX = getBounds().centerX();
        int centerY = getBounds().centerY();
        canvas.drawCircle(centerX, centerY, Math.min(centerX, centerY), this.f8869a);
        m30343a(canvas, this.f8871c, this.f8872d, String.valueOf(this.f8874f));
        canvas.drawArc(new RectF(getBounds()), -90.0f, this.f8875g, false, this.f8870b);
    }

    @Deprecated
    @VisibleForTesting
    public int getInitialCountdownMilliseconds() {
        return this.f8873e;
    }

    public void setInitialCountdown(int i) {
        this.f8873e = i;
    }

    public void updateCountdownProgress(int i) {
        this.f8874f = (int) Numbers.convertMillisecondsToSecondsRoundedUp(this.f8873e - i);
        this.f8875g = (i * 360.0f) / this.f8873e;
        invalidateSelf();
    }
}
