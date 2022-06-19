package com.bumptech.glide.load.p214j.p218g;

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
import com.bumptech.glide.ComponentCallbacks2C3958c;
import com.bumptech.glide.load.AbstractC4148h;
import com.bumptech.glide.load.p214j.p218g.C4260g;
import com.bumptech.glide.p207l.AbstractC3984a;
import com.bumptech.glide.p223p.C4382j;
import java.nio.ByteBuffer;
import java.util.List;
import p020b.p074t.p075a.p076a.AbstractC1793b;
/* renamed from: com.bumptech.glide.load.j.g.c */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/j/g/c.class */
public class C4255c extends Drawable implements C4260g.AbstractC4262b, Animatable {

    /* renamed from: d */
    private final C4256a f13153d;

    /* renamed from: e */
    private boolean f13154e;

    /* renamed from: f */
    private boolean f13155f;

    /* renamed from: g */
    private boolean f13156g;

    /* renamed from: h */
    private boolean f13157h;

    /* renamed from: i */
    private int f13158i;

    /* renamed from: j */
    private int f13159j;

    /* renamed from: k */
    private boolean f13160k;

    /* renamed from: l */
    private Paint f13161l;

    /* renamed from: m */
    private Rect f13162m;

    /* renamed from: n */
    private List<AbstractC1793b> f13163n;

    /* renamed from: com.bumptech.glide.load.j.g.c$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/j/g/c$a.class */
    public static final class C4256a extends Drawable.ConstantState {

        /* renamed from: a */
        final C4260g f13164a;

        C4256a(C4260g c4260g) {
            this.f13164a = c4260g;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return 0;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            return new C4255c(this);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            return newDrawable();
        }
    }

    public C4255c(Context context, AbstractC3984a abstractC3984a, AbstractC4148h<Bitmap> abstractC4148h, int i, int i2, Bitmap bitmap) {
        this(new C4256a(new C4260g(ComponentCallbacks2C3958c.m23695c(context), abstractC3984a, i, i2, abstractC4148h, bitmap)));
    }

    C4255c(C4256a c4256a) {
        this.f13157h = true;
        this.f13159j = -1;
        this.f13153d = (C4256a) C4382j.m22719d(c4256a);
    }

    /* renamed from: b */
    private Drawable.Callback m23037b() {
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

    /* renamed from: d */
    private Rect m23035d() {
        if (this.f13162m == null) {
            this.f13162m = new Rect();
        }
        return this.f13162m;
    }

    /* renamed from: h */
    private Paint m23031h() {
        if (this.f13161l == null) {
            this.f13161l = new Paint(2);
        }
        return this.f13161l;
    }

    /* renamed from: j */
    private void m23029j() {
        List<AbstractC1793b> list = this.f13163n;
        if (list != null) {
            int size = list.size();
            for (int i = 0; i < size; i++) {
                this.f13163n.get(i).mo4408a(this);
            }
        }
    }

    /* renamed from: l */
    private void m23027l() {
        this.f13158i = 0;
    }

    /* renamed from: n */
    private void m23025n() {
        C4382j.m22722a(!this.f13156g, "You cannot start a recycled Drawable. Ensure thatyou clear any references to the Drawable when clearing the corresponding request.");
        if (this.f13153d.f13164a.m23017f() == 1) {
            invalidateSelf();
        } else if (this.f13154e) {
        } else {
            this.f13154e = true;
            this.f13153d.f13164a.m23005r(this);
            invalidateSelf();
        }
    }

    /* renamed from: o */
    private void m23024o() {
        this.f13154e = false;
        this.f13153d.f13164a.m23004s(this);
    }

    @Override // com.bumptech.glide.load.p214j.p218g.C4260g.AbstractC4262b
    /* renamed from: a */
    public void mo23001a() {
        if (m23037b() == null) {
            stop();
            invalidateSelf();
            return;
        }
        invalidateSelf();
        if (m23032g() == m23033f() - 1) {
            this.f13158i++;
        }
        int i = this.f13159j;
        if (i == -1 || this.f13158i < i) {
            return;
        }
        m23029j();
        stop();
    }

    /* renamed from: c */
    public ByteBuffer m23036c() {
        return this.f13153d.f13164a.m23021b();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (this.f13156g) {
            return;
        }
        if (this.f13160k) {
            Gravity.apply(119, getIntrinsicWidth(), getIntrinsicHeight(), getBounds(), m23035d());
            this.f13160k = false;
        }
        canvas.drawBitmap(this.f13153d.f13164a.m23020c(), (Rect) null, m23035d(), m23031h());
    }

    /* renamed from: e */
    public Bitmap m23034e() {
        return this.f13153d.f13164a.m23018e();
    }

    /* renamed from: f */
    public int m23033f() {
        return this.f13153d.f13164a.m23017f();
    }

    /* renamed from: g */
    public int m23032g() {
        return this.f13153d.f13164a.m23019d();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        return this.f13153d;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f13153d.f13164a.m23015h();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f13153d.f13164a.m23012k();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -2;
    }

    /* renamed from: i */
    public int m23030i() {
        return this.f13153d.f13164a.m23013j();
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return this.f13154e;
    }

    /* renamed from: k */
    public void m23028k() {
        this.f13156g = true;
        this.f13153d.f13164a.m23022a();
    }

    /* renamed from: m */
    public void m23026m(AbstractC4148h<Bitmap> abstractC4148h, Bitmap bitmap) {
        this.f13153d.f13164a.m23008o(abstractC4148h, bitmap);
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.f13160k = true;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        m23031h().setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        m23031h().setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        C4382j.m22722a(!this.f13156g, "Cannot change the visibility of a recycled resource. Ensure that you unset the Drawable from your View before changing the View's visibility.");
        this.f13157h = z;
        if (!z) {
            m23024o();
        } else if (this.f13155f) {
            m23025n();
        }
        return super.setVisible(z, z2);
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        this.f13155f = true;
        m23027l();
        if (this.f13157h) {
            m23025n();
        }
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        this.f13155f = false;
        m23024o();
    }
}
