package p081h.p203i.p392f.p393a.p400f;

import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import com.google.maps.android.R$drawable;
/* renamed from: h.i.f.a.f.a */
/* loaded from: classes2-dex2jar.jar:h/i/f/a/f/a.class */
public class C10217a extends Drawable {

    /* renamed from: a */
    public final Drawable f23045a;

    /* renamed from: b */
    public final Drawable f23046b;

    /* renamed from: c */
    public int f23047c = -1;

    public C10217a(Resources resources) {
        this.f23046b = resources.getDrawable(R$drawable.amu_bubble_mask);
        this.f23045a = resources.getDrawable(R$drawable.amu_bubble_shadow);
    }

    /* renamed from: a */
    public void m13099a(int i) {
        this.f23047c = i;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        this.f23046b.draw(canvas);
        canvas.drawColor(this.f23047c, PorterDuff.Mode.SRC_IN);
        this.f23045a.draw(canvas);
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect) {
        return this.f23046b.getPadding(rect);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        throw new UnsupportedOperationException();
    }

    @Override // android.graphics.drawable.Drawable
    public void setBounds(int i, int i2, int i3, int i4) {
        this.f23046b.setBounds(i, i2, i3, i4);
        this.f23045a.setBounds(i, i2, i3, i4);
    }

    @Override // android.graphics.drawable.Drawable
    public void setBounds(Rect rect) {
        this.f23046b.setBounds(rect);
        this.f23045a.setBounds(rect);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        throw new UnsupportedOperationException();
    }
}
