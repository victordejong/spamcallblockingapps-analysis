package p459j.p460a.p474c0.p491g;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.view.Gravity;
import p459j.p460a.p474c0.p499h.p500x0.C12227c;
/* renamed from: j.a.c0.g.n */
/* loaded from: classes2-dex2jar.jar:j/a/c0/g/n.class */
public class C12098n extends BitmapDrawable {

    /* renamed from: a */
    public final C12227c.C12228a f27180a;

    /* renamed from: c */
    public int f27182c;

    /* renamed from: d */
    public int f27183d;

    /* renamed from: e */
    public boolean f27184e = true;

    /* renamed from: b */
    public final Rect f27181b = new Rect();

    public C12098n(int i, Resources resources, Bitmap bitmap) {
        super(resources, bitmap);
        this.f27180a = C12227c.m6665g(i);
    }

    /* renamed from: a */
    public static BitmapDrawable m7172a(int i, Resources resources, Bitmap bitmap) {
        return i <= 1 ? new BitmapDrawable(resources, bitmap) : new C12098n(i, resources, bitmap);
    }

    @Override // android.graphics.drawable.BitmapDrawable, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (this.f27184e) {
            Gravity.apply(getGravity(), getIntrinsicWidth(), getIntrinsicHeight(), getBounds(), this.f27181b);
            this.f27182c = this.f27181b.centerX();
            this.f27183d = this.f27181b.centerY();
            if (this.f27180a.f27534d) {
                Matrix matrix = new Matrix();
                matrix.setRotate(this.f27180a.f27531a, this.f27182c, this.f27183d);
                RectF rectF = new RectF(this.f27181b);
                matrix.mapRect(rectF);
                this.f27181b.set((int) rectF.left, (int) rectF.top, (int) rectF.right, (int) rectF.bottom);
            }
            this.f27184e = false;
        }
        canvas.save();
        C12227c.C12228a aVar = this.f27180a;
        canvas.scale(aVar.f27532b, aVar.f27533c, this.f27182c, this.f27183d);
        canvas.rotate(this.f27180a.f27531a, this.f27182c, this.f27183d);
        canvas.drawBitmap(getBitmap(), (Rect) null, this.f27181b, getPaint());
        canvas.restore();
    }

    @Override // android.graphics.drawable.BitmapDrawable, android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f27180a.f27534d ? super.getIntrinsicWidth() : super.getIntrinsicHeight();
    }

    @Override // android.graphics.drawable.BitmapDrawable, android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f27180a.f27534d ? super.getIntrinsicHeight() : super.getIntrinsicWidth();
    }

    @Override // android.graphics.drawable.BitmapDrawable, android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.f27184e = true;
    }
}
