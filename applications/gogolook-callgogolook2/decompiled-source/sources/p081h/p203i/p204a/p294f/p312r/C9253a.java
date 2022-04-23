package p081h.p203i.p204a.p294f.p312r;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import androidx.appcompat.graphics.drawable.DrawableWrapper;
import androidx.core.content.ContextCompat;
import com.google.android.material.R$color;
/* renamed from: h.i.a.f.r.a */
/* loaded from: classes2-dex2jar.jar:h/i/a/f/r/a.class */
public class C9253a extends DrawableWrapper {

    /* renamed from: p */
    public static final double f21203p = Math.cos(Math.toRadians(45.0d));

    /* renamed from: d */
    public float f21207d;

    /* renamed from: e */
    public Path f21208e;

    /* renamed from: f */
    public float f21209f;

    /* renamed from: g */
    public float f21210g;

    /* renamed from: h */
    public float f21211h;

    /* renamed from: j */
    public final int f21213j;

    /* renamed from: k */
    public final int f21214k;

    /* renamed from: l */
    public final int f21215l;

    /* renamed from: n */
    public float f21217n;

    /* renamed from: i */
    public boolean f21212i = true;

    /* renamed from: m */
    public boolean f21216m = true;

    /* renamed from: o */
    public boolean f21218o = false;

    /* renamed from: a */
    public final Paint f21204a = new Paint(5);

    /* renamed from: c */
    public final RectF f21206c = new RectF();

    /* renamed from: b */
    public final Paint f21205b = new Paint(this.f21204a);

    public C9253a(Context context, Drawable drawable, float f, float f2, float f3) {
        super(drawable);
        this.f21213j = ContextCompat.getColor(context, R$color.design_fab_shadow_start_color);
        this.f21214k = ContextCompat.getColor(context, R$color.design_fab_shadow_mid_color);
        this.f21215l = ContextCompat.getColor(context, R$color.design_fab_shadow_end_color);
        this.f21204a.setStyle(Paint.Style.FILL);
        this.f21207d = Math.round(f);
        this.f21205b.setAntiAlias(false);
        m15609a(f2, f3);
    }

    /* renamed from: a */
    public static float m15608a(float f, float f2, boolean z) {
        float f3 = f;
        if (z) {
            f3 = (float) (f + ((1.0d - f21203p) * f2));
        }
        return f3;
    }

    /* renamed from: b */
    public static float m15602b(float f, float f2, boolean z) {
        return z ? (float) ((f * 1.5f) + ((1.0d - f21203p) * f2)) : f * 1.5f;
    }

    /* renamed from: c */
    public static int m15601c(float f) {
        int round = Math.round(f);
        int i = round;
        if (round % 2 == 1) {
            i = round - 1;
        }
        return i;
    }

    /* renamed from: a */
    public final void m15611a() {
        float f = this.f21207d;
        RectF rectF = new RectF(-f, -f, f, f);
        RectF rectF2 = new RectF(rectF);
        float f2 = this.f21210g;
        rectF2.inset(-f2, -f2);
        Path path = this.f21208e;
        if (path == null) {
            this.f21208e = new Path();
        } else {
            path.reset();
        }
        this.f21208e.setFillType(Path.FillType.EVEN_ODD);
        this.f21208e.moveTo(-this.f21207d, 0.0f);
        this.f21208e.rLineTo(-this.f21210g, 0.0f);
        this.f21208e.arcTo(rectF2, 180.0f, 90.0f, false);
        this.f21208e.arcTo(rectF, 270.0f, -90.0f, false);
        this.f21208e.close();
        float f3 = -rectF2.top;
        if (f3 > 0.0f) {
            float f4 = this.f21207d / f3;
            float f5 = (1.0f - f4) / 2.0f;
            this.f21204a.setShader(new RadialGradient(0.0f, 0.0f, f3, new int[]{0, this.f21213j, this.f21214k, this.f21215l}, new float[]{0.0f, f4, f5 + f4, 1.0f}, Shader.TileMode.CLAMP));
        }
        this.f21205b.setShader(new LinearGradient(0.0f, rectF.top, 0.0f, rectF2.top, new int[]{this.f21213j, this.f21214k, this.f21215l}, new float[]{0.0f, 0.5f, 1.0f}, Shader.TileMode.CLAMP));
        this.f21205b.setAntiAlias(false);
    }

    /* renamed from: a */
    public final void m15610a(float f) {
        if (this.f21217n != f) {
            this.f21217n = f;
            invalidateSelf();
        }
    }

    /* renamed from: a */
    public void m15609a(float f, float f2) {
        if (f < 0.0f || f2 < 0.0f) {
            throw new IllegalArgumentException("invalid shadow size");
        }
        float c = m15601c(f);
        float c2 = m15601c(f2);
        float f3 = c;
        if (c > c2) {
            if (!this.f21218o) {
                this.f21218o = true;
            }
            f3 = c2;
        }
        if (this.f21211h != f3 || this.f21209f != c2) {
            this.f21211h = f3;
            this.f21209f = c2;
            this.f21210g = Math.round(f3 * 1.5f);
            this.f21212i = true;
            invalidateSelf();
        }
    }

    /* renamed from: a */
    public final void m15607a(Canvas canvas) {
        int save = canvas.save();
        canvas.rotate(this.f21217n, this.f21206c.centerX(), this.f21206c.centerY());
        float f = this.f21207d;
        float f2 = (-f) - this.f21210g;
        float f3 = f * 2.0f;
        boolean z = this.f21206c.width() - f3 > 0.0f;
        boolean z2 = this.f21206c.height() - f3 > 0.0f;
        float f4 = this.f21211h;
        float f5 = f / ((f4 - (0.5f * f4)) + f);
        float f6 = f / ((f4 - (0.25f * f4)) + f);
        float f7 = f / ((f4 - (f4 * 1.0f)) + f);
        int save2 = canvas.save();
        RectF rectF = this.f21206c;
        canvas.translate(rectF.left + f, rectF.top + f);
        canvas.scale(f5, f6);
        canvas.drawPath(this.f21208e, this.f21204a);
        if (z) {
            canvas.scale(1.0f / f5, 1.0f);
            canvas.drawRect(0.0f, f2, this.f21206c.width() - f3, -this.f21207d, this.f21205b);
        }
        canvas.restoreToCount(save2);
        int save3 = canvas.save();
        RectF rectF2 = this.f21206c;
        canvas.translate(rectF2.right - f, rectF2.bottom - f);
        canvas.scale(f5, f7);
        canvas.rotate(180.0f);
        canvas.drawPath(this.f21208e, this.f21204a);
        if (z) {
            canvas.scale(1.0f / f5, 1.0f);
            canvas.drawRect(0.0f, f2, this.f21206c.width() - f3, (-this.f21207d) + this.f21210g, this.f21205b);
        }
        canvas.restoreToCount(save3);
        int save4 = canvas.save();
        RectF rectF3 = this.f21206c;
        canvas.translate(rectF3.left + f, rectF3.bottom - f);
        canvas.scale(f5, f7);
        canvas.rotate(270.0f);
        canvas.drawPath(this.f21208e, this.f21204a);
        if (z2) {
            canvas.scale(1.0f / f7, 1.0f);
            canvas.drawRect(0.0f, f2, this.f21206c.height() - f3, -this.f21207d, this.f21205b);
        }
        canvas.restoreToCount(save4);
        int save5 = canvas.save();
        RectF rectF4 = this.f21206c;
        canvas.translate(rectF4.right - f, rectF4.top + f);
        canvas.scale(f5, f6);
        canvas.rotate(90.0f);
        canvas.drawPath(this.f21208e, this.f21204a);
        if (z2) {
            canvas.scale(1.0f / f6, 1.0f);
            canvas.drawRect(0.0f, f2, this.f21206c.height() - f3, -this.f21207d, this.f21205b);
        }
        canvas.restoreToCount(save5);
        canvas.restoreToCount(save);
    }

    /* renamed from: a */
    public final void m15606a(Rect rect) {
        float f = this.f21209f;
        float f2 = 1.5f * f;
        this.f21206c.set(rect.left + f, rect.top + f2, rect.right - f, rect.bottom - f2);
        Drawable wrappedDrawable = getWrappedDrawable();
        RectF rectF = this.f21206c;
        wrappedDrawable.setBounds((int) rectF.left, (int) rectF.top, (int) rectF.right, (int) rectF.bottom);
        m15611a();
    }

    /* renamed from: a */
    public void m15605a(boolean z) {
        this.f21216m = z;
        invalidateSelf();
    }

    /* renamed from: b */
    public float m15604b() {
        return this.f21211h;
    }

    /* renamed from: b */
    public void m15603b(float f) {
        m15609a(f, this.f21209f);
    }

    @Override // androidx.appcompat.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (this.f21212i) {
            m15606a(getBounds());
            this.f21212i = false;
        }
        m15607a(canvas);
        super.draw(canvas);
    }

    @Override // androidx.appcompat.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // androidx.appcompat.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect) {
        int ceil = (int) Math.ceil(m15602b(this.f21209f, this.f21207d, this.f21216m));
        int ceil2 = (int) Math.ceil(m15608a(this.f21209f, this.f21207d, this.f21216m));
        rect.set(ceil2, ceil, ceil2, ceil);
        return true;
    }

    @Override // androidx.appcompat.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        this.f21212i = true;
    }

    @Override // androidx.appcompat.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        super.setAlpha(i);
        this.f21204a.setAlpha(i);
        this.f21205b.setAlpha(i);
    }
}
