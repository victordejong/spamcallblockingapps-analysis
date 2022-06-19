package com.google.android.material.internal;

import android.animation.TimeInterpolator;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.os.Build;
import android.text.TextPaint;
import android.text.TextUtils;
import android.view.View;
import androidx.core.p021c.C0486a;
import androidx.core.p024f.C0511e;
import androidx.core.p026h.C0576c;
import androidx.core.p026h.C0595u;
import com.google.android.material.p142a.C4505a;
import com.google.android.material.p156n.C4715a;
import com.google.android.material.p156n.C4719d;
/* renamed from: com.google.android.material.internal.a */
/* loaded from: classes-dex2jar.jar:com/google/android/material/internal/a.class */
public final class C4687a {

    /* renamed from: a */
    private static final boolean f20311a;

    /* renamed from: b */
    private static final Paint f20312b;

    /* renamed from: A */
    private CharSequence f20313A;

    /* renamed from: B */
    private boolean f20314B;

    /* renamed from: C */
    private boolean f20315C;

    /* renamed from: D */
    private Bitmap f20316D;

    /* renamed from: E */
    private Paint f20317E;

    /* renamed from: F */
    private float f20318F;

    /* renamed from: G */
    private float f20319G;

    /* renamed from: H */
    private float f20320H;

    /* renamed from: I */
    private float f20321I;

    /* renamed from: J */
    private int[] f20322J;

    /* renamed from: K */
    private boolean f20323K;

    /* renamed from: N */
    private TimeInterpolator f20326N;

    /* renamed from: O */
    private TimeInterpolator f20327O;

    /* renamed from: P */
    private float f20328P;

    /* renamed from: Q */
    private float f20329Q;

    /* renamed from: R */
    private float f20330R;

    /* renamed from: S */
    private ColorStateList f20331S;

    /* renamed from: T */
    private float f20332T;

    /* renamed from: U */
    private float f20333U;

    /* renamed from: V */
    private float f20334V;

    /* renamed from: W */
    private ColorStateList f20335W;

    /* renamed from: c */
    private final View f20336c;

    /* renamed from: d */
    private boolean f20337d;

    /* renamed from: e */
    private float f20338e;

    /* renamed from: m */
    private ColorStateList f20346m;

    /* renamed from: n */
    private ColorStateList f20347n;

    /* renamed from: o */
    private float f20348o;

    /* renamed from: p */
    private float f20349p;

    /* renamed from: q */
    private float f20350q;

    /* renamed from: r */
    private float f20351r;

    /* renamed from: s */
    private float f20352s;

    /* renamed from: t */
    private float f20353t;

    /* renamed from: u */
    private Typeface f20354u;

    /* renamed from: v */
    private Typeface f20355v;

    /* renamed from: w */
    private Typeface f20356w;

    /* renamed from: x */
    private C4715a f20357x;

    /* renamed from: y */
    private C4715a f20358y;

    /* renamed from: z */
    private CharSequence f20359z;

    /* renamed from: i */
    private int f20342i = 16;

    /* renamed from: j */
    private int f20343j = 16;

    /* renamed from: k */
    private float f20344k = 15.0f;

    /* renamed from: l */
    private float f20345l = 15.0f;

    /* renamed from: L */
    private final TextPaint f20324L = new TextPaint(129);

    /* renamed from: M */
    private final TextPaint f20325M = new TextPaint(this.f20324L);

    /* renamed from: g */
    private final Rect f20340g = new Rect();

    /* renamed from: f */
    private final Rect f20339f = new Rect();

    /* renamed from: h */
    private final RectF f20341h = new RectF();

    static {
        f20311a = Build.VERSION.SDK_INT < 18;
        f20312b = null;
        if (f20312b != null) {
            f20312b.setAntiAlias(true);
            f20312b.setColor(-65281);
        }
    }

    public C4687a(View view) {
        this.f20336c = view;
    }

    /* renamed from: a */
    private static float m2901a(float f, float f2, float f3, TimeInterpolator timeInterpolator) {
        float f4 = f3;
        if (timeInterpolator != null) {
            f4 = timeInterpolator.getInterpolation(f3);
        }
        return C4505a.m3856a(f, f2, f4);
    }

    /* renamed from: a */
    private static int m2899a(int i, int i2, float f) {
        float f2 = 1.0f - f;
        return Color.argb((int) ((Color.alpha(i) * f2) + (Color.alpha(i2) * f)), (int) ((Color.red(i) * f2) + (Color.red(i2) * f)), (int) ((Color.green(i) * f2) + (Color.green(i2) * f)), (int) ((f2 * Color.blue(i)) + (Color.blue(i2) * f)));
    }

    /* renamed from: a */
    private void m2890a(TextPaint textPaint) {
        textPaint.setTextSize(this.f20344k);
        textPaint.setTypeface(this.f20355v);
    }

    /* renamed from: a */
    private static boolean m2902a(float f, float f2) {
        return Math.abs(f - f2) < 0.001f;
    }

    /* renamed from: a */
    private static boolean m2893a(Rect rect, int i, int i2, int i3, int i4) {
        return rect.left == i && rect.top == i2 && rect.right == i3 && rect.bottom == i4;
    }

    /* renamed from: b */
    private void m2879b(TextPaint textPaint) {
        textPaint.setTextSize(this.f20345l);
        textPaint.setTypeface(this.f20354u);
    }

    /* renamed from: b */
    private boolean m2878b(CharSequence charSequence) {
        boolean z = true;
        if (C0595u.m20320g(this.f20336c) != 1) {
            z = false;
        }
        return (z ? C0511e.f1942d : C0511e.f1941c).mo20655a(charSequence, 0, charSequence.length());
    }

    /* renamed from: c */
    private int m2874c(ColorStateList colorStateList) {
        int i = 0;
        if (colorStateList != null) {
            i = this.f20322J != null ? colorStateList.getColorForState(this.f20322J, 0) : colorStateList.getDefaultColor();
        }
        return i;
    }

    /* renamed from: c */
    private void m2876c(float f) {
        m2871d(f);
        this.f20352s = m2901a(this.f20350q, this.f20351r, f, this.f20326N);
        this.f20353t = m2901a(this.f20348o, this.f20349p, f, this.f20326N);
        m2868e(m2901a(this.f20344k, this.f20345l, f, this.f20327O));
        if (this.f20347n != this.f20346m) {
            this.f20324L.setColor(m2899a(m2861k(), m2865g(), f));
        } else {
            this.f20324L.setColor(m2865g());
        }
        this.f20324L.setShadowLayer(m2901a(this.f20332T, this.f20328P, f, (TimeInterpolator) null), m2901a(this.f20333U, this.f20329Q, f, (TimeInterpolator) null), m2901a(this.f20334V, this.f20330R, f, (TimeInterpolator) null), m2899a(m2874c(this.f20335W), m2874c(this.f20331S), f));
        C0595u.m20324e(this.f20336c);
    }

    /* renamed from: c */
    private boolean m2873c(Typeface typeface) {
        boolean z;
        if (this.f20358y != null) {
            this.f20358y.m2791a();
        }
        if (this.f20354u != typeface) {
            this.f20354u = typeface;
            z = true;
        } else {
            z = false;
        }
        return z;
    }

    /* renamed from: d */
    private void m2871d(float f) {
        this.f20341h.left = m2901a(this.f20339f.left, this.f20340g.left, f, this.f20326N);
        this.f20341h.top = m2901a(this.f20348o, this.f20349p, f, this.f20326N);
        this.f20341h.right = m2901a(this.f20339f.right, this.f20340g.right, f, this.f20326N);
        this.f20341h.bottom = m2901a(this.f20339f.bottom, this.f20340g.bottom, f, this.f20326N);
    }

    /* renamed from: d */
    private boolean m2870d(Typeface typeface) {
        boolean z;
        if (this.f20357x != null) {
            this.f20357x.m2791a();
        }
        if (this.f20355v != typeface) {
            this.f20355v = typeface;
            z = true;
        } else {
            z = false;
        }
        return z;
    }

    /* renamed from: e */
    private void m2868e(float f) {
        m2866f(f);
        this.f20315C = f20311a && this.f20320H != 1.0f;
        if (this.f20315C) {
            m2859m();
        }
        C0595u.m20324e(this.f20336c);
    }

    /* renamed from: f */
    private void m2866f(float f) {
        float f2;
        boolean z;
        float min;
        boolean z2 = true;
        if (this.f20359z == null) {
            return;
        }
        float width = this.f20340g.width();
        float width2 = this.f20339f.width();
        if (m2902a(f, this.f20345l)) {
            f2 = this.f20345l;
            this.f20320H = 1.0f;
            if (this.f20356w != this.f20354u) {
                this.f20356w = this.f20354u;
                z = true;
                min = width;
            } else {
                z = false;
                min = width;
            }
        } else {
            f2 = this.f20344k;
            if (this.f20356w != this.f20355v) {
                this.f20356w = this.f20355v;
                z = true;
            } else {
                z = false;
            }
            if (m2902a(f, this.f20344k)) {
                this.f20320H = 1.0f;
            } else {
                this.f20320H = f / this.f20344k;
            }
            float f3 = this.f20345l / this.f20344k;
            min = width2 * f3 > width ? Math.min(width / f3, width2) : width2;
        }
        boolean z3 = z;
        if (min > 0.0f) {
            boolean z4 = this.f20321I != f2 || this.f20323K || z;
            this.f20321I = f2;
            this.f20323K = false;
            z3 = z4;
        }
        if (this.f20313A != null && !z3) {
            return;
        }
        this.f20324L.setTextSize(this.f20321I);
        this.f20324L.setTypeface(this.f20356w);
        TextPaint textPaint = this.f20324L;
        if (this.f20320H == 1.0f) {
            z2 = false;
        }
        textPaint.setLinearText(z2);
        CharSequence ellipsize = TextUtils.ellipsize(this.f20359z, this.f20324L, min, TextUtils.TruncateAt.END);
        if (TextUtils.equals(ellipsize, this.f20313A)) {
            return;
        }
        this.f20313A = ellipsize;
        this.f20314B = m2878b(this.f20313A);
    }

    /* renamed from: j */
    private void m2862j() {
        m2876c(this.f20338e);
    }

    /* renamed from: k */
    private int m2861k() {
        return m2874c(this.f20346m);
    }

    /* renamed from: l */
    private void m2860l() {
        float f = this.f20321I;
        m2866f(this.f20345l);
        float measureText = this.f20313A != null ? this.f20324L.measureText(this.f20313A, 0, this.f20313A.length()) : 0.0f;
        int m20421a = C0576c.m20421a(this.f20343j, this.f20314B ? 1 : 0);
        switch (m20421a & 112) {
            case 48:
                this.f20349p = this.f20340g.top - this.f20324L.ascent();
                break;
            case 80:
                this.f20349p = this.f20340g.bottom;
                break;
            default:
                this.f20349p = (((this.f20324L.descent() - this.f20324L.ascent()) / 2.0f) - this.f20324L.descent()) + this.f20340g.centerY();
                break;
        }
        switch (m20421a & 8388615) {
            case 1:
                this.f20351r = this.f20340g.centerX() - (measureText / 2.0f);
                break;
            case 5:
                this.f20351r = this.f20340g.right - measureText;
                break;
            default:
                this.f20351r = this.f20340g.left;
                break;
        }
        m2866f(this.f20344k);
        float f2 = 0.0f;
        if (this.f20313A != null) {
            f2 = this.f20324L.measureText(this.f20313A, 0, this.f20313A.length());
        }
        int m20421a2 = C0576c.m20421a(this.f20342i, this.f20314B ? 1 : 0);
        switch (m20421a2 & 112) {
            case 48:
                this.f20348o = this.f20339f.top - this.f20324L.ascent();
                break;
            case 80:
                this.f20348o = this.f20339f.bottom;
                break;
            default:
                this.f20348o = (((this.f20324L.descent() - this.f20324L.ascent()) / 2.0f) - this.f20324L.descent()) + this.f20339f.centerY();
                break;
        }
        switch (m20421a2 & 8388615) {
            case 1:
                this.f20350q = this.f20339f.centerX() - (f2 / 2.0f);
                break;
            case 5:
                this.f20350q = this.f20339f.right - f2;
                break;
            default:
                this.f20350q = this.f20339f.left;
                break;
        }
        m2858n();
        m2868e(f);
    }

    /* renamed from: m */
    private void m2859m() {
        if (this.f20316D != null || this.f20339f.isEmpty() || TextUtils.isEmpty(this.f20313A)) {
            return;
        }
        m2876c(0.0f);
        this.f20318F = this.f20324L.ascent();
        this.f20319G = this.f20324L.descent();
        int round = Math.round(this.f20324L.measureText(this.f20313A, 0, this.f20313A.length()));
        int round2 = Math.round(this.f20319G - this.f20318F);
        if (round <= 0 || round2 <= 0) {
            return;
        }
        this.f20316D = Bitmap.createBitmap(round, round2, Bitmap.Config.ARGB_8888);
        new Canvas(this.f20316D).drawText(this.f20313A, 0, this.f20313A.length(), 0.0f, round2 - this.f20324L.descent(), this.f20324L);
        if (this.f20317E != null) {
            return;
        }
        this.f20317E = new Paint(3);
    }

    /* renamed from: n */
    private void m2858n() {
        if (this.f20316D != null) {
            this.f20316D.recycle();
            this.f20316D = null;
        }
    }

    /* renamed from: a */
    public float m2904a() {
        float measureText;
        if (this.f20359z == null) {
            measureText = 0.0f;
        } else {
            m2879b(this.f20325M);
            measureText = this.f20325M.measureText(this.f20359z, 0, this.f20359z.length());
        }
        return measureText;
    }

    /* renamed from: a */
    public void m2903a(float f) {
        if (this.f20344k != f) {
            this.f20344k = f;
            m2864h();
        }
    }

    /* renamed from: a */
    public void m2900a(int i) {
        if (this.f20342i != i) {
            this.f20342i = i;
            m2864h();
        }
    }

    /* renamed from: a */
    public void m2898a(int i, int i2, int i3, int i4) {
        if (!m2893a(this.f20339f, i, i2, i3, i4)) {
            this.f20339f.set(i, i2, i3, i4);
            this.f20323K = true;
            m2872d();
        }
    }

    /* renamed from: a */
    public void m2897a(TimeInterpolator timeInterpolator) {
        this.f20327O = timeInterpolator;
        m2864h();
    }

    /* renamed from: a */
    public void m2896a(ColorStateList colorStateList) {
        if (this.f20347n != colorStateList) {
            this.f20347n = colorStateList;
            m2864h();
        }
    }

    /* renamed from: a */
    public void m2895a(Canvas canvas) {
        float ascent;
        int save = canvas.save();
        if (this.f20313A != null && this.f20337d) {
            float f = this.f20352s;
            float f2 = this.f20353t;
            boolean z = this.f20315C && this.f20316D != null;
            if (z) {
                ascent = this.f20318F * this.f20320H;
                float f3 = this.f20319G;
                float f4 = this.f20320H;
            } else {
                ascent = this.f20324L.ascent() * this.f20320H;
                this.f20324L.descent();
                float f5 = this.f20320H;
            }
            float f6 = f2;
            if (z) {
                f6 = f2 + ascent;
            }
            if (this.f20320H != 1.0f) {
                canvas.scale(this.f20320H, this.f20320H, f, f6);
            }
            if (z) {
                canvas.drawBitmap(this.f20316D, f, f6, this.f20317E);
            } else {
                canvas.drawText(this.f20313A, 0, this.f20313A.length(), f, f6, this.f20324L);
            }
        }
        canvas.restoreToCount(save);
    }

    /* renamed from: a */
    public void m2894a(Rect rect) {
        m2898a(rect.left, rect.top, rect.right, rect.bottom);
    }

    /* renamed from: a */
    public void m2892a(RectF rectF) {
        boolean m2878b = m2878b(this.f20359z);
        rectF.left = !m2878b ? this.f20340g.left : this.f20340g.right - m2904a();
        rectF.top = this.f20340g.top;
        rectF.right = !m2878b ? rectF.left + m2904a() : this.f20340g.right;
        rectF.bottom = this.f20340g.top + m2877c();
    }

    /* renamed from: a */
    public void m2891a(Typeface typeface) {
        if (m2873c(typeface)) {
            m2864h();
        }
    }

    /* renamed from: a */
    public void m2889a(CharSequence charSequence) {
        if (charSequence == null || !TextUtils.equals(this.f20359z, charSequence)) {
            this.f20359z = charSequence;
            this.f20313A = null;
            m2858n();
            m2864h();
        }
    }

    /* renamed from: a */
    public final boolean m2888a(int[] iArr) {
        boolean z;
        this.f20322J = iArr;
        if (m2869e()) {
            m2864h();
            z = true;
        } else {
            z = false;
        }
        return z;
    }

    /* renamed from: b */
    public float m2887b() {
        m2890a(this.f20325M);
        return -this.f20325M.ascent();
    }

    /* renamed from: b */
    public void m2886b(float f) {
        float m20727a = C0486a.m20727a(f, 0.0f, 1.0f);
        if (m20727a != this.f20338e) {
            this.f20338e = m20727a;
            m2862j();
        }
    }

    /* renamed from: b */
    public void m2885b(int i) {
        if (this.f20343j != i) {
            this.f20343j = i;
            m2864h();
        }
    }

    /* renamed from: b */
    public void m2884b(int i, int i2, int i3, int i4) {
        if (!m2893a(this.f20340g, i, i2, i3, i4)) {
            this.f20340g.set(i, i2, i3, i4);
            this.f20323K = true;
            m2872d();
        }
    }

    /* renamed from: b */
    public void m2883b(TimeInterpolator timeInterpolator) {
        this.f20326N = timeInterpolator;
        m2864h();
    }

    /* renamed from: b */
    public void m2882b(ColorStateList colorStateList) {
        if (this.f20346m != colorStateList) {
            this.f20346m = colorStateList;
            m2864h();
        }
    }

    /* renamed from: b */
    public void m2881b(Rect rect) {
        m2884b(rect.left, rect.top, rect.right, rect.bottom);
    }

    /* renamed from: b */
    public void m2880b(Typeface typeface) {
        boolean m2873c = m2873c(typeface);
        boolean m2870d = m2870d(typeface);
        if (m2873c || m2870d) {
            m2864h();
        }
    }

    /* renamed from: c */
    public float m2877c() {
        m2879b(this.f20325M);
        return -this.f20325M.ascent();
    }

    /* renamed from: c */
    public void m2875c(int i) {
        C4719d c4719d = new C4719d(this.f20336c.getContext(), i);
        if (c4719d.f20414b != null) {
            this.f20347n = c4719d.f20414b;
        }
        if (c4719d.f20413a != 0.0f) {
            this.f20345l = c4719d.f20413a;
        }
        if (c4719d.f20421i != null) {
            this.f20331S = c4719d.f20421i;
        }
        this.f20329Q = c4719d.f20422j;
        this.f20330R = c4719d.f20423k;
        this.f20328P = c4719d.f20424l;
        if (this.f20358y != null) {
            this.f20358y.m2791a();
        }
        this.f20358y = new C4715a(new C4715a.AbstractC4716a() { // from class: com.google.android.material.internal.a.1
            @Override // com.google.android.material.p156n.C4715a.AbstractC4716a
            /* renamed from: a */
            public void mo2789a(Typeface typeface) {
                C4687a.this.m2891a(typeface);
            }
        }, c4719d.m2778a());
        c4719d.m2775a(this.f20336c.getContext(), this.f20358y);
        m2864h();
    }

    /* renamed from: d */
    void m2872d() {
        this.f20337d = this.f20340g.width() > 0 && this.f20340g.height() > 0 && this.f20339f.width() > 0 && this.f20339f.height() > 0;
    }

    /* renamed from: e */
    public final boolean m2869e() {
        return (this.f20347n != null && this.f20347n.isStateful()) || (this.f20346m != null && this.f20346m.isStateful());
    }

    /* renamed from: f */
    public float m2867f() {
        return this.f20338e;
    }

    /* renamed from: g */
    public int m2865g() {
        return m2874c(this.f20347n);
    }

    /* renamed from: h */
    public void m2864h() {
        if (this.f20336c.getHeight() <= 0 || this.f20336c.getWidth() <= 0) {
            return;
        }
        m2860l();
        m2862j();
    }

    /* renamed from: i */
    public ColorStateList m2863i() {
        return this.f20347n;
    }
}
