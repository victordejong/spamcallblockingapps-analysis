package com.google.android.material.floatingactionbutton;

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
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.material.k.m;
import com.google.android.material.k.n;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/floatingactionbutton/c.class */
final class c extends Drawable {

    /* renamed from: a  reason: collision with root package name */
    final Paint f30531a;

    /* renamed from: b  reason: collision with root package name */
    float f30532b;

    /* renamed from: c  reason: collision with root package name */
    int f30533c;

    /* renamed from: d  reason: collision with root package name */
    int f30534d;
    int e;
    int f;
    private int n;
    private m o;
    private ColorStateList p;
    private final n h = n.a.f30703a;
    private final Path i = new Path();
    private final Rect j = new Rect();
    private final RectF k = new RectF();
    private final RectF l = new RectF();
    private final a m = new a();
    boolean g = true;

    /* loaded from: classes4-dex2jar.jar:com/google/android/material/floatingactionbutton/c$a.class */
    final class a extends Drawable.ConstantState {
        private a() {
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final int getChangingConfigurations() {
            return 0;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable() {
            return c.this;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(m mVar) {
        this.o = mVar;
        Paint paint = new Paint(1);
        this.f30531a = paint;
        paint.setStyle(Paint.Style.STROKE);
    }

    private RectF a() {
        this.l.set(getBounds());
        return this.l;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(ColorStateList colorStateList) {
        if (colorStateList != null) {
            this.n = colorStateList.getColorForState(getState(), this.n);
        }
        this.p = colorStateList;
        this.g = true;
        invalidateSelf();
    }

    public final void a(m mVar) {
        this.o = mVar;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        if (this.g) {
            Paint paint = this.f30531a;
            Rect rect = this.j;
            copyBounds(rect);
            float height = this.f30532b / rect.height();
            int a2 = androidx.core.graphics.a.a(this.f30533c, this.n);
            int a3 = androidx.core.graphics.a.a(this.f30534d, this.n);
            int a4 = androidx.core.graphics.a.a(androidx.core.graphics.a.b(this.f30534d, 0), this.n);
            int a5 = androidx.core.graphics.a.a(androidx.core.graphics.a.b(this.f, 0), this.n);
            int a6 = androidx.core.graphics.a.a(this.f, this.n);
            int a7 = androidx.core.graphics.a.a(this.e, this.n);
            paint.setShader(new LinearGradient((float) BitmapDescriptorFactory.HUE_RED, rect.top, (float) BitmapDescriptorFactory.HUE_RED, rect.bottom, new int[]{a2, a3, a4, a5, a6, a7}, new float[]{BitmapDescriptorFactory.HUE_RED, height, 0.5f, 0.5f, 1.0f - height, 1.0f}, Shader.TileMode.CLAMP));
            this.g = false;
        }
        float strokeWidth = this.f30531a.getStrokeWidth() / 2.0f;
        copyBounds(this.j);
        this.k.set(this.j);
        float min = Math.min(this.o.f.a(a()), this.k.width() / 2.0f);
        if (this.o.a(a())) {
            this.k.inset(strokeWidth, strokeWidth);
            canvas.drawRoundRect(this.k, min, min, this.f30531a);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        return this.m;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return this.f30532b > BitmapDescriptorFactory.HUE_RED ? -3 : -2;
    }

    @Override // android.graphics.drawable.Drawable
    public final void getOutline(Outline outline) {
        if (this.o.a(a())) {
            outline.setRoundRect(getBounds(), this.o.f.a(a()));
            return;
        }
        copyBounds(this.j);
        this.k.set(this.j);
        this.h.a(this.o, 1.0f, this.k, this.i);
        if (this.i.isConvex()) {
            outline.setConvexPath(this.i);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean getPadding(Rect rect) {
        if (!this.o.a(a())) {
            return true;
        }
        int round = Math.round(this.f30532b);
        rect.set(round, round, round, round);
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isStateful() {
        ColorStateList colorStateList = this.p;
        return (colorStateList != null && colorStateList.isStateful()) || super.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    protected final void onBoundsChange(Rect rect) {
        this.g = true;
    }

    @Override // android.graphics.drawable.Drawable
    protected final boolean onStateChange(int[] iArr) {
        int colorForState;
        ColorStateList colorStateList = this.p;
        if (!(colorStateList == null || (colorForState = colorStateList.getColorForState(iArr, this.n)) == this.n)) {
            this.g = true;
            this.n = colorForState;
        }
        if (this.g) {
            invalidateSelf();
        }
        return this.g;
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
        this.f30531a.setAlpha(i);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        this.f30531a.setColorFilter(colorFilter);
        invalidateSelf();
    }
}
