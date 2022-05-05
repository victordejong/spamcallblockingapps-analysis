package p081h.p093b.p099c.p100a.p101j;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.text.style.ReplacementSpan;
/* renamed from: h.b.c.a.j.d */
/* loaded from: classes-dex2jar.jar:h/b/c/a/j/d.class */
public class C5612d extends ReplacementSpan {

    /* renamed from: d */
    public static final Paint f14021d = new Paint();

    /* renamed from: a */
    public Drawable f14022a;

    /* renamed from: b */
    public boolean f14023b = false;

    /* renamed from: c */
    public int f14024c;

    public C5612d(Drawable drawable) {
        this.f14022a = drawable;
    }

    /* renamed from: a */
    public Rect mo25012a() {
        return this.f14022a.getBounds();
    }

    /* renamed from: a */
    public void m25015a(float f) {
    }

    /* renamed from: a */
    public void m25014a(int i) {
        this.f14024c = i;
    }

    /* renamed from: a */
    public final void m25013a(Paint.FontMetricsInt fontMetricsInt, Paint paint) {
        f14021d.set(paint);
        if (fontMetricsInt != null) {
            f14021d.getFontMetricsInt(fontMetricsInt);
            Rect a = mo25012a();
            int i = fontMetricsInt.descent;
            int i2 = fontMetricsInt.ascent;
            int i3 = fontMetricsInt.bottom;
            int i4 = fontMetricsInt.top;
            int i5 = (a.bottom - (i3 - i4)) / 2;
            fontMetricsInt.top = Math.min(i4, i4 - i5);
            int i6 = fontMetricsInt.bottom;
            fontMetricsInt.bottom = Math.max(i6, i5 + i6);
            fontMetricsInt.ascent = fontMetricsInt.top;
            fontMetricsInt.descent = fontMetricsInt.bottom;
        }
    }

    @Override // android.text.style.ReplacementSpan
    public void draw(Canvas canvas, CharSequence charSequence, int i, int i2, float f, int i3, int i4, int i5, Paint paint) {
        canvas.save();
        canvas.translate(f, ((i5 - this.f14022a.getBounds().bottom) + i3) / 2);
        this.f14022a.draw(canvas);
        canvas.restore();
    }

    @Override // android.text.style.ReplacementSpan
    public int getSize(Paint paint, CharSequence charSequence, int i, int i2, Paint.FontMetricsInt fontMetricsInt) {
        m25013a(fontMetricsInt, paint);
        return mo25012a().right + (this.f14023b ? 0 : this.f14024c);
    }
}
