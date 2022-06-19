package p193e.p1451f.p1452a.p1457n.p1466q.p1471h;

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
import p1727n3.p1789g0.C26232y;
import p193e.p1451f.p1452a.ComponentCallbacks2C22222c;
import p193e.p1451f.p1452a.p1454l.AbstractC22249a;
import p193e.p1451f.p1452a.p1457n.AbstractC22271m;
import p193e.p1451f.p1452a.p1457n.p1466q.p1471h.C22540g;
/* renamed from: e.f.a.n.q.h.c */
/* loaded from: classes-dex2jar.jar:e/f/a/n/q/h/c.class */
public class C22538c extends Drawable implements C22540g.AbstractC22541b, Animatable {

    /* renamed from: a */
    public final C22539a f62437a;

    /* renamed from: b */
    public boolean f62438b;

    /* renamed from: c */
    public boolean f62439c;

    /* renamed from: d */
    public boolean f62440d;

    /* renamed from: f */
    public int f62442f;

    /* renamed from: h */
    public boolean f62444h;

    /* renamed from: i */
    public Paint f62445i;

    /* renamed from: j */
    public Rect f62446j;

    /* renamed from: e */
    public boolean f62441e = true;

    /* renamed from: g */
    public int f62443g = -1;

    /* renamed from: e.f.a.n.q.h.c$a */
    /* loaded from: classes-dex2jar.jar:e/f/a/n/q/h/c$a.class */
    public static final class C22539a extends Drawable.ConstantState {

        /* renamed from: a */
        public final C22540g f62447a;

        public C22539a(C22540g c22540g) {
            this.f62447a = c22540g;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return 0;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            return new C22538c(this);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            return new C22538c(this);
        }
    }

    public C22538c(Context context, AbstractC22249a abstractC22249a, AbstractC22271m<Bitmap> abstractC22271m, int i, int i2, Bitmap bitmap) {
        C22539a c22539a = new C22539a(new C22540g(ComponentCallbacks2C22222c.m8449b(context), abstractC22249a, i, i2, abstractC22271m, bitmap));
        this.f62437a = c22539a;
    }

    public C22538c(C22539a c22539a) {
        this.f62437a = c22539a;
    }

    @Override // p193e.p1451f.p1452a.p1457n.p1466q.p1471h.C22540g.AbstractC22541b
    /* renamed from: a */
    public void mo8148a() {
        Drawable.Callback callback;
        Drawable.Callback callback2 = getCallback();
        while (true) {
            callback = callback2;
            if (!(callback instanceof Drawable)) {
                break;
            }
            callback2 = ((Drawable) callback).getCallback();
        }
        if (callback == null) {
            stop();
            invalidateSelf();
            return;
        }
        invalidateSelf();
        C22540g c22540g = this.f62437a.f62447a;
        C22540g.a aVar = c22540g.f62456i;
        if ((aVar != null ? aVar.e : -1) == c22540g.f62448a.mo8368e() - 1) {
            this.f62442f++;
        }
        int i = this.f62443g;
        if (i == -1 || this.f62442f < i) {
            return;
        }
        stop();
    }

    /* renamed from: b */
    public Bitmap m8155b() {
        return this.f62437a.f62447a.f62459l;
    }

    /* renamed from: c */
    public final Paint m8154c() {
        if (this.f62445i == null) {
            this.f62445i = new Paint(2);
        }
        return this.f62445i;
    }

    /* renamed from: d */
    public final void m8153d() {
        C26232y.m2302t(!this.f62440d, "You cannot start a recycled Drawable. Ensure thatyou clear any references to the Drawable when clearing the corresponding request.");
        if (this.f62437a.f62447a.f62448a.mo8368e() == 1) {
            invalidateSelf();
        } else if (this.f62438b) {
        } else {
            this.f62438b = true;
            C22540g c22540g = this.f62437a.f62447a;
            if (c22540g.f62457j) {
                throw new IllegalStateException("Cannot subscribe to a cleared frame loader");
            }
            if (c22540g.f62450c.contains(this)) {
                throw new IllegalStateException("Cannot subscribe twice in a row");
            }
            boolean isEmpty = c22540g.f62450c.isEmpty();
            c22540g.f62450c.add(this);
            if (isEmpty && !c22540g.f62453f) {
                c22540g.f62453f = true;
                c22540g.f62457j = false;
                c22540g.m8151a();
            }
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (this.f62440d) {
            return;
        }
        if (this.f62444h) {
            int intrinsicWidth = getIntrinsicWidth();
            int intrinsicHeight = getIntrinsicHeight();
            Rect bounds = getBounds();
            if (this.f62446j == null) {
                this.f62446j = new Rect();
            }
            Gravity.apply(119, intrinsicWidth, intrinsicHeight, bounds, this.f62446j);
            this.f62444h = false;
        }
        C22540g c22540g = this.f62437a.f62447a;
        C22540g.a aVar = c22540g.f62456i;
        Bitmap bitmap = aVar != null ? aVar.g : c22540g.f62459l;
        if (this.f62446j == null) {
            this.f62446j = new Rect();
        }
        canvas.drawBitmap(bitmap, (Rect) null, this.f62446j, m8154c());
    }

    /* renamed from: e */
    public final void m8152e() {
        this.f62438b = false;
        C22540g c22540g = this.f62437a.f62447a;
        c22540g.f62450c.remove(this);
        if (c22540g.f62450c.isEmpty()) {
            c22540g.f62453f = false;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        return this.f62437a;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f62437a.f62447a.f62464q;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f62437a.f62447a.f62463p;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -2;
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return this.f62438b;
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.f62444h = true;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        m8154c().setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        m8154c().setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        C26232y.m2302t(!this.f62440d, "Cannot change the visibility of a recycled resource. Ensure that you unset the Drawable from your View before changing the View's visibility.");
        this.f62441e = z;
        if (!z) {
            m8152e();
        } else if (this.f62439c) {
            m8153d();
        }
        return super.setVisible(z, z2);
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        this.f62439c = true;
        this.f62442f = 0;
        if (this.f62441e) {
            m8153d();
        }
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        this.f62439c = false;
        m8152e();
    }
}
