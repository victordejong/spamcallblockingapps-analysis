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
import androidx.core.graphics.C0529a;
import com.google.android.material.p159q.C4743k;
import com.google.android.material.p159q.C4747l;
/* renamed from: com.google.android.material.floatingactionbutton.a */
/* loaded from: classes-dex2jar.jar:com/google/android/material/floatingactionbutton/a.class */
public class C4661a extends Drawable {

    /* renamed from: a */
    float f20214a;

    /* renamed from: i */
    private int f20222i;

    /* renamed from: j */
    private int f20223j;

    /* renamed from: k */
    private int f20224k;

    /* renamed from: l */
    private int f20225l;

    /* renamed from: m */
    private int f20226m;

    /* renamed from: o */
    private C4743k f20228o;

    /* renamed from: p */
    private ColorStateList f20229p;

    /* renamed from: b */
    private final C4747l f20215b = new C4747l();

    /* renamed from: d */
    private final Path f20217d = new Path();

    /* renamed from: e */
    private final Rect f20218e = new Rect();

    /* renamed from: f */
    private final RectF f20219f = new RectF();

    /* renamed from: g */
    private final RectF f20220g = new RectF();

    /* renamed from: h */
    private final C4663a f20221h = new C4663a();

    /* renamed from: n */
    private boolean f20227n = true;

    /* renamed from: c */
    private final Paint f20216c = new Paint(1);

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.google.android.material.floatingactionbutton.a$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/floatingactionbutton/a$a.class */
    public class C4663a extends Drawable.ConstantState {
        private C4663a() {
            C4661a.this = r4;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return 0;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            return C4661a.this;
        }
    }

    public C4661a(C4743k c4743k) {
        this.f20228o = c4743k;
        this.f20216c.setStyle(Paint.Style.STROKE);
    }

    /* renamed from: b */
    private Shader m3004b() {
        Rect rect = this.f20218e;
        copyBounds(rect);
        float height = this.f20214a / rect.height();
        return new LinearGradient(0.0f, rect.top, 0.0f, rect.bottom, new int[]{C0529a.m20635a(this.f20222i, this.f20226m), C0529a.m20635a(this.f20223j, this.f20226m), C0529a.m20635a(C0529a.m20633b(this.f20223j, 0), this.f20226m), C0529a.m20635a(C0529a.m20633b(this.f20225l, 0), this.f20226m), C0529a.m20635a(this.f20225l, this.f20226m), C0529a.m20635a(this.f20224k, this.f20226m)}, new float[]{0.0f, height, 0.5f, 0.5f, 1.0f - height, 1.0f}, Shader.TileMode.CLAMP);
    }

    /* renamed from: a */
    protected RectF m3009a() {
        this.f20220g.set(getBounds());
        return this.f20220g;
    }

    /* renamed from: a */
    public void m3008a(float f) {
        if (this.f20214a != f) {
            this.f20214a = f;
            this.f20216c.setStrokeWidth(1.3333f * f);
            this.f20227n = true;
            invalidateSelf();
        }
    }

    /* renamed from: a */
    public void m3007a(int i, int i2, int i3, int i4) {
        this.f20222i = i;
        this.f20223j = i2;
        this.f20224k = i3;
        this.f20225l = i4;
    }

    /* renamed from: a */
    public void m3006a(ColorStateList colorStateList) {
        if (colorStateList != null) {
            this.f20226m = colorStateList.getColorForState(getState(), this.f20226m);
        }
        this.f20229p = colorStateList;
        this.f20227n = true;
        invalidateSelf();
    }

    /* renamed from: a */
    public void m3005a(C4743k c4743k) {
        this.f20228o = c4743k;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (this.f20227n) {
            this.f20216c.setShader(m3004b());
            this.f20227n = false;
        }
        float strokeWidth = this.f20216c.getStrokeWidth() / 2.0f;
        copyBounds(this.f20218e);
        this.f20219f.set(this.f20218e);
        float min = Math.min(this.f20228o.m2663f().mo2680a(m3009a()), this.f20219f.width() / 2.0f);
        if (this.f20228o.m2669a(m3009a())) {
            this.f20219f.inset(strokeWidth, strokeWidth);
            canvas.drawRoundRect(this.f20219f, min, min, this.f20216c);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        return this.f20221h;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return this.f20214a > 0.0f ? -3 : -2;
    }

    @Override // android.graphics.drawable.Drawable
    @TargetApi(21)
    public void getOutline(Outline outline) {
        if (this.f20228o.m2669a(m3009a())) {
            outline.setRoundRect(getBounds(), this.f20228o.m2663f().mo2680a(m3009a()));
            return;
        }
        copyBounds(this.f20218e);
        this.f20219f.set(this.f20218e);
        this.f20215b.m2618a(this.f20228o, 1.0f, this.f20219f, this.f20217d);
        if (!this.f20217d.isConvex()) {
            return;
        }
        outline.setConvexPath(this.f20217d);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect) {
        if (this.f20228o.m2669a(m3009a())) {
            int round = Math.round(this.f20214a);
            rect.set(round, round, round, round);
            return true;
        }
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        return (this.f20229p != null && this.f20229p.isStateful()) || super.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        this.f20227n = true;
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        int colorForState;
        if (this.f20229p != null && (colorForState = this.f20229p.getColorForState(iArr, this.f20226m)) != this.f20226m) {
            this.f20227n = true;
            this.f20226m = colorForState;
        }
        if (this.f20227n) {
            invalidateSelf();
        }
        return this.f20227n;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.f20216c.setAlpha(i);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f20216c.setColorFilter(colorFilter);
        invalidateSelf();
    }
}
