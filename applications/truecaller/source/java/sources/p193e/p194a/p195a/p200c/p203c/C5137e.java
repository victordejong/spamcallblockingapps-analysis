package p193e.p194a.p195a.p200c.p203c;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.text.TextPaint;
import com.razorpay.AnalyticsConstants;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import s1.z.c.l;
/* renamed from: e.a.a.c.c.e */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/c/e.class */
public final class C5137e extends Drawable {

    /* renamed from: a */
    public final Drawable f17556a;

    /* renamed from: b */
    public final TextPaint f17557b;

    /* renamed from: c */
    public final Context f17558c;

    /* renamed from: d */
    public final String f17559d;

    public C5137e(Context context, String str) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(str, "fileExtension");
        this.f17558c = context;
        this.f17559d = str;
        this.f17556a = C19291g.m13535l0(context, 2131232566, 2130970017);
        TextPaint textPaint = new TextPaint();
        textPaint.setColor(C19291g.m13612L(context, 2130970017));
        textPaint.setStyle(Paint.Style.FILL);
        textPaint.setTypeface(Typeface.DEFAULT_BOLD);
        textPaint.setTextSize(C19291g.m13494z(context, 5.0f));
        textPaint.setAntiAlias(true);
        this.f17557b = textPaint;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        l.e(canvas, "canvas");
        Drawable drawable = this.f17556a;
        if (drawable != null) {
            drawable.draw(canvas);
        }
        Drawable drawable2 = this.f17556a;
        if (drawable2 != null) {
            canvas.save();
            float measureText = this.f17557b.measureText(this.f17559d);
            canvas.scale(0.9f, 1.0f);
            canvas.drawText(this.f17559d, ((drawable2.getBounds().width() - (measureText * 0.9f)) * 0.5f) / 0.9f, drawable2.getBounds().height() * 0.7f, this.f17557b);
            canvas.restore();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        Drawable drawable = this.f17556a;
        return drawable != null ? drawable.getIntrinsicHeight() : 0;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        Drawable drawable = this.f17556a;
        return drawable != null ? drawable.getIntrinsicWidth() : 0;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
    }

    @Override // android.graphics.drawable.Drawable
    public void setBounds(int i, int i2, int i3, int i4) {
        Drawable drawable = this.f17556a;
        if (drawable != null) {
            drawable.setBounds(i, i2, i3, i4);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setBounds(Rect rect) {
        l.e(rect, "bounds");
        Drawable drawable = this.f17556a;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }
}
