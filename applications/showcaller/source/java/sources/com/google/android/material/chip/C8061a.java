package com.google.android.material.chip;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
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
import android.text.TextUtils;
import android.util.AttributeSet;
import androidx.core.graphics.drawable.AbstractC0616b;
import androidx.core.graphics.drawable.C0615a;
import com.google.android.material.internal.C8197i;
import com.google.android.material.internal.C8203l;
import com.google.android.material.internal.C8209q;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import p020b.p021a.p022k.p023a.C1433a;
import p020b.p041h.p042e.C1522a;
import p020b.p041h.p048j.C1574a;
import p078c.p084c.p085a.p096b.C1896l;
import p078c.p084c.p085a.p096b.p097m.C1904h;
import p078c.p084c.p085a.p096b.p098n.C1908a;
import p078c.p084c.p085a.p096b.p101q.C1911a;
import p078c.p084c.p085a.p096b.p105u.C1919c;
import p078c.p084c.p085a.p096b.p105u.C1920d;
import p078c.p084c.p085a.p096b.p106v.C1928b;
import p078c.p084c.p085a.p096b.p108x.C1938h;
/* renamed from: com.google.android.material.chip.a */
/* loaded from: classes2-dex2jar.jar:com/google/android/material/chip/a.class */
public class C8061a extends C1938h implements AbstractC0616b, Drawable.Callback, C8197i.AbstractC8199b {

    /* renamed from: B */
    private static final int[] f36457B = {16842910};

    /* renamed from: C */
    private static final ShapeDrawable f36458C = new ShapeDrawable(new OvalShape());

    /* renamed from: B0 */
    private ColorFilter f36460B0;

    /* renamed from: C0 */
    private PorterDuffColorFilter f36461C0;

    /* renamed from: D */
    private ColorStateList f36462D;

    /* renamed from: D0 */
    private ColorStateList f36463D0;

    /* renamed from: E */
    private ColorStateList f36464E;

    /* renamed from: F */
    private float f36466F;

    /* renamed from: F0 */
    private int[] f36467F0;

    /* renamed from: G0 */
    private boolean f36469G0;

    /* renamed from: H */
    private ColorStateList f36470H;

    /* renamed from: H0 */
    private ColorStateList f36471H0;

    /* renamed from: I */
    private float f36472I;

    /* renamed from: J */
    private ColorStateList f36474J;

    /* renamed from: J0 */
    private TextUtils.TruncateAt f36475J0;

    /* renamed from: L */
    private boolean f36478L;

    /* renamed from: L0 */
    private int f36479L0;

    /* renamed from: M */
    private Drawable f36480M;

    /* renamed from: M0 */
    private boolean f36481M0;

    /* renamed from: N */
    private ColorStateList f36482N;

    /* renamed from: O */
    private float f36483O;

    /* renamed from: P */
    private boolean f36484P;

    /* renamed from: Q */
    private boolean f36485Q;

    /* renamed from: R */
    private Drawable f36486R;

    /* renamed from: S */
    private Drawable f36487S;

    /* renamed from: T */
    private ColorStateList f36488T;

    /* renamed from: U */
    private float f36489U;

    /* renamed from: V */
    private CharSequence f36490V;

    /* renamed from: W */
    private boolean f36491W;

    /* renamed from: X */
    private boolean f36492X;

    /* renamed from: Y */
    private Drawable f36493Y;

    /* renamed from: Z */
    private ColorStateList f36494Z;

    /* renamed from: a0 */
    private C1904h f36495a0;

    /* renamed from: b0 */
    private C1904h f36496b0;

    /* renamed from: c0 */
    private float f36497c0;

    /* renamed from: d0 */
    private float f36498d0;

    /* renamed from: e0 */
    private float f36499e0;

    /* renamed from: f0 */
    private float f36500f0;

    /* renamed from: g0 */
    private float f36501g0;

    /* renamed from: h0 */
    private float f36502h0;

    /* renamed from: i0 */
    private float f36503i0;

    /* renamed from: j0 */
    private float f36504j0;

    /* renamed from: k0 */
    private final Context f36505k0;

    /* renamed from: r0 */
    private final C8197i f36512r0;

    /* renamed from: s0 */
    private int f36513s0;

    /* renamed from: t0 */
    private int f36514t0;

    /* renamed from: u0 */
    private int f36515u0;

    /* renamed from: v0 */
    private int f36516v0;

    /* renamed from: w0 */
    private int f36517w0;

    /* renamed from: x0 */
    private int f36518x0;

    /* renamed from: y0 */
    private boolean f36519y0;

    /* renamed from: z0 */
    private int f36520z0;

    /* renamed from: G */
    private float f36468G = -1.0f;

    /* renamed from: l0 */
    private final Paint f36506l0 = new Paint(1);

    /* renamed from: n0 */
    private final Paint.FontMetrics f36508n0 = new Paint.FontMetrics();

    /* renamed from: o0 */
    private final RectF f36509o0 = new RectF();

    /* renamed from: p0 */
    private final PointF f36510p0 = new PointF();

    /* renamed from: q0 */
    private final Path f36511q0 = new Path();

    /* renamed from: A0 */
    private int f36459A0 = 255;

    /* renamed from: E0 */
    private PorterDuff.Mode f36465E0 = PorterDuff.Mode.SRC_IN;

    /* renamed from: I0 */
    private WeakReference<AbstractC8062a> f36473I0 = new WeakReference<>(null);

    /* renamed from: K */
    private CharSequence f36476K = "";

    /* renamed from: m0 */
    private final Paint f36507m0 = null;

    /* renamed from: K0 */
    private boolean f36477K0 = true;

    /* renamed from: com.google.android.material.chip.a$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/chip/a$a.class */
    public interface AbstractC8062a {
        /* renamed from: a */
        void mo5065a();
    }

    private C8061a(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        m28636P(context);
        this.f36505k0 = context;
        C8197i c8197i = new C8197i(this);
        this.f36512r0 = c8197i;
        c8197i.m4482e().density = context.getResources().getDisplayMetrics().density;
        int[] iArr = f36457B;
        setState(iArr);
        m5090r2(iArr);
        if (C1928b.f6876a) {
            f36458C.setTint(-1);
        }
    }

    /* renamed from: A0 */
    private boolean m5203A0() {
        return this.f36492X && this.f36493Y != null && this.f36491W;
    }

    /* renamed from: A1 */
    private void m5202A1(AttributeSet attributeSet, int i, int i2) {
        TypedArray m4462h = C8203l.m4462h(this.f36505k0, attributeSet, C1896l.Chip, i, i2, new int[0]);
        this.f36481M0 = m4462h.hasValue(C1896l.Chip_shapeAppearance);
        m5112h2(C1919c.m28686a(this.f36505k0, m4462h, C1896l.Chip_chipSurfaceColor));
        m5169L1(C1919c.m28686a(this.f36505k0, m4462h, C1896l.Chip_chipBackgroundColor));
        m5128Z1(m4462h.getDimension(C1896l.Chip_chipMinHeight, 0.0f));
        int i3 = C1896l.Chip_chipCornerRadius;
        if (m4462h.hasValue(i3)) {
            m5163N1(m4462h.getDimension(i3, 0.0f));
        }
        m5120d2(C1919c.m28686a(this.f36505k0, m4462h, C1896l.Chip_chipStrokeColor));
        m5116f2(m4462h.getDimension(C1896l.Chip_chipStrokeWidth, 0.0f));
        m5189E2(C1919c.m28686a(this.f36505k0, m4462h, C1896l.Chip_rippleColor));
        m5174J2(m4462h.getText(C1896l.Chip_android_text));
        C1920d m28681f = C1919c.m28681f(this.f36505k0, m4462h, C1896l.Chip_android_textAppearance);
        m28681f.f6863n = m4462h.getDimension(C1896l.Chip_android_textSize, m28681f.f6863n);
        m5171K2(m28681f);
        int i4 = m4462h.getInt(C1896l.Chip_android_ellipsize, 0);
        if (i4 == 1) {
            m5075w2(TextUtils.TruncateAt.START);
        } else if (i4 == 2) {
            m5075w2(TextUtils.TruncateAt.MIDDLE);
        } else if (i4 == 3) {
            m5075w2(TextUtils.TruncateAt.END);
        }
        m5130Y1(m4462h.getBoolean(C1896l.Chip_chipIconVisible, false));
        if (attributeSet != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "chipIconEnabled") != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "chipIconVisible") == null) {
            m5130Y1(m4462h.getBoolean(C1896l.Chip_chipIconEnabled, false));
        }
        m5151R1(C1919c.m28683d(this.f36505k0, m4462h, C1896l.Chip_chipIcon));
        int i5 = C1896l.Chip_chipIconTint;
        if (m4462h.hasValue(i5)) {
            m5139V1(C1919c.m28686a(this.f36505k0, m4462h, i5));
        }
        m5145T1(m4462h.getDimension(C1896l.Chip_chipIconSize, -1.0f));
        m5081u2(m4462h.getBoolean(C1896l.Chip_closeIconVisible, false));
        if (attributeSet != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "closeIconEnabled") != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "closeIconVisible") == null) {
            m5081u2(m4462h.getBoolean(C1896l.Chip_closeIconEnabled, false));
        }
        m5110i2(C1919c.m28683d(this.f36505k0, m4462h, C1896l.Chip_closeIcon));
        m5087s2(C1919c.m28686a(this.f36505k0, m4462h, C1896l.Chip_closeIconTint));
        m5100n2(m4462h.getDimension(C1896l.Chip_closeIconSize, 0.0f));
        m5193D1(m4462h.getBoolean(C1896l.Chip_android_checkable, false));
        m5172K1(m4462h.getBoolean(C1896l.Chip_checkedIconVisible, false));
        if (attributeSet != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "checkedIconEnabled") != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "checkedIconVisible") == null) {
            m5172K1(m4462h.getBoolean(C1896l.Chip_checkedIconEnabled, false));
        }
        m5187F1(C1919c.m28683d(this.f36505k0, m4462h, C1896l.Chip_checkedIcon));
        int i6 = C1896l.Chip_checkedIconTint;
        if (m4462h.hasValue(i6)) {
            m5181H1(C1919c.m28686a(this.f36505k0, m4462h, i6));
        }
        m5180H2(C1904h.m28738c(this.f36505k0, m4462h, C1896l.Chip_showMotionSpec));
        m5072x2(C1904h.m28738c(this.f36505k0, m4462h, C1896l.Chip_hideMotionSpec));
        m5124b2(m4462h.getDimension(C1896l.Chip_chipStartPadding, 0.0f));
        m5198B2(m4462h.getDimension(C1896l.Chip_iconStartPadding, 0.0f));
        m5066z2(m4462h.getDimension(C1896l.Chip_iconEndPadding, 0.0f));
        m5159O2(m4462h.getDimension(C1896l.Chip_textStartPadding, 0.0f));
        m5165M2(m4462h.getDimension(C1896l.Chip_textEndPadding, 0.0f));
        m5096p2(m4462h.getDimension(C1896l.Chip_closeIconStartPadding, 0.0f));
        m5106k2(m4462h.getDimension(C1896l.Chip_closeIconEndPadding, 0.0f));
        m5157P1(m4462h.getDimension(C1896l.Chip_chipEndPadding, 0.0f));
        m5192D2(m4462h.getDimensionPixelSize(C1896l.Chip_android_maxWidth, Integer.MAX_VALUE));
        m4462h.recycle();
    }

    /* renamed from: B0 */
    public static C8061a m5200B0(Context context, AttributeSet attributeSet, int i, int i2) {
        C8061a c8061a = new C8061a(context, attributeSet, i, i2);
        c8061a.m5202A1(attributeSet, i, i2);
        return c8061a;
    }

    /* renamed from: C0 */
    private void m5197C0(Canvas canvas, Rect rect) {
        if (m5147S2()) {
            m5092r0(rect, this.f36509o0);
            RectF rectF = this.f36509o0;
            float f = rectF.left;
            float f2 = rectF.top;
            canvas.translate(f, f2);
            this.f36493Y.setBounds(0, 0, (int) this.f36509o0.width(), (int) this.f36509o0.height());
            this.f36493Y.draw(canvas);
            canvas.translate(-f, -f2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:71:0x01d5  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x01e4  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x01f0  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x021a  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0233  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x024c  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0280  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x029e  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x02a7  */
    /* renamed from: C1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean m5196C1(int[] r7, int[] r8) {
        /*
            Method dump skipped, instructions count: 686
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.chip.C8061a.m5196C1(int[], int[]):boolean");
    }

    /* renamed from: D0 */
    private void m5194D0(Canvas canvas, Rect rect) {
        if (!this.f36481M0) {
            this.f36506l0.setColor(this.f36514t0);
            this.f36506l0.setStyle(Paint.Style.FILL);
            this.f36506l0.setColorFilter(m5091r1());
            this.f36509o0.set(rect);
            canvas.drawRoundRect(this.f36509o0, m5161O0(), m5161O0(), this.f36506l0);
        }
    }

    /* renamed from: E0 */
    private void m5191E0(Canvas canvas, Rect rect) {
        if (m5144T2()) {
            m5092r0(rect, this.f36509o0);
            RectF rectF = this.f36509o0;
            float f = rectF.left;
            float f2 = rectF.top;
            canvas.translate(f, f2);
            this.f36480M.setBounds(0, 0, (int) this.f36509o0.width(), (int) this.f36509o0.height());
            this.f36480M.draw(canvas);
            canvas.translate(-f, -f2);
        }
    }

    /* renamed from: F0 */
    private void m5188F0(Canvas canvas, Rect rect) {
        if (this.f36472I <= 0.0f || this.f36481M0) {
            return;
        }
        this.f36506l0.setColor(this.f36516v0);
        this.f36506l0.setStyle(Paint.Style.STROKE);
        if (!this.f36481M0) {
            this.f36506l0.setColorFilter(m5091r1());
        }
        RectF rectF = this.f36509o0;
        float f = rect.left;
        float f2 = this.f36472I;
        rectF.set(f + (f2 / 2.0f), rect.top + (f2 / 2.0f), rect.right - (f2 / 2.0f), rect.bottom - (f2 / 2.0f));
        float f3 = this.f36468G - (this.f36472I / 2.0f);
        canvas.drawRoundRect(this.f36509o0, f3, f3, this.f36506l0);
    }

    /* renamed from: G0 */
    private void m5185G0(Canvas canvas, Rect rect) {
        if (!this.f36481M0) {
            this.f36506l0.setColor(this.f36513s0);
            this.f36506l0.setStyle(Paint.Style.FILL);
            this.f36509o0.set(rect);
            canvas.drawRoundRect(this.f36509o0, m5161O0(), m5161O0(), this.f36506l0);
        }
    }

    /* renamed from: H0 */
    private void m5182H0(Canvas canvas, Rect rect) {
        if (m5141U2()) {
            m5083u0(rect, this.f36509o0);
            RectF rectF = this.f36509o0;
            float f = rectF.left;
            float f2 = rectF.top;
            canvas.translate(f, f2);
            this.f36486R.setBounds(0, 0, (int) this.f36509o0.width(), (int) this.f36509o0.height());
            if (C1928b.f6876a) {
                this.f36487S.setBounds(this.f36486R.getBounds());
                this.f36487S.jumpToCurrentState();
                this.f36487S.draw(canvas);
            } else {
                this.f36486R.draw(canvas);
            }
            canvas.translate(-f, -f2);
        }
    }

    /* renamed from: I0 */
    private void m5179I0(Canvas canvas, Rect rect) {
        this.f36506l0.setColor(this.f36517w0);
        this.f36506l0.setStyle(Paint.Style.FILL);
        this.f36509o0.set(rect);
        if (!this.f36481M0) {
            canvas.drawRoundRect(this.f36509o0, m5161O0(), m5161O0(), this.f36506l0);
            return;
        }
        m28612h(new RectF(rect), this.f36511q0);
        super.m28596p(canvas, this.f36506l0, this.f36511q0, m28590u());
    }

    /* renamed from: J0 */
    private void m5176J0(Canvas canvas, Rect rect) {
        Paint paint = this.f36507m0;
        if (paint != null) {
            paint.setColor(C1522a.m29848d(-16777216, 127));
            canvas.drawRect(rect, this.f36507m0);
            if (m5144T2() || m5147S2()) {
                m5092r0(rect, this.f36509o0);
                canvas.drawRect(this.f36509o0, this.f36507m0);
            }
            if (this.f36476K != null) {
                canvas.drawLine(rect.left, rect.exactCenterY(), rect.right, rect.exactCenterY(), this.f36507m0);
            }
            if (m5141U2()) {
                m5083u0(rect, this.f36509o0);
                canvas.drawRect(this.f36509o0, this.f36507m0);
            }
            this.f36507m0.setColor(C1522a.m29848d(-65536, 127));
            m5086t0(rect, this.f36509o0);
            canvas.drawRect(this.f36509o0, this.f36507m0);
            this.f36507m0.setColor(C1522a.m29848d(-16711936, 127));
            m5080v0(rect, this.f36509o0);
            canvas.drawRect(this.f36509o0, this.f36507m0);
        }
    }

    /* renamed from: K0 */
    private void m5173K0(Canvas canvas, Rect rect) {
        if (this.f36476K != null) {
            Paint.Align m5068z0 = m5068z0(rect, this.f36510p0);
            m5074x0(rect, this.f36509o0);
            if (this.f36512r0.m4483d() != null) {
                this.f36512r0.m4482e().drawableState = getState();
                this.f36512r0.m4477j(this.f36505k0);
            }
            this.f36512r0.m4482e().setTextAlign(m5068z0);
            int i = 0;
            boolean z = Math.round(this.f36512r0.m4481f(m5101n1().toString())) > Math.round(this.f36509o0.width());
            if (z) {
                i = canvas.save();
                canvas.clipRect(this.f36509o0);
            }
            CharSequence charSequence = this.f36476K;
            CharSequence charSequence2 = charSequence;
            if (z) {
                charSequence2 = charSequence;
                if (this.f36475J0 != null) {
                    charSequence2 = TextUtils.ellipsize(charSequence, this.f36512r0.m4482e(), this.f36509o0.width(), this.f36475J0);
                }
            }
            int length = charSequence2.length();
            PointF pointF = this.f36510p0;
            canvas.drawText(charSequence2, 0, length, pointF.x, pointF.y, this.f36512r0.m4482e());
            if (!z) {
                return;
            }
            canvas.restoreToCount(i);
        }
    }

    /* renamed from: S2 */
    private boolean m5147S2() {
        return this.f36492X && this.f36493Y != null && this.f36519y0;
    }

    /* renamed from: T2 */
    private boolean m5144T2() {
        return this.f36478L && this.f36480M != null;
    }

    /* renamed from: U2 */
    private boolean m5141U2() {
        return this.f36485Q && this.f36486R != null;
    }

    /* renamed from: V2 */
    private void m5138V2(Drawable drawable) {
        if (drawable != null) {
            drawable.setCallback(null);
        }
    }

    /* renamed from: W2 */
    private void m5135W2() {
        this.f36471H0 = this.f36469G0 ? C1928b.m28658d(this.f36474J) : null;
    }

    @TargetApi(21)
    /* renamed from: X2 */
    private void m5132X2() {
        this.f36487S = new RippleDrawable(C1928b.m28658d(m5105l1()), this.f36486R, f36458C);
    }

    /* renamed from: f1 */
    private float m5117f1() {
        Drawable drawable = this.f36519y0 ? this.f36493Y : this.f36480M;
        float f = this.f36483O;
        float f2 = f;
        if (f <= 0.0f) {
            f2 = f;
            if (drawable != null) {
                float ceil = (float) Math.ceil(C8209q.m4450c(this.f36505k0, 24));
                f2 = ceil;
                if (drawable.getIntrinsicHeight() <= ceil) {
                    return drawable.getIntrinsicHeight();
                }
            }
        }
        return f2;
    }

    /* renamed from: g1 */
    private float m5115g1() {
        Drawable drawable = this.f36519y0 ? this.f36493Y : this.f36480M;
        float f = this.f36483O;
        return (f > 0.0f || drawable == null) ? f : drawable.getIntrinsicWidth();
    }

    /* renamed from: h2 */
    private void m5112h2(ColorStateList colorStateList) {
        if (this.f36462D != colorStateList) {
            this.f36462D = colorStateList;
            onStateChange(getState());
        }
    }

    /* renamed from: q0 */
    private void m5095q0(Drawable drawable) {
        if (drawable == null) {
            return;
        }
        drawable.setCallback(this);
        C0615a.m33217m(drawable, C0615a.m33224f(this));
        drawable.setLevel(getLevel());
        drawable.setVisible(isVisible(), false);
        if (drawable == this.f36486R) {
            if (drawable.isStateful()) {
                drawable.setState(m5123c1());
            }
            C0615a.m33215o(drawable, this.f36488T);
            return;
        }
        if (drawable.isStateful()) {
            drawable.setState(getState());
        }
        Drawable drawable2 = this.f36480M;
        if (drawable != drawable2 || !this.f36484P) {
            return;
        }
        C0615a.m33215o(drawable2, this.f36482N);
    }

    /* renamed from: r0 */
    private void m5092r0(Rect rect, RectF rectF) {
        rectF.setEmpty();
        if (m5144T2() || m5147S2()) {
            float f = this.f36497c0 + this.f36498d0;
            float m5115g1 = m5115g1();
            if (C0615a.m33224f(this) == 0) {
                float f2 = rect.left + f;
                rectF.left = f2;
                rectF.right = f2 + m5115g1;
            } else {
                float f3 = rect.right - f;
                rectF.right = f3;
                rectF.left = f3 - m5115g1;
            }
            float m5117f1 = m5117f1();
            float exactCenterY = rect.exactCenterY() - (m5117f1 / 2.0f);
            rectF.top = exactCenterY;
            rectF.bottom = exactCenterY + m5117f1;
        }
    }

    /* renamed from: r1 */
    private ColorFilter m5091r1() {
        PorterDuffColorFilter porterDuffColorFilter = this.f36460B0;
        if (porterDuffColorFilter == null) {
            porterDuffColorFilter = this.f36461C0;
        }
        return porterDuffColorFilter;
    }

    /* renamed from: t0 */
    private void m5086t0(Rect rect, RectF rectF) {
        rectF.set(rect);
        if (m5141U2()) {
            float f = this.f36504j0 + this.f36503i0 + this.f36489U + this.f36502h0 + this.f36501g0;
            if (C0615a.m33224f(this) == 0) {
                rectF.right = rect.right - f;
            } else {
                rectF.left = rect.left + f;
            }
        }
    }

    /* renamed from: t1 */
    private static boolean m5085t1(int[] iArr, int i) {
        if (iArr == null) {
            return false;
        }
        for (int i2 : iArr) {
            if (i2 == i) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: u0 */
    private void m5083u0(Rect rect, RectF rectF) {
        rectF.setEmpty();
        if (m5141U2()) {
            float f = this.f36504j0 + this.f36503i0;
            if (C0615a.m33224f(this) == 0) {
                float f2 = rect.right - f;
                rectF.right = f2;
                rectF.left = f2 - this.f36489U;
            } else {
                float f3 = rect.left + f;
                rectF.left = f3;
                rectF.right = f3 + this.f36489U;
            }
            float exactCenterY = rect.exactCenterY();
            float f4 = this.f36489U;
            float f5 = exactCenterY - (f4 / 2.0f);
            rectF.top = f5;
            rectF.bottom = f5 + f4;
        }
    }

    /* renamed from: v0 */
    private void m5080v0(Rect rect, RectF rectF) {
        rectF.setEmpty();
        if (m5141U2()) {
            float f = this.f36504j0 + this.f36503i0 + this.f36489U + this.f36502h0 + this.f36501g0;
            if (C0615a.m33224f(this) == 0) {
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

    /* renamed from: x0 */
    private void m5074x0(Rect rect, RectF rectF) {
        rectF.setEmpty();
        if (this.f36476K != null) {
            float m5089s0 = this.f36497c0 + m5089s0() + this.f36500f0;
            float m5077w0 = this.f36504j0 + m5077w0() + this.f36501g0;
            if (C0615a.m33224f(this) == 0) {
                rectF.left = rect.left + m5089s0;
                rectF.right = rect.right - m5077w0;
            } else {
                rectF.left = rect.left + m5077w0;
                rectF.right = rect.right - m5089s0;
            }
            rectF.top = rect.top;
            rectF.bottom = rect.bottom;
        }
    }

    /* renamed from: x1 */
    private static boolean m5073x1(ColorStateList colorStateList) {
        return colorStateList != null && colorStateList.isStateful();
    }

    /* renamed from: y0 */
    private float m5071y0() {
        this.f36512r0.m4482e().getFontMetrics(this.f36508n0);
        Paint.FontMetrics fontMetrics = this.f36508n0;
        return (fontMetrics.descent + fontMetrics.ascent) / 2.0f;
    }

    /* renamed from: y1 */
    private static boolean m5070y1(Drawable drawable) {
        return drawable != null && drawable.isStateful();
    }

    /* renamed from: z1 */
    private static boolean m5067z1(C1920d c1920d) {
        ColorStateList colorStateList;
        return (c1920d == null || (colorStateList = c1920d.f6850a) == null || !colorStateList.isStateful()) ? false : true;
    }

    /* renamed from: A2 */
    public void m5201A2(int i) {
        m5066z2(this.f36505k0.getResources().getDimension(i));
    }

    /* renamed from: B1 */
    protected void m5199B1() {
        AbstractC8062a abstractC8062a = this.f36473I0.get();
        if (abstractC8062a != null) {
            abstractC8062a.mo5065a();
        }
    }

    /* renamed from: B2 */
    public void m5198B2(float f) {
        if (this.f36498d0 != f) {
            float m5089s0 = m5089s0();
            this.f36498d0 = f;
            float m5089s02 = m5089s0();
            invalidateSelf();
            if (m5089s0 == m5089s02) {
                return;
            }
            m5199B1();
        }
    }

    /* renamed from: C2 */
    public void m5195C2(int i) {
        m5198B2(this.f36505k0.getResources().getDimension(i));
    }

    /* renamed from: D1 */
    public void m5193D1(boolean z) {
        if (this.f36491W != z) {
            this.f36491W = z;
            float m5089s0 = m5089s0();
            if (!z && this.f36519y0) {
                this.f36519y0 = false;
            }
            float m5089s02 = m5089s0();
            invalidateSelf();
            if (m5089s0 == m5089s02) {
                return;
            }
            m5199B1();
        }
    }

    /* renamed from: D2 */
    public void m5192D2(int i) {
        this.f36479L0 = i;
    }

    /* renamed from: E1 */
    public void m5190E1(int i) {
        m5193D1(this.f36505k0.getResources().getBoolean(i));
    }

    /* renamed from: E2 */
    public void m5189E2(ColorStateList colorStateList) {
        if (this.f36474J != colorStateList) {
            this.f36474J = colorStateList;
            m5135W2();
            onStateChange(getState());
        }
    }

    /* renamed from: F1 */
    public void m5187F1(Drawable drawable) {
        if (this.f36493Y != drawable) {
            float m5089s0 = m5089s0();
            this.f36493Y = drawable;
            float m5089s02 = m5089s0();
            m5138V2(this.f36493Y);
            m5095q0(this.f36493Y);
            invalidateSelf();
            if (m5089s0 == m5089s02) {
                return;
            }
            m5199B1();
        }
    }

    /* renamed from: F2 */
    public void m5186F2(int i) {
        m5189E2(C1433a.m30127c(this.f36505k0, i));
    }

    /* renamed from: G1 */
    public void m5184G1(int i) {
        m5187F1(C1433a.m30126d(this.f36505k0, i));
    }

    /* renamed from: G2 */
    public void m5183G2(boolean z) {
        this.f36477K0 = z;
    }

    /* renamed from: H1 */
    public void m5181H1(ColorStateList colorStateList) {
        if (this.f36494Z != colorStateList) {
            this.f36494Z = colorStateList;
            if (m5203A0()) {
                C0615a.m33215o(this.f36493Y, colorStateList);
            }
            onStateChange(getState());
        }
    }

    /* renamed from: H2 */
    public void m5180H2(C1904h c1904h) {
        this.f36495a0 = c1904h;
    }

    /* renamed from: I1 */
    public void m5178I1(int i) {
        m5181H1(C1433a.m30127c(this.f36505k0, i));
    }

    /* renamed from: I2 */
    public void m5177I2(int i) {
        m5180H2(C1904h.m28737d(this.f36505k0, i));
    }

    /* renamed from: J1 */
    public void m5175J1(int i) {
        m5172K1(this.f36505k0.getResources().getBoolean(i));
    }

    /* renamed from: J2 */
    public void m5174J2(CharSequence charSequence) {
        CharSequence charSequence2 = charSequence;
        if (charSequence == null) {
            charSequence2 = "";
        }
        if (!TextUtils.equals(this.f36476K, charSequence2)) {
            this.f36476K = charSequence2;
            this.f36512r0.m4478i(true);
            invalidateSelf();
            m5199B1();
        }
    }

    /* renamed from: K1 */
    public void m5172K1(boolean z) {
        if (this.f36492X != z) {
            boolean m5147S2 = m5147S2();
            this.f36492X = z;
            boolean m5147S22 = m5147S2();
            if (!(m5147S2 != m5147S22)) {
                return;
            }
            if (m5147S22) {
                m5095q0(this.f36493Y);
            } else {
                m5138V2(this.f36493Y);
            }
            invalidateSelf();
            m5199B1();
        }
    }

    /* renamed from: K2 */
    public void m5171K2(C1920d c1920d) {
        this.f36512r0.m4479h(c1920d, this.f36505k0);
    }

    /* renamed from: L0 */
    public Drawable m5170L0() {
        return this.f36493Y;
    }

    /* renamed from: L1 */
    public void m5169L1(ColorStateList colorStateList) {
        if (this.f36464E != colorStateList) {
            this.f36464E = colorStateList;
            onStateChange(getState());
        }
    }

    /* renamed from: L2 */
    public void m5168L2(int i) {
        m5171K2(new C1920d(this.f36505k0, i));
    }

    /* renamed from: M0 */
    public ColorStateList m5167M0() {
        return this.f36494Z;
    }

    /* renamed from: M1 */
    public void m5166M1(int i) {
        m5169L1(C1433a.m30127c(this.f36505k0, i));
    }

    /* renamed from: M2 */
    public void m5165M2(float f) {
        if (this.f36501g0 != f) {
            this.f36501g0 = f;
            invalidateSelf();
            m5199B1();
        }
    }

    /* renamed from: N0 */
    public ColorStateList m5164N0() {
        return this.f36464E;
    }

    @Deprecated
    /* renamed from: N1 */
    public void m5163N1(float f) {
        if (this.f36468G != f) {
            this.f36468G = f;
            setShapeAppearanceModel(m28648D().m28553w(f));
        }
    }

    /* renamed from: N2 */
    public void m5162N2(int i) {
        m5165M2(this.f36505k0.getResources().getDimension(i));
    }

    /* renamed from: O0 */
    public float m5161O0() {
        return this.f36481M0 ? m28643I() : this.f36468G;
    }

    @Deprecated
    /* renamed from: O1 */
    public void m5160O1(int i) {
        m5163N1(this.f36505k0.getResources().getDimension(i));
    }

    /* renamed from: O2 */
    public void m5159O2(float f) {
        if (this.f36500f0 != f) {
            this.f36500f0 = f;
            invalidateSelf();
            m5199B1();
        }
    }

    /* renamed from: P0 */
    public float m5158P0() {
        return this.f36504j0;
    }

    /* renamed from: P1 */
    public void m5157P1(float f) {
        if (this.f36504j0 != f) {
            this.f36504j0 = f;
            invalidateSelf();
            m5199B1();
        }
    }

    /* renamed from: P2 */
    public void m5156P2(int i) {
        m5159O2(this.f36505k0.getResources().getDimension(i));
    }

    /* renamed from: Q0 */
    public Drawable m5155Q0() {
        Drawable drawable = this.f36480M;
        return drawable != null ? C0615a.m33213q(drawable) : null;
    }

    /* renamed from: Q1 */
    public void m5154Q1(int i) {
        m5157P1(this.f36505k0.getResources().getDimension(i));
    }

    /* renamed from: Q2 */
    public void m5153Q2(boolean z) {
        if (this.f36469G0 != z) {
            this.f36469G0 = z;
            m5135W2();
            onStateChange(getState());
        }
    }

    /* renamed from: R0 */
    public float m5152R0() {
        return this.f36483O;
    }

    /* renamed from: R1 */
    public void m5151R1(Drawable drawable) {
        Drawable m5155Q0 = m5155Q0();
        if (m5155Q0 != drawable) {
            float m5089s0 = m5089s0();
            this.f36480M = drawable != null ? C0615a.m33212r(drawable).mutate() : null;
            float m5089s02 = m5089s0();
            m5138V2(m5155Q0);
            if (m5144T2()) {
                m5095q0(this.f36480M);
            }
            invalidateSelf();
            if (m5089s0 == m5089s02) {
                return;
            }
            m5199B1();
        }
    }

    /* renamed from: R2 */
    public boolean m5150R2() {
        return this.f36477K0;
    }

    /* renamed from: S0 */
    public ColorStateList m5149S0() {
        return this.f36482N;
    }

    /* renamed from: S1 */
    public void m5148S1(int i) {
        m5151R1(C1433a.m30126d(this.f36505k0, i));
    }

    /* renamed from: T0 */
    public float m5146T0() {
        return this.f36466F;
    }

    /* renamed from: T1 */
    public void m5145T1(float f) {
        if (this.f36483O != f) {
            float m5089s0 = m5089s0();
            this.f36483O = f;
            float m5089s02 = m5089s0();
            invalidateSelf();
            if (m5089s0 == m5089s02) {
                return;
            }
            m5199B1();
        }
    }

    /* renamed from: U0 */
    public float m5143U0() {
        return this.f36497c0;
    }

    /* renamed from: U1 */
    public void m5142U1(int i) {
        m5145T1(this.f36505k0.getResources().getDimension(i));
    }

    /* renamed from: V0 */
    public ColorStateList m5140V0() {
        return this.f36470H;
    }

    /* renamed from: V1 */
    public void m5139V1(ColorStateList colorStateList) {
        this.f36484P = true;
        if (this.f36482N != colorStateList) {
            this.f36482N = colorStateList;
            if (m5144T2()) {
                C0615a.m33215o(this.f36480M, colorStateList);
            }
            onStateChange(getState());
        }
    }

    /* renamed from: W0 */
    public float m5137W0() {
        return this.f36472I;
    }

    /* renamed from: W1 */
    public void m5136W1(int i) {
        m5139V1(C1433a.m30127c(this.f36505k0, i));
    }

    /* renamed from: X0 */
    public Drawable m5134X0() {
        Drawable drawable = this.f36486R;
        return drawable != null ? C0615a.m33213q(drawable) : null;
    }

    /* renamed from: X1 */
    public void m5133X1(int i) {
        m5130Y1(this.f36505k0.getResources().getBoolean(i));
    }

    /* renamed from: Y0 */
    public CharSequence m5131Y0() {
        return this.f36490V;
    }

    /* renamed from: Y1 */
    public void m5130Y1(boolean z) {
        if (this.f36478L != z) {
            boolean m5144T2 = m5144T2();
            this.f36478L = z;
            boolean m5144T22 = m5144T2();
            if (!(m5144T2 != m5144T22)) {
                return;
            }
            if (m5144T22) {
                m5095q0(this.f36480M);
            } else {
                m5138V2(this.f36480M);
            }
            invalidateSelf();
            m5199B1();
        }
    }

    /* renamed from: Z0 */
    public float m5129Z0() {
        return this.f36503i0;
    }

    /* renamed from: Z1 */
    public void m5128Z1(float f) {
        if (this.f36466F != f) {
            this.f36466F = f;
            invalidateSelf();
            m5199B1();
        }
    }

    @Override // com.google.android.material.internal.C8197i.AbstractC8199b
    /* renamed from: a */
    public void mo4474a() {
        m5199B1();
        invalidateSelf();
    }

    /* renamed from: a1 */
    public float m5127a1() {
        return this.f36489U;
    }

    /* renamed from: a2 */
    public void m5126a2(int i) {
        m5128Z1(this.f36505k0.getResources().getDimension(i));
    }

    /* renamed from: b1 */
    public float m5125b1() {
        return this.f36502h0;
    }

    /* renamed from: b2 */
    public void m5124b2(float f) {
        if (this.f36497c0 != f) {
            this.f36497c0 = f;
            invalidateSelf();
            m5199B1();
        }
    }

    /* renamed from: c1 */
    public int[] m5123c1() {
        return this.f36467F0;
    }

    /* renamed from: c2 */
    public void m5122c2(int i) {
        m5124b2(this.f36505k0.getResources().getDimension(i));
    }

    /* renamed from: d1 */
    public ColorStateList m5121d1() {
        return this.f36488T;
    }

    /* renamed from: d2 */
    public void m5120d2(ColorStateList colorStateList) {
        if (this.f36470H != colorStateList) {
            this.f36470H = colorStateList;
            if (this.f36481M0) {
                m28603l0(colorStateList);
            }
            onStateChange(getState());
        }
    }

    @Override // p078c.p084c.p085a.p096b.p108x.C1938h, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Rect bounds = getBounds();
        if (bounds.isEmpty() || getAlpha() == 0) {
            return;
        }
        int i = 0;
        int i2 = this.f36459A0;
        if (i2 < 255) {
            i = C1908a.m28719a(canvas, bounds.left, bounds.top, bounds.right, bounds.bottom, i2);
        }
        m5185G0(canvas, bounds);
        m5194D0(canvas, bounds);
        if (this.f36481M0) {
            super.draw(canvas);
        }
        m5188F0(canvas, bounds);
        m5179I0(canvas, bounds);
        m5191E0(canvas, bounds);
        m5197C0(canvas, bounds);
        if (this.f36477K0) {
            m5173K0(canvas, bounds);
        }
        m5182H0(canvas, bounds);
        m5176J0(canvas, bounds);
        if (this.f36459A0 >= 255) {
            return;
        }
        canvas.restoreToCount(i);
    }

    /* renamed from: e1 */
    public void m5119e1(RectF rectF) {
        m5080v0(getBounds(), rectF);
    }

    /* renamed from: e2 */
    public void m5118e2(int i) {
        m5120d2(C1433a.m30127c(this.f36505k0, i));
    }

    /* renamed from: f2 */
    public void m5116f2(float f) {
        if (this.f36472I != f) {
            this.f36472I = f;
            this.f36506l0.setStrokeWidth(f);
            if (this.f36481M0) {
                super.m28601m0(f);
            }
            invalidateSelf();
        }
    }

    /* renamed from: g2 */
    public void m5114g2(int i) {
        m5116f2(this.f36505k0.getResources().getDimension(i));
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f36459A0;
    }

    @Override // android.graphics.drawable.Drawable
    public ColorFilter getColorFilter() {
        return this.f36460B0;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return (int) this.f36466F;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return Math.min(Math.round(this.f36497c0 + m5089s0() + this.f36500f0 + this.f36512r0.m4481f(m5101n1().toString()) + this.f36501g0 + m5077w0() + this.f36504j0), this.f36479L0);
    }

    @Override // p078c.p084c.p085a.p096b.p108x.C1938h, android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // p078c.p084c.p085a.p096b.p108x.C1938h, android.graphics.drawable.Drawable
    @TargetApi(21)
    public void getOutline(Outline outline) {
        if (this.f36481M0) {
            super.getOutline(outline);
            return;
        }
        Rect bounds = getBounds();
        if (!bounds.isEmpty()) {
            outline.setRoundRect(bounds, this.f36468G);
        } else {
            outline.setRoundRect(0, 0, getIntrinsicWidth(), getIntrinsicHeight(), this.f36468G);
        }
        outline.setAlpha(getAlpha() / 255.0f);
    }

    /* renamed from: h1 */
    public TextUtils.TruncateAt m5113h1() {
        return this.f36475J0;
    }

    /* renamed from: i1 */
    public C1904h m5111i1() {
        return this.f36496b0;
    }

    /* renamed from: i2 */
    public void m5110i2(Drawable drawable) {
        Drawable m5134X0 = m5134X0();
        if (m5134X0 != drawable) {
            float m5077w0 = m5077w0();
            this.f36486R = drawable != null ? C0615a.m33212r(drawable).mutate() : null;
            if (C1928b.f6876a) {
                m5132X2();
            }
            float m5077w02 = m5077w0();
            m5138V2(m5134X0);
            if (m5141U2()) {
                m5095q0(this.f36486R);
            }
            invalidateSelf();
            if (m5077w0 == m5077w02) {
                return;
            }
            m5199B1();
        }
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(Drawable drawable) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.invalidateDrawable(this);
        }
    }

    @Override // p078c.p084c.p085a.p096b.p108x.C1938h, android.graphics.drawable.Drawable
    public boolean isStateful() {
        return m5073x1(this.f36462D) || m5073x1(this.f36464E) || m5073x1(this.f36470H) || (this.f36469G0 && m5073x1(this.f36471H0)) || m5067z1(this.f36512r0.m4483d()) || m5203A0() || m5070y1(this.f36480M) || m5070y1(this.f36493Y) || m5073x1(this.f36463D0);
    }

    /* renamed from: j1 */
    public float m5109j1() {
        return this.f36499e0;
    }

    /* renamed from: j2 */
    public void m5108j2(CharSequence charSequence) {
        if (this.f36490V != charSequence) {
            this.f36490V = C1574a.m29713c().m29708h(charSequence);
            invalidateSelf();
        }
    }

    /* renamed from: k1 */
    public float m5107k1() {
        return this.f36498d0;
    }

    /* renamed from: k2 */
    public void m5106k2(float f) {
        if (this.f36503i0 != f) {
            this.f36503i0 = f;
            invalidateSelf();
            if (!m5141U2()) {
                return;
            }
            m5199B1();
        }
    }

    /* renamed from: l1 */
    public ColorStateList m5105l1() {
        return this.f36474J;
    }

    /* renamed from: l2 */
    public void m5104l2(int i) {
        m5106k2(this.f36505k0.getResources().getDimension(i));
    }

    /* renamed from: m1 */
    public C1904h m5103m1() {
        return this.f36495a0;
    }

    /* renamed from: m2 */
    public void m5102m2(int i) {
        m5110i2(C1433a.m30126d(this.f36505k0, i));
    }

    /* renamed from: n1 */
    public CharSequence m5101n1() {
        return this.f36476K;
    }

    /* renamed from: n2 */
    public void m5100n2(float f) {
        if (this.f36489U != f) {
            this.f36489U = f;
            invalidateSelf();
            if (!m5141U2()) {
                return;
            }
            m5199B1();
        }
    }

    /* renamed from: o1 */
    public C1920d m5099o1() {
        return this.f36512r0.m4483d();
    }

    /* renamed from: o2 */
    public void m5098o2(int i) {
        m5100n2(this.f36505k0.getResources().getDimension(i));
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onLayoutDirectionChanged(int i) {
        boolean onLayoutDirectionChanged = super.onLayoutDirectionChanged(i);
        boolean z = onLayoutDirectionChanged;
        if (m5144T2()) {
            z = onLayoutDirectionChanged | C0615a.m33217m(this.f36480M, i);
        }
        boolean z2 = z;
        if (m5147S2()) {
            z2 = z | C0615a.m33217m(this.f36493Y, i);
        }
        boolean z3 = z2;
        if (m5141U2()) {
            z3 = z2 | C0615a.m33217m(this.f36486R, i);
        }
        if (z3) {
            invalidateSelf();
            return true;
        }
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onLevelChange(int i) {
        boolean onLevelChange = super.onLevelChange(i);
        boolean z = onLevelChange;
        if (m5144T2()) {
            z = onLevelChange | this.f36480M.setLevel(i);
        }
        boolean z2 = z;
        if (m5147S2()) {
            z2 = z | this.f36493Y.setLevel(i);
        }
        boolean z3 = z2;
        if (m5141U2()) {
            z3 = z2 | this.f36486R.setLevel(i);
        }
        if (z3) {
            invalidateSelf();
        }
        return z3;
    }

    @Override // p078c.p084c.p085a.p096b.p108x.C1938h, android.graphics.drawable.Drawable
    public boolean onStateChange(int[] iArr) {
        if (this.f36481M0) {
            super.onStateChange(iArr);
        }
        return m5196C1(iArr, m5123c1());
    }

    /* renamed from: p1 */
    public float m5097p1() {
        return this.f36501g0;
    }

    /* renamed from: p2 */
    public void m5096p2(float f) {
        if (this.f36502h0 != f) {
            this.f36502h0 = f;
            invalidateSelf();
            if (!m5141U2()) {
                return;
            }
            m5199B1();
        }
    }

    /* renamed from: q1 */
    public float m5094q1() {
        return this.f36500f0;
    }

    /* renamed from: q2 */
    public void m5093q2(int i) {
        m5096p2(this.f36505k0.getResources().getDimension(i));
    }

    /* renamed from: r2 */
    public boolean m5090r2(int[] iArr) {
        if (!Arrays.equals(this.f36467F0, iArr)) {
            this.f36467F0 = iArr;
            if (!m5141U2()) {
                return false;
            }
            return m5196C1(getState(), iArr);
        }
        return false;
    }

    /* renamed from: s0 */
    public float m5089s0() {
        if (m5144T2() || m5147S2()) {
            return this.f36498d0 + m5115g1() + this.f36499e0;
        }
        return 0.0f;
    }

    /* renamed from: s1 */
    public boolean m5088s1() {
        return this.f36469G0;
    }

    /* renamed from: s2 */
    public void m5087s2(ColorStateList colorStateList) {
        if (this.f36488T != colorStateList) {
            this.f36488T = colorStateList;
            if (m5141U2()) {
                C0615a.m33215o(this.f36486R, colorStateList);
            }
            onStateChange(getState());
        }
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.scheduleDrawable(this, runnable, j);
        }
    }

    @Override // p078c.p084c.p085a.p096b.p108x.C1938h, android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        if (this.f36459A0 != i) {
            this.f36459A0 = i;
            invalidateSelf();
        }
    }

    @Override // p078c.p084c.p085a.p096b.p108x.C1938h, android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        if (this.f36460B0 != colorFilter) {
            this.f36460B0 = colorFilter;
            invalidateSelf();
        }
    }

    @Override // p078c.p084c.p085a.p096b.p108x.C1938h, android.graphics.drawable.Drawable, androidx.core.graphics.drawable.AbstractC0616b
    public void setTintList(ColorStateList colorStateList) {
        if (this.f36463D0 != colorStateList) {
            this.f36463D0 = colorStateList;
            onStateChange(getState());
        }
    }

    @Override // p078c.p084c.p085a.p096b.p108x.C1938h, android.graphics.drawable.Drawable, androidx.core.graphics.drawable.AbstractC0616b
    public void setTintMode(PorterDuff.Mode mode) {
        if (this.f36465E0 != mode) {
            this.f36465E0 = mode;
            this.f36461C0 = C1911a.m28709b(this, this.f36463D0, mode);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        boolean visible = super.setVisible(z, z2);
        boolean z3 = visible;
        if (m5144T2()) {
            z3 = visible | this.f36480M.setVisible(z, z2);
        }
        boolean z4 = z3;
        if (m5147S2()) {
            z4 = z3 | this.f36493Y.setVisible(z, z2);
        }
        boolean z5 = z4;
        if (m5141U2()) {
            z5 = z4 | this.f36486R.setVisible(z, z2);
        }
        if (z5) {
            invalidateSelf();
        }
        return z5;
    }

    /* renamed from: t2 */
    public void m5084t2(int i) {
        m5087s2(C1433a.m30127c(this.f36505k0, i));
    }

    /* renamed from: u1 */
    public boolean m5082u1() {
        return this.f36491W;
    }

    /* renamed from: u2 */
    public void m5081u2(boolean z) {
        if (this.f36485Q != z) {
            boolean m5141U2 = m5141U2();
            this.f36485Q = z;
            boolean m5141U22 = m5141U2();
            if (!(m5141U2 != m5141U22)) {
                return;
            }
            if (m5141U22) {
                m5095q0(this.f36486R);
            } else {
                m5138V2(this.f36486R);
            }
            invalidateSelf();
            m5199B1();
        }
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.unscheduleDrawable(this, runnable);
        }
    }

    /* renamed from: v1 */
    public boolean m5079v1() {
        return m5070y1(this.f36486R);
    }

    /* renamed from: v2 */
    public void m5078v2(AbstractC8062a abstractC8062a) {
        this.f36473I0 = new WeakReference<>(abstractC8062a);
    }

    /* renamed from: w0 */
    public float m5077w0() {
        if (m5141U2()) {
            return this.f36502h0 + this.f36489U + this.f36503i0;
        }
        return 0.0f;
    }

    /* renamed from: w1 */
    public boolean m5076w1() {
        return this.f36485Q;
    }

    /* renamed from: w2 */
    public void m5075w2(TextUtils.TruncateAt truncateAt) {
        this.f36475J0 = truncateAt;
    }

    /* renamed from: x2 */
    public void m5072x2(C1904h c1904h) {
        this.f36496b0 = c1904h;
    }

    /* renamed from: y2 */
    public void m5069y2(int i) {
        m5072x2(C1904h.m28737d(this.f36505k0, i));
    }

    /* renamed from: z0 */
    Paint.Align m5068z0(Rect rect, PointF pointF) {
        pointF.set(0.0f, 0.0f);
        Paint.Align align = Paint.Align.LEFT;
        if (this.f36476K != null) {
            float m5089s0 = this.f36497c0 + m5089s0() + this.f36500f0;
            if (C0615a.m33224f(this) == 0) {
                pointF.x = rect.left + m5089s0;
                align = Paint.Align.LEFT;
            } else {
                pointF.x = rect.right - m5089s0;
                align = Paint.Align.RIGHT;
            }
            pointF.y = rect.centerY() - m5071y0();
        }
        return align;
    }

    /* renamed from: z2 */
    public void m5066z2(float f) {
        if (this.f36499e0 != f) {
            float m5089s0 = m5089s0();
            this.f36499e0 = f;
            float m5089s02 = m5089s0();
            invalidateSelf();
            if (m5089s0 == m5089s02) {
                return;
            }
            m5199B1();
        }
    }
}
