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
import androidx.annotation.ColorInt;
import androidx.annotation.Dimension;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.graphics.ColorUtils;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.shape.ShapeAppearancePathProvider;
@RestrictTo
/* loaded from: classes-dex2jar.jar:com/google/android/material/floatingactionbutton/BorderDrawable.class */
class BorderDrawable extends Drawable {
    @NonNull

    /* renamed from: b */
    private final Paint f10654b;
    @Dimension

    /* renamed from: h */
    float f10660h;
    @ColorInt

    /* renamed from: i */
    private int f10661i;
    @ColorInt

    /* renamed from: j */
    private int f10662j;
    @ColorInt

    /* renamed from: k */
    private int f10663k;
    @ColorInt

    /* renamed from: l */
    private int f10664l;
    @ColorInt

    /* renamed from: m */
    private int f10665m;

    /* renamed from: o */
    private ShapeAppearanceModel f10667o;
    @Nullable

    /* renamed from: p */
    private ColorStateList f10668p;

    /* renamed from: a */
    private final ShapeAppearancePathProvider f10653a = new ShapeAppearancePathProvider();

    /* renamed from: c */
    private final Path f10655c = new Path();

    /* renamed from: d */
    private final Rect f10656d = new Rect();

    /* renamed from: e */
    private final RectF f10657e = new RectF();

    /* renamed from: f */
    private final RectF f10658f = new RectF();

    /* renamed from: g */
    private final BorderState f10659g = new BorderState();

    /* renamed from: n */
    private boolean f10666n = true;

    /* loaded from: classes-dex2jar.jar:com/google/android/material/floatingactionbutton/BorderDrawable$BorderState.class */
    private class BorderState extends Drawable.ConstantState {
        private BorderState() {
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return 0;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        @NonNull
        public Drawable newDrawable() {
            return BorderDrawable.this;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public BorderDrawable(ShapeAppearanceModel shapeAppearanceModel) {
        this.f10667o = shapeAppearanceModel;
        Paint paint = new Paint(1);
        this.f10654b = paint;
        paint.setStyle(Paint.Style.STROKE);
    }

    @NonNull
    /* renamed from: a */
    private Shader m9779a() {
        Rect rect = this.f10656d;
        copyBounds(rect);
        float height = this.f10660h / rect.height();
        return new LinearGradient(0.0f, rect.top, 0.0f, rect.bottom, new int[]{ColorUtils.m19586b(this.f10661i, this.f10665m), ColorUtils.m19586b(this.f10662j, this.f10665m), ColorUtils.m19586b(ColorUtils.m19584d(this.f10662j, 0), this.f10665m), ColorUtils.m19586b(ColorUtils.m19584d(this.f10664l, 0), this.f10665m), ColorUtils.m19586b(this.f10664l, this.f10665m), ColorUtils.m19586b(this.f10663k, this.f10665m)}, new float[]{0.0f, height, 0.5f, 0.5f, 1.0f - height, 1.0f}, Shader.TileMode.CLAMP);
    }

    @NonNull
    /* renamed from: b */
    protected RectF m9778b() {
        this.f10658f.set(getBounds());
        return this.f10658f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public void m9777c(@Nullable ColorStateList colorStateList) {
        if (colorStateList != null) {
            this.f10665m = colorStateList.getColorForState(getState(), this.f10665m);
        }
        this.f10668p = colorStateList;
        this.f10666n = true;
        invalidateSelf();
    }

    /* renamed from: d */
    public void m9776d(@Dimension float f) {
        if (this.f10660h != f) {
            this.f10660h = f;
            this.f10654b.setStrokeWidth(f * 1.3333f);
            this.f10666n = true;
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        if (this.f10666n) {
            this.f10654b.setShader(m9779a());
            this.f10666n = false;
        }
        float strokeWidth = this.f10654b.getStrokeWidth() / 2.0f;
        copyBounds(this.f10656d);
        this.f10657e.set(this.f10656d);
        float min = Math.min(this.f10667o.m9260r().mo9279a(m9778b()), this.f10657e.width() / 2.0f);
        if (this.f10667o.m9257u(m9778b())) {
            this.f10657e.inset(strokeWidth, strokeWidth);
            canvas.drawRoundRect(this.f10657e, min, min, this.f10654b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public void m9775e(@ColorInt int i, @ColorInt int i2, @ColorInt int i3, @ColorInt int i4) {
        this.f10661i = i;
        this.f10662j = i2;
        this.f10663k = i3;
        this.f10664l = i4;
    }

    /* renamed from: f */
    public void m9774f(ShapeAppearanceModel shapeAppearanceModel) {
        this.f10667o = shapeAppearanceModel;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    @Nullable
    public Drawable.ConstantState getConstantState() {
        return this.f10659g;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return this.f10660h > 0.0f ? -3 : -2;
    }

    @Override // android.graphics.drawable.Drawable
    @TargetApi(21)
    public void getOutline(@NonNull Outline outline) {
        if (this.f10667o.m9257u(m9778b())) {
            outline.setRoundRect(getBounds(), this.f10667o.m9260r().mo9279a(m9778b()));
            return;
        }
        copyBounds(this.f10656d);
        this.f10657e.set(this.f10656d);
        this.f10653a.m9215d(this.f10667o, 1.0f, this.f10657e, this.f10655c);
        if (this.f10655c.isConvex()) {
            outline.setConvexPath(this.f10655c);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(@NonNull Rect rect) {
        if (!this.f10667o.m9257u(m9778b())) {
            return true;
        }
        int round = Math.round(this.f10660h);
        rect.set(round, round, round, round);
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        ColorStateList colorStateList = this.f10668p;
        return (colorStateList != null && colorStateList.isStateful()) || super.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        this.f10666n = true;
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        int colorForState;
        ColorStateList colorStateList = this.f10668p;
        if (!(colorStateList == null || (colorForState = colorStateList.getColorForState(iArr, this.f10665m)) == this.f10665m)) {
            this.f10666n = true;
            this.f10665m = colorForState;
        }
        if (this.f10666n) {
            invalidateSelf();
        }
        return this.f10666n;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(@IntRange(from = 0, to = 255) int i) {
        this.f10654b.setAlpha(i);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(@Nullable ColorFilter colorFilter) {
        this.f10654b.setColorFilter(colorFilter);
        invalidateSelf();
    }
}
