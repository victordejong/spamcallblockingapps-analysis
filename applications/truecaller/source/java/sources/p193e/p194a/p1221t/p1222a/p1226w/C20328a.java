package p193e.p194a.p1221t.p1222a.p1226w;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.text.style.DynamicDrawableSpan;
import s1.z.c.l;
/* renamed from: e.a.t.a.w.a */
/* loaded from: classes5-dex2jar.jar:e/a/t/a/w/a.class */
public final class C20328a extends DynamicDrawableSpan {

    /* renamed from: a */
    public final Drawable f57151a;

    /* renamed from: b */
    public final float f57152b;

    public C20328a(Drawable drawable, float f) {
        l.e(drawable, "drawable");
        this.f57151a = drawable;
        this.f57152b = f;
    }

    @Override // android.text.style.DynamicDrawableSpan, android.text.style.ReplacementSpan
    public void draw(Canvas canvas, CharSequence charSequence, int i, int i2, float f, int i3, int i4, int i5, Paint paint) {
        l.e(canvas, "canvas");
        l.e(charSequence, "text");
        l.e(paint, "paint");
        Paint.FontMetrics fontMetrics = paint.getFontMetrics();
        float f2 = fontMetrics.descent;
        float f3 = fontMetrics.ascent;
        float f4 = 2;
        canvas.save();
        canvas.translate(f, ((i4 + f2) - ((f2 - f3) / f4)) - (this.f57152b / f4));
        Drawable drawable = this.f57151a;
        float f5 = this.f57152b;
        drawable.setBounds(0, 0, (int) f5, (int) f5);
        this.f57151a.draw(canvas);
        canvas.restore();
    }

    @Override // android.text.style.DynamicDrawableSpan
    public Drawable getDrawable() {
        return this.f57151a;
    }

    @Override // android.text.style.DynamicDrawableSpan, android.text.style.ReplacementSpan
    public int getSize(Paint paint, CharSequence charSequence, int i, int i2, Paint.FontMetricsInt fontMetricsInt) {
        l.e(paint, "paint");
        l.e(charSequence, "text");
        if (fontMetricsInt != null) {
            Paint.FontMetrics fontMetrics = paint.getFontMetrics();
            float f = fontMetrics.descent;
            float f2 = fontMetrics.ascent;
            float f3 = 2;
            float f4 = ((f - f2) / f3) + f2;
            float f5 = this.f57152b;
            int i3 = (int) (f4 - (f5 / f3));
            fontMetricsInt.ascent = i3;
            fontMetricsInt.top = i3;
            int i4 = (int) ((f5 / f3) + f4);
            fontMetricsInt.bottom = i4;
            fontMetricsInt.descent = i4;
        }
        return (int) this.f57152b;
    }
}
