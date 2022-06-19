package p193e.p194a.p195a.p200c.p220q8;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.text.Layout;
import android.text.style.LeadingMarginSpan;
import com.huawei.hms.opendevice.AbstractC2405c;
import s1.z.c.l;
/* renamed from: e.a.a.c.q8.a */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/q8/a.class */
public final class C5682a implements LeadingMarginSpan {

    /* renamed from: a */
    public final int f19048a;

    /* renamed from: b */
    public final int f19049b;

    /* renamed from: c */
    public final int f19050c;

    public C5682a(int i, int i2, int i3) {
        this.f19048a = i;
        this.f19049b = i2;
        this.f19050c = i3;
    }

    @Override // android.text.style.LeadingMarginSpan
    public void drawLeadingMargin(Canvas canvas, Paint paint, int i, int i2, int i3, int i4, int i5, CharSequence charSequence, int i6, int i7, boolean z, Layout layout) {
        l.e(canvas, AbstractC2405c.f7629a);
        l.e(paint, "p");
        l.e(charSequence, "text");
        l.e(layout, "layout");
        Paint.Style style = paint.getStyle();
        int color = paint.getColor();
        paint.setStyle(Paint.Style.FILL);
        paint.setColor(this.f19048a);
        float f = i;
        canvas.drawRect(f, i3, (i2 * this.f19049b) + f, i5, paint);
        paint.setStyle(style);
        paint.setColor(color);
    }

    @Override // android.text.style.LeadingMarginSpan
    public int getLeadingMargin(boolean z) {
        return this.f19049b + this.f19050c;
    }
}
