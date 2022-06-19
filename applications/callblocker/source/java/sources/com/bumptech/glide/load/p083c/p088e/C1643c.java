package com.bumptech.glide.load.p083c.p088e;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.view.Gravity;
import com.bumptech.glide.ComponentCallbacks2C1361c;
import com.bumptech.glide.load.AbstractC1784k;
import com.bumptech.glide.load.p083c.p088e.C1648g;
import com.bumptech.glide.p069b.AbstractC1355a;
import com.bumptech.glide.p077h.C1456i;
import java.nio.ByteBuffer;
/* renamed from: com.bumptech.glide.load.c.e.c */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/c/e/c.class */
public class C1643c extends Drawable implements Animatable, C1648g.AbstractC1650b {

    /* renamed from: a */
    private final C1644a f5044a;

    /* renamed from: b */
    private boolean f5045b;

    /* renamed from: c */
    private boolean f5046c;

    /* renamed from: d */
    private boolean f5047d;

    /* renamed from: e */
    private boolean f5048e;

    /* renamed from: f */
    private int f5049f;

    /* renamed from: g */
    private int f5050g;

    /* renamed from: h */
    private boolean f5051h;

    /* renamed from: i */
    private Paint f5052i;

    /* renamed from: j */
    private Rect f5053j;

    /* renamed from: com.bumptech.glide.load.c.e.c$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/c/e/c$a.class */
    public static final class C1644a extends Drawable.ConstantState {

        /* renamed from: a */
        final C1648g f5054a;

        C1644a(C1648g c1648g) {
            this.f5054a = c1648g;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return 0;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            return new C1643c(this);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            return newDrawable();
        }
    }

    public C1643c(Context context, AbstractC1355a abstractC1355a, AbstractC1784k<Bitmap> abstractC1784k, int i, int i2, Bitmap bitmap) {
        this(new C1644a(new C1648g(ComponentCallbacks2C1361c.m17308a(context), abstractC1355a, i, i2, abstractC1784k, bitmap)));
    }

    C1643c(C1644a c1644a) {
        this.f5048e = true;
        this.f5050g = -1;
        this.f5044a = (C1644a) C1456i.m16989a(c1644a);
    }

    /* renamed from: h */
    private void m16656h() {
        this.f5049f = 0;
    }

    /* renamed from: i */
    private void m16655i() {
        C1456i.m16985a(!this.f5047d, "You cannot start a recycled Drawable. Ensure thatyou clear any references to the Drawable when clearing the corresponding request.");
        if (this.f5044a.f5054a.m16638g() == 1) {
            invalidateSelf();
        } else if (this.f5045b) {
        } else {
            this.f5045b = true;
            this.f5044a.f5054a.m16646a(this);
            invalidateSelf();
        }
    }

    /* renamed from: j */
    private void m16654j() {
        this.f5045b = false;
        this.f5044a.f5054a.m16643b(this);
    }

    /* renamed from: k */
    private Rect m16653k() {
        if (this.f5053j == null) {
            this.f5053j = new Rect();
        }
        return this.f5053j;
    }

    /* renamed from: l */
    private Paint m16652l() {
        if (this.f5052i == null) {
            this.f5052i = new Paint(2);
        }
        return this.f5052i;
    }

    /* renamed from: m */
    private Drawable.Callback m16651m() {
        Drawable.Callback callback = getCallback();
        while (true) {
            Drawable.Callback callback2 = callback;
            if (callback2 instanceof Drawable) {
                callback = ((Drawable) callback2).getCallback();
            } else {
                return callback2;
            }
        }
    }

    /* renamed from: a */
    public int m16663a() {
        return this.f5044a.f5054a.m16641d();
    }

    /* renamed from: a */
    public void m16662a(AbstractC1784k<Bitmap> abstractC1784k, Bitmap bitmap) {
        this.f5044a.f5054a.m16645a(abstractC1784k, bitmap);
    }

    /* renamed from: b */
    public Bitmap m16661b() {
        return this.f5044a.f5054a.m16649a();
    }

    /* renamed from: c */
    public ByteBuffer m16660c() {
        return this.f5044a.f5054a.m16639f();
    }

    /* renamed from: d */
    public int m16659d() {
        return this.f5044a.f5054a.m16638g();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (this.f5047d) {
            return;
        }
        if (this.f5051h) {
            Gravity.apply(119, getIntrinsicWidth(), getIntrinsicHeight(), getBounds(), m16653k());
            this.f5051h = false;
        }
        canvas.drawBitmap(this.f5044a.f5054a.m16636i(), (Rect) null, m16653k(), m16652l());
    }

    /* renamed from: e */
    public int m16658e() {
        return this.f5044a.f5054a.m16640e();
    }

    @Override // com.bumptech.glide.load.p083c.p088e.C1648g.AbstractC1650b
    /* renamed from: f */
    public void mo16626f() {
        if (m16651m() == null) {
            stop();
            invalidateSelf();
            return;
        }
        invalidateSelf();
        if (m16658e() == m16659d() - 1) {
            this.f5049f++;
        }
        if (this.f5050g == -1 || this.f5049f < this.f5050g) {
            return;
        }
        stop();
    }

    /* renamed from: g */
    public void m16657g() {
        this.f5047d = true;
        this.f5044a.f5054a.m16637h();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        return this.f5044a;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f5044a.f5054a.m16642c();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f5044a.f5054a.m16644b();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -2;
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return this.f5045b;
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.f5051h = true;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        m16652l().setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        m16652l().setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        C1456i.m16985a(!this.f5047d, "Cannot change the visibility of a recycled resource. Ensure that you unset the Drawable from your View before changing the View's visibility.");
        this.f5048e = z;
        if (!z) {
            m16654j();
        } else if (this.f5046c) {
            m16655i();
        }
        return super.setVisible(z, z2);
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        this.f5046c = true;
        m16656h();
        if (this.f5048e) {
            m16655i();
        }
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        this.f5046c = false;
        m16654j();
    }
}
