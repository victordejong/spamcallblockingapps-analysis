package p193e.p194a.p195a.p269n.p270j;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.drawable.Drawable;
import s1.z.c.l;
/* renamed from: e.a.a.n.j.c */
/* loaded from: classes7-dex2jar.jar:e/a/a/n/j/c.class */
public final class C7009c extends Drawable {

    /* renamed from: a */
    public final Drawable f22632a;

    public C7009c(Drawable drawable) {
        l.e(drawable, "drawable");
        this.f22632a = drawable;
        drawable.setBounds(0, 0, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        l.e(canvas, "canvas");
        canvas.save();
        canvas.translate((getBounds().right - this.f22632a.getBounds().right) * 0.5f, (getBounds().bottom - this.f22632a.getBounds().bottom) * 0.5f);
        this.f22632a.draw(canvas);
        canvas.restore();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return this.f22632a.getOpacity();
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.f22632a.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f22632a.setColorFilter(colorFilter);
    }
}
