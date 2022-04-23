package com.bumptech.glide.load.resource.d;

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
import androidx.l.a.a.b;
import com.bumptech.glide.g.j;
import com.bumptech.glide.load.engine.a.e;
import com.bumptech.glide.load.l;
import com.bumptech.glide.load.resource.d.g;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/d/c.class */
public class c extends Drawable implements Animatable, b, g.b {

    /* renamed from: a  reason: collision with root package name */
    final a f7716a;

    /* renamed from: b  reason: collision with root package name */
    boolean f7717b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f7718c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f7719d;
    private boolean e;
    private int f;
    private int g;
    private boolean h;
    private Paint i;
    private Rect j;
    private List<b.a> k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/d/c$a.class */
    public static final class a extends Drawable.ConstantState {

        /* renamed from: a  reason: collision with root package name */
        final g f7720a;

        a(g gVar) {
            this.f7720a = gVar;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final int getChangingConfigurations() {
            return 0;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable() {
            return new c(this);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable(Resources resources) {
            return newDrawable();
        }
    }

    @Deprecated
    public c(Context context, com.bumptech.glide.b.a aVar, e eVar, l<Bitmap> lVar, int i, int i2, Bitmap bitmap) {
        this(context, aVar, lVar, i, i2, bitmap);
    }

    public c(Context context, com.bumptech.glide.b.a aVar, l<Bitmap> lVar, int i, int i2, Bitmap bitmap) {
        this(new a(new g(com.bumptech.glide.c.a(context), aVar, i, i2, lVar, bitmap)));
    }

    c(a aVar) {
        this.e = true;
        this.g = -1;
        this.f7716a = (a) j.a(aVar, "Argument must not be null");
    }

    c(g gVar, Paint paint) {
        this(new a(gVar));
        this.i = paint;
    }

    private void d() {
        j.a(!this.f7717b, "You cannot start a recycled Drawable. Ensure thatyou clear any references to the Drawable when clearing the corresponding request.");
        if (this.f7716a.f7720a.a() == 1) {
            invalidateSelf();
        } else if (!this.f7718c) {
            this.f7718c = true;
            this.f7716a.f7720a.a(this);
            invalidateSelf();
        }
    }

    private void e() {
        this.f7718c = false;
        this.f7716a.f7720a.b(this);
    }

    private Rect f() {
        if (this.j == null) {
            this.j = new Rect();
        }
        return this.j;
    }

    private Paint g() {
        if (this.i == null) {
            this.i = new Paint(2);
        }
        return this.i;
    }

    public final Bitmap a() {
        return this.f7716a.f7720a.h;
    }

    public final void a(int i) {
        int g = -1;
        if (i <= 0 && i != -1 && i != 0) {
            throw new IllegalArgumentException("Loop count must be greater than 0, or equal to GlideDrawable.LOOP_FOREVER, or equal to GlideDrawable.LOOP_INTRINSIC");
        } else if (i == 0) {
            g = this.f7716a.f7720a.f7722a.g();
            if (g == 0) {
            }
            this.g = g;
        } else {
            this.g = i;
        }
    }

    public final void a(b.a aVar) {
        if (this.k == null) {
            this.k = new ArrayList();
        }
        this.k.add(aVar);
    }

    public final ByteBuffer b() {
        return this.f7716a.f7720a.f7722a.a().asReadOnlyBuffer();
    }

    @Override // com.bumptech.glide.load.resource.d.g.b
    public final void c() {
        Drawable.Callback callback = getCallback();
        while (callback instanceof Drawable) {
            callback = ((Drawable) callback).getCallback();
        }
        if (callback == null) {
            stop();
            invalidateSelf();
            return;
        }
        invalidateSelf();
        g gVar = this.f7716a.f7720a;
        if ((gVar.e != null ? gVar.e.f7726a : -1) == this.f7716a.f7720a.a() - 1) {
            this.f++;
        }
        int i = this.g;
        if (i != -1 && this.f >= i) {
            List<b.a> list = this.k;
            if (list != null) {
                int size = list.size();
                for (int i2 = 0; i2 < size; i2++) {
                    this.k.get(i2).a(this);
                }
            }
            stop();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (!this.f7717b) {
            if (this.h) {
                Gravity.apply(119, getIntrinsicWidth(), getIntrinsicHeight(), getBounds(), f());
                this.h = false;
            }
            g gVar = this.f7716a.f7720a;
            canvas.drawBitmap(gVar.e != null ? gVar.e.f7727b : gVar.h, (Rect) null, f(), g());
        }
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        return this.f7716a;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f7716a.f7720a.l;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f7716a.f7720a.k;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -2;
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return this.f7718c;
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.h = true;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        g().setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        g().setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        j.a(!this.f7717b, "Cannot change the visibility of a recycled resource. Ensure that you unset the Drawable from your View before changing the View's visibility.");
        this.e = z;
        if (!z) {
            e();
        } else if (this.f7719d) {
            d();
        }
        return super.setVisible(z, z2);
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        this.f7719d = true;
        this.f = 0;
        if (this.e) {
            d();
        }
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        this.f7719d = false;
        e();
    }
}
