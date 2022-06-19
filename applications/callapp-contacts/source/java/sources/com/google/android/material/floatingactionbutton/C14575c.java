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
import androidx.core.graphics.C0834a;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.material.p374k.C14678m;
import com.google.android.material.p374k.C14682n;
/* renamed from: com.google.android.material.floatingactionbutton.c */
/* loaded from: classes4-dex2jar.jar:com/google/android/material/floatingactionbutton/c.class */
public final class C14575c extends Drawable {

    /* renamed from: a */
    final Paint f53144a;

    /* renamed from: b */
    float f53145b;

    /* renamed from: c */
    int f53146c;

    /* renamed from: d */
    int f53147d;

    /* renamed from: e */
    int f53148e;

    /* renamed from: f */
    int f53149f;

    /* renamed from: n */
    private int f53157n;

    /* renamed from: o */
    private C14678m f53158o;

    /* renamed from: p */
    private ColorStateList f53159p;

    /* renamed from: h */
    private final C14682n f53151h = C14682n.C14683a.f53563a;

    /* renamed from: i */
    private final Path f53152i = new Path();

    /* renamed from: j */
    private final Rect f53153j = new Rect();

    /* renamed from: k */
    private final RectF f53154k = new RectF();

    /* renamed from: l */
    private final RectF f53155l = new RectF();

    /* renamed from: m */
    private final C14577a f53156m = new C14577a();

    /* renamed from: g */
    boolean f53150g = true;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.material.floatingactionbutton.c$a */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/floatingactionbutton/c$a.class */
    public final class C14577a extends Drawable.ConstantState {
        private C14577a() {
            C14575c.this = r4;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final int getChangingConfigurations() {
            return 0;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable() {
            return C14575c.this;
        }
    }

    public C14575c(C14678m c14678m) {
        this.f53158o = c14678m;
        Paint paint = new Paint(1);
        this.f53144a = paint;
        paint.setStyle(Paint.Style.STROKE);
    }

    /* renamed from: a */
    private RectF m10721a() {
        this.f53155l.set(getBounds());
        return this.f53155l;
    }

    /* renamed from: a */
    public final void m10720a(ColorStateList colorStateList) {
        if (colorStateList != null) {
            this.f53157n = colorStateList.getColorForState(getState(), this.f53157n);
        }
        this.f53159p = colorStateList;
        this.f53150g = true;
        invalidateSelf();
    }

    /* renamed from: a */
    public final void m10719a(C14678m c14678m) {
        this.f53158o = c14678m;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        if (this.f53150g) {
            Paint paint = this.f53144a;
            Rect rect = this.f53153j;
            copyBounds(rect);
            float height = this.f53145b / rect.height();
            int m44403a = C0834a.m44403a(this.f53146c, this.f53157n);
            int m44403a2 = C0834a.m44403a(this.f53147d, this.f53157n);
            int m44403a3 = C0834a.m44403a(C0834a.m44396b(this.f53147d, 0), this.f53157n);
            int m44403a4 = C0834a.m44403a(C0834a.m44396b(this.f53149f, 0), this.f53157n);
            int m44403a5 = C0834a.m44403a(this.f53149f, this.f53157n);
            int m44403a6 = C0834a.m44403a(this.f53148e, this.f53157n);
            paint.setShader(new LinearGradient((float) BitmapDescriptorFactory.HUE_RED, rect.top, (float) BitmapDescriptorFactory.HUE_RED, rect.bottom, new int[]{m44403a, m44403a2, m44403a3, m44403a4, m44403a5, m44403a6}, new float[]{BitmapDescriptorFactory.HUE_RED, height, 0.5f, 0.5f, 1.0f - height, 1.0f}, Shader.TileMode.CLAMP));
            this.f53150g = false;
        }
        float strokeWidth = this.f53144a.getStrokeWidth() / 2.0f;
        copyBounds(this.f53153j);
        this.f53154k.set(this.f53153j);
        float min = Math.min(this.f53158o.f53531f.mo10432a(m10721a()), this.f53154k.width() / 2.0f);
        if (this.f53158o.m10423a(m10721a())) {
            this.f53154k.inset(strokeWidth, strokeWidth);
            canvas.drawRoundRect(this.f53154k, min, min, this.f53144a);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        return this.f53156m;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return this.f53145b > BitmapDescriptorFactory.HUE_RED ? -3 : -2;
    }

    @Override // android.graphics.drawable.Drawable
    public final void getOutline(Outline outline) {
        if (this.f53158o.m10423a(m10721a())) {
            outline.setRoundRect(getBounds(), this.f53158o.f53531f.mo10432a(m10721a()));
            return;
        }
        copyBounds(this.f53153j);
        this.f53154k.set(this.f53153j);
        this.f53151h.m10404a(this.f53158o, 1.0f, this.f53154k, this.f53152i);
        if (!this.f53152i.isConvex()) {
            return;
        }
        outline.setConvexPath(this.f53152i);
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean getPadding(Rect rect) {
        if (this.f53158o.m10423a(m10721a())) {
            int round = Math.round(this.f53145b);
            rect.set(round, round, round, round);
            return true;
        }
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isStateful() {
        ColorStateList colorStateList = this.f53159p;
        return (colorStateList != null && colorStateList.isStateful()) || super.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    protected final void onBoundsChange(Rect rect) {
        this.f53150g = true;
    }

    @Override // android.graphics.drawable.Drawable
    protected final boolean onStateChange(int[] iArr) {
        int colorForState;
        ColorStateList colorStateList = this.f53159p;
        if (colorStateList != null && (colorForState = colorStateList.getColorForState(iArr, this.f53157n)) != this.f53157n) {
            this.f53150g = true;
            this.f53157n = colorForState;
        }
        if (this.f53150g) {
            invalidateSelf();
        }
        return this.f53150g;
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
        this.f53144a.setAlpha(i);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        this.f53144a.setColorFilter(colorFilter);
        invalidateSelf();
    }
}
