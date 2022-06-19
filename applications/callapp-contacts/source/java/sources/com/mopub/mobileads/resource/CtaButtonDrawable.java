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

    /* renamed from: a */
    private final Paint f59712a;

    /* renamed from: b */
    private final Paint f59713b;

    /* renamed from: c */
    private final Paint f59714c;

    /* renamed from: f */
    private final int f59717f;

    /* renamed from: e */
    private final Rect f59716e = new Rect();

    /* renamed from: g */
    private String f59718g = DrawableConstants.CtaButton.DEFAULT_CTA_TEXT;

    /* renamed from: d */
    private final RectF f59715d = new RectF();

    public CtaButtonDrawable(Context context) {
        int dipsToIntPixels = Dips.dipsToIntPixels(2.0f, context);
        float dipsToFloatPixels = Dips.dipsToFloatPixels(15.0f, context);
        Paint paint = new Paint();
        this.f59712a = paint;
        paint.setColor(-16777216);
        paint.setAlpha(51);
        paint.setStyle(DrawableConstants.CtaButton.BACKGROUND_STYLE);
        paint.setAntiAlias(true);
        Paint paint2 = new Paint();
        this.f59713b = paint2;
        paint2.setColor(-1);
        paint2.setAlpha(51);
        paint2.setStyle(DrawableConstants.CtaButton.OUTLINE_STYLE);
        paint2.setStrokeWidth(dipsToIntPixels);
        paint2.setAntiAlias(true);
        Paint paint3 = new Paint();
        this.f59714c = paint3;
        paint3.setColor(-1);
        paint3.setTextAlign(DrawableConstants.CtaButton.TEXT_ALIGN);
        paint3.setTypeface(DrawableConstants.CtaButton.TEXT_TYPEFACE);
        paint3.setTextSize(dipsToFloatPixels);
        paint3.setAntiAlias(true);
        this.f59717f = Dips.dipsToIntPixels(6.0f, context);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        this.f59715d.set(getBounds());
        RectF rectF = this.f59715d;
        int i = this.f59717f;
        canvas.drawRoundRect(rectF, i, i, this.f59712a);
        RectF rectF2 = this.f59715d;
        int i2 = this.f59717f;
        canvas.drawRoundRect(rectF2, i2, i2, this.f59713b);
        m6315a(canvas, this.f59714c, this.f59716e, this.f59718g);
    }

    @Deprecated
    public String getCtaText() {
        return this.f59718g;
    }

    public void setCtaText(String str) {
        this.f59718g = str;
        invalidateSelf();
    }
}
