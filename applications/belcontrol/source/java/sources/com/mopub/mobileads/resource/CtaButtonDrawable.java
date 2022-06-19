package com.mopub.mobileads.resource;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.util.Dips;
import com.mopub.mobileads.resource.DrawableConstants;
/* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/resource/CtaButtonDrawable.class */
public class CtaButtonDrawable extends BaseWidgetDrawable {

    /* renamed from: a */
    public final Paint f5008a;

    /* renamed from: b */
    public final Paint f5009b;

    /* renamed from: c */
    public final Paint f5010c;

    /* renamed from: f */
    public final int f5013f;

    /* renamed from: e */
    public final Rect f5012e = new Rect();

    /* renamed from: g */
    public String f5014g = DrawableConstants.CtaButton.DEFAULT_CTA_TEXT;

    /* renamed from: d */
    public final RectF f5011d = new RectF();

    public CtaButtonDrawable(Context context) {
        int dipsToIntPixels = Dips.dipsToIntPixels(2.0f, context);
        float dipsToFloatPixels = Dips.dipsToFloatPixels(15.0f, context);
        Paint paint = new Paint();
        this.f5008a = paint;
        paint.setColor(-16777216);
        paint.setAlpha(51);
        paint.setStyle(DrawableConstants.CtaButton.BACKGROUND_STYLE);
        paint.setAntiAlias(true);
        Paint paint2 = new Paint();
        this.f5009b = paint2;
        paint2.setColor(-1);
        paint2.setAlpha(51);
        paint2.setStyle(DrawableConstants.CtaButton.OUTLINE_STYLE);
        paint2.setStrokeWidth(dipsToIntPixels);
        paint2.setAntiAlias(true);
        Paint paint3 = new Paint();
        this.f5010c = paint3;
        paint3.setColor(-1);
        paint3.setTextAlign(DrawableConstants.CtaButton.TEXT_ALIGN);
        paint3.setTypeface(DrawableConstants.CtaButton.TEXT_TYPEFACE);
        paint3.setTextSize(dipsToFloatPixels);
        paint3.setAntiAlias(true);
        this.f5013f = Dips.dipsToIntPixels(6.0f, context);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        this.f5011d.set(getBounds());
        RectF rectF = this.f5011d;
        int i = this.f5013f;
        canvas.drawRoundRect(rectF, i, i, this.f5008a);
        RectF rectF2 = this.f5011d;
        int i2 = this.f5013f;
        canvas.drawRoundRect(rectF2, i2, i2, this.f5009b);
        m3496a(canvas, this.f5010c, this.f5012e, this.f5014g);
    }

    @Deprecated
    @VisibleForTesting
    public String getCtaText() {
        return this.f5014g;
    }

    public void setCtaText(String str) {
        this.f5014g = str;
        invalidateSelf();
    }
}
