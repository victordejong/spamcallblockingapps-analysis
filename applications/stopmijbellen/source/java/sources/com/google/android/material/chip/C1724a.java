package com.google.android.material.chip;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.os.Build;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.TypedValue;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import p005a4.C0016b;
import p029c4.C0822f;
import p029c4.C0827i;
import p090f3.C2733g;
import p098g0.C2789a;
import p219r3.C4191a;
import p230s3.C4285a;
import p262v3.C4630n;
import p304z3.C5072d;
/* renamed from: com.google.android.material.chip.a */
/* loaded from: classes-dex2jar.jar:com/google/android/material/chip/a.class */
public class C1724a extends C0822f implements Drawable.Callback, C4630n.AbstractC4632b {

    /* renamed from: J0 */
    public static final int[] f6440J0 = {16842910};

    /* renamed from: K0 */
    public static final ShapeDrawable f6441K0 = new ShapeDrawable(new OvalShape());

    /* renamed from: A */
    public ColorStateList f6442A;

    /* renamed from: B */
    public float f6444B;

    /* renamed from: B0 */
    public int[] f6445B0;

    /* renamed from: C0 */
    public boolean f6447C0;

    /* renamed from: D */
    public ColorStateList f6448D;

    /* renamed from: D0 */
    public ColorStateList f6449D0;

    /* renamed from: E */
    public float f6450E;

    /* renamed from: F */
    public ColorStateList f6452F;

    /* renamed from: F0 */
    public TextUtils.TruncateAt f6453F0;

    /* renamed from: H */
    public boolean f6456H;

    /* renamed from: H0 */
    public int f6457H0;

    /* renamed from: I */
    public Drawable f6458I;

    /* renamed from: I0 */
    public boolean f6459I0;

    /* renamed from: J */
    public ColorStateList f6460J;

    /* renamed from: K */
    public float f6461K;

    /* renamed from: L */
    public boolean f6462L;

    /* renamed from: M */
    public boolean f6463M;

    /* renamed from: N */
    public Drawable f6464N;

    /* renamed from: O */
    public Drawable f6465O;

    /* renamed from: P */
    public ColorStateList f6466P;

    /* renamed from: R */
    public float f6467R;

    /* renamed from: S */
    public CharSequence f6468S;

    /* renamed from: T */
    public boolean f6469T;

    /* renamed from: U */
    public boolean f6470U;

    /* renamed from: V */
    public Drawable f6471V;

    /* renamed from: W */
    public ColorStateList f6472W;

    /* renamed from: X */
    public C2733g f6473X;

    /* renamed from: Y */
    public C2733g f6474Y;

    /* renamed from: Z */
    public float f6475Z;

    /* renamed from: a0 */
    public float f6476a0;

    /* renamed from: b0 */
    public float f6477b0;

    /* renamed from: c0 */
    public float f6478c0;

    /* renamed from: d0 */
    public float f6479d0;

    /* renamed from: e0 */
    public float f6480e0;

    /* renamed from: f0 */
    public float f6481f0;

    /* renamed from: g0 */
    public float f6482g0;

    /* renamed from: h0 */
    public final Context f6483h0;

    /* renamed from: n0 */
    public final C4630n f6489n0;

    /* renamed from: o0 */
    public int f6490o0;

    /* renamed from: p0 */
    public int f6491p0;

    /* renamed from: q0 */
    public int f6492q0;

    /* renamed from: r0 */
    public int f6493r0;

    /* renamed from: s0 */
    public int f6494s0;

    /* renamed from: t0 */
    public int f6495t0;

    /* renamed from: u0 */
    public boolean f6496u0;

    /* renamed from: v0 */
    public int f6497v0;

    /* renamed from: x0 */
    public ColorFilter f6499x0;

    /* renamed from: y0 */
    public PorterDuffColorFilter f6500y0;

    /* renamed from: z */
    public ColorStateList f6501z;

    /* renamed from: z0 */
    public ColorStateList f6502z0;

    /* renamed from: C */
    public float f6446C = -1.0f;

    /* renamed from: i0 */
    public final Paint f6484i0 = new Paint(1);

    /* renamed from: j0 */
    public final Paint.FontMetrics f6485j0 = new Paint.FontMetrics();

    /* renamed from: k0 */
    public final RectF f6486k0 = new RectF();

    /* renamed from: l0 */
    public final PointF f6487l0 = new PointF();

    /* renamed from: m0 */
    public final Path f6488m0 = new Path();

    /* renamed from: w0 */
    public int f6498w0 = 255;

    /* renamed from: A0 */
    public PorterDuff.Mode f6443A0 = PorterDuff.Mode.SRC_IN;

    /* renamed from: E0 */
    public WeakReference<AbstractC1725a> f6451E0 = new WeakReference<>(null);

    /* renamed from: G */
    public CharSequence f6454G = "";

    /* renamed from: G0 */
    public boolean f6455G0 = true;

    /* renamed from: com.google.android.material.chip.a$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/chip/a$a.class */
    public interface AbstractC1725a {
        /* renamed from: a */
        void mo4645a();
    }

    public C1724a(Context context, AttributeSet attributeSet, int i, int i2) {
        super(C0827i.m7304b(context, attributeSet, i, i2).m7299a());
        this.f3010a.f3035b = new C4285a(context);
        m7307x();
        this.f6483h0 = context;
        C4630n c4630n = new C4630n(this);
        this.f6489n0 = c4630n;
        c4630n.f14317a.density = context.getResources().getDisplayMetrics().density;
        int[] iArr = f6440J0;
        setState(iArr);
        m4662e0(iArr);
        int[] iArr2 = C0016b.f15a;
        f6441K0.setTint(-1);
    }

    /* renamed from: H */
    public static boolean m4685H(ColorStateList colorStateList) {
        return colorStateList != null && colorStateList.isStateful();
    }

    /* renamed from: I */
    public static boolean m4684I(Drawable drawable) {
        return drawable != null && drawable.isStateful();
    }

    /* renamed from: A */
    public float m4692A() {
        if (m4650q0() || m4651p0()) {
            return m4686G() + this.f6476a0 + this.f6477b0;
        }
        return 0.0f;
    }

    /* renamed from: B */
    public final void m4691B(Rect rect, RectF rectF) {
        rectF.setEmpty();
        if (m4649r0()) {
            float f = this.f6482g0 + this.f6481f0;
            if (C2789a.m3013b(this) == 0) {
                float f2 = rect.right - f;
                rectF.right = f2;
                rectF.left = f2 - this.f6467R;
            } else {
                float f3 = rect.left + f;
                rectF.left = f3;
                rectF.right = f3 + this.f6467R;
            }
            float exactCenterY = rect.exactCenterY();
            float f4 = this.f6467R;
            float f5 = exactCenterY - (f4 / 2.0f);
            rectF.top = f5;
            rectF.bottom = f5 + f4;
        }
    }

    /* renamed from: C */
    public final void m4690C(Rect rect, RectF rectF) {
        rectF.setEmpty();
        if (m4649r0()) {
            float f = this.f6482g0 + this.f6481f0 + this.f6467R + this.f6480e0 + this.f6479d0;
            if (C2789a.m3013b(this) == 0) {
                float f2 = rect.right;
                rectF.right = f2;
                rectF.left = f2 - f;
            } else {
                int i = rect.left;
                rectF.left = i;
                rectF.right = i + f;
            }
            rectF.top = rect.top;
            rectF.bottom = rect.bottom;
        }
    }

    /* renamed from: D */
    public float m4689D() {
        if (m4649r0()) {
            return this.f6480e0 + this.f6467R + this.f6481f0;
        }
        return 0.0f;
    }

    /* renamed from: E */
    public float m4688E() {
        return this.f6459I0 ? m7318m() : this.f6446C;
    }

    /* renamed from: F */
    public Drawable m4687F() {
        Drawable drawable = this.f6464N;
        return drawable != null ? C2789a.m3008g(drawable) : null;
    }

    /* renamed from: G */
    public final float m4686G() {
        Drawable drawable = this.f6496u0 ? this.f6471V : this.f6458I;
        float f = this.f6461K;
        return (f > 0.0f || drawable == null) ? f : drawable.getIntrinsicWidth();
    }

    /* renamed from: J */
    public void m4683J() {
        AbstractC1725a abstractC1725a = this.f6451E0.get();
        if (abstractC1725a != null) {
            abstractC1725a.mo4645a();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x02c5  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x02ce  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0201  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0210  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x021c  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0246  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x025f  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0278  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x02b4  */
    /* renamed from: K */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m4682K(int[] r7, int[] r8) {
        /*
            Method dump skipped, instructions count: 725
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.chip.C1724a.m4682K(int[], int[]):boolean");
    }

    /* renamed from: L */
    public void m4681L(boolean z) {
        if (this.f6469T != z) {
            this.f6469T = z;
            float m4692A = m4692A();
            if (!z && this.f6496u0) {
                this.f6496u0 = false;
            }
            float m4692A2 = m4692A();
            invalidateSelf();
            if (m4692A == m4692A2) {
                return;
            }
            m4683J();
        }
    }

    /* renamed from: M */
    public void m4680M(Drawable drawable) {
        if (this.f6471V != drawable) {
            float m4692A = m4692A();
            this.f6471V = drawable;
            float m4692A2 = m4692A();
            m4648s0(this.f6471V);
            m4647y(this.f6471V);
            invalidateSelf();
            if (m4692A == m4692A2) {
                return;
            }
            m4683J();
        }
    }

    /* renamed from: N */
    public void m4679N(ColorStateList colorStateList) {
        if (this.f6472W != colorStateList) {
            this.f6472W = colorStateList;
            if (this.f6470U && this.f6471V != null && this.f6469T) {
                this.f6471V.setTintList(colorStateList);
            }
            onStateChange(getState());
        }
    }

    /* renamed from: O */
    public void m4678O(boolean z) {
        if (this.f6470U != z) {
            boolean m4651p0 = m4651p0();
            this.f6470U = z;
            boolean m4651p02 = m4651p0();
            if (!(m4651p0 != m4651p02)) {
                return;
            }
            if (m4651p02) {
                m4647y(this.f6471V);
            } else {
                m4648s0(this.f6471V);
            }
            invalidateSelf();
            m4683J();
        }
    }

    /* renamed from: P */
    public void m4677P(ColorStateList colorStateList) {
        if (this.f6442A != colorStateList) {
            this.f6442A = colorStateList;
            onStateChange(getState());
        }
    }

    @Deprecated
    /* renamed from: Q */
    public void m4676Q(float f) {
        if (this.f6446C != f) {
            this.f6446C = f;
            this.f3010a.f3034a = this.f3010a.f3034a.m7300f(f);
            invalidateSelf();
        }
    }

    /* renamed from: R */
    public void m4675R(float f) {
        if (this.f6482g0 != f) {
            this.f6482g0 = f;
            invalidateSelf();
            m4683J();
        }
    }

    /* renamed from: S */
    public void m4674S(Drawable drawable) {
        Drawable drawable2 = this.f6458I;
        Drawable drawable3 = null;
        Drawable m3008g = drawable2 != null ? C2789a.m3008g(drawable2) : null;
        if (m3008g != drawable) {
            float m4692A = m4692A();
            if (drawable != null) {
                drawable3 = C2789a.m3007h(drawable).mutate();
            }
            this.f6458I = drawable3;
            float m4692A2 = m4692A();
            m4648s0(m3008g);
            if (m4650q0()) {
                m4647y(this.f6458I);
            }
            invalidateSelf();
            if (m4692A == m4692A2) {
                return;
            }
            m4683J();
        }
    }

    /* renamed from: T */
    public void m4673T(float f) {
        if (this.f6461K != f) {
            float m4692A = m4692A();
            this.f6461K = f;
            float m4692A2 = m4692A();
            invalidateSelf();
            if (m4692A == m4692A2) {
                return;
            }
            m4683J();
        }
    }

    /* renamed from: U */
    public void m4672U(ColorStateList colorStateList) {
        this.f6462L = true;
        if (this.f6460J != colorStateList) {
            this.f6460J = colorStateList;
            if (m4650q0()) {
                this.f6458I.setTintList(colorStateList);
            }
            onStateChange(getState());
        }
    }

    /* renamed from: V */
    public void m4671V(boolean z) {
        if (this.f6456H != z) {
            boolean m4650q0 = m4650q0();
            this.f6456H = z;
            boolean m4650q02 = m4650q0();
            if (!(m4650q0 != m4650q02)) {
                return;
            }
            if (m4650q02) {
                m4647y(this.f6458I);
            } else {
                m4648s0(this.f6458I);
            }
            invalidateSelf();
            m4683J();
        }
    }

    /* renamed from: W */
    public void m4670W(float f) {
        if (this.f6444B != f) {
            this.f6444B = f;
            invalidateSelf();
            m4683J();
        }
    }

    /* renamed from: X */
    public void m4669X(float f) {
        if (this.f6475Z != f) {
            this.f6475Z = f;
            invalidateSelf();
            m4683J();
        }
    }

    /* renamed from: Y */
    public void m4668Y(ColorStateList colorStateList) {
        if (this.f6448D != colorStateList) {
            this.f6448D = colorStateList;
            if (this.f6459I0) {
                m7310u(colorStateList);
            }
            onStateChange(getState());
        }
    }

    /* renamed from: Z */
    public void m4667Z(float f) {
        if (this.f6450E != f) {
            this.f6450E = f;
            this.f6484i0.setStrokeWidth(f);
            if (this.f6459I0) {
                this.f3010a.f3045l = f;
                invalidateSelf();
            }
            invalidateSelf();
        }
    }

    @Override // p262v3.C4630n.AbstractC4632b
    /* renamed from: a */
    public void mo691a() {
        m4683J();
        invalidateSelf();
    }

    /* renamed from: a0 */
    public void m4666a0(Drawable drawable) {
        Drawable m4687F = m4687F();
        if (m4687F != drawable) {
            float m4689D = m4689D();
            this.f6464N = drawable != null ? C2789a.m3007h(drawable).mutate() : null;
            int[] iArr = C0016b.f15a;
            this.f6465O = new RippleDrawable(C0016b.m8930a(this.f6452F), this.f6464N, f6441K0);
            float m4689D2 = m4689D();
            m4648s0(m4687F);
            if (m4649r0()) {
                m4647y(this.f6464N);
            }
            invalidateSelf();
            if (m4689D == m4689D2) {
                return;
            }
            m4683J();
        }
    }

    /* renamed from: b0 */
    public void m4665b0(float f) {
        if (this.f6481f0 != f) {
            this.f6481f0 = f;
            invalidateSelf();
            if (!m4649r0()) {
                return;
            }
            m4683J();
        }
    }

    /* renamed from: c0 */
    public void m4664c0(float f) {
        if (this.f6467R != f) {
            this.f6467R = f;
            invalidateSelf();
            if (!m4649r0()) {
                return;
            }
            m4683J();
        }
    }

    /* renamed from: d0 */
    public void m4663d0(float f) {
        if (this.f6480e0 != f) {
            this.f6480e0 = f;
            invalidateSelf();
            if (!m4649r0()) {
                return;
            }
            m4683J();
        }
    }

    @Override // p029c4.C0822f, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        int i;
        int i2;
        int i3;
        Rect bounds = getBounds();
        if (bounds.isEmpty() || (i = this.f6498w0) == 0) {
            return;
        }
        if (i < 255) {
            float f = bounds.left;
            float f2 = bounds.top;
            float f3 = bounds.right;
            float f4 = bounds.bottom;
            i2 = Build.VERSION.SDK_INT > 21 ? canvas.saveLayerAlpha(f, f2, f3, f4, i) : canvas.saveLayerAlpha(f, f2, f3, f4, i, 31);
        } else {
            i2 = 0;
        }
        if (!this.f6459I0) {
            this.f6484i0.setColor(this.f6490o0);
            this.f6484i0.setStyle(Paint.Style.FILL);
            this.f6486k0.set(bounds);
            canvas.drawRoundRect(this.f6486k0, m4688E(), m4688E(), this.f6484i0);
        }
        if (!this.f6459I0) {
            this.f6484i0.setColor(this.f6491p0);
            this.f6484i0.setStyle(Paint.Style.FILL);
            Paint paint = this.f6484i0;
            PorterDuffColorFilter porterDuffColorFilter = this.f6499x0;
            if (porterDuffColorFilter == null) {
                porterDuffColorFilter = this.f6500y0;
            }
            paint.setColorFilter(porterDuffColorFilter);
            this.f6486k0.set(bounds);
            canvas.drawRoundRect(this.f6486k0, m4688E(), m4688E(), this.f6484i0);
        }
        if (this.f6459I0) {
            super.draw(canvas);
        }
        if (this.f6450E > 0.0f && !this.f6459I0) {
            this.f6484i0.setColor(this.f6493r0);
            this.f6484i0.setStyle(Paint.Style.STROKE);
            if (!this.f6459I0) {
                Paint paint2 = this.f6484i0;
                PorterDuffColorFilter porterDuffColorFilter2 = this.f6499x0;
                if (porterDuffColorFilter2 == null) {
                    porterDuffColorFilter2 = this.f6500y0;
                }
                paint2.setColorFilter(porterDuffColorFilter2);
            }
            RectF rectF = this.f6486k0;
            float f5 = bounds.left;
            float f6 = this.f6450E / 2.0f;
            rectF.set(f5 + f6, bounds.top + f6, bounds.right - f6, bounds.bottom - f6);
            float f7 = this.f6446C - (this.f6450E / 2.0f);
            canvas.drawRoundRect(this.f6486k0, f7, f7, this.f6484i0);
        }
        this.f6484i0.setColor(this.f6494s0);
        this.f6484i0.setStyle(Paint.Style.FILL);
        this.f6486k0.set(bounds);
        if (!this.f6459I0) {
            canvas.drawRoundRect(this.f6486k0, m4688E(), m4688E(), this.f6484i0);
        } else {
            m7327c(new RectF(bounds), this.f6488m0);
            m7323g(canvas, this.f6484i0, this.f6488m0, this.f3010a.f3034a, m7322i());
        }
        if (m4650q0()) {
            m4646z(bounds, this.f6486k0);
            RectF rectF2 = this.f6486k0;
            float f8 = rectF2.left;
            float f9 = rectF2.top;
            canvas.translate(f8, f9);
            this.f6458I.setBounds(0, 0, (int) this.f6486k0.width(), (int) this.f6486k0.height());
            this.f6458I.draw(canvas);
            canvas.translate(-f8, -f9);
        }
        if (m4651p0()) {
            m4646z(bounds, this.f6486k0);
            RectF rectF3 = this.f6486k0;
            float f10 = rectF3.left;
            float f11 = rectF3.top;
            canvas.translate(f10, f11);
            this.f6471V.setBounds(0, 0, (int) this.f6486k0.width(), (int) this.f6486k0.height());
            this.f6471V.draw(canvas);
            canvas.translate(-f10, -f11);
        }
        if (this.f6455G0 && this.f6454G != null) {
            PointF pointF = this.f6487l0;
            pointF.set(0.0f, 0.0f);
            Paint.Align align = Paint.Align.LEFT;
            if (this.f6454G != null) {
                float m4692A = m4692A() + this.f6475Z + this.f6478c0;
                if (C2789a.m3013b(this) == 0) {
                    pointF.x = bounds.left + m4692A;
                    align = Paint.Align.LEFT;
                } else {
                    pointF.x = bounds.right - m4692A;
                    align = Paint.Align.RIGHT;
                }
                float centerY = bounds.centerY();
                this.f6489n0.f14317a.getFontMetrics(this.f6485j0);
                Paint.FontMetrics fontMetrics = this.f6485j0;
                pointF.y = centerY - ((fontMetrics.descent + fontMetrics.ascent) / 2.0f);
            }
            RectF rectF4 = this.f6486k0;
            rectF4.setEmpty();
            if (this.f6454G != null) {
                float m4692A2 = m4692A() + this.f6475Z + this.f6478c0;
                float m4689D = m4689D() + this.f6482g0 + this.f6479d0;
                if (C2789a.m3013b(this) == 0) {
                    rectF4.left = bounds.left + m4692A2;
                    rectF4.right = bounds.right - m4689D;
                } else {
                    rectF4.left = bounds.left + m4689D;
                    rectF4.right = bounds.right - m4692A2;
                }
                rectF4.top = bounds.top;
                rectF4.bottom = bounds.bottom;
            }
            C4630n c4630n = this.f6489n0;
            if (c4630n.f14322f != null) {
                c4630n.f14317a.drawableState = getState();
                C4630n c4630n2 = this.f6489n0;
                c4630n2.f14322f.m63e(this.f6483h0, c4630n2.f14317a, c4630n2.f14318b);
            }
            this.f6489n0.f14317a.setTextAlign(align);
            boolean z = Math.round(this.f6489n0.m692a(this.f6454G.toString())) > Math.round(this.f6486k0.width());
            if (z) {
                i3 = canvas.save();
                canvas.clipRect(this.f6486k0);
            } else {
                i3 = 0;
            }
            CharSequence charSequence = this.f6454G;
            CharSequence charSequence2 = charSequence;
            if (z) {
                charSequence2 = charSequence;
                if (this.f6453F0 != null) {
                    charSequence2 = TextUtils.ellipsize(charSequence, this.f6489n0.f14317a, this.f6486k0.width(), this.f6453F0);
                }
            }
            int length = charSequence2.length();
            PointF pointF2 = this.f6487l0;
            canvas.drawText(charSequence2, 0, length, pointF2.x, pointF2.y, this.f6489n0.f14317a);
            if (z) {
                canvas.restoreToCount(i3);
            }
        }
        if (m4649r0()) {
            m4691B(bounds, this.f6486k0);
            RectF rectF5 = this.f6486k0;
            float f12 = rectF5.left;
            float f13 = rectF5.top;
            canvas.translate(f12, f13);
            this.f6464N.setBounds(0, 0, (int) this.f6486k0.width(), (int) this.f6486k0.height());
            int[] iArr = C0016b.f15a;
            this.f6465O.setBounds(this.f6464N.getBounds());
            this.f6465O.jumpToCurrentState();
            this.f6465O.draw(canvas);
            canvas.translate(-f12, -f13);
        }
        if (this.f6498w0 >= 255) {
            return;
        }
        canvas.restoreToCount(i2);
    }

    /* renamed from: e0 */
    public boolean m4662e0(int[] iArr) {
        if (!Arrays.equals(this.f6445B0, iArr)) {
            this.f6445B0 = iArr;
            if (!m4649r0()) {
                return false;
            }
            return m4682K(getState(), iArr);
        }
        return false;
    }

    /* renamed from: f0 */
    public void m4661f0(ColorStateList colorStateList) {
        if (this.f6466P != colorStateList) {
            this.f6466P = colorStateList;
            if (m4649r0()) {
                this.f6464N.setTintList(colorStateList);
            }
            onStateChange(getState());
        }
    }

    /* renamed from: g0 */
    public void m4660g0(boolean z) {
        if (this.f6463M != z) {
            boolean m4649r0 = m4649r0();
            this.f6463M = z;
            boolean m4649r02 = m4649r0();
            if (!(m4649r0 != m4649r02)) {
                return;
            }
            if (m4649r02) {
                m4647y(this.f6464N);
            } else {
                m4648s0(this.f6464N);
            }
            invalidateSelf();
            m4683J();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f6498w0;
    }

    @Override // android.graphics.drawable.Drawable
    public ColorFilter getColorFilter() {
        return this.f6499x0;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return (int) this.f6444B;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        float f = this.f6475Z;
        float m4692A = m4692A();
        float f2 = this.f6478c0;
        float m692a = this.f6489n0.m692a(this.f6454G.toString());
        return Math.min(Math.round(m4689D() + m692a + m4692A + f + f2 + this.f6479d0 + this.f6482g0), this.f6457H0);
    }

    @Override // p029c4.C0822f, android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // p029c4.C0822f, android.graphics.drawable.Drawable
    @TargetApi(21)
    public void getOutline(Outline outline) {
        if (this.f6459I0) {
            super.getOutline(outline);
            return;
        }
        Rect bounds = getBounds();
        if (!bounds.isEmpty()) {
            outline.setRoundRect(bounds, this.f6446C);
        } else {
            outline.setRoundRect(0, 0, getIntrinsicWidth(), (int) this.f6444B, this.f6446C);
        }
        outline.setAlpha(this.f6498w0 / 255.0f);
    }

    /* renamed from: h0 */
    public void m4659h0(float f) {
        if (this.f6477b0 != f) {
            float m4692A = m4692A();
            this.f6477b0 = f;
            float m4692A2 = m4692A();
            invalidateSelf();
            if (m4692A == m4692A2) {
                return;
            }
            m4683J();
        }
    }

    /* renamed from: i0 */
    public void m4658i0(float f) {
        if (this.f6476a0 != f) {
            float m4692A = m4692A();
            this.f6476a0 = f;
            float m4692A2 = m4692A();
            invalidateSelf();
            if (m4692A == m4692A2) {
                return;
            }
            m4683J();
        }
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(Drawable drawable) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.invalidateDrawable(this);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0038, code lost:
        if (m4685H(r2.f6449D0) == false) goto L12;
     */
    @Override // p029c4.C0822f, android.graphics.drawable.Drawable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean isStateful() {
        /*
            r2 = this;
            r0 = r2
            android.content.res.ColorStateList r0 = r0.f6501z
            boolean r0 = m4685H(r0)
            r3 = r0
            r0 = 1
            r4 = r0
            r0 = r4
            r5 = r0
            r0 = r3
            if (r0 != 0) goto Lbb
            r0 = r4
            r5 = r0
            r0 = r2
            android.content.res.ColorStateList r0 = r0.f6442A
            boolean r0 = m4685H(r0)
            if (r0 != 0) goto Lbb
            r0 = r4
            r5 = r0
            r0 = r2
            android.content.res.ColorStateList r0 = r0.f6448D
            boolean r0 = m4685H(r0)
            if (r0 != 0) goto Lbb
            r0 = r2
            boolean r0 = r0.f6447C0
            if (r0 == 0) goto L3b
            r0 = r4
            r5 = r0
            r0 = r2
            android.content.res.ColorStateList r0 = r0.f6449D0
            boolean r0 = m4685H(r0)
            if (r0 != 0) goto Lbb
        L3b:
            r0 = r2
            v3.n r0 = r0.f6489n0
            z3.d r0 = r0.f14322f
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L63
            r0 = r6
            android.content.res.ColorStateList r0 = r0.f15389j
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L63
            r0 = r6
            boolean r0 = r0.isStateful()
            if (r0 == 0) goto L63
            r0 = 1
            r7 = r0
            goto L66
        L63:
            r0 = 0
            r7 = r0
        L66:
            r0 = r4
            r5 = r0
            r0 = r7
            if (r0 != 0) goto Lbb
            r0 = r2
            boolean r0 = r0.f6470U
            if (r0 == 0) goto L88
            r0 = r2
            android.graphics.drawable.Drawable r0 = r0.f6471V
            if (r0 == 0) goto L88
            r0 = r2
            boolean r0 = r0.f6469T
            if (r0 == 0) goto L88
            r0 = 1
            r7 = r0
            goto L8b
        L88:
            r0 = 0
            r7 = r0
        L8b:
            r0 = r4
            r5 = r0
            r0 = r7
            if (r0 != 0) goto Lbb
            r0 = r4
            r5 = r0
            r0 = r2
            android.graphics.drawable.Drawable r0 = r0.f6458I
            boolean r0 = m4684I(r0)
            if (r0 != 0) goto Lbb
            r0 = r4
            r5 = r0
            r0 = r2
            android.graphics.drawable.Drawable r0 = r0.f6471V
            boolean r0 = m4684I(r0)
            if (r0 != 0) goto Lbb
            r0 = r2
            android.content.res.ColorStateList r0 = r0.f6502z0
            boolean r0 = m4685H(r0)
            if (r0 == 0) goto Lb9
            r0 = r4
            r5 = r0
            goto Lbb
        Lb9:
            r0 = 0
            r5 = r0
        Lbb:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.chip.C1724a.isStateful():boolean");
    }

    /* renamed from: j0 */
    public void m4657j0(ColorStateList colorStateList) {
        if (this.f6452F != colorStateList) {
            this.f6452F = colorStateList;
            this.f6449D0 = this.f6447C0 ? C0016b.m8930a(colorStateList) : null;
            onStateChange(getState());
        }
    }

    /* renamed from: k0 */
    public void m4656k0(CharSequence charSequence) {
        CharSequence charSequence2 = charSequence;
        if (charSequence == null) {
            charSequence2 = "";
        }
        if (!TextUtils.equals(this.f6454G, charSequence2)) {
            this.f6454G = charSequence2;
            this.f6489n0.f14320d = true;
            invalidateSelf();
            m4683J();
        }
    }

    /* renamed from: l0 */
    public void m4655l0(C5072d c5072d) {
        C4630n c4630n = this.f6489n0;
        Context context = this.f6483h0;
        if (c4630n.f14322f != c5072d) {
            c4630n.f14322f = c5072d;
            if (c5072d != null) {
                c5072d.m62f(context, c4630n.f14317a, c4630n.f14318b);
                C4630n.AbstractC4632b abstractC4632b = c4630n.f14321e.get();
                if (abstractC4632b != null) {
                    c4630n.f14317a.drawableState = abstractC4632b.getState();
                }
                c5072d.m63e(context, c4630n.f14317a, c4630n.f14318b);
                c4630n.f14320d = true;
            }
            C4630n.AbstractC4632b abstractC4632b2 = c4630n.f14321e.get();
            if (abstractC4632b2 == null) {
                return;
            }
            abstractC4632b2.mo691a();
            abstractC4632b2.onStateChange(abstractC4632b2.getState());
        }
    }

    /* renamed from: m0 */
    public void m4654m0(float f) {
        if (this.f6479d0 != f) {
            this.f6479d0 = f;
            invalidateSelf();
            m4683J();
        }
    }

    /* renamed from: n0 */
    public void m4653n0(float f) {
        if (this.f6478c0 != f) {
            this.f6478c0 = f;
            invalidateSelf();
            m4683J();
        }
    }

    /* renamed from: o0 */
    public void m4652o0(boolean z) {
        if (this.f6447C0 != z) {
            this.f6447C0 = z;
            this.f6449D0 = z ? C0016b.m8930a(this.f6452F) : null;
            onStateChange(getState());
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onLayoutDirectionChanged(int i) {
        boolean onLayoutDirectionChanged = super.onLayoutDirectionChanged(i);
        boolean z = onLayoutDirectionChanged;
        if (m4650q0()) {
            z = onLayoutDirectionChanged | C2789a.m3012c(this.f6458I, i);
        }
        boolean z2 = z;
        if (m4651p0()) {
            z2 = z | C2789a.m3012c(this.f6471V, i);
        }
        boolean z3 = z2;
        if (m4649r0()) {
            z3 = z2 | C2789a.m3012c(this.f6464N, i);
        }
        if (z3) {
            invalidateSelf();
            return true;
        }
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onLevelChange(int i) {
        boolean onLevelChange = super.onLevelChange(i);
        boolean z = onLevelChange;
        if (m4650q0()) {
            z = onLevelChange | this.f6458I.setLevel(i);
        }
        boolean z2 = z;
        if (m4651p0()) {
            z2 = z | this.f6471V.setLevel(i);
        }
        boolean z3 = z2;
        if (m4649r0()) {
            z3 = z2 | this.f6464N.setLevel(i);
        }
        if (z3) {
            invalidateSelf();
        }
        return z3;
    }

    @Override // p029c4.C0822f, android.graphics.drawable.Drawable
    public boolean onStateChange(int[] iArr) {
        if (this.f6459I0) {
            super.onStateChange(iArr);
        }
        return m4682K(iArr, this.f6445B0);
    }

    /* renamed from: p0 */
    public final boolean m4651p0() {
        return this.f6470U && this.f6471V != null && this.f6496u0;
    }

    /* renamed from: q0 */
    public final boolean m4650q0() {
        return this.f6456H && this.f6458I != null;
    }

    /* renamed from: r0 */
    public final boolean m4649r0() {
        return this.f6463M && this.f6464N != null;
    }

    /* renamed from: s0 */
    public final void m4648s0(Drawable drawable) {
        if (drawable != null) {
            drawable.setCallback(null);
        }
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.scheduleDrawable(this, runnable, j);
        }
    }

    @Override // p029c4.C0822f, android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        if (this.f6498w0 != i) {
            this.f6498w0 = i;
            invalidateSelf();
        }
    }

    @Override // p029c4.C0822f, android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        if (this.f6499x0 != colorFilter) {
            this.f6499x0 = colorFilter;
            invalidateSelf();
        }
    }

    @Override // p029c4.C0822f, android.graphics.drawable.Drawable
    public void setTintList(ColorStateList colorStateList) {
        if (this.f6502z0 != colorStateList) {
            this.f6502z0 = colorStateList;
            onStateChange(getState());
        }
    }

    @Override // p029c4.C0822f, android.graphics.drawable.Drawable
    public void setTintMode(PorterDuff.Mode mode) {
        if (this.f6443A0 != mode) {
            this.f6443A0 = mode;
            this.f6500y0 = C4191a.m1300a(this, this.f6502z0, mode);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        boolean visible = super.setVisible(z, z2);
        boolean z3 = visible;
        if (m4650q0()) {
            z3 = visible | this.f6458I.setVisible(z, z2);
        }
        boolean z4 = z3;
        if (m4651p0()) {
            z4 = z3 | this.f6471V.setVisible(z, z2);
        }
        boolean z5 = z4;
        if (m4649r0()) {
            z5 = z4 | this.f6464N.setVisible(z, z2);
        }
        if (z5) {
            invalidateSelf();
        }
        return z5;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.unscheduleDrawable(this, runnable);
        }
    }

    /* renamed from: y */
    public final void m4647y(Drawable drawable) {
        if (drawable == null) {
            return;
        }
        drawable.setCallback(this);
        C2789a.m3012c(drawable, C2789a.m3013b(this));
        drawable.setLevel(getLevel());
        drawable.setVisible(isVisible(), false);
        if (drawable == this.f6464N) {
            if (drawable.isStateful()) {
                drawable.setState(this.f6445B0);
            }
            drawable.setTintList(this.f6466P);
            return;
        }
        Drawable drawable2 = this.f6458I;
        if (drawable == drawable2 && this.f6462L) {
            drawable2.setTintList(this.f6460J);
        }
        if (!drawable.isStateful()) {
            return;
        }
        drawable.setState(getState());
    }

    /* renamed from: z */
    public final void m4646z(Rect rect, RectF rectF) {
        rectF.setEmpty();
        if (m4650q0() || m4651p0()) {
            float f = this.f6475Z + this.f6476a0;
            float m4686G = m4686G();
            if (C2789a.m3013b(this) == 0) {
                float f2 = rect.left + f;
                rectF.left = f2;
                rectF.right = f2 + m4686G;
            } else {
                float f3 = rect.right - f;
                rectF.right = f3;
                rectF.left = f3 - m4686G;
            }
            Drawable drawable = this.f6496u0 ? this.f6471V : this.f6458I;
            float f4 = this.f6461K;
            float f5 = f4;
            if (f4 <= 0.0f) {
                f5 = f4;
                if (drawable != null) {
                    float ceil = (float) Math.ceil(TypedValue.applyDimension(1, 24, this.f6483h0.getResources().getDisplayMetrics()));
                    f5 = ceil;
                    if (drawable.getIntrinsicHeight() <= ceil) {
                        f5 = drawable.getIntrinsicHeight();
                    }
                }
            }
            float exactCenterY = rect.exactCenterY() - (f5 / 2.0f);
            rectF.top = exactCenterY;
            rectF.bottom = exactCenterY + f5;
        }
    }
}
