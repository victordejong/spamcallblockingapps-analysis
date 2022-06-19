package p215r;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
/* renamed from: r.c */
/* loaded from: classes-dex2jar.jar:r/c.class */
public class C4176c extends Drawable {

    /* renamed from: a */
    public float f13154a;

    /* renamed from: e */
    public float f13158e;

    /* renamed from: h */
    public ColorStateList f13161h;

    /* renamed from: i */
    public PorterDuffColorFilter f13162i;

    /* renamed from: j */
    public ColorStateList f13163j;

    /* renamed from: f */
    public boolean f13159f = false;

    /* renamed from: g */
    public boolean f13160g = true;

    /* renamed from: k */
    public PorterDuff.Mode f13164k = PorterDuff.Mode.SRC_IN;

    /* renamed from: b */
    public final Paint f13155b = new Paint(5);

    /* renamed from: c */
    public final RectF f13156c = new RectF();

    /* renamed from: d */
    public final Rect f13157d = new Rect();

    public C4176c(ColorStateList colorStateList, float f) {
        this.f13154a = f;
        m1310b(colorStateList);
    }

    /* renamed from: a */
    public final PorterDuffColorFilter m1311a(ColorStateList colorStateList, PorterDuff.Mode mode) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return new PorterDuffColorFilter(colorStateList.getColorForState(getState(), 0), mode);
    }

    /* renamed from: b */
    public final void m1310b(ColorStateList colorStateList) {
        ColorStateList colorStateList2 = colorStateList;
        if (colorStateList == null) {
            colorStateList2 = ColorStateList.valueOf(0);
        }
        this.f13161h = colorStateList2;
        this.f13155b.setColor(colorStateList2.getColorForState(getState(), this.f13161h.getDefaultColor()));
    }

    /* renamed from: c */
    public final void m1309c(Rect rect) {
        Rect rect2 = rect;
        if (rect == null) {
            rect2 = getBounds();
        }
        this.f13156c.set(rect2.left, rect2.top, rect2.right, rect2.bottom);
        this.f13157d.set(rect2);
        if (this.f13159f) {
            float m1307b = C4177d.m1307b(this.f13158e, this.f13154a, this.f13160g);
            this.f13157d.inset((int) Math.ceil(C4177d.m1308a(this.f13158e, this.f13154a, this.f13160g)), (int) Math.ceil(m1307b));
            this.f13156c.set(this.f13157d);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        boolean z;
        Paint paint = this.f13155b;
        if (this.f13162i == null || paint.getColorFilter() != null) {
            z = false;
        } else {
            paint.setColorFilter(this.f13162i);
            z = true;
        }
        RectF rectF = this.f13156c;
        float f = this.f13154a;
        canvas.drawRoundRect(rectF, f, f, paint);
        if (z) {
            paint.setColorFilter(null);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public void getOutline(Outline outline) {
        outline.setRoundRect(this.f13157d, this.f13154a);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2 = this.f13163j;
        return (colorStateList2 != null && colorStateList2.isStateful()) || ((colorStateList = this.f13161h) != null && colorStateList.isStateful()) || super.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        m1309c(rect);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onStateChange(int[] iArr) {
        PorterDuff.Mode mode;
        ColorStateList colorStateList = this.f13161h;
        int colorForState = colorStateList.getColorForState(iArr, colorStateList.getDefaultColor());
        boolean z = colorForState != this.f13155b.getColor();
        if (z) {
            this.f13155b.setColor(colorForState);
        }
        ColorStateList colorStateList2 = this.f13163j;
        if (colorStateList2 == null || (mode = this.f13164k) == null) {
            return z;
        }
        this.f13162i = m1311a(colorStateList2, mode);
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.f13155b.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f13155b.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintList(ColorStateList colorStateList) {
        this.f13163j = colorStateList;
        this.f13162i = m1311a(colorStateList, this.f13164k);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintMode(PorterDuff.Mode mode) {
        this.f13164k = mode;
        this.f13162i = m1311a(this.f13163j, mode);
        invalidateSelf();
    }
}
