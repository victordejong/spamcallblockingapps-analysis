package com.google.android.material.shadow;

import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;
import androidx.appcompat.graphics.drawable.DrawableWrapper;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/google/android/material/shadow/ShadowDrawableWrapper.class */
public class ShadowDrawableWrapper extends DrawableWrapper {

    /* renamed from: u */
    static final double f11020u = Math.cos(Math.toRadians(45.0d));
    @NonNull

    /* renamed from: g */
    final Paint f11021g;
    @NonNull

    /* renamed from: h */
    final Paint f11022h;
    @NonNull

    /* renamed from: i */
    final RectF f11023i;

    /* renamed from: j */
    float f11024j;

    /* renamed from: k */
    Path f11025k;

    /* renamed from: l */
    float f11026l;

    /* renamed from: m */
    float f11027m;

    /* renamed from: n */
    float f11028n;

    /* renamed from: o */
    private boolean f11029o;

    /* renamed from: p */
    private final int f11030p;

    /* renamed from: q */
    private final int f11031q;

    /* renamed from: r */
    private final int f11032r;

    /* renamed from: s */
    private boolean f11033s;

    /* renamed from: t */
    private float f11034t;

    /* renamed from: c */
    private void m9365c(@NonNull Rect rect) {
        float f = this.f11026l;
        float f2 = 1.5f * f;
        this.f11023i.set(rect.left + f, rect.top + f2, rect.right - f, rect.bottom - f2);
        Drawable a = m22009a();
        RectF rectF = this.f11023i;
        a.setBounds((int) rectF.left, (int) rectF.top, (int) rectF.right, (int) rectF.bottom);
        m9364d();
    }

    /* renamed from: d */
    private void m9364d() {
        float f = this.f11024j;
        RectF rectF = new RectF(-f, -f, f, f);
        RectF rectF2 = new RectF(rectF);
        float f2 = this.f11027m;
        rectF2.inset(-f2, -f2);
        Path path = this.f11025k;
        if (path == null) {
            this.f11025k = new Path();
        } else {
            path.reset();
        }
        this.f11025k.setFillType(Path.FillType.EVEN_ODD);
        this.f11025k.moveTo(-this.f11024j, 0.0f);
        this.f11025k.rLineTo(-this.f11027m, 0.0f);
        this.f11025k.arcTo(rectF2, 180.0f, 90.0f, false);
        this.f11025k.arcTo(rectF, 270.0f, -90.0f, false);
        this.f11025k.close();
        float f3 = -rectF2.top;
        if (f3 > 0.0f) {
            float f4 = this.f11024j / f3;
            float f5 = (1.0f - f4) / 2.0f;
            this.f11021g.setShader(new RadialGradient(0.0f, 0.0f, f3, new int[]{0, this.f11030p, this.f11031q, this.f11032r}, new float[]{0.0f, f4, f5 + f4, 1.0f}, Shader.TileMode.CLAMP));
        }
        this.f11022h.setShader(new LinearGradient(0.0f, rectF.top, 0.0f, rectF2.top, new int[]{this.f11030p, this.f11031q, this.f11032r}, new float[]{0.0f, 0.5f, 1.0f}, Shader.TileMode.CLAMP));
        this.f11022h.setAntiAlias(false);
    }

    /* renamed from: e */
    public static float m9363e(float f, float f2, boolean z) {
        float f3 = f;
        if (z) {
            f3 = (float) (f + ((1.0d - f11020u) * f2));
        }
        return f3;
    }

    /* renamed from: f */
    public static float m9362f(float f, float f2, boolean z) {
        return z ? (float) ((f * 1.5f) + ((1.0d - f11020u) * f2)) : f * 1.5f;
    }

    /* renamed from: g */
    private void m9361g(@NonNull Canvas canvas) {
        int save = canvas.save();
        canvas.rotate(this.f11034t, this.f11023i.centerX(), this.f11023i.centerY());
        float f = this.f11024j;
        float f2 = (-f) - this.f11027m;
        float f3 = f * 2.0f;
        boolean z = this.f11023i.width() - f3 > 0.0f;
        boolean z2 = this.f11023i.height() - f3 > 0.0f;
        float f4 = this.f11028n;
        float f5 = f / ((f4 - (0.5f * f4)) + f);
        float f6 = f / ((f4 - (0.25f * f4)) + f);
        float f7 = f / ((f4 - (f4 * 1.0f)) + f);
        int save2 = canvas.save();
        RectF rectF = this.f11023i;
        canvas.translate(rectF.left + f, rectF.top + f);
        canvas.scale(f5, f6);
        canvas.drawPath(this.f11025k, this.f11021g);
        if (z) {
            canvas.scale(1.0f / f5, 1.0f);
            canvas.drawRect(0.0f, f2, this.f11023i.width() - f3, -this.f11024j, this.f11022h);
        }
        canvas.restoreToCount(save2);
        int save3 = canvas.save();
        RectF rectF2 = this.f11023i;
        canvas.translate(rectF2.right - f, rectF2.bottom - f);
        canvas.scale(f5, f7);
        canvas.rotate(180.0f);
        canvas.drawPath(this.f11025k, this.f11021g);
        if (z) {
            canvas.scale(1.0f / f5, 1.0f);
            canvas.drawRect(0.0f, f2, this.f11023i.width() - f3, (-this.f11024j) + this.f11027m, this.f11022h);
        }
        canvas.restoreToCount(save3);
        int save4 = canvas.save();
        RectF rectF3 = this.f11023i;
        canvas.translate(rectF3.left + f, rectF3.bottom - f);
        canvas.scale(f5, f7);
        canvas.rotate(270.0f);
        canvas.drawPath(this.f11025k, this.f11021g);
        if (z2) {
            canvas.scale(1.0f / f7, 1.0f);
            canvas.drawRect(0.0f, f2, this.f11023i.height() - f3, -this.f11024j, this.f11022h);
        }
        canvas.restoreToCount(save4);
        int save5 = canvas.save();
        RectF rectF4 = this.f11023i;
        canvas.translate(rectF4.right - f, rectF4.top + f);
        canvas.scale(f5, f6);
        canvas.rotate(90.0f);
        canvas.drawPath(this.f11025k, this.f11021g);
        if (z2) {
            canvas.scale(1.0f / f6, 1.0f);
            canvas.drawRect(0.0f, f2, this.f11023i.height() - f3, -this.f11024j, this.f11022h);
        }
        canvas.restoreToCount(save5);
        canvas.restoreToCount(save);
    }

    @Override // androidx.appcompat.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        if (this.f11029o) {
            m9365c(getBounds());
            this.f11029o = false;
        }
        m9361g(canvas);
        super.draw(canvas);
    }

    @Override // androidx.appcompat.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // androidx.appcompat.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
    public boolean getPadding(@NonNull Rect rect) {
        int ceil = (int) Math.ceil(m9362f(this.f11026l, this.f11024j, this.f11033s));
        int ceil2 = (int) Math.ceil(m9363e(this.f11026l, this.f11024j, this.f11033s));
        rect.set(ceil2, ceil, ceil2, ceil);
        return true;
    }

    @Override // androidx.appcompat.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        this.f11029o = true;
    }

    @Override // androidx.appcompat.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        super.setAlpha(i);
        this.f11021g.setAlpha(i);
        this.f11022h.setAlpha(i);
    }
}
