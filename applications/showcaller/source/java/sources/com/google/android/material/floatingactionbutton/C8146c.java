package com.google.android.material.floatingactionbutton;

import android.annotation.TargetApi;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import p020b.p041h.p042e.C1522a;
import p078c.p084c.p085a.p096b.p108x.C1946m;
import p078c.p084c.p085a.p096b.p108x.C1950n;
/* renamed from: com.google.android.material.floatingactionbutton.c */
/* loaded from: classes2-dex2jar.jar:com/google/android/material/floatingactionbutton/c.class */
public class C8146c extends Drawable {

    /* renamed from: b */
    private final Paint f36776b;

    /* renamed from: h */
    float f36782h;

    /* renamed from: i */
    private int f36783i;

    /* renamed from: j */
    private int f36784j;

    /* renamed from: k */
    private int f36785k;

    /* renamed from: l */
    private int f36786l;

    /* renamed from: m */
    private int f36787m;

    /* renamed from: o */
    private C1946m f36789o;

    /* renamed from: p */
    private ColorStateList f36790p;

    /* renamed from: a */
    private final C1950n f36775a = C1950n.m28503k();

    /* renamed from: c */
    private final Path f36777c = new Path();

    /* renamed from: d */
    private final Rect f36778d = new Rect();

    /* renamed from: e */
    private final RectF f36779e = new RectF();

    /* renamed from: f */
    private final RectF f36780f = new RectF();

    /* renamed from: g */
    private final C8148b f36781g = new C8148b();

    /* renamed from: n */
    private boolean f36788n = true;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.google.android.material.floatingactionbutton.c$b */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/floatingactionbutton/c$b.class */
    public class C8148b extends Drawable.ConstantState {
        private C8148b() {
            C8146c.this = r4;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return 0;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            return C8146c.this;
        }
    }

    public C8146c(C1946m c1946m) {
        this.f36789o = c1946m;
        Paint paint = new Paint(1);
        this.f36776b = paint;
        paint.setStyle(Paint.Style.STROKE);
    }

    /* renamed from: a */
    private Shader m4748a() {
        Rect rect = this.f36778d;
        copyBounds(rect);
        float height = this.f36782h / rect.height();
        return new LinearGradient(0.0f, rect.top, 0.0f, rect.bottom, new int[]{C1522a.m29850b(this.f36783i, this.f36787m), C1522a.m29850b(this.f36784j, this.f36787m), C1522a.m29850b(C1522a.m29848d(this.f36784j, 0), this.f36787m), C1522a.m29850b(C1522a.m29848d(this.f36786l, 0), this.f36787m), C1522a.m29850b(this.f36786l, this.f36787m), C1522a.m29850b(this.f36785k, this.f36787m)}, new float[]{0.0f, height, 0.5f, 0.5f, 1.0f - height, 1.0f}, Shader.TileMode.CLAMP);
    }

    /* renamed from: b */
    protected RectF m4747b() {
        this.f36780f.set(getBounds());
        return this.f36780f;
    }

    /* renamed from: c */
    public void m4746c(ColorStateList colorStateList) {
        if (colorStateList != null) {
            this.f36787m = colorStateList.getColorForState(getState(), this.f36787m);
        }
        this.f36790p = colorStateList;
        this.f36788n = true;
        invalidateSelf();
    }

    /* renamed from: d */
    public void m4745d(float f) {
        if (this.f36782h != f) {
            this.f36782h = f;
            this.f36776b.setStrokeWidth(f * 1.3333f);
            this.f36788n = true;
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (this.f36788n) {
            this.f36776b.setShader(m4748a());
            this.f36788n = false;
        }
        float strokeWidth = this.f36776b.getStrokeWidth() / 2.0f;
        copyBounds(this.f36778d);
        this.f36779e.set(this.f36778d);
        float min = Math.min(this.f36789o.m28558r().mo28577a(m4747b()), this.f36779e.width() / 2.0f);
        if (this.f36789o.m28555u(m4747b())) {
            this.f36779e.inset(strokeWidth, strokeWidth);
            canvas.drawRoundRect(this.f36779e, min, min, this.f36776b);
        }
    }

    /* renamed from: e */
    public void m4744e(int i, int i2, int i3, int i4) {
        this.f36783i = i;
        this.f36784j = i2;
        this.f36785k = i3;
        this.f36786l = i4;
    }

    /* renamed from: f */
    public void m4743f(C1946m c1946m) {
        this.f36789o = c1946m;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        return this.f36781g;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return this.f36782h > 0.0f ? -3 : -2;
    }

    @Override // android.graphics.drawable.Drawable
    @TargetApi(21)
    public void getOutline(Outline outline) {
        if (this.f36789o.m28555u(m4747b())) {
            outline.setRoundRect(getBounds(), this.f36789o.m28558r().mo28577a(m4747b()));
            return;
        }
        copyBounds(this.f36778d);
        this.f36779e.set(this.f36778d);
        this.f36775a.m28510d(this.f36789o, 1.0f, this.f36779e, this.f36777c);
        if (!this.f36777c.isConvex()) {
            return;
        }
        outline.setConvexPath(this.f36777c);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect) {
        if (this.f36789o.m28555u(m4747b())) {
            int round = Math.round(this.f36782h);
            rect.set(round, round, round, round);
            return true;
        }
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        ColorStateList colorStateList = this.f36790p;
        return (colorStateList != null && colorStateList.isStateful()) || super.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        this.f36788n = true;
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        int colorForState;
        ColorStateList colorStateList = this.f36790p;
        if (colorStateList != null && (colorForState = colorStateList.getColorForState(iArr, this.f36787m)) != this.f36787m) {
            this.f36788n = true;
            this.f36787m = colorForState;
        }
        if (this.f36788n) {
            invalidateSelf();
        }
        return this.f36788n;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.f36776b.setAlpha(i);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f36776b.setColorFilter(colorFilter);
        invalidateSelf();
    }
}
