package p000;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
/* renamed from: b40$h */
/* loaded from: classes-dex2jar.jar:b40$h.class */
public class b40$h extends Drawable.ConstantState {

    /* renamed from: a */
    public int f1766a;

    /* renamed from: b */
    public b40$g f1767b;

    /* renamed from: c */
    public ColorStateList f1768c;

    /* renamed from: d */
    public PorterDuff.Mode f1769d;

    /* renamed from: e */
    public boolean f1770e;

    /* renamed from: f */
    public Bitmap f1771f;

    /* renamed from: g */
    public ColorStateList f1772g;

    /* renamed from: h */
    public PorterDuff.Mode f1773h;

    /* renamed from: i */
    public int f1774i;

    /* renamed from: j */
    public boolean f1775j;

    /* renamed from: k */
    public boolean f1776k;

    /* renamed from: l */
    public Paint f1777l;

    public b40$h() {
        this.f1768c = null;
        this.f1769d = b40.l;
        this.f1767b = new b40$g();
    }

    public b40$h(b40$h b40_h) {
        this.f1768c = null;
        this.f1769d = b40.l;
        if (b40_h != null) {
            this.f1766a = b40_h.f1766a;
            b40$g b40_g = new b40$g(b40_h.f1767b);
            this.f1767b = b40_g;
            if (b40_h.f1767b.f1754e != null) {
                b40_g.f1754e = new Paint(b40_h.f1767b.f1754e);
            }
            if (b40_h.f1767b.f1753d != null) {
                this.f1767b.f1753d = new Paint(b40_h.f1767b.f1753d);
            }
            this.f1768c = b40_h.f1768c;
            this.f1769d = b40_h.f1769d;
            this.f1770e = b40_h.f1770e;
        }
    }

    /* renamed from: a */
    public boolean m5802a(int i, int i2) {
        return i == this.f1771f.getWidth() && i2 == this.f1771f.getHeight();
    }

    /* renamed from: b */
    public boolean m5801b() {
        return !this.f1776k && this.f1772g == this.f1768c && this.f1773h == this.f1769d && this.f1775j == this.f1770e && this.f1774i == this.f1767b.getRootAlpha();
    }

    /* renamed from: c */
    public void m5800c(int i, int i2) {
        if (this.f1771f == null || !m5802a(i, i2)) {
            this.f1771f = Bitmap.createBitmap(i, i2, Bitmap.Config.ARGB_8888);
            this.f1776k = true;
        }
    }

    /* renamed from: d */
    public void m5799d(Canvas canvas, ColorFilter colorFilter, Rect rect) {
        canvas.drawBitmap(this.f1771f, (Rect) null, rect, m5798e(colorFilter));
    }

    /* renamed from: e */
    public Paint m5798e(ColorFilter colorFilter) {
        if (m5797f() || colorFilter != null) {
            if (this.f1777l == null) {
                Paint paint = new Paint();
                this.f1777l = paint;
                paint.setFilterBitmap(true);
            }
            this.f1777l.setAlpha(this.f1767b.getRootAlpha());
            this.f1777l.setColorFilter(colorFilter);
            return this.f1777l;
        }
        return null;
    }

    /* renamed from: f */
    public boolean m5797f() {
        return this.f1767b.getRootAlpha() < 255;
    }

    /* renamed from: g */
    public boolean m5796g() {
        return this.f1767b.m5804f();
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public int getChangingConfigurations() {
        return this.f1766a;
    }

    /* renamed from: h */
    public boolean m5795h(int[] iArr) {
        boolean m5803g = this.f1767b.m5803g(iArr);
        this.f1776k |= m5803g;
        return m5803g;
    }

    /* renamed from: i */
    public void m5794i() {
        this.f1772g = this.f1768c;
        this.f1773h = this.f1769d;
        this.f1774i = this.f1767b.getRootAlpha();
        this.f1775j = this.f1770e;
        this.f1776k = false;
    }

    /* renamed from: j */
    public void m5793j(int i, int i2) {
        this.f1771f.eraseColor(0);
        this.f1767b.m5808b(new Canvas(this.f1771f), i, i2, null);
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public Drawable newDrawable() {
        return new b40(this);
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public Drawable newDrawable(Resources resources) {
        return new b40(this);
    }
}
