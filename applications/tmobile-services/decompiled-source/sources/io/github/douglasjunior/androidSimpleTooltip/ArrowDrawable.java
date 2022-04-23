package io.github.douglasjunior.androidSimpleTooltip;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import androidx.annotation.ColorInt;
/* loaded from: classes-dex2jar.jar:io/github/douglasjunior/androidSimpleTooltip/ArrowDrawable.class */
public class ArrowDrawable extends ColorDrawable {

    /* renamed from: a */
    private final Paint f14975a;

    /* renamed from: b */
    private final int f14976b = 0;

    /* renamed from: c */
    private Path f14977c;

    /* renamed from: d */
    private final int f14978d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ArrowDrawable(@ColorInt int i, int i2) {
        Paint paint = new Paint(1);
        this.f14975a = paint;
        paint.setColor(i);
        this.f14978d = i2;
    }

    /* renamed from: a */
    private void m4619a(Rect rect) {
        synchronized (this) {
            Path path = new Path();
            this.f14977c = path;
            int i = this.f14978d;
            if (i == 0) {
                path.moveTo(rect.width(), rect.height());
                this.f14977c.lineTo(0.0f, rect.height() / 2);
                this.f14977c.lineTo(rect.width(), 0.0f);
                this.f14977c.lineTo(rect.width(), rect.height());
            } else if (i == 1) {
                path.moveTo(0.0f, rect.height());
                this.f14977c.lineTo(rect.width() / 2, 0.0f);
                this.f14977c.lineTo(rect.width(), rect.height());
                this.f14977c.lineTo(0.0f, rect.height());
            } else if (i == 2) {
                path.moveTo(0.0f, 0.0f);
                this.f14977c.lineTo(rect.width(), rect.height() / 2);
                this.f14977c.lineTo(0.0f, rect.height());
                this.f14977c.lineTo(0.0f, 0.0f);
            } else if (i == 3) {
                path.moveTo(0.0f, 0.0f);
                this.f14977c.lineTo(rect.width() / 2, rect.height());
                this.f14977c.lineTo(rect.width(), 0.0f);
                this.f14977c.lineTo(0.0f, 0.0f);
            }
            this.f14977c.close();
        }
    }

    @Override // android.graphics.drawable.ColorDrawable, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        canvas.drawColor(this.f14976b);
        if (this.f14977c == null) {
            m4619a(getBounds());
        }
        canvas.drawPath(this.f14977c, this.f14975a);
    }

    @Override // android.graphics.drawable.ColorDrawable, android.graphics.drawable.Drawable
    public int getOpacity() {
        if (this.f14975a.getColorFilter() != null) {
            return -3;
        }
        int color = this.f14975a.getColor() >>> 24;
        if (color != 0) {
            return color != 255 ? -3 : -1;
        }
        return -2;
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        m4619a(rect);
    }

    @Override // android.graphics.drawable.ColorDrawable, android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.f14975a.setAlpha(i);
    }

    @Override // android.graphics.drawable.ColorDrawable
    public void setColor(@ColorInt int i) {
        this.f14975a.setColor(i);
    }

    @Override // android.graphics.drawable.ColorDrawable, android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f14975a.setColorFilter(colorFilter);
    }
}
