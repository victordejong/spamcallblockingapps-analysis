package com.mopub.mobileads.resource;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/resource/BaseWidgetDrawable.class */
public abstract class BaseWidgetDrawable extends Drawable {
    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(Canvas canvas, Paint paint, Rect rect, String str) {
        paint.getTextBounds(str, 0, str.length(), rect);
        canvas.drawText(str, getBounds().centerX(), getBounds().centerY() + (((paint.descent() - paint.ascent()) / 2.0f) - paint.descent()), paint);
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return 0;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }
}
