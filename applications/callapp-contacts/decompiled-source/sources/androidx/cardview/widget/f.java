package androidx.cardview.widget;

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
/* loaded from: classes-dex2jar.jar:androidx/cardview/widget/f.class */
final class f extends Drawable {

    /* renamed from: a  reason: collision with root package name */
    float f1301a;

    /* renamed from: b  reason: collision with root package name */
    float f1302b;

    /* renamed from: c  reason: collision with root package name */
    ColorStateList f1303c;
    private PorterDuffColorFilter i;
    private ColorStateList j;
    private boolean g = false;
    private boolean h = true;
    private PorterDuff.Mode k = PorterDuff.Mode.SRC_IN;

    /* renamed from: d  reason: collision with root package name */
    private final Paint f1304d = new Paint(5);
    private final RectF e = new RectF();
    private final Rect f = new Rect();

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(ColorStateList colorStateList, float f) {
        this.f1301a = f;
        a(colorStateList);
    }

    private PorterDuffColorFilter a(ColorStateList colorStateList, PorterDuff.Mode mode) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return new PorterDuffColorFilter(colorStateList.getColorForState(getState(), 0), mode);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(float f, boolean z, boolean z2) {
        if (f != this.f1302b || this.g != z || this.h != z2) {
            this.f1302b = f;
            this.g = z;
            this.h = z2;
            a((Rect) null);
            invalidateSelf();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(ColorStateList colorStateList) {
        ColorStateList colorStateList2 = colorStateList;
        if (colorStateList == null) {
            colorStateList2 = ColorStateList.valueOf(0);
        }
        this.f1303c = colorStateList2;
        this.f1304d.setColor(colorStateList2.getColorForState(getState(), this.f1303c.getDefaultColor()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(Rect rect) {
        Rect rect2 = rect;
        if (rect == null) {
            rect2 = getBounds();
        }
        this.e.set(rect2.left, rect2.top, rect2.right, rect2.bottom);
        this.f.set(rect2);
        if (this.g) {
            float a2 = g.a(this.f1302b, this.f1301a, this.h);
            this.f.inset((int) Math.ceil(g.b(this.f1302b, this.f1301a, this.h)), (int) Math.ceil(a2));
            this.e.set(this.f);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        boolean z;
        Paint paint = this.f1304d;
        if (this.i == null || paint.getColorFilter() != null) {
            z = false;
        } else {
            paint.setColorFilter(this.i);
            z = true;
        }
        RectF rectF = this.e;
        float f = this.f1301a;
        canvas.drawRoundRect(rectF, f, f, paint);
        if (z) {
            paint.setColorFilter(null);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public final void getOutline(Outline outline) {
        outline.setRoundRect(this.f, this.f1301a);
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isStateful() {
        ColorStateList colorStateList = this.j;
        if (colorStateList != null && colorStateList.isStateful()) {
            return true;
        }
        ColorStateList colorStateList2 = this.f1303c;
        return (colorStateList2 != null && colorStateList2.isStateful()) || super.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    protected final void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        a(rect);
    }

    @Override // android.graphics.drawable.Drawable
    protected final boolean onStateChange(int[] iArr) {
        PorterDuff.Mode mode;
        ColorStateList colorStateList = this.f1303c;
        int colorForState = colorStateList.getColorForState(iArr, colorStateList.getDefaultColor());
        boolean z = colorForState != this.f1304d.getColor();
        if (z) {
            this.f1304d.setColor(colorForState);
        }
        ColorStateList colorStateList2 = this.j;
        if (colorStateList2 == null || (mode = this.k) == null) {
            return z;
        }
        this.i = a(colorStateList2, mode);
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
        this.f1304d.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        this.f1304d.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTintList(ColorStateList colorStateList) {
        this.j = colorStateList;
        this.i = a(colorStateList, this.k);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTintMode(PorterDuff.Mode mode) {
        this.k = mode;
        this.i = a(this.j, mode);
        invalidateSelf();
    }
}
