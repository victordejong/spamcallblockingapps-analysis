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
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import p020b.p041h.p045g.C1542a;
import p020b.p041h.p048j.C1582e;
import p020b.p041h.p049k.C1597h;
import p020b.p041h.p050l.C1614e;
import p020b.p041h.p050l.C1679w;
import p078c.p084c.p085a.p096b.p097m.C1897a;
import p078c.p084c.p085a.p096b.p105u.C1916a;
import p078c.p084c.p085a.p096b.p105u.C1920d;
/* renamed from: com.google.android.material.internal.a */
/* loaded from: classes2-dex2jar.jar:com/google/android/material/internal/a.class */
public final class C8173a {

    /* renamed from: a */
    private static final boolean f36919a;

    /* renamed from: b */
    private static final Paint f36920b;

    /* renamed from: A */
    private CharSequence f36921A;

    /* renamed from: B */
    private boolean f36922B;

    /* renamed from: C */
    private boolean f36923C;

    /* renamed from: D */
    private Bitmap f36924D;

    /* renamed from: E */
    private Paint f36925E;

    /* renamed from: F */
    private float f36926F;

    /* renamed from: G */
    private float f36927G;

    /* renamed from: H */
    private int[] f36928H;

    /* renamed from: I */
    private boolean f36929I;

    /* renamed from: J */
    private final TextPaint f36930J;

    /* renamed from: K */
    private final TextPaint f36931K;

    /* renamed from: L */
    private TimeInterpolator f36932L;

    /* renamed from: M */
    private TimeInterpolator f36933M;

    /* renamed from: N */
    private float f36934N;

    /* renamed from: O */
    private float f36935O;

    /* renamed from: P */
    private float f36936P;

    /* renamed from: Q */
    private ColorStateList f36937Q;

    /* renamed from: R */
    private float f36938R;

    /* renamed from: S */
    private float f36939S;

    /* renamed from: T */
    private float f36940T;

    /* renamed from: U */
    private ColorStateList f36941U;

    /* renamed from: V */
    private float f36942V;

    /* renamed from: W */
    private float f36943W;

    /* renamed from: X */
    private StaticLayout f36944X;

    /* renamed from: Y */
    private float f36945Y;

    /* renamed from: Z */
    private float f36946Z;

    /* renamed from: a0 */
    private float f36947a0;

    /* renamed from: b0 */
    private CharSequence f36948b0;

    /* renamed from: c */
    private final View f36949c;

    /* renamed from: d */
    private boolean f36951d;

    /* renamed from: e */
    private float f36952e;

    /* renamed from: m */
    private ColorStateList f36960m;

    /* renamed from: n */
    private ColorStateList f36961n;

    /* renamed from: o */
    private float f36962o;

    /* renamed from: p */
    private float f36963p;

    /* renamed from: q */
    private float f36964q;

    /* renamed from: r */
    private float f36965r;

    /* renamed from: s */
    private float f36966s;

    /* renamed from: t */
    private float f36967t;

    /* renamed from: u */
    private Typeface f36968u;

    /* renamed from: v */
    private Typeface f36969v;

    /* renamed from: w */
    private Typeface f36970w;

    /* renamed from: x */
    private C1916a f36971x;

    /* renamed from: y */
    private C1916a f36972y;

    /* renamed from: z */
    private CharSequence f36973z;

    /* renamed from: i */
    private int f36956i = 16;

    /* renamed from: j */
    private int f36957j = 16;

    /* renamed from: k */
    private float f36958k = 15.0f;

    /* renamed from: l */
    private float f36959l = 15.0f;

    /* renamed from: c0 */
    private int f36950c0 = 1;

    /* renamed from: g */
    private final Rect f36954g = new Rect();

    /* renamed from: f */
    private final Rect f36953f = new Rect();

    /* renamed from: h */
    private final RectF f36955h = new RectF();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.material.internal.a$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/internal/a$a.class */
    public class C8174a implements C1916a.AbstractC1917a {
        C8174a() {
            C8173a.this = r4;
        }

        @Override // p078c.p084c.p085a.p096b.p105u.C1916a.AbstractC1917a
        /* renamed from: a */
        public void mo4558a(Typeface typeface) {
            C8173a.this.m4604S(typeface);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.material.internal.a$b */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/internal/a$b.class */
    public class C8175b implements C1916a.AbstractC1917a {
        C8175b() {
            C8173a.this = r4;
        }

        @Override // p078c.p084c.p085a.p096b.p105u.C1916a.AbstractC1917a
        /* renamed from: a */
        public void mo4558a(Typeface typeface) {
            C8173a.this.m4593b0(typeface);
        }
    }

    static {
        f36919a = Build.VERSION.SDK_INT < 18;
        f36920b = null;
        if (0 != 0) {
            throw new NullPointerException();
        }
    }

    public C8173a(View view) {
        this.f36949c = view;
        TextPaint textPaint = new TextPaint(129);
        this.f36930J = textPaint;
        this.f36931K = new TextPaint(textPaint);
    }

    /* renamed from: C */
    private void m4620C(TextPaint textPaint) {
        textPaint.setTextSize(this.f36959l);
        textPaint.setTypeface(this.f36968u);
        if (Build.VERSION.SDK_INT >= 21) {
            textPaint.setLetterSpacing(this.f36942V);
        }
    }

    /* renamed from: D */
    private void m4619D(TextPaint textPaint) {
        textPaint.setTextSize(this.f36958k);
        textPaint.setTypeface(this.f36969v);
        if (Build.VERSION.SDK_INT >= 21) {
            textPaint.setLetterSpacing(this.f36943W);
        }
    }

    /* renamed from: E */
    private void m4618E(float f) {
        this.f36955h.left = m4614I(this.f36953f.left, this.f36954g.left, f, this.f36932L);
        this.f36955h.top = m4614I(this.f36962o, this.f36963p, f, this.f36932L);
        this.f36955h.right = m4614I(this.f36953f.right, this.f36954g.right, f, this.f36932L);
        this.f36955h.bottom = m4614I(this.f36953f.bottom, this.f36954g.bottom, f, this.f36932L);
    }

    /* renamed from: F */
    private static boolean m4617F(float f, float f2) {
        return Math.abs(f - f2) < 0.001f;
    }

    /* renamed from: G */
    private boolean m4616G() {
        boolean z = true;
        if (C1679w.m29346C(this.f36949c) != 1) {
            z = false;
        }
        return z;
    }

    /* renamed from: I */
    private static float m4614I(float f, float f2, float f3, TimeInterpolator timeInterpolator) {
        float f4 = f3;
        if (timeInterpolator != null) {
            f4 = timeInterpolator.getInterpolation(f3);
        }
        return C1897a.m28752a(f, f2, f4);
    }

    /* renamed from: L */
    private static boolean m4611L(Rect rect, int i, int i2, int i3, int i4) {
        return rect.left == i && rect.top == i2 && rect.right == i3 && rect.bottom == i4;
    }

    /* renamed from: P */
    private void m4607P(float f) {
        this.f36945Y = f;
        C1679w.m29293h0(this.f36949c);
    }

    /* renamed from: T */
    private boolean m4603T(Typeface typeface) {
        C1916a c1916a = this.f36972y;
        if (c1916a != null) {
            c1916a.m28692c();
        }
        if (this.f36968u != typeface) {
            this.f36968u = typeface;
            return true;
        }
        return false;
    }

    /* renamed from: X */
    private void m4599X(float f) {
        this.f36946Z = f;
        C1679w.m29293h0(this.f36949c);
    }

    /* renamed from: a */
    private static int m4596a(int i, int i2, float f) {
        float f2 = 1.0f - f;
        return Color.argb((int) ((Color.alpha(i) * f2) + (Color.alpha(i2) * f)), (int) ((Color.red(i) * f2) + (Color.red(i2) * f)), (int) ((Color.green(i) * f2) + (Color.green(i2) * f)), (int) ((Color.blue(i) * f2) + (Color.blue(i2) * f)));
    }

    /* renamed from: b */
    private void m4594b() {
        StaticLayout staticLayout;
        StaticLayout staticLayout2;
        float f = this.f36927G;
        m4584g(this.f36959l);
        CharSequence charSequence = this.f36921A;
        if (charSequence != null && (staticLayout2 = this.f36944X) != null) {
            this.f36948b0 = TextUtils.ellipsize(charSequence, this.f36930J, staticLayout2.getWidth(), TextUtils.TruncateAt.END);
        }
        CharSequence charSequence2 = this.f36948b0;
        float measureText = charSequence2 != null ? this.f36930J.measureText(charSequence2, 0, charSequence2.length()) : 0.0f;
        int m29600b = C1614e.m29600b(this.f36957j, this.f36922B ? 1 : 0);
        int i = m29600b & 112;
        if (i == 48) {
            this.f36963p = this.f36954g.top;
        } else if (i != 80) {
            this.f36963p = this.f36954g.centerY() - ((this.f36930J.descent() - this.f36930J.ascent()) / 2.0f);
        } else {
            this.f36963p = this.f36954g.bottom + this.f36930J.ascent();
        }
        int i2 = m29600b & 8388615;
        if (i2 == 1) {
            this.f36965r = this.f36954g.centerX() - (measureText / 2.0f);
        } else if (i2 != 5) {
            this.f36965r = this.f36954g.left;
        } else {
            this.f36965r = this.f36954g.right - measureText;
        }
        m4584g(this.f36958k);
        float height = this.f36944X != null ? staticLayout.getHeight() : 0.0f;
        CharSequence charSequence3 = this.f36921A;
        float measureText2 = charSequence3 != null ? this.f36930J.measureText(charSequence3, 0, charSequence3.length()) : 0.0f;
        StaticLayout staticLayout3 = this.f36944X;
        float f2 = measureText2;
        if (staticLayout3 != null) {
            f2 = measureText2;
            if (this.f36950c0 > 1) {
                f2 = measureText2;
                if (!this.f36922B) {
                    f2 = staticLayout3.getWidth();
                }
            }
        }
        StaticLayout staticLayout4 = this.f36944X;
        float f3 = 0.0f;
        if (staticLayout4 != null) {
            f3 = staticLayout4.getLineLeft(0);
        }
        this.f36947a0 = f3;
        int m29600b2 = C1614e.m29600b(this.f36956i, this.f36922B ? 1 : 0);
        int i3 = m29600b2 & 112;
        if (i3 == 48) {
            this.f36962o = this.f36953f.top;
        } else if (i3 != 80) {
            this.f36962o = this.f36953f.centerY() - (height / 2.0f);
        } else {
            this.f36962o = (this.f36953f.bottom - height) + this.f36930J.descent();
        }
        int i4 = m29600b2 & 8388615;
        if (i4 == 1) {
            this.f36964q = this.f36953f.centerX() - (f2 / 2.0f);
        } else if (i4 != 5) {
            this.f36964q = this.f36953f.left;
        } else {
            this.f36964q = this.f36953f.right - f2;
        }
        m4582h();
        m4587e0(f);
    }

    /* renamed from: c0 */
    private boolean m4591c0(Typeface typeface) {
        C1916a c1916a = this.f36971x;
        if (c1916a != null) {
            c1916a.m28692c();
        }
        if (this.f36969v != typeface) {
            this.f36969v = typeface;
            return true;
        }
        return false;
    }

    /* renamed from: d */
    private void m4590d() {
        m4586f(this.f36952e);
    }

    /* renamed from: e */
    private boolean m4588e(CharSequence charSequence) {
        return (m4616G() ? C1582e.f6177d : C1582e.f6176c).mo29675a(charSequence, 0, charSequence.length());
    }

    /* renamed from: e0 */
    private void m4587e0(float f) {
        m4584g(f);
        boolean z = f36919a && this.f36926F != 1.0f;
        this.f36923C = z;
        if (z) {
            m4574l();
        }
        C1679w.m29293h0(this.f36949c);
    }

    /* renamed from: f */
    private void m4586f(float f) {
        m4618E(f);
        this.f36966s = m4614I(this.f36964q, this.f36965r, f, this.f36932L);
        this.f36967t = m4614I(this.f36962o, this.f36963p, f, this.f36932L);
        m4587e0(m4614I(this.f36958k, this.f36959l, f, this.f36933M));
        TimeInterpolator timeInterpolator = C1897a.f6814b;
        m4607P(1.0f - m4614I(0.0f, 1.0f, 1.0f - f, timeInterpolator));
        m4599X(m4614I(1.0f, 0.0f, f, timeInterpolator));
        if (this.f36961n != this.f36960m) {
            this.f36930J.setColor(m4596a(m4563v(), m4565t(), f));
        } else {
            this.f36930J.setColor(m4565t());
        }
        if (Build.VERSION.SDK_INT >= 21) {
            float f2 = this.f36942V;
            float f3 = this.f36943W;
            if (f2 != f3) {
                this.f36930J.setLetterSpacing(m4614I(f3, f2, f, timeInterpolator));
            } else {
                this.f36930J.setLetterSpacing(f2);
            }
        }
        this.f36930J.setShadowLayer(m4614I(this.f36938R, this.f36934N, f, null), m4614I(this.f36939S, this.f36935O, f, null), m4614I(this.f36940T, this.f36936P, f, null), m4596a(m4564u(this.f36941U), m4564u(this.f36937Q), f));
        C1679w.m29293h0(this.f36949c);
    }

    /* renamed from: g */
    private void m4584g(float f) {
        boolean z;
        float f2;
        float f3;
        if (this.f36973z == null) {
            return;
        }
        float width = this.f36954g.width();
        float width2 = this.f36953f.width();
        boolean z2 = false;
        if (m4617F(f, this.f36959l)) {
            f2 = this.f36959l;
            this.f36926F = 1.0f;
            Typeface typeface = this.f36970w;
            Typeface typeface2 = this.f36968u;
            if (typeface != typeface2) {
                this.f36970w = typeface2;
                z = true;
                f3 = width;
            } else {
                z = false;
                f3 = width;
            }
        } else {
            f2 = this.f36958k;
            Typeface typeface3 = this.f36970w;
            Typeface typeface4 = this.f36969v;
            if (typeface3 != typeface4) {
                this.f36970w = typeface4;
                z = true;
            } else {
                z = false;
            }
            if (m4617F(f, f2)) {
                this.f36926F = 1.0f;
            } else {
                this.f36926F = f / this.f36958k;
            }
            float f4 = this.f36959l / this.f36958k;
            f3 = width2 * f4 > width ? Math.min(width / f4, width2) : width2;
        }
        boolean z3 = z;
        if (f3 > 0.0f) {
            boolean z4 = this.f36927G != f2 || this.f36929I || z;
            this.f36927G = f2;
            this.f36929I = false;
            z3 = z4;
        }
        if (this.f36921A != null && !z3) {
            return;
        }
        this.f36930J.setTextSize(this.f36927G);
        this.f36930J.setTypeface(this.f36970w);
        TextPaint textPaint = this.f36930J;
        if (this.f36926F != 1.0f) {
            z2 = true;
        }
        textPaint.setLinearText(z2);
        this.f36922B = m4588e(this.f36973z);
        int i = 1;
        if (m4573l0()) {
            i = this.f36950c0;
        }
        StaticLayout m4580i = m4580i(i, f3, this.f36922B);
        this.f36944X = m4580i;
        this.f36921A = m4580i.getText();
    }

    /* renamed from: h */
    private void m4582h() {
        Bitmap bitmap = this.f36924D;
        if (bitmap != null) {
            bitmap.recycle();
            this.f36924D = null;
        }
    }

    /* renamed from: i */
    private StaticLayout m4580i(int i, float f, boolean z) {
        StaticLayout staticLayout;
        try {
            staticLayout = StaticLayoutBuilderCompat.m4629c(this.f36973z, this.f36930J, (int) f).m4627e(TextUtils.TruncateAt.END).m4625g(z).m4628d(Layout.Alignment.ALIGN_NORMAL).m4626f(false).m4624h(i).m4631a();
        } catch (StaticLayoutBuilderCompat.StaticLayoutBuilderCompatException e) {
            Log.e("CollapsingTextHelper", e.getCause().getMessage(), e);
            staticLayout = null;
        }
        return (StaticLayout) C1597h.m29659e(staticLayout);
    }

    /* renamed from: k */
    private void m4576k(Canvas canvas, float f, float f2) {
        int alpha = this.f36930J.getAlpha();
        canvas.translate(f, f2);
        float f3 = alpha;
        this.f36930J.setAlpha((int) (this.f36946Z * f3));
        this.f36944X.draw(canvas);
        this.f36930J.setAlpha((int) (this.f36945Y * f3));
        int lineBaseline = this.f36944X.getLineBaseline(0);
        CharSequence charSequence = this.f36948b0;
        int length = charSequence.length();
        float f4 = lineBaseline;
        canvas.drawText(charSequence, 0, length, 0.0f, f4, this.f36930J);
        String trim = this.f36948b0.toString().trim();
        String str = trim;
        if (trim.endsWith("…")) {
            str = trim.substring(0, trim.length() - 1);
        }
        this.f36930J.setAlpha(alpha);
        canvas.drawText(str, 0, Math.min(this.f36944X.getLineEnd(0), str.length()), 0.0f, f4, (Paint) this.f36930J);
    }

    /* renamed from: l */
    private void m4574l() {
        if (this.f36924D != null || this.f36953f.isEmpty() || TextUtils.isEmpty(this.f36921A)) {
            return;
        }
        m4586f(0.0f);
        int width = this.f36944X.getWidth();
        int height = this.f36944X.getHeight();
        if (width <= 0 || height <= 0) {
            return;
        }
        this.f36924D = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
        this.f36944X.draw(new Canvas(this.f36924D));
        if (this.f36925E != null) {
            return;
        }
        this.f36925E = new Paint(3);
    }

    /* renamed from: l0 */
    private boolean m4573l0() {
        boolean z = true;
        if (this.f36950c0 <= 1 || this.f36922B || this.f36923C) {
            z = false;
        }
        return z;
    }

    /* renamed from: q */
    private float m4568q(int i, int i2) {
        if (i2 == 17 || (i2 & 7) == 1) {
            return (i / 2.0f) - (m4592c() / 2.0f);
        }
        if ((i2 & 8388613) == 8388613 || (i2 & 5) == 5) {
            return this.f36922B ? this.f36954g.left : this.f36954g.right - m4592c();
        }
        return this.f36922B ? this.f36954g.right - m4592c() : this.f36954g.left;
    }

    /* renamed from: r */
    private float m4567r(RectF rectF, int i, int i2) {
        if (i2 == 17 || (i2 & 7) == 1) {
            return (i / 2.0f) + (m4592c() / 2.0f);
        }
        if ((i2 & 8388613) == 8388613 || (i2 & 5) == 5) {
            return this.f36922B ? rectF.left + m4592c() : this.f36954g.right;
        }
        return this.f36922B ? this.f36954g.right : rectF.left + m4592c();
    }

    /* renamed from: u */
    private int m4564u(ColorStateList colorStateList) {
        if (colorStateList == null) {
            return 0;
        }
        int[] iArr = this.f36928H;
        return iArr != null ? colorStateList.getColorForState(iArr, 0) : colorStateList.getDefaultColor();
    }

    /* renamed from: v */
    private int m4563v() {
        return m4564u(this.f36960m);
    }

    /* renamed from: A */
    public int m4622A() {
        return this.f36950c0;
    }

    /* renamed from: B */
    public CharSequence m4621B() {
        return this.f36973z;
    }

    /* renamed from: H */
    public final boolean m4615H() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2 = this.f36961n;
        return (colorStateList2 != null && colorStateList2.isStateful()) || ((colorStateList = this.f36960m) != null && colorStateList.isStateful());
    }

    /* renamed from: J */
    void m4613J() {
        this.f36951d = this.f36954g.width() > 0 && this.f36954g.height() > 0 && this.f36953f.width() > 0 && this.f36953f.height() > 0;
    }

    /* renamed from: K */
    public void m4612K() {
        if (this.f36949c.getHeight() <= 0 || this.f36949c.getWidth() <= 0) {
            return;
        }
        m4594b();
        m4590d();
    }

    /* renamed from: M */
    public void m4610M(int i, int i2, int i3, int i4) {
        if (!m4611L(this.f36954g, i, i2, i3, i4)) {
            this.f36954g.set(i, i2, i3, i4);
            this.f36929I = true;
            m4613J();
        }
    }

    /* renamed from: N */
    public void m4609N(Rect rect) {
        m4610M(rect.left, rect.top, rect.right, rect.bottom);
    }

    /* renamed from: O */
    public void m4608O(int i) {
        C1920d c1920d = new C1920d(this.f36949c.getContext(), i);
        ColorStateList colorStateList = c1920d.f6850a;
        if (colorStateList != null) {
            this.f36961n = colorStateList;
        }
        float f = c1920d.f6863n;
        if (f != 0.0f) {
            this.f36959l = f;
        }
        ColorStateList colorStateList2 = c1920d.f6853d;
        if (colorStateList2 != null) {
            this.f36937Q = colorStateList2;
        }
        this.f36935O = c1920d.f6858i;
        this.f36936P = c1920d.f6859j;
        this.f36934N = c1920d.f6860k;
        this.f36942V = c1920d.f6862m;
        C1916a c1916a = this.f36972y;
        if (c1916a != null) {
            c1916a.m28692c();
        }
        this.f36972y = new C1916a(new C8174a(), c1920d.m28674e());
        c1920d.m28671h(this.f36949c.getContext(), this.f36972y);
        m4612K();
    }

    /* renamed from: Q */
    public void m4606Q(ColorStateList colorStateList) {
        if (this.f36961n != colorStateList) {
            this.f36961n = colorStateList;
            m4612K();
        }
    }

    /* renamed from: R */
    public void m4605R(int i) {
        if (this.f36957j != i) {
            this.f36957j = i;
            m4612K();
        }
    }

    /* renamed from: S */
    public void m4604S(Typeface typeface) {
        if (m4603T(typeface)) {
            m4612K();
        }
    }

    /* renamed from: U */
    public void m4602U(int i, int i2, int i3, int i4) {
        if (!m4611L(this.f36953f, i, i2, i3, i4)) {
            this.f36953f.set(i, i2, i3, i4);
            this.f36929I = true;
            m4613J();
        }
    }

    /* renamed from: V */
    public void m4601V(Rect rect) {
        m4602U(rect.left, rect.top, rect.right, rect.bottom);
    }

    /* renamed from: W */
    public void m4600W(int i) {
        C1920d c1920d = new C1920d(this.f36949c.getContext(), i);
        ColorStateList colorStateList = c1920d.f6850a;
        if (colorStateList != null) {
            this.f36960m = colorStateList;
        }
        float f = c1920d.f6863n;
        if (f != 0.0f) {
            this.f36958k = f;
        }
        ColorStateList colorStateList2 = c1920d.f6853d;
        if (colorStateList2 != null) {
            this.f36941U = colorStateList2;
        }
        this.f36939S = c1920d.f6858i;
        this.f36940T = c1920d.f6859j;
        this.f36938R = c1920d.f6860k;
        this.f36943W = c1920d.f6862m;
        C1916a c1916a = this.f36971x;
        if (c1916a != null) {
            c1916a.m28692c();
        }
        this.f36971x = new C1916a(new C8175b(), c1920d.m28674e());
        c1920d.m28671h(this.f36949c.getContext(), this.f36971x);
        m4612K();
    }

    /* renamed from: Y */
    public void m4598Y(ColorStateList colorStateList) {
        if (this.f36960m != colorStateList) {
            this.f36960m = colorStateList;
            m4612K();
        }
    }

    /* renamed from: Z */
    public void m4597Z(int i) {
        if (this.f36956i != i) {
            this.f36956i = i;
            m4612K();
        }
    }

    /* renamed from: a0 */
    public void m4595a0(float f) {
        if (this.f36958k != f) {
            this.f36958k = f;
            m4612K();
        }
    }

    /* renamed from: b0 */
    public void m4593b0(Typeface typeface) {
        if (m4591c0(typeface)) {
            m4612K();
        }
    }

    /* renamed from: c */
    public float m4592c() {
        if (this.f36973z == null) {
            return 0.0f;
        }
        m4620C(this.f36931K);
        TextPaint textPaint = this.f36931K;
        CharSequence charSequence = this.f36973z;
        return textPaint.measureText(charSequence, 0, charSequence.length());
    }

    /* renamed from: d0 */
    public void m4589d0(float f) {
        float m29770a = C1542a.m29770a(f, 0.0f, 1.0f);
        if (m29770a != this.f36952e) {
            this.f36952e = m29770a;
            m4590d();
        }
    }

    /* renamed from: f0 */
    public void m4585f0(int i) {
        if (i != this.f36950c0) {
            this.f36950c0 = i;
            m4582h();
            m4612K();
        }
    }

    /* renamed from: g0 */
    public void m4583g0(TimeInterpolator timeInterpolator) {
        this.f36932L = timeInterpolator;
        m4612K();
    }

    /* renamed from: h0 */
    public final boolean m4581h0(int[] iArr) {
        this.f36928H = iArr;
        if (m4615H()) {
            m4612K();
            return true;
        }
        return false;
    }

    /* renamed from: i0 */
    public void m4579i0(CharSequence charSequence) {
        if (charSequence == null || !TextUtils.equals(this.f36973z, charSequence)) {
            this.f36973z = charSequence;
            this.f36921A = null;
            m4582h();
            m4612K();
        }
    }

    /* renamed from: j */
    public void m4578j(Canvas canvas) {
        int save = canvas.save();
        if (this.f36921A == null || !this.f36951d) {
            return;
        }
        float f = this.f36966s;
        float lineLeft = this.f36944X.getLineLeft(0);
        float f2 = this.f36947a0;
        this.f36930J.setTextSize(this.f36927G);
        float f3 = this.f36966s;
        float f4 = this.f36967t;
        boolean z = false;
        if (this.f36923C) {
            z = false;
            if (this.f36924D != null) {
                z = true;
            }
        }
        float f5 = this.f36926F;
        if (f5 != 1.0f) {
            canvas.scale(f5, f5, f3, f4);
        }
        if (z) {
            canvas.drawBitmap(this.f36924D, f3, f4, this.f36925E);
            canvas.restoreToCount(save);
            return;
        }
        if (m4573l0()) {
            m4576k(canvas, (f + lineLeft) - (f2 * 2.0f), f4);
        } else {
            canvas.translate(f3, f4);
            this.f36944X.draw(canvas);
        }
        canvas.restoreToCount(save);
    }

    /* renamed from: j0 */
    public void m4577j0(TimeInterpolator timeInterpolator) {
        this.f36933M = timeInterpolator;
        m4612K();
    }

    /* renamed from: k0 */
    public void m4575k0(Typeface typeface) {
        boolean m4603T = m4603T(typeface);
        boolean m4591c0 = m4591c0(typeface);
        if (m4603T || m4591c0) {
            m4612K();
        }
    }

    /* renamed from: m */
    public void m4572m(RectF rectF, int i, int i2) {
        this.f36922B = m4588e(this.f36973z);
        rectF.left = m4568q(i, i2);
        rectF.top = this.f36954g.top;
        rectF.right = m4567r(rectF, i, i2);
        rectF.bottom = this.f36954g.top + m4569p();
    }

    /* renamed from: n */
    public ColorStateList m4571n() {
        return this.f36961n;
    }

    /* renamed from: o */
    public int m4570o() {
        return this.f36957j;
    }

    /* renamed from: p */
    public float m4569p() {
        m4620C(this.f36931K);
        return -this.f36931K.ascent();
    }

    /* renamed from: s */
    public Typeface m4566s() {
        Typeface typeface = this.f36968u;
        if (typeface == null) {
            typeface = Typeface.DEFAULT;
        }
        return typeface;
    }

    /* renamed from: t */
    public int m4565t() {
        return m4564u(this.f36961n);
    }

    /* renamed from: w */
    public int m4562w() {
        return this.f36956i;
    }

    /* renamed from: x */
    public float m4561x() {
        m4619D(this.f36931K);
        return -this.f36931K.ascent();
    }

    /* renamed from: y */
    public Typeface m4560y() {
        Typeface typeface = this.f36969v;
        if (typeface == null) {
            typeface = Typeface.DEFAULT;
        }
        return typeface;
    }

    /* renamed from: z */
    public float m4559z() {
        return this.f36952e;
    }
}
