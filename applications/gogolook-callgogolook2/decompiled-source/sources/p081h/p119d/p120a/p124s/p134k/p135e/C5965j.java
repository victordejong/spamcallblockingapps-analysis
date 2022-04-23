package p081h.p119d.p120a.p124s.p134k.p135e;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.Gravity;
import p081h.p119d.p120a.p124s.p134k.p137g.AbstractC5979b;
/* renamed from: h.d.a.s.k.e.j */
/* loaded from: classes-dex2jar.jar:h/d/a/s/k/e/j.class */
public class C5965j extends AbstractC5979b {

    /* renamed from: a */
    public final Rect f14886a;

    /* renamed from: b */
    public int f14887b;

    /* renamed from: c */
    public int f14888c;

    /* renamed from: d */
    public boolean f14889d;

    /* renamed from: e */
    public boolean f14890e;

    /* renamed from: f */
    public C5966a f14891f;

    /* renamed from: h.d.a.s.k.e.j$a */
    /* loaded from: classes-dex2jar.jar:h/d/a/s/k/e/j$a.class */
    public static class C5966a extends Drawable.ConstantState {

        /* renamed from: d */
        public static final Paint f14892d = new Paint(6);

        /* renamed from: a */
        public final Bitmap f14893a;

        /* renamed from: b */
        public int f14894b;

        /* renamed from: c */
        public Paint f14895c;

        public C5966a(Bitmap bitmap) {
            this.f14895c = f14892d;
            this.f14893a = bitmap;
        }

        public C5966a(C5966a aVar) {
            this(aVar.f14893a);
            this.f14894b = aVar.f14894b;
        }

        /* renamed from: a */
        public void m24105a() {
            if (f14892d == this.f14895c) {
                this.f14895c = new Paint(6);
            }
        }

        /* renamed from: a */
        public void m24104a(int i) {
            m24105a();
            this.f14895c.setAlpha(i);
        }

        /* renamed from: a */
        public void m24103a(ColorFilter colorFilter) {
            m24105a();
            this.f14895c.setColorFilter(colorFilter);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return 0;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            return new C5965j((Resources) null, this);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            return new C5965j(resources, this);
        }
    }

    public C5965j(Resources resources, Bitmap bitmap) {
        this(resources, new C5966a(bitmap));
    }

    public C5965j(Resources resources, C5966a aVar) {
        int i;
        this.f14886a = new Rect();
        if (aVar != null) {
            this.f14891f = aVar;
            if (resources != null) {
                int i2 = resources.getDisplayMetrics().densityDpi;
                i = i2 == 0 ? 160 : i2;
                aVar.f14894b = i;
            } else {
                i = aVar.f14894b;
            }
            this.f14887b = aVar.f14893a.getScaledWidth(i);
            this.f14888c = aVar.f14893a.getScaledHeight(i);
            return;
        }
        throw new NullPointerException("BitmapState must not be null");
    }

    @Override // p081h.p119d.p120a.p124s.p134k.p137g.AbstractC5979b
    /* renamed from: a */
    public boolean mo23912a() {
        return false;
    }

    /* renamed from: b */
    public Bitmap m24106b() {
        return this.f14891f.f14893a;
    }

    @Override // p081h.p119d.p120a.p124s.p134k.p137g.AbstractC5979b
    /* renamed from: b */
    public void mo23911b(int i) {
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (this.f14889d) {
            Gravity.apply(119, this.f14887b, this.f14888c, getBounds(), this.f14886a);
            this.f14889d = false;
        }
        C5966a aVar = this.f14891f;
        canvas.drawBitmap(aVar.f14893a, (Rect) null, this.f14886a, aVar.f14895c);
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        return this.f14891f;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f14888c;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f14887b;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        Bitmap bitmap = this.f14891f.f14893a;
        return (bitmap == null || bitmap.hasAlpha() || this.f14891f.f14895c.getAlpha() < 255) ? -3 : -1;
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return false;
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (!this.f14890e && super.mutate() == this) {
            this.f14891f = new C5966a(this.f14891f);
            this.f14890e = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.f14889d = true;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        if (this.f14891f.f14895c.getAlpha() != i) {
            this.f14891f.m24104a(i);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f14891f.m24103a(colorFilter);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
    }
}
