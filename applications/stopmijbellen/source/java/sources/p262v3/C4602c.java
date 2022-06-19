package p262v3;

import android.animation.TimeInterpolator;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.view.Gravity;
import android.view.View;
import java.util.Objects;
import java.util.WeakHashMap;
import me.zhanghai.android.materialprogressbar.C3681R;
import p090f3.C2727a;
import p141k0.C3313d;
import p163m0.C3589v;
import p163m0.C3611y;
import p262v3.C4628m;
import p304z3.C5068a;
/* renamed from: v3.c */
/* loaded from: classes-dex2jar.jar:v3/c.class */
public final class C4602c {

    /* renamed from: A */
    public Bitmap f14194A;

    /* renamed from: B */
    public float f14195B;

    /* renamed from: C */
    public float f14196C;

    /* renamed from: D */
    public int[] f14197D;

    /* renamed from: E */
    public boolean f14198E;

    /* renamed from: F */
    public final TextPaint f14199F;

    /* renamed from: G */
    public final TextPaint f14200G;

    /* renamed from: H */
    public TimeInterpolator f14201H;

    /* renamed from: I */
    public TimeInterpolator f14202I;

    /* renamed from: J */
    public float f14203J;

    /* renamed from: K */
    public float f14204K;

    /* renamed from: L */
    public float f14205L;

    /* renamed from: M */
    public ColorStateList f14206M;

    /* renamed from: N */
    public float f14207N;

    /* renamed from: O */
    public StaticLayout f14208O;

    /* renamed from: P */
    public float f14209P;

    /* renamed from: Q */
    public float f14210Q;

    /* renamed from: R */
    public float f14211R;

    /* renamed from: S */
    public CharSequence f14212S;

    /* renamed from: a */
    public final View f14214a;

    /* renamed from: b */
    public boolean f14215b;

    /* renamed from: c */
    public float f14216c;

    /* renamed from: l */
    public ColorStateList f14225l;

    /* renamed from: m */
    public ColorStateList f14226m;

    /* renamed from: n */
    public float f14227n;

    /* renamed from: o */
    public float f14228o;

    /* renamed from: p */
    public float f14229p;

    /* renamed from: q */
    public float f14230q;

    /* renamed from: r */
    public float f14231r;

    /* renamed from: s */
    public float f14232s;

    /* renamed from: t */
    public Typeface f14233t;

    /* renamed from: u */
    public Typeface f14234u;

    /* renamed from: v */
    public Typeface f14235v;

    /* renamed from: w */
    public C5068a f14236w;

    /* renamed from: x */
    public CharSequence f14237x;

    /* renamed from: y */
    public CharSequence f14238y;

    /* renamed from: z */
    public boolean f14239z;

    /* renamed from: h */
    public int f14221h = 16;

    /* renamed from: i */
    public int f14222i = 16;

    /* renamed from: j */
    public float f14223j = 15.0f;

    /* renamed from: k */
    public float f14224k = 15.0f;

    /* renamed from: T */
    public int f14213T = C4628m.f14301m;

    /* renamed from: f */
    public final Rect f14219f = new Rect();

    /* renamed from: e */
    public final Rect f14218e = new Rect();

    /* renamed from: g */
    public final RectF f14220g = new RectF();

    /* renamed from: d */
    public float f14217d = 0.5f;

    public C4602c(View view) {
        this.f14214a = view;
        TextPaint textPaint = new TextPaint(129);
        this.f14199F = textPaint;
        this.f14200G = new TextPaint(textPaint);
    }

    /* renamed from: a */
    public static int m736a(int i, int i2, float f) {
        float f2 = 1.0f - f;
        float alpha = Color.alpha(i);
        float alpha2 = Color.alpha(i2);
        float red = Color.red(i);
        float red2 = Color.red(i2);
        float green = Color.green(i);
        return Color.argb((int) ((alpha2 * f) + (alpha * f2)), (int) ((red2 * f) + (red * f2)), (int) ((Color.green(i2) * f) + (green * f2)), (int) ((Color.blue(i2) * f) + (Color.blue(i) * f2)));
    }

    /* renamed from: h */
    public static float m729h(float f, float f2, float f3, TimeInterpolator timeInterpolator) {
        float f4 = f3;
        if (timeInterpolator != null) {
            f4 = timeInterpolator.getInterpolation(f3);
        }
        return C2727a.m3196a(f, f2, f4);
    }

    /* renamed from: k */
    public static boolean m726k(Rect rect, int i, int i2, int i3, int i4) {
        return rect.left == i && rect.top == i2 && rect.right == i3 && rect.bottom == i4;
    }

    /* renamed from: b */
    public final boolean m735b(CharSequence charSequence) {
        View view = this.f14214a;
        WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
        boolean z = true;
        if (C3589v.C3594e.m2071d(view) != 1) {
            z = false;
        }
        return ((C3313d.AbstractC3316c) (z ? C3313d.f11236d : C3313d.f11235c)).m2388b(charSequence, 0, charSequence.length());
    }

    /* renamed from: c */
    public final void m734c(float f) {
        this.f14220g.left = m729h(this.f14218e.left, this.f14219f.left, f, this.f14201H);
        this.f14220g.top = m729h(this.f14227n, this.f14228o, f, this.f14201H);
        this.f14220g.right = m729h(this.f14218e.right, this.f14219f.right, f, this.f14201H);
        this.f14220g.bottom = m729h(this.f14218e.bottom, this.f14219f.bottom, f, this.f14201H);
        this.f14231r = m729h(this.f14229p, this.f14230q, f, this.f14201H);
        this.f14232s = m729h(this.f14227n, this.f14228o, f, this.f14201H);
        m722o(m729h(this.f14223j, this.f14224k, f, this.f14202I));
        TimeInterpolator timeInterpolator = C2727a.f9373b;
        this.f14210Q = 1.0f - m729h(0.0f, 1.0f, 1.0f - f, timeInterpolator);
        View view = this.f14214a;
        WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
        C3589v.C3593d.m2083k(view);
        this.f14211R = m729h(1.0f, 0.0f, f, timeInterpolator);
        C3589v.C3593d.m2083k(this.f14214a);
        ColorStateList colorStateList = this.f14226m;
        ColorStateList colorStateList2 = this.f14225l;
        if (colorStateList != colorStateList2) {
            this.f14199F.setColor(m736a(m730g(colorStateList2), m731f(), f));
        } else {
            this.f14199F.setColor(m731f());
        }
        float f2 = this.f14207N;
        if (f2 != 0.0f) {
            this.f14199F.setLetterSpacing(m729h(0.0f, f2, f, timeInterpolator));
        } else {
            this.f14199F.setLetterSpacing(f2);
        }
        this.f14199F.setShadowLayer(m729h(0.0f, this.f14203J, f, null), m729h(0.0f, this.f14204K, f, null), m729h(0.0f, this.f14205L, f, null), m736a(m730g(null), m730g(this.f14206M), f));
        C3589v.C3593d.m2083k(this.f14214a);
    }

    /* renamed from: d */
    public final void m733d(float f, boolean z) {
        float f2;
        boolean z2;
        float f3;
        StaticLayout staticLayout;
        if (this.f14237x == null) {
            return;
        }
        float width = this.f14219f.width();
        float width2 = this.f14218e.width();
        if (Math.abs(f - this.f14224k) < 0.001f) {
            f2 = this.f14224k;
            this.f14195B = 1.0f;
            Typeface typeface = this.f14235v;
            Typeface typeface2 = this.f14233t;
            if (typeface != typeface2) {
                this.f14235v = typeface2;
                z2 = true;
                f3 = width;
            } else {
                z2 = false;
                f3 = width;
            }
        } else {
            f2 = this.f14223j;
            Typeface typeface3 = this.f14235v;
            Typeface typeface4 = this.f14234u;
            if (typeface3 != typeface4) {
                this.f14235v = typeface4;
                z2 = true;
            } else {
                z2 = false;
            }
            if (Math.abs(f - f2) < 0.001f) {
                this.f14195B = 1.0f;
            } else {
                this.f14195B = f / this.f14223j;
            }
            float f4 = this.f14224k / this.f14223j;
            f3 = (!z && width2 * f4 > width) ? Math.min(width / f4, width2) : width2;
        }
        boolean z3 = z2;
        if (f3 > 0.0f) {
            boolean z4 = this.f14196C != f2 || this.f14198E || z2;
            this.f14196C = f2;
            this.f14198E = false;
            z3 = z4;
        }
        if (this.f14238y != null && !z3) {
            return;
        }
        this.f14199F.setTextSize(this.f14196C);
        this.f14199F.setTypeface(this.f14235v);
        this.f14199F.setLinearText(this.f14195B != 1.0f);
        boolean m735b = m735b(this.f14237x);
        this.f14239z = m735b;
        try {
            C4628m c4628m = new C4628m(this.f14237x, this.f14199F, (int) f3);
            c4628m.f14316l = TextUtils.TruncateAt.END;
            c4628m.f14315k = m735b;
            c4628m.f14309e = Layout.Alignment.ALIGN_NORMAL;
            c4628m.f14314j = false;
            c4628m.f14310f = 1;
            c4628m.f14311g = 0.0f;
            c4628m.f14312h = 1.0f;
            c4628m.f14313i = this.f14213T;
            staticLayout = c4628m.m693a();
        } catch (C4628m.C4629a e) {
            e.getCause().getMessage();
            staticLayout = null;
        }
        Objects.requireNonNull(staticLayout);
        this.f14208O = staticLayout;
        this.f14238y = staticLayout.getText();
    }

    /* renamed from: e */
    public float m732e() {
        TextPaint textPaint = this.f14200G;
        textPaint.setTextSize(this.f14224k);
        textPaint.setTypeface(this.f14233t);
        textPaint.setLetterSpacing(this.f14207N);
        return -this.f14200G.ascent();
    }

    /* renamed from: f */
    public int m731f() {
        return m730g(this.f14226m);
    }

    /* renamed from: g */
    public final int m730g(ColorStateList colorStateList) {
        if (colorStateList == null) {
            return 0;
        }
        int[] iArr = this.f14197D;
        return iArr != null ? colorStateList.getColorForState(iArr, 0) : colorStateList.getDefaultColor();
    }

    /* renamed from: i */
    public void m728i() {
        this.f14215b = this.f14219f.width() > 0 && this.f14219f.height() > 0 && this.f14218e.width() > 0 && this.f14218e.height() > 0;
    }

    /* renamed from: j */
    public void m727j() {
        StaticLayout staticLayout;
        StaticLayout staticLayout2;
        if (this.f14214a.getHeight() <= 0 || this.f14214a.getWidth() <= 0) {
            return;
        }
        float f = this.f14196C;
        m733d(this.f14224k, false);
        CharSequence charSequence = this.f14238y;
        if (charSequence != null && (staticLayout2 = this.f14208O) != null) {
            this.f14212S = TextUtils.ellipsize(charSequence, this.f14199F, staticLayout2.getWidth(), TextUtils.TruncateAt.END);
        }
        float f2 = 0.0f;
        if (this.f14212S != null) {
            TextPaint textPaint = new TextPaint(this.f14199F);
            textPaint.setLetterSpacing(this.f14207N);
            CharSequence charSequence2 = this.f14212S;
            this.f14209P = textPaint.measureText(charSequence2, 0, charSequence2.length());
        } else {
            this.f14209P = 0.0f;
        }
        int absoluteGravity = Gravity.getAbsoluteGravity(this.f14222i, this.f14239z ? 1 : 0);
        int i = absoluteGravity & C3681R.styleable.AppCompatTheme_toolbarNavigationButtonStyle;
        if (i == 48) {
            this.f14228o = this.f14219f.top;
        } else if (i != 80) {
            this.f14228o = this.f14219f.centerY() - ((this.f14199F.descent() - this.f14199F.ascent()) / 2.0f);
        } else {
            this.f14228o = this.f14199F.ascent() + this.f14219f.bottom;
        }
        int i2 = absoluteGravity & 8388615;
        if (i2 == 1) {
            this.f14230q = this.f14219f.centerX() - (this.f14209P / 2.0f);
        } else if (i2 != 5) {
            this.f14230q = this.f14219f.left;
        } else {
            this.f14230q = this.f14219f.right - this.f14209P;
        }
        m733d(this.f14223j, false);
        float height = this.f14208O != null ? staticLayout.getHeight() : 0.0f;
        StaticLayout staticLayout3 = this.f14208O;
        if (staticLayout3 != null) {
            staticLayout3.getLineCount();
        }
        CharSequence charSequence3 = this.f14238y;
        if (charSequence3 != null) {
            f2 = this.f14199F.measureText(charSequence3, 0, charSequence3.length());
        }
        StaticLayout staticLayout4 = this.f14208O;
        if (staticLayout4 != null) {
            staticLayout4.getLineLeft(0);
        }
        int absoluteGravity2 = Gravity.getAbsoluteGravity(this.f14221h, this.f14239z ? 1 : 0);
        int i3 = absoluteGravity2 & C3681R.styleable.AppCompatTheme_toolbarNavigationButtonStyle;
        if (i3 == 48) {
            this.f14227n = this.f14218e.top;
        } else if (i3 != 80) {
            this.f14227n = this.f14218e.centerY() - (height / 2.0f);
        } else {
            this.f14227n = this.f14199F.descent() + (this.f14218e.bottom - height);
        }
        int i4 = absoluteGravity2 & 8388615;
        if (i4 == 1) {
            this.f14229p = this.f14218e.centerX() - (f2 / 2.0f);
        } else if (i4 != 5) {
            this.f14229p = this.f14218e.left;
        } else {
            this.f14229p = this.f14218e.right - f2;
        }
        Bitmap bitmap = this.f14194A;
        if (bitmap != null) {
            bitmap.recycle();
            this.f14194A = null;
        }
        m722o(f);
        m734c(this.f14216c);
    }

    /* renamed from: l */
    public void m725l(ColorStateList colorStateList) {
        if (this.f14226m != colorStateList) {
            this.f14226m = colorStateList;
            m727j();
        }
    }

    /* renamed from: m */
    public void m724m(int i) {
        if (this.f14222i != i) {
            this.f14222i = i;
            m727j();
        }
    }

    /* renamed from: n */
    public void m723n(float f) {
        float f2;
        if (f < 0.0f) {
            f2 = 0.0f;
        } else {
            f2 = f;
            if (f > 1.0f) {
                f2 = 1.0f;
            }
        }
        if (f2 != this.f14216c) {
            this.f14216c = f2;
            m734c(f2);
        }
    }

    /* renamed from: o */
    public final void m722o(float f) {
        m733d(f, false);
        View view = this.f14214a;
        WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
        C3589v.C3593d.m2083k(view);
    }

    /* renamed from: p */
    public void m721p(Typeface typeface) {
        boolean z;
        C5068a c5068a = this.f14236w;
        boolean z2 = true;
        if (c5068a != null) {
            c5068a.f15379c = true;
        }
        if (this.f14233t != typeface) {
            this.f14233t = typeface;
            z = true;
        } else {
            z = false;
        }
        if (this.f14234u != typeface) {
            this.f14234u = typeface;
        } else {
            z2 = false;
        }
        if (z || z2) {
            m727j();
        }
    }
}
