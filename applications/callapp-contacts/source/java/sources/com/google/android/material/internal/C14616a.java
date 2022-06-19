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
import androidx.core.p032b.C0770a;
import androidx.core.p035d.C0819e;
import androidx.core.p036e.C0833d;
import androidx.core.view.C0908e;
import androidx.core.view.C0926v;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.material.internal.C14639h;
import com.google.android.material.p364a.C14389a;
import com.google.android.material.p371h.C14595a;
import com.google.android.material.p371h.C14599d;
/* renamed from: com.google.android.material.internal.a */
/* loaded from: classes4-dex2jar.jar:com/google/android/material/internal/a.class */
public final class C14616a {

    /* renamed from: i */
    private static final boolean f53315i;

    /* renamed from: j */
    private static final Paint f53316j;

    /* renamed from: A */
    private Typeface f53317A;

    /* renamed from: B */
    private C14595a f53318B;

    /* renamed from: C */
    private C14595a f53319C;

    /* renamed from: D */
    private CharSequence f53320D;

    /* renamed from: E */
    private boolean f53321E;

    /* renamed from: F */
    private boolean f53322F;

    /* renamed from: G */
    private Bitmap f53323G;

    /* renamed from: H */
    private Paint f53324H;

    /* renamed from: I */
    private float f53325I;

    /* renamed from: J */
    private float f53326J;

    /* renamed from: K */
    private int[] f53327K;

    /* renamed from: L */
    private boolean f53328L;

    /* renamed from: M */
    private final TextPaint f53329M;

    /* renamed from: N */
    private TimeInterpolator f53330N;

    /* renamed from: O */
    private float f53331O;

    /* renamed from: P */
    private float f53332P;

    /* renamed from: Q */
    private float f53333Q;

    /* renamed from: R */
    private ColorStateList f53334R;

    /* renamed from: S */
    private float f53335S;

    /* renamed from: T */
    private float f53336T;

    /* renamed from: U */
    private float f53337U;

    /* renamed from: V */
    private ColorStateList f53338V;

    /* renamed from: W */
    private float f53339W;

    /* renamed from: X */
    private StaticLayout f53340X;

    /* renamed from: Y */
    private float f53341Y;

    /* renamed from: Z */
    private float f53342Z;

    /* renamed from: a */
    public float f53343a;

    /* renamed from: aa */
    private float f53344aa;

    /* renamed from: ab */
    private CharSequence f53345ab;

    /* renamed from: c */
    public ColorStateList f53348c;

    /* renamed from: d */
    public Typeface f53349d;

    /* renamed from: e */
    public CharSequence f53350e;

    /* renamed from: f */
    public final TextPaint f53351f;

    /* renamed from: g */
    public TimeInterpolator f53352g;

    /* renamed from: h */
    public float f53353h;

    /* renamed from: k */
    private final View f53354k;

    /* renamed from: l */
    private boolean f53355l;

    /* renamed from: s */
    private ColorStateList f53362s;

    /* renamed from: t */
    private float f53363t;

    /* renamed from: u */
    private float f53364u;

    /* renamed from: v */
    private float f53365v;

    /* renamed from: w */
    private float f53366w;

    /* renamed from: x */
    private float f53367x;

    /* renamed from: y */
    private float f53368y;

    /* renamed from: z */
    private Typeface f53369z;

    /* renamed from: p */
    private int f53359p = 16;

    /* renamed from: q */
    private int f53360q = 16;

    /* renamed from: b */
    public float f53347b = 15.0f;

    /* renamed from: r */
    private float f53361r = 15.0f;

    /* renamed from: ac */
    private int f53346ac = 1;

    /* renamed from: n */
    private final Rect f53357n = new Rect();

    /* renamed from: m */
    private final Rect f53356m = new Rect();

    /* renamed from: o */
    private final RectF f53358o = new RectF();

    static {
        f53315i = Build.VERSION.SDK_INT < 18;
        f53316j = null;
    }

    public C14616a(View view) {
        this.f53354k = view;
        TextPaint textPaint = new TextPaint(129);
        this.f53329M = textPaint;
        this.f53351f = new TextPaint(textPaint);
    }

    /* renamed from: a */
    private static float m10605a(float f, float f2, float f3, TimeInterpolator timeInterpolator) {
        float f4 = f3;
        if (timeInterpolator != null) {
            f4 = timeInterpolator.getInterpolation(f3);
        }
        return C14389a.m11339a(f, f2, f4);
    }

    /* renamed from: a */
    private static int m10602a(int i, int i2, float f) {
        float f2 = 1.0f - f;
        return Color.argb((int) ((Color.alpha(i) * f2) + (Color.alpha(i2) * f)), (int) ((Color.red(i) * f2) + (Color.red(i2) * f)), (int) ((Color.green(i) * f2) + (Color.green(i2) * f)), (int) ((Color.blue(i) * f2) + (Color.blue(i2) * f)));
    }

    /* renamed from: a */
    private StaticLayout m10603a(int i, float f, boolean z) {
        StaticLayout staticLayout;
        try {
            C14639h m10521a = C14639h.m10521a(this.f53350e, this.f53329M, (int) f);
            m10521a.f53420e = TextUtils.TruncateAt.END;
            m10521a.f53419d = z;
            m10521a.f53416a = Layout.Alignment.ALIGN_NORMAL;
            m10521a.f53418c = false;
            m10521a.f53417b = i;
            staticLayout = m10521a.m10522a();
        } catch (C14639h.C14640a e) {
            Log.e("CollapsingTextHelper", e.getCause().getMessage(), e);
            staticLayout = null;
        }
        return (StaticLayout) C0833d.m44410a(staticLayout);
    }

    /* renamed from: a */
    private void m10597a(Canvas canvas, float f, float f2) {
        int alpha = this.f53329M.getAlpha();
        canvas.translate(f, f2);
        float f3 = alpha;
        this.f53329M.setAlpha((int) (this.f53342Z * f3));
        this.f53340X.draw(canvas);
        this.f53329M.setAlpha((int) (this.f53341Y * f3));
        int lineBaseline = this.f53340X.getLineBaseline(0);
        CharSequence charSequence = this.f53345ab;
        int length = charSequence.length();
        float f4 = lineBaseline;
        canvas.drawText(charSequence, 0, length, BitmapDescriptorFactory.HUE_RED, f4, this.f53329M);
        String trim = this.f53345ab.toString().trim();
        String str = trim;
        if (trim.endsWith("…")) {
            str = trim.substring(0, trim.length() - 1);
        }
        this.f53329M.setAlpha(alpha);
        canvas.drawText(str, 0, Math.min(this.f53340X.getLineEnd(0), str.length()), BitmapDescriptorFactory.HUE_RED, f4, (Paint) this.f53329M);
    }

    /* renamed from: a */
    private void m10593a(TextPaint textPaint) {
        textPaint.setTextSize(this.f53361r);
        textPaint.setTypeface(this.f53369z);
        if (Build.VERSION.SDK_INT >= 21) {
            textPaint.setLetterSpacing(this.f53339W);
        }
    }

    /* renamed from: a */
    private static boolean m10606a(float f, float f2) {
        return Math.abs(f - f2) < 0.001f;
    }

    /* renamed from: a */
    private static boolean m10596a(Rect rect, int i, int i2, int i3, int i4) {
        return rect.left == i && rect.top == i2 && rect.right == i3 && rect.bottom == i4;
    }

    /* renamed from: b */
    private boolean m10584b(CharSequence charSequence) {
        return (m10562k() ? C0819e.f3546d : C0819e.f3545c).mo44417a(charSequence, charSequence.length());
    }

    /* renamed from: c */
    private float m10583c() {
        if (this.f53350e == null) {
            return BitmapDescriptorFactory.HUE_RED;
        }
        m10593a(this.f53351f);
        TextPaint textPaint = this.f53351f;
        CharSequence charSequence = this.f53350e;
        return textPaint.measureText(charSequence, 0, charSequence.length());
    }

    /* renamed from: c */
    private int m10580c(ColorStateList colorStateList) {
        if (colorStateList == null) {
            return 0;
        }
        int[] iArr = this.f53327K;
        return iArr != null ? colorStateList.getColorForState(iArr, 0) : colorStateList.getDefaultColor();
    }

    /* renamed from: c */
    private void m10582c(float f) {
        m10577d(f);
        this.f53367x = m10605a(this.f53365v, this.f53366w, f, this.f53352g);
        this.f53368y = m10605a(this.f53363t, this.f53364u, f, this.f53352g);
        m10567g(m10605a(this.f53347b, this.f53361r, f, this.f53330N));
        m10573e(1.0f - m10605a((float) BitmapDescriptorFactory.HUE_RED, 1.0f, 1.0f - f, C14389a.f52369b));
        m10569f(m10605a(1.0f, (float) BitmapDescriptorFactory.HUE_RED, f, C14389a.f52369b));
        if (this.f53348c != this.f53362s) {
            this.f53329M.setColor(m10602a(m10568g(), m10566h(), f));
        } else {
            this.f53329M.setColor(m10566h());
        }
        if (Build.VERSION.SDK_INT >= 21) {
            float f2 = this.f53339W;
            float f3 = this.f53353h;
            if (f2 != f3) {
                this.f53329M.setLetterSpacing(m10605a(f3, f2, f, C14389a.f52369b));
            } else {
                this.f53329M.setLetterSpacing(f2);
            }
        }
        this.f53329M.setShadowLayer(m10605a(this.f53335S, this.f53331O, f, (TimeInterpolator) null), m10605a(this.f53336T, this.f53332P, f, (TimeInterpolator) null), m10605a(this.f53337U, this.f53333Q, f, (TimeInterpolator) null), m10602a(m10580c(this.f53338V), m10580c(this.f53334R), f));
        C0926v.m44101d(this.f53354k);
    }

    /* renamed from: d */
    private void m10578d() {
        this.f53355l = this.f53357n.width() > 0 && this.f53357n.height() > 0 && this.f53356m.width() > 0 && this.f53356m.height() > 0;
    }

    /* renamed from: d */
    private void m10577d(float f) {
        this.f53358o.left = m10605a(this.f53356m.left, this.f53357n.left, f, this.f53352g);
        this.f53358o.top = m10605a(this.f53363t, this.f53364u, f, this.f53352g);
        this.f53358o.right = m10605a(this.f53356m.right, this.f53357n.right, f, this.f53352g);
        this.f53358o.bottom = m10605a(this.f53356m.bottom, this.f53357n.bottom, f, this.f53352g);
    }

    /* renamed from: d */
    private boolean m10575d(Typeface typeface) {
        C14595a c14595a = this.f53319C;
        if (c14595a != null) {
            c14595a.f53218a = true;
        }
        if (this.f53369z != typeface) {
            this.f53369z = typeface;
            return true;
        }
        return false;
    }

    /* renamed from: e */
    private void m10573e(float f) {
        this.f53341Y = f;
        C0926v.m44101d(this.f53354k);
    }

    /* renamed from: e */
    private boolean m10574e() {
        ColorStateList colorStateList = this.f53348c;
        if (colorStateList == null || !colorStateList.isStateful()) {
            ColorStateList colorStateList2 = this.f53362s;
            return colorStateList2 != null && colorStateList2.isStateful();
        }
        return true;
    }

    /* renamed from: e */
    private boolean m10571e(Typeface typeface) {
        C14595a c14595a = this.f53318B;
        if (c14595a != null) {
            c14595a.f53218a = true;
        }
        if (this.f53349d != typeface) {
            this.f53349d = typeface;
            return true;
        }
        return false;
    }

    /* renamed from: f */
    private void m10570f() {
        m10582c(this.f53343a);
    }

    /* renamed from: f */
    private void m10569f(float f) {
        this.f53342Z = f;
        C0926v.m44101d(this.f53354k);
    }

    /* renamed from: g */
    private int m10568g() {
        return m10580c(this.f53362s);
    }

    /* renamed from: g */
    private void m10567g(float f) {
        m10565h(f);
        boolean z = f53315i && this.f53325I != 1.0f;
        this.f53322F = z;
        if (z) {
            m10561l();
        }
        C0926v.m44101d(this.f53354k);
    }

    /* renamed from: h */
    private int m10566h() {
        return m10580c(this.f53348c);
    }

    /* renamed from: h */
    private void m10565h(float f) {
        boolean z;
        float f2;
        float f3;
        if (this.f53350e == null) {
            return;
        }
        float width = this.f53357n.width();
        float width2 = this.f53356m.width();
        boolean z2 = false;
        if (m10606a(f, this.f53361r)) {
            f2 = this.f53361r;
            this.f53325I = 1.0f;
            Typeface typeface = this.f53317A;
            Typeface typeface2 = this.f53369z;
            if (typeface != typeface2) {
                this.f53317A = typeface2;
                z = true;
                f3 = width;
            } else {
                z = false;
                f3 = width;
            }
        } else {
            f2 = this.f53347b;
            Typeface typeface3 = this.f53317A;
            Typeface typeface4 = this.f53349d;
            if (typeface3 != typeface4) {
                this.f53317A = typeface4;
                z = true;
            } else {
                z = false;
            }
            if (m10606a(f, f2)) {
                this.f53325I = 1.0f;
            } else {
                this.f53325I = f / this.f53347b;
            }
            float f4 = this.f53361r / this.f53347b;
            f3 = width2 * f4 > width ? Math.min(width / f4, width2) : width2;
        }
        boolean z3 = z;
        if (f3 > BitmapDescriptorFactory.HUE_RED) {
            boolean z4 = this.f53326J != f2 || this.f53328L || z;
            this.f53326J = f2;
            this.f53328L = false;
            z3 = z4;
        }
        if (this.f53320D != null && !z3) {
            return;
        }
        this.f53329M.setTextSize(this.f53326J);
        this.f53329M.setTypeface(this.f53317A);
        TextPaint textPaint = this.f53329M;
        if (this.f53325I != 1.0f) {
            z2 = true;
        }
        textPaint.setLinearText(z2);
        this.f53321E = m10584b(this.f53350e);
        int i = 1;
        if (m10563j()) {
            i = this.f53346ac;
        }
        StaticLayout m10603a = m10603a(i, f3, this.f53321E);
        this.f53340X = m10603a;
        this.f53320D = m10603a.getText();
    }

    /* renamed from: i */
    private void m10564i() {
        StaticLayout staticLayout;
        StaticLayout staticLayout2;
        float f = this.f53326J;
        m10565h(this.f53361r);
        CharSequence charSequence = this.f53320D;
        if (charSequence != null && (staticLayout2 = this.f53340X) != null) {
            this.f53345ab = TextUtils.ellipsize(charSequence, this.f53329M, staticLayout2.getWidth(), TextUtils.TruncateAt.END);
        }
        CharSequence charSequence2 = this.f53345ab;
        float measureText = charSequence2 != null ? this.f53329M.measureText(charSequence2, 0, charSequence2.length()) : 0.0f;
        int m44195a = C0908e.m44195a(this.f53360q, this.f53321E ? 1 : 0);
        int i = m44195a & 112;
        if (i == 48) {
            this.f53364u = this.f53357n.top;
        } else if (i != 80) {
            this.f53364u = this.f53357n.centerY() - ((this.f53329M.descent() - this.f53329M.ascent()) / 2.0f);
        } else {
            this.f53364u = this.f53357n.bottom + this.f53329M.ascent();
        }
        int i2 = m44195a & 8388615;
        if (i2 == 1) {
            this.f53366w = this.f53357n.centerX() - (measureText / 2.0f);
        } else if (i2 != 5) {
            this.f53366w = this.f53357n.left;
        } else {
            this.f53366w = this.f53357n.right - measureText;
        }
        m10565h(this.f53347b);
        float height = this.f53340X != null ? staticLayout.getHeight() : 0.0f;
        CharSequence charSequence3 = this.f53320D;
        float measureText2 = charSequence3 != null ? this.f53329M.measureText(charSequence3, 0, charSequence3.length()) : 0.0f;
        StaticLayout staticLayout3 = this.f53340X;
        float f2 = measureText2;
        if (staticLayout3 != null) {
            f2 = measureText2;
            if (this.f53346ac > 1) {
                f2 = measureText2;
                if (!this.f53321E) {
                    f2 = staticLayout3.getWidth();
                }
            }
        }
        StaticLayout staticLayout4 = this.f53340X;
        float f3 = 0.0f;
        if (staticLayout4 != null) {
            f3 = staticLayout4.getLineLeft(0);
        }
        this.f53344aa = f3;
        int m44195a2 = C0908e.m44195a(this.f53359p, this.f53321E ? 1 : 0);
        int i3 = m44195a2 & 112;
        if (i3 == 48) {
            this.f53363t = this.f53356m.top;
        } else if (i3 != 80) {
            this.f53363t = this.f53356m.centerY() - (height / 2.0f);
        } else {
            this.f53363t = (this.f53356m.bottom - height) + this.f53329M.descent();
        }
        int i4 = m44195a2 & 8388615;
        if (i4 == 1) {
            this.f53365v = this.f53356m.centerX() - (f2 / 2.0f);
        } else if (i4 != 5) {
            this.f53365v = this.f53356m.left;
        } else {
            this.f53365v = this.f53356m.right - f2;
        }
        m10560m();
        m10567g(f);
    }

    /* renamed from: j */
    private boolean m10563j() {
        return this.f53346ac > 1 && !this.f53321E && !this.f53322F;
    }

    /* renamed from: k */
    private boolean m10562k() {
        return C0926v.m44097f(this.f53354k) == 1;
    }

    /* renamed from: l */
    private void m10561l() {
        if (this.f53323G != null || this.f53356m.isEmpty() || TextUtils.isEmpty(this.f53320D)) {
            return;
        }
        m10582c(BitmapDescriptorFactory.HUE_RED);
        int width = this.f53340X.getWidth();
        int height = this.f53340X.getHeight();
        if (width <= 0 || height <= 0) {
            return;
        }
        this.f53323G = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
        this.f53340X.draw(new Canvas(this.f53323G));
        if (this.f53324H != null) {
            return;
        }
        this.f53324H = new Paint(3);
    }

    /* renamed from: m */
    private void m10560m() {
        Bitmap bitmap = this.f53323G;
        if (bitmap != null) {
            bitmap.recycle();
            this.f53323G = null;
        }
    }

    /* renamed from: a */
    public final float m10608a() {
        m10593a(this.f53351f);
        return -this.f53351f.ascent();
    }

    /* renamed from: a */
    public final void m10607a(float f) {
        if (this.f53347b != f) {
            this.f53347b = f;
            m10590b();
        }
    }

    /* renamed from: a */
    public final void m10604a(int i) {
        if (this.f53359p != i) {
            this.f53359p = i;
            m10590b();
        }
    }

    /* renamed from: a */
    public final void m10601a(int i, int i2, int i3, int i4) {
        if (!m10596a(this.f53356m, i, i2, i3, i4)) {
            this.f53356m.set(i, i2, i3, i4);
            this.f53328L = true;
            m10578d();
        }
    }

    /* renamed from: a */
    public final void m10600a(TimeInterpolator timeInterpolator) {
        this.f53330N = timeInterpolator;
        m10590b();
    }

    /* renamed from: a */
    public final void m10599a(ColorStateList colorStateList) {
        if (this.f53348c != colorStateList) {
            this.f53348c = colorStateList;
            m10590b();
        }
    }

    /* renamed from: a */
    public final void m10598a(Canvas canvas) {
        int save = canvas.save();
        if (this.f53320D == null || !this.f53355l) {
            return;
        }
        float f = this.f53367x;
        float lineLeft = this.f53340X.getLineLeft(0);
        float f2 = this.f53344aa;
        this.f53329M.setTextSize(this.f53326J);
        float f3 = this.f53367x;
        float f4 = this.f53368y;
        boolean z = false;
        if (this.f53322F) {
            z = false;
            if (this.f53323G != null) {
                z = true;
            }
        }
        float f5 = this.f53325I;
        if (f5 != 1.0f) {
            canvas.scale(f5, f5, f3, f4);
        }
        if (z) {
            canvas.drawBitmap(this.f53323G, f3, f4, this.f53324H);
            canvas.restoreToCount(save);
            return;
        }
        if (m10563j()) {
            m10597a(canvas, (f + lineLeft) - (f2 * 2.0f), f4);
        } else {
            canvas.translate(f3, f4);
            this.f53340X.draw(canvas);
        }
        canvas.restoreToCount(save);
    }

    /* renamed from: a */
    public final void m10595a(RectF rectF, int i, int i2) {
        float f;
        float f2;
        float f3;
        float f4;
        int i3;
        float f5;
        float f6;
        boolean m10584b = m10584b(this.f53350e);
        this.f53321E = m10584b;
        if (i2 != 17 && (i2 & 7) != 1) {
            if ((i2 & 8388613) == 8388613 || (i2 & 5) == 5) {
                if (!m10584b) {
                    f6 = this.f53357n.right;
                    f5 = m10583c();
                }
                f = this.f53357n.left;
            } else {
                if (m10584b) {
                    f6 = this.f53357n.right;
                    f5 = m10583c();
                }
                f = this.f53357n.left;
            }
            rectF.left = f;
            rectF.top = this.f53357n.top;
            if (i2 == 17 && (i2 & 7) != 1) {
                if ((i2 & 8388613) == 8388613 || (i2 & 5) == 5) {
                    if (!this.f53321E) {
                        i3 = this.f53357n.right;
                        f2 = i3;
                    }
                    f4 = rectF.left;
                    f3 = m10583c();
                } else {
                    if (this.f53321E) {
                        i3 = this.f53357n.right;
                        f2 = i3;
                    }
                    f4 = rectF.left;
                    f3 = m10583c();
                }
                rectF.right = f2;
                rectF.bottom = this.f53357n.top + m10608a();
            }
            f4 = i / 2.0f;
            f3 = m10583c() / 2.0f;
            f2 = f4 + f3;
            rectF.right = f2;
            rectF.bottom = this.f53357n.top + m10608a();
        }
        f6 = i / 2.0f;
        f5 = m10583c() / 2.0f;
        f = f6 - f5;
        rectF.left = f;
        rectF.top = this.f53357n.top;
        if (i2 == 17) {
        }
        f4 = i / 2.0f;
        f3 = m10583c() / 2.0f;
        f2 = f4 + f3;
        rectF.right = f2;
        rectF.bottom = this.f53357n.top + m10608a();
    }

    /* renamed from: a */
    public final void m10594a(Typeface typeface) {
        if (m10575d(typeface)) {
            m10590b();
        }
    }

    /* renamed from: a */
    public final void m10592a(CharSequence charSequence) {
        if (charSequence == null || !TextUtils.equals(this.f53350e, charSequence)) {
            this.f53350e = charSequence;
            this.f53320D = null;
            m10560m();
            m10590b();
        }
    }

    /* renamed from: a */
    public final boolean m10591a(int[] iArr) {
        this.f53327K = iArr;
        if (m10574e()) {
            m10590b();
            return true;
        }
        return false;
    }

    /* renamed from: b */
    public final void m10590b() {
        if (this.f53354k.getHeight() <= 0 || this.f53354k.getWidth() <= 0) {
            return;
        }
        m10564i();
        m10570f();
    }

    /* renamed from: b */
    public final void m10589b(float f) {
        float m44522a = C0770a.m44522a(f, (float) BitmapDescriptorFactory.HUE_RED, 1.0f);
        if (m44522a != this.f53343a) {
            this.f53343a = m44522a;
            m10570f();
        }
    }

    /* renamed from: b */
    public final void m10588b(int i) {
        if (this.f53360q != i) {
            this.f53360q = i;
            m10590b();
        }
    }

    /* renamed from: b */
    public final void m10587b(int i, int i2, int i3, int i4) {
        if (!m10596a(this.f53357n, i, i2, i3, i4)) {
            this.f53357n.set(i, i2, i3, i4);
            this.f53328L = true;
            m10578d();
        }
    }

    /* renamed from: b */
    public final void m10586b(ColorStateList colorStateList) {
        if (this.f53362s != colorStateList) {
            this.f53362s = colorStateList;
            m10590b();
        }
    }

    /* renamed from: b */
    public final void m10585b(Typeface typeface) {
        if (m10571e(typeface)) {
            m10590b();
        }
    }

    /* renamed from: c */
    public final void m10581c(int i) {
        C14599d c14599d = new C14599d(this.f53354k.getContext(), i);
        if (c14599d.f53221a != null) {
            this.f53348c = c14599d.f53221a;
        }
        if (c14599d.f53234n != BitmapDescriptorFactory.HUE_RED) {
            this.f53361r = c14599d.f53234n;
        }
        if (c14599d.f53224d != null) {
            this.f53334R = c14599d.f53224d;
        }
        this.f53332P = c14599d.f53229i;
        this.f53333Q = c14599d.f53230j;
        this.f53331O = c14599d.f53231k;
        this.f53339W = c14599d.f53233m;
        C14595a c14595a = this.f53319C;
        if (c14595a != null) {
            c14595a.f53218a = true;
        }
        this.f53319C = new C14595a(new C14595a.AbstractC14596a() { // from class: com.google.android.material.internal.a.1
            @Override // com.google.android.material.p371h.C14595a.AbstractC14596a
            /* renamed from: a */
            public final void mo10559a(Typeface typeface) {
                C14616a.this.m10594a(typeface);
            }
        }, c14599d.m10647a());
        c14599d.m10644a(this.f53354k.getContext(), this.f53319C);
        m10590b();
    }

    /* renamed from: c */
    public final void m10579c(Typeface typeface) {
        boolean m10575d = m10575d(typeface);
        boolean m10571e = m10571e(typeface);
        if (m10575d || m10571e) {
            m10590b();
        }
    }

    /* renamed from: d */
    public final void m10576d(int i) {
        C14599d c14599d = new C14599d(this.f53354k.getContext(), i);
        if (c14599d.f53221a != null) {
            this.f53362s = c14599d.f53221a;
        }
        if (c14599d.f53234n != BitmapDescriptorFactory.HUE_RED) {
            this.f53347b = c14599d.f53234n;
        }
        if (c14599d.f53224d != null) {
            this.f53338V = c14599d.f53224d;
        }
        this.f53336T = c14599d.f53229i;
        this.f53337U = c14599d.f53230j;
        this.f53335S = c14599d.f53231k;
        this.f53353h = c14599d.f53233m;
        C14595a c14595a = this.f53318B;
        if (c14595a != null) {
            c14595a.f53218a = true;
        }
        this.f53318B = new C14595a(new C14595a.AbstractC14596a() { // from class: com.google.android.material.internal.a.2
            @Override // com.google.android.material.p371h.C14595a.AbstractC14596a
            /* renamed from: a */
            public final void mo10559a(Typeface typeface) {
                C14616a.this.m10585b(typeface);
            }
        }, c14599d.m10647a());
        c14599d.m10644a(this.f53354k.getContext(), this.f53318B);
        m10590b();
    }

    /* renamed from: e */
    public final void m10572e(int i) {
        if (i != this.f53346ac) {
            this.f53346ac = i;
            m10560m();
            m10590b();
        }
    }
}
