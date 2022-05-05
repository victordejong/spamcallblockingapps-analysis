package com.bumptech.glide.load.resource.c;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.Gravity;
import com.bumptech.glide.b.a;
import com.bumptech.glide.b.c;
import com.bumptech.glide.load.g;
import com.bumptech.glide.load.resource.c.f;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/c/b.class */
public class b extends com.bumptech.glide.load.resource.a.b implements f.b {

    /* renamed from: a  reason: collision with root package name */
    public final a f3629a;

    /* renamed from: b  reason: collision with root package name */
    public final com.bumptech.glide.b.a f3630b;
    final f c;
    boolean d;
    private final Paint e;
    private final Rect f;
    private boolean g;
    private boolean h;
    private boolean i;
    private int j;
    private int k;
    private boolean l;

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/c/b$a.class */
    public static final class a extends Drawable.ConstantState {

        /* renamed from: a  reason: collision with root package name */
        c f3631a;

        /* renamed from: b  reason: collision with root package name */
        byte[] f3632b;
        Context c;
        g<Bitmap> d;
        int e;
        int f;
        a.AbstractC0091a g;
        com.bumptech.glide.load.b.a.c h;
        public Bitmap i;

        public a(c cVar, byte[] bArr, Context context, g<Bitmap> gVar, int i, int i2, a.AbstractC0091a aVar, com.bumptech.glide.load.b.a.c cVar2, Bitmap bitmap) {
            if (bitmap == null) {
                throw new NullPointerException("The first frame of the GIF must not be null");
            }
            this.f3631a = cVar;
            this.f3632b = bArr;
            this.h = cVar2;
            this.i = bitmap;
            this.c = context.getApplicationContext();
            this.d = gVar;
            this.e = i;
            this.f = i2;
            this.g = aVar;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final int getChangingConfigurations() {
            return 0;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable() {
            return new b(this);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable(Resources resources) {
            return newDrawable();
        }
    }

    public b(Context context, a.AbstractC0091a aVar, com.bumptech.glide.load.b.a.c cVar, g<Bitmap> gVar, int i, int i2, c cVar2, byte[] bArr, Bitmap bitmap) {
        this(new a(cVar2, bArr, context, gVar, i, i2, aVar, cVar, bitmap));
    }

    b(a aVar) {
        this.f = new Rect();
        this.i = true;
        this.k = -1;
        if (aVar == null) {
            throw new NullPointerException("GifState must not be null");
        }
        this.f3629a = aVar;
        this.f3630b = new com.bumptech.glide.b.a(aVar.g);
        this.e = new Paint();
        this.f3630b.a(aVar.f3631a, aVar.f3632b);
        this.c = new f(aVar.c, this, this.f3630b, aVar.e, aVar.f);
    }

    private void b() {
        this.c.a();
        invalidateSelf();
    }

    private void c() {
        if (this.f3630b.e.c != 1) {
            if (!this.g) {
                this.g = true;
                f fVar = this.c;
                if (!fVar.c) {
                    fVar.c = true;
                    fVar.g = false;
                    fVar.b();
                }
            } else {
                return;
            }
        }
        invalidateSelf();
    }

    private void d() {
        this.g = false;
        this.c.c = false;
    }

    @Override // com.bumptech.glide.load.resource.a.b
    public final void a(int i) {
        if (i <= 0 && i != -1 && i != 0) {
            throw new IllegalArgumentException("Loop count must be greater than 0, or equal to GlideDrawable.LOOP_FOREVER, or equal to GlideDrawable.LOOP_INTRINSIC");
        } else if (i == 0) {
            this.k = this.f3630b.e.m;
        } else {
            this.k = i;
        }
    }

    @Override // com.bumptech.glide.load.resource.a.b
    public final boolean a() {
        return true;
    }

    @Override // com.bumptech.glide.load.resource.c.f.b
    @TargetApi(11)
    public final void b(int i) {
        if (Build.VERSION.SDK_INT < 11 || getCallback() != null) {
            invalidateSelf();
            if (i == this.f3630b.e.c - 1) {
                this.j++;
            }
            if (this.k != -1 && this.j >= this.k) {
                stop();
                return;
            }
            return;
        }
        stop();
        b();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (!this.d) {
            if (this.l) {
                Gravity.apply(119, getIntrinsicWidth(), getIntrinsicHeight(), getBounds(), this.f);
                this.l = false;
            }
            f fVar = this.c;
            Bitmap bitmap = fVar.f != null ? fVar.f.f3640b : null;
            if (bitmap == null) {
                bitmap = this.f3629a.i;
            }
            canvas.drawBitmap(bitmap, (Rect) null, this.f, this.e);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        return this.f3629a;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f3629a.i.getHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f3629a.i.getWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -2;
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return this.g;
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.l = true;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.e.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.e.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        this.i = z;
        if (!z) {
            d();
        } else if (this.h) {
            c();
        }
        return super.setVisible(z, z2);
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        this.h = true;
        this.j = 0;
        if (this.i) {
            c();
        }
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        this.h = false;
        d();
        if (Build.VERSION.SDK_INT < 11) {
            b();
        }
    }
}
