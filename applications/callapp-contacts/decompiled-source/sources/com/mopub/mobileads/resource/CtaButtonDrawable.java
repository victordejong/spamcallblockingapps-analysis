package com.mopub.mobileads.resource;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import com.mopub.common.util.Dips;
import com.mopub.mobileads.resource.DrawableConstants;
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/resource/CtaButtonDrawable.class */
public class CtaButtonDrawable extends BaseWidgetDrawable {

    /* renamed from: a  reason: collision with root package name */
    private final Paint f34410a;

    /* renamed from: b  reason: collision with root package name */
    private final Paint f34411b;

    /* renamed from: c  reason: collision with root package name */
    private final Paint f34412c;
    private final int f;
    private final Rect e = new Rect();
    private String g = DrawableConstants.CtaButton.DEFAULT_CTA_TEXT;

    /* renamed from: d  reason: collision with root package name */
    private final RectF f34413d = new RectF();

    public CtaButtonDrawable(Context context) {
        int dipsToIntPixels = Dips.dipsToIntPixels(2.0f, context);
        float dipsToFloatPixels = Dips.dipsToFloatPixels(15.0f, context);
        Paint paint = new Paint();
        this.f34410a = paint;
        paint.setColor(-16777216);
        paint.setAlpha(51);
        paint.setStyle(DrawableConstants.CtaButton.BACKGROUND_STYLE);
        paint.setAntiAlias(true);
        Paint paint2 = new Paint();
        this.f34411b = paint2;
        paint2.setColor(-1);
        paint2.setAlpha(51);
        paint2.setStyle(DrawableConstants.CtaButton.OUTLINE_STYLE);
        paint2.setStrokeWidth(dipsToIntPixels);
        paint2.setAntiAlias(true);
        Paint paint3 = new Paint();
        this.f34412c = paint3;
        paint3.setColor(-1);
        paint3.setTextAlign(DrawableConstants.CtaButton.TEXT_ALIGN);
        paint3.setTypeface(DrawableConstants.CtaButton.TEXT_TYPEFACE);
        paint3.setTextSize(dipsToFloatPixels);
        paint3.setAntiAlias(true);
        this.f = Dips.dipsToIntPixels(6.0f, context);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        this.f34413d.set(getBounds());
        RectF rectF = this.f34413d;
        int i = this.f;
        canvas.drawRoundRect(rectF, i, i, this.f34410a);
        RectF rectF2 = this.f34413d;
        int i2 = this.f;
        canvas.drawRoundRect(rectF2, i2, i2, this.f34411b);
        a(canvas, this.f34412c, this.e, this.g);
    }

    @Deprecated
    public String getCtaText() {
        return this.g;
    }

    public void setCtaText(String str) {
        this.g = str;
        invalidateSelf();
    }
}
