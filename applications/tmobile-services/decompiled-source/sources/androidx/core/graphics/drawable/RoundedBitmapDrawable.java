package androidx.core.graphics.drawable;

import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;
/* loaded from: classes-dex2jar.jar:androidx/core/graphics/drawable/RoundedBitmapDrawable.class */
public abstract class RoundedBitmapDrawable extends Drawable {

    /* renamed from: a */
    final Bitmap f3061a;

    /* renamed from: b */
    private int f3062b;

    /* renamed from: c */
    private final Paint f3063c;

    /* renamed from: d */
    private final BitmapShader f3064d;

    /* renamed from: e */
    private final Matrix f3065e;

    /* renamed from: f */
    private float f3066f;

    /* renamed from: g */
    final Rect f3067g;

    /* renamed from: h */
    private final RectF f3068h;

    /* renamed from: i */
    private boolean f3069i;

    /* renamed from: j */
    private boolean f3070j;

    /* renamed from: k */
    private int f3071k;

    /* renamed from: l */
    private int f3072l;

    /* renamed from: c */
    private static boolean m19471c(float f) {
        return f > 0.05f;
    }

    /* renamed from: d */
    private void m19470d() {
        this.f3066f = Math.min(this.f3072l, this.f3071k) / 2;
    }

    /* renamed from: a */
    public float m19472a() {
        return this.f3066f;
    }

    /* renamed from: b */
    void mo19468b(int i, int i2, int i3, Rect rect, Rect rect2) {
        throw new UnsupportedOperationException();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        Bitmap bitmap = this.f3061a;
        if (bitmap != null) {
            m19469e();
            if (this.f3063c.getShader() == null) {
                canvas.drawBitmap(bitmap, (Rect) null, this.f3067g, this.f3063c);
                return;
            }
            RectF rectF = this.f3068h;
            float f = this.f3066f;
            canvas.drawRoundRect(rectF, f, f, this.f3063c);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public void m19469e() {
        if (this.f3069i) {
            if (this.f3070j) {
                int min = Math.min(this.f3071k, this.f3072l);
                mo19468b(this.f3062b, min, min, getBounds(), this.f3067g);
                int min2 = Math.min(this.f3067g.width(), this.f3067g.height());
                this.f3067g.inset(Math.max(0, (this.f3067g.width() - min2) / 2), Math.max(0, (this.f3067g.height() - min2) / 2));
                this.f3066f = min2 * 0.5f;
            } else {
                mo19468b(this.f3062b, this.f3071k, this.f3072l, getBounds(), this.f3067g);
            }
            this.f3068h.set(this.f3067g);
            if (this.f3064d != null) {
                Matrix matrix = this.f3065e;
                RectF rectF = this.f3068h;
                matrix.setTranslate(rectF.left, rectF.top);
                this.f3065e.preScale(this.f3068h.width() / this.f3061a.getWidth(), this.f3068h.height() / this.f3061a.getHeight());
                this.f3064d.setLocalMatrix(this.f3065e);
                this.f3063c.setShader(this.f3064d);
            }
            this.f3069i = false;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f3063c.getAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public ColorFilter getColorFilter() {
        return this.f3063c.getColorFilter();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f3072l;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f3071k;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        int i = -3;
        if (this.f3062b == 119) {
            if (this.f3070j) {
                i = -3;
            } else {
                Bitmap bitmap = this.f3061a;
                i = -3;
                if (bitmap != null) {
                    i = -3;
                    if (!bitmap.hasAlpha()) {
                        i = -3;
                        if (this.f3063c.getAlpha() >= 255) {
                            i = m19471c(this.f3066f) ? -3 : -1;
                        }
                    }
                }
            }
        }
        return i;
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        if (this.f3070j) {
            m19470d();
        }
        this.f3069i = true;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        if (i != this.f3063c.getAlpha()) {
            this.f3063c.setAlpha(i);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f3063c.setColorFilter(colorFilter);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setDither(boolean z) {
        this.f3063c.setDither(z);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setFilterBitmap(boolean z) {
        this.f3063c.setFilterBitmap(z);
        invalidateSelf();
    }
}
