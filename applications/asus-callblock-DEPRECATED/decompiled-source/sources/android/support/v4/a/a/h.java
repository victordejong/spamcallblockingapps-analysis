package android.support.v4.a.a;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
/* loaded from: classes-dex2jar.jar:android/support/v4/a/a/h.class */
public abstract class h extends Drawable {

    /* renamed from: a  reason: collision with root package name */
    final Bitmap f25a;
    public final BitmapShader c;
    public float d;
    public boolean f;
    private int g;
    private int l;
    private int m;
    private int h = 119;

    /* renamed from: b  reason: collision with root package name */
    public final Paint f26b = new Paint(3);
    private final Matrix i = new Matrix();
    final Rect e = new Rect();
    private final RectF j = new RectF();
    private boolean k = true;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(Resources resources, Bitmap bitmap) {
        this.g = 160;
        if (resources != null) {
            this.g = resources.getDisplayMetrics().densityDpi;
        }
        this.f25a = bitmap;
        if (this.f25a != null) {
            this.l = this.f25a.getScaledWidth(this.g);
            this.m = this.f25a.getScaledHeight(this.g);
            this.c = new BitmapShader(this.f25a, Shader.TileMode.CLAMP, Shader.TileMode.CLAMP);
            return;
        }
        this.m = -1;
        this.l = -1;
        this.c = null;
    }

    public static boolean a(float f) {
        return f > 0.05f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a() {
        if (this.k) {
            if (this.f) {
                int min = Math.min(this.l, this.m);
                a(this.h, min, min, getBounds(), this.e);
                int min2 = Math.min(this.e.width(), this.e.height());
                this.e.inset(Math.max(0, (this.e.width() - min2) / 2), Math.max(0, (this.e.height() - min2) / 2));
                this.d = min2 * 0.5f;
            } else {
                a(this.h, this.l, this.m, getBounds(), this.e);
            }
            this.j.set(this.e);
            if (this.c != null) {
                this.i.setTranslate(this.j.left, this.j.top);
                this.i.preScale(this.j.width() / this.f25a.getWidth(), this.j.height() / this.f25a.getHeight());
                this.c.setLocalMatrix(this.i);
                this.f26b.setShader(this.c);
            }
            this.k = false;
        }
    }

    void a(int i, int i2, int i3, Rect rect, Rect rect2) {
        throw new UnsupportedOperationException();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Bitmap bitmap = this.f25a;
        if (bitmap != null) {
            a();
            if (this.f26b.getShader() == null) {
                canvas.drawBitmap(bitmap, (Rect) null, this.e, this.f26b);
            } else {
                canvas.drawRoundRect(this.j, this.d, this.d, this.f26b);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f26b.getAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public ColorFilter getColorFilter() {
        return this.f26b.getColorFilter();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.m;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.l;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        int i = -3;
        if (this.h == 119) {
            if (this.f) {
                i = -3;
            } else {
                Bitmap bitmap = this.f25a;
                i = -3;
                if (bitmap != null) {
                    i = -3;
                    if (!bitmap.hasAlpha()) {
                        i = -3;
                        if (this.f26b.getAlpha() >= 255) {
                            i = -3;
                            if (!a(this.d)) {
                                i = -1;
                            }
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
        if (this.f) {
            this.d = Math.min(this.m, this.l) / 2;
        }
        this.k = true;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        if (i != this.f26b.getAlpha()) {
            this.f26b.setAlpha(i);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f26b.setColorFilter(colorFilter);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setDither(boolean z) {
        this.f26b.setDither(z);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setFilterBitmap(boolean z) {
        this.f26b.setFilterBitmap(z);
        invalidateSelf();
    }
}
