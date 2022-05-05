package p081h.p203i.p204a.p294f.p315u;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.view.View;
import androidx.annotation.NonNull;
/* renamed from: h.i.a.f.u.a */
/* loaded from: classes2-dex2jar.jar:h/i/a/f/u/a.class */
public class C9273a extends GradientDrawable {

    /* renamed from: a */
    public final Paint f21285a = new Paint(1);

    /* renamed from: b */
    public final RectF f21286b = new RectF();

    /* renamed from: c */
    public int f21287c;

    public C9273a() {
        m15542c();
    }

    /* renamed from: a */
    public void m15548a(float f, float f2, float f3, float f4) {
        RectF rectF = this.f21286b;
        if (f != rectF.left || f2 != rectF.top || f3 != rectF.right || f4 != rectF.bottom) {
            this.f21286b.set(f, f2, f3, f4);
            invalidateSelf();
        }
    }

    /* renamed from: a */
    public final void m15547a(@NonNull Canvas canvas) {
        if (!m15545a(getCallback())) {
            canvas.restoreToCount(this.f21287c);
        }
    }

    /* renamed from: a */
    public void m15546a(RectF rectF) {
        m15548a(rectF.left, rectF.top, rectF.right, rectF.bottom);
    }

    /* renamed from: a */
    public boolean m15549a() {
        return !this.f21286b.isEmpty();
    }

    /* renamed from: a */
    public final boolean m15545a(Drawable.Callback callback) {
        return callback instanceof View;
    }

    /* renamed from: b */
    public void m15544b() {
        m15548a(0.0f, 0.0f, 0.0f, 0.0f);
    }

    /* renamed from: b */
    public final void m15543b(@NonNull Canvas canvas) {
        Drawable.Callback callback = getCallback();
        if (m15545a(callback)) {
            ((View) callback).setLayerType(2, null);
        } else {
            m15541c(canvas);
        }
    }

    /* renamed from: c */
    public final void m15542c() {
        this.f21285a.setStyle(Paint.Style.FILL_AND_STROKE);
        this.f21285a.setColor(-1);
        this.f21285a.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
    }

    /* renamed from: c */
    public final void m15541c(@NonNull Canvas canvas) {
        if (Build.VERSION.SDK_INT >= 21) {
            this.f21287c = canvas.saveLayer(0.0f, 0.0f, canvas.getWidth(), canvas.getHeight(), null);
        } else {
            this.f21287c = canvas.saveLayer(0.0f, 0.0f, canvas.getWidth(), canvas.getHeight(), null, 31);
        }
    }

    @Override // android.graphics.drawable.GradientDrawable, android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        m15543b(canvas);
        super.draw(canvas);
        canvas.drawRect(this.f21286b, this.f21285a);
        m15547a(canvas);
    }
}
