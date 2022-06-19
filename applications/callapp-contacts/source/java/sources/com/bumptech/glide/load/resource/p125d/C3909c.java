package com.bumptech.glide.load.resource.p125d;

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
import androidx.p057l.p058a.p059a.AbstractC1196b;
import com.bumptech.glide.ComponentCallbacks2C3548c;
import com.bumptech.glide.load.AbstractC3826l;
import com.bumptech.glide.load.engine.p119a.AbstractC3712e;
import com.bumptech.glide.load.resource.p125d.C3914g;
import com.bumptech.glide.p109b.AbstractC3542a;
import com.bumptech.glide.p116g.C3643j;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.bumptech.glide.load.resource.d.c */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/d/c.class */
public class C3909c extends Drawable implements Animatable, AbstractC1196b, C3914g.AbstractC3916b {

    /* renamed from: a */
    final C3910a f14307a;

    /* renamed from: b */
    boolean f14308b;

    /* renamed from: c */
    private boolean f14309c;

    /* renamed from: d */
    private boolean f14310d;

    /* renamed from: e */
    private boolean f14311e;

    /* renamed from: f */
    private int f14312f;

    /* renamed from: g */
    private int f14313g;

    /* renamed from: h */
    private boolean f14314h;

    /* renamed from: i */
    private Paint f14315i;

    /* renamed from: j */
    private Rect f14316j;

    /* renamed from: k */
    private List<AbstractC1196b.AbstractC1197a> f14317k;

    /* renamed from: com.bumptech.glide.load.resource.d.c$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/d/c$a.class */
    public static final class C3910a extends Drawable.ConstantState {

        /* renamed from: a */
        final C3914g f14318a;

        C3910a(C3914g c3914g) {
            this.f14318a = c3914g;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final int getChangingConfigurations() {
            return 0;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable() {
            return new C3909c(this);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable(Resources resources) {
            return newDrawable();
        }
    }

    @Deprecated
    public C3909c(Context context, AbstractC3542a abstractC3542a, AbstractC3712e abstractC3712e, AbstractC3826l<Bitmap> abstractC3826l, int i, int i2, Bitmap bitmap) {
        this(context, abstractC3542a, abstractC3826l, i, i2, bitmap);
    }

    public C3909c(Context context, AbstractC3542a abstractC3542a, AbstractC3826l<Bitmap> abstractC3826l, int i, int i2, Bitmap bitmap) {
        this(new C3910a(new C3914g(ComponentCallbacks2C3548c.m37723a(context), abstractC3542a, i, i2, abstractC3826l, bitmap)));
    }

    C3909c(C3910a c3910a) {
        this.f14311e = true;
        this.f14313g = -1;
        this.f14307a = (C3910a) C3643j.m37588a(c3910a, "Argument must not be null");
    }

    C3909c(C3914g c3914g, Paint paint) {
        this(new C3910a(c3914g));
        this.f14315i = paint;
    }

    /* renamed from: d */
    private void m37219d() {
        C3643j.m37585a(!this.f14308b, "You cannot start a recycled Drawable. Ensure thatyou clear any references to the Drawable when clearing the corresponding request.");
        if (this.f14307a.f14318a.m37208a() == 1) {
            invalidateSelf();
        } else if (this.f14309c) {
        } else {
            this.f14309c = true;
            this.f14307a.f14318a.m37205a(this);
            invalidateSelf();
        }
    }

    /* renamed from: e */
    private void m37218e() {
        this.f14309c = false;
        this.f14307a.f14318a.m37203b(this);
    }

    /* renamed from: f */
    private Rect m37217f() {
        if (this.f14316j == null) {
            this.f14316j = new Rect();
        }
        return this.f14316j;
    }

    /* renamed from: g */
    private Paint m37216g() {
        if (this.f14315i == null) {
            this.f14315i = new Paint(2);
        }
        return this.f14315i;
    }

    /* renamed from: a */
    public final Bitmap m37223a() {
        return this.f14307a.f14318a.f14327h;
    }

    /* renamed from: a */
    public final void m37222a(int i) {
        if (i > 0 || i == -1 || i == 0) {
            if (i != 0) {
                this.f14313g = i;
                return;
            }
            int mo37729g = this.f14307a.f14318a.f14320a.mo37729g();
            if (mo37729g == 0) {
                mo37729g = -1;
            }
            this.f14313g = mo37729g;
            return;
        }
        throw new IllegalArgumentException("Loop count must be greater than 0, or equal to GlideDrawable.LOOP_FOREVER, or equal to GlideDrawable.LOOP_INTRINSIC");
    }

    /* renamed from: a */
    public final void m37221a(AbstractC1196b.AbstractC1197a abstractC1197a) {
        if (this.f14317k == null) {
            this.f14317k = new ArrayList();
        }
        this.f14317k.add(abstractC1197a);
    }

    /* renamed from: b */
    public final ByteBuffer m37220b() {
        return this.f14307a.f14318a.f14320a.mo37742a().asReadOnlyBuffer();
    }

    @Override // com.bumptech.glide.load.resource.p125d.C3914g.AbstractC3916b
    /* renamed from: c */
    public final void mo37198c() {
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
        C3914g c3914g = this.f14307a.f14318a;
        if ((c3914g.f14324e != null ? c3914g.f14324e.f14338a : -1) == this.f14307a.f14318a.m37208a() - 1) {
            this.f14312f++;
        }
        int i = this.f14313g;
        if (i == -1 || this.f14312f < i) {
            return;
        }
        List<AbstractC1196b.AbstractC1197a> list = this.f14317k;
        if (list != null) {
            int size = list.size();
            for (int i2 = 0; i2 < size; i2++) {
                this.f14317k.get(i2).mo10346a(this);
            }
        }
        stop();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (this.f14308b) {
            return;
        }
        if (this.f14314h) {
            Gravity.apply(119, getIntrinsicWidth(), getIntrinsicHeight(), getBounds(), m37217f());
            this.f14314h = false;
        }
        C3914g c3914g = this.f14307a.f14318a;
        canvas.drawBitmap(c3914g.f14324e != null ? c3914g.f14324e.f14339b : c3914g.f14327h, (Rect) null, m37217f(), m37216g());
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        return this.f14307a;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f14307a.f14318a.f14331l;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f14307a.f14318a.f14330k;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -2;
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return this.f14309c;
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.f14314h = true;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        m37216g().setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        m37216g().setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        C3643j.m37585a(!this.f14308b, "Cannot change the visibility of a recycled resource. Ensure that you unset the Drawable from your View before changing the View's visibility.");
        this.f14311e = z;
        if (!z) {
            m37218e();
        } else if (this.f14310d) {
            m37219d();
        }
        return super.setVisible(z, z2);
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        this.f14310d = true;
        this.f14312f = 0;
        if (this.f14311e) {
            m37219d();
        }
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        this.f14310d = false;
        m37218e();
    }
}
