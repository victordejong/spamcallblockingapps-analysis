package p193e.p194a.p195a.p200c;

import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import com.truecaller.C2752R;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import s1.z.c.l;
/* renamed from: e.a.a.c.v6 */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/v6.class */
public final class C5788v6 extends Drawable {

    /* renamed from: a */
    public final float f19385a;

    /* renamed from: b */
    public final float f19386b;

    /* renamed from: c */
    public final float f19387c;

    /* renamed from: d */
    public final Paint f19388d;

    /* renamed from: e */
    public final Paint f19389e;

    /* renamed from: f */
    public final Path f19390f = new Path();

    /* renamed from: g */
    public final boolean f19391g;

    /* renamed from: h */
    public final int f19392h;

    /* renamed from: i */
    public final int f19393i;

    /* renamed from: j */
    public final int f19394j;

    public C5788v6(Resources resources, int i, int i2, int i3) {
        l.e(resources, "res");
        this.f19392h = i;
        this.f19393i = i2;
        this.f19394j = i3;
        float f = 2;
        this.f19385a = resources.getDimension(C2752R.dimen.message_bubble_radius) * f;
        this.f19386b = resources.getDimension(C2752R.dimen.message_bubble_sharp_radius) * f;
        float m13497y = C19291g.m13497y(resources, 1.0f);
        this.f19387c = m13497y;
        Paint paint = new Paint();
        paint.setStyle(Paint.Style.FILL);
        paint.setColor(i);
        boolean z = true;
        paint.setAntiAlias(true);
        this.f19388d = paint;
        Paint paint2 = new Paint();
        paint2.setStyle(Paint.Style.STROKE);
        paint2.setColor(i2);
        paint2.setStrokeWidth(m13497y);
        paint2.setAntiAlias(true);
        this.f19389e = paint2;
        Configuration configuration = resources.getConfiguration();
        l.d(configuration, "res.configuration");
        this.f19391g = configuration.getLayoutDirection() != 1 ? false : z;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        l.e(canvas, "canvas");
        if (this.f19391g) {
            canvas.scale(-1.0f, 1.0f);
            canvas.translate(-getBounds().width(), 0.0f);
        }
        canvas.drawPath(this.f19390f, this.f19388d);
        canvas.drawPath(this.f19390f, this.f19389e);
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumHeight() {
        return (int) Math.ceil(this.f19385a + this.f19387c);
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumWidth() {
        return (int) Math.ceil(this.f19385a + this.f19387c);
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect) {
        l.e(rect, "padding");
        int i = (int) this.f19387c;
        rect.set(i, i, i, i);
        boolean z = this.f19391g;
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        l.e(rect, "bounds");
        float f = this.f19387c;
        float f2 = f * 0.5f;
        float f3 = f * 0.5f;
        float width = rect.width() - (this.f19387c * 0.5f);
        float height = rect.height() - (this.f19387c * 0.5f);
        Path path = this.f19390f;
        path.reset();
        float f4 = (this.f19394j & 1) != 0 ? this.f19386b : this.f19385a;
        path.arcTo(f2, f3, f2 + f4, f3 + f4, -90.0f, -90.0f, false);
        float f5 = (this.f19394j & 2) != 0 ? this.f19386b : this.f19385a;
        path.arcTo(f2, height - f5, f2 + f5, height, 180.0f, -90.0f, false);
        float f6 = (this.f19394j & 4) != 0 ? this.f19386b : this.f19385a;
        path.arcTo(width - f6, height - f6, width, height, 90.0f, -90.0f, false);
        float f7 = (this.f19394j & 8) != 0 ? this.f19386b : this.f19385a;
        path.arcTo(width - f7, f3, width, f3 + f7, 0.0f, -90.0f, false);
        path.close();
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }
}
