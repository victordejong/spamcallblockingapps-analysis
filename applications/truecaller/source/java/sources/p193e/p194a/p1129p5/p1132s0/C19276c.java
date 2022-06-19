package p193e.p194a.p1129p5.p1132s0;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.text.style.ReplacementSpan;
import s1.z.c.l;
/* renamed from: e.a.p5.s0.c */
/* loaded from: classes15-dex2jar.jar:e/a/p5/s0/c.class */
public final class C19276c extends ReplacementSpan {

    /* renamed from: a */
    public final Drawable f53677a;

    public C19276c(Drawable drawable) {
        l.e(drawable, "drawable");
        this.f53677a = drawable;
        drawable.setBounds(0, 0, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
    }

    @Override // android.text.style.ReplacementSpan
    public void draw(Canvas canvas, CharSequence charSequence, int i, int i2, float f, int i3, int i4, int i5, Paint paint) {
        l.e(canvas, "canvas");
        l.e(charSequence, "text");
        l.e(paint, "paint");
        Paint.FontMetricsInt fontMetricsInt = paint.getFontMetricsInt();
        int i6 = this.f53677a.getBounds().bottom / 2;
        canvas.save();
        canvas.translate(f, (i5 - i6) - (fontMetricsInt.descent - (fontMetricsInt.ascent / 2)));
        this.f53677a.draw(canvas);
        canvas.restore();
    }

    @Override // android.text.style.ReplacementSpan
    public int getSize(Paint paint, CharSequence charSequence, int i, int i2, Paint.FontMetricsInt fontMetricsInt) {
        l.e(paint, "paint");
        l.e(charSequence, "text");
        return this.f53677a.getBounds().right;
    }
}
