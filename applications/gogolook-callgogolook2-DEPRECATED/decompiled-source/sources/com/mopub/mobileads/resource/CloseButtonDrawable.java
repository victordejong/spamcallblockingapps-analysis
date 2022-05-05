package com.mopub.mobileads.resource;

import android.graphics.Canvas;
import android.graphics.Paint;
import com.mopub.mobileads.resource.DrawableConstants;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/resource/CloseButtonDrawable.class */
public class CloseButtonDrawable extends BaseWidgetDrawable {

    /* renamed from: a */
    public final Paint f8852a;

    /* renamed from: b */
    public final float f8853b;

    public CloseButtonDrawable() {
        this(8.0f);
    }

    public CloseButtonDrawable(float f) {
        this.f8853b = f / 2.0f;
        this.f8852a = new Paint();
        this.f8852a.setColor(-1);
        this.f8852a.setStrokeWidth(f);
        this.f8852a.setStrokeCap(DrawableConstants.CloseButton.STROKE_CAP);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        int width = getBounds().width();
        int height = getBounds().height();
        float f = this.f8853b;
        float f2 = height;
        float f3 = width;
        canvas.drawLine(f + 0.0f, f2 - f, f3 - f, f + 0.0f, this.f8852a);
        float f4 = this.f8853b;
        canvas.drawLine(f4 + 0.0f, f4 + 0.0f, f3 - f4, f2 - f4, this.f8852a);
    }
}
