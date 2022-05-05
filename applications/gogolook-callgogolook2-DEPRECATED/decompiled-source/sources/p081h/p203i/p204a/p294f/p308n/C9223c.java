package p081h.p203i.p204a.p294f.p308n;

import android.animation.TimeInterpolator;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
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
import androidx.annotation.ColorInt;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.appcompat.C0054R;
import androidx.appcompat.widget.TintTypedArray;
import androidx.core.math.MathUtils;
import androidx.core.text.TextDirectionHeuristicsCompat;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import p081h.p203i.p204a.p294f.p295a.C9167a;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: h.i.a.f.n.c */
/* loaded from: classes2-dex2jar.jar:h/i/a/f/n/c.class */
public final class C9223c {

    /* renamed from: T */
    public static final boolean f21090T;

    /* renamed from: U */
    public static final Paint f21091U;

    /* renamed from: A */
    public Paint f21092A;

    /* renamed from: B */
    public float f21093B;

    /* renamed from: C */
    public float f21094C;

    /* renamed from: D */
    public float f21095D;

    /* renamed from: E */
    public float f21096E;

    /* renamed from: F */
    public int[] f21097F;

    /* renamed from: G */
    public boolean f21098G;

    /* renamed from: J */
    public TimeInterpolator f21101J;

    /* renamed from: K */
    public TimeInterpolator f21102K;

    /* renamed from: L */
    public float f21103L;

    /* renamed from: M */
    public float f21104M;

    /* renamed from: N */
    public float f21105N;

    /* renamed from: O */
    public int f21106O;

    /* renamed from: P */
    public float f21107P;

    /* renamed from: Q */
    public float f21108Q;

    /* renamed from: R */
    public float f21109R;

    /* renamed from: S */
    public int f21110S;

    /* renamed from: a */
    public final View f21111a;

    /* renamed from: b */
    public boolean f21112b;

    /* renamed from: c */
    public float f21113c;

    /* renamed from: k */
    public ColorStateList f21121k;

    /* renamed from: l */
    public ColorStateList f21122l;

    /* renamed from: m */
    public float f21123m;

    /* renamed from: n */
    public float f21124n;

    /* renamed from: o */
    public float f21125o;

    /* renamed from: p */
    public float f21126p;

    /* renamed from: q */
    public float f21127q;

    /* renamed from: r */
    public float f21128r;

    /* renamed from: s */
    public Typeface f21129s;

    /* renamed from: t */
    public Typeface f21130t;

    /* renamed from: u */
    public Typeface f21131u;

    /* renamed from: v */
    public CharSequence f21132v;

    /* renamed from: w */
    public CharSequence f21133w;

    /* renamed from: x */
    public boolean f21134x;

    /* renamed from: y */
    public boolean f21135y;

    /* renamed from: z */
    public Bitmap f21136z;

    /* renamed from: g */
    public int f21117g = 16;

    /* renamed from: h */
    public int f21118h = 16;

    /* renamed from: i */
    public float f21119i = 15.0f;

    /* renamed from: j */
    public float f21120j = 15.0f;

    /* renamed from: H */
    public final TextPaint f21099H = new TextPaint(129);

    /* renamed from: I */
    public final TextPaint f21100I = new TextPaint(this.f21099H);

    /* renamed from: e */
    public final Rect f21115e = new Rect();

    /* renamed from: d */
    public final Rect f21114d = new Rect();

    /* renamed from: f */
    public final RectF f21116f = new RectF();

    static {
        f21090T = Build.VERSION.SDK_INT < 18;
        f21091U = null;
        Paint paint = f21091U;
        if (paint != null) {
            paint.setAntiAlias(true);
            f21091U.setColor(-65281);
        }
    }

    public C9223c(View view) {
        this.f21111a = view;
    }

    /* renamed from: a */
    public static float m15716a(float f, float f2, float f3, TimeInterpolator timeInterpolator) {
        float f4 = f3;
        if (timeInterpolator != null) {
            f4 = timeInterpolator.getInterpolation(f3);
        }
        return C9167a.m15974a(f, f2, f4);
    }

    /* renamed from: a */
    public static int m15714a(int i, int i2, float f) {
        float f2 = 1.0f - f;
        return Color.argb((int) ((Color.alpha(i) * f2) + (Color.alpha(i2) * f)), (int) ((Color.red(i) * f2) + (Color.red(i2) * f)), (int) ((Color.green(i) * f2) + (Color.green(i2) * f)), (int) ((Color.blue(i) * f2) + (Color.blue(i2) * f)));
    }

    /* renamed from: a */
    public static boolean m15717a(float f, float f2) {
        return Math.abs(f - f2) < 0.001f;
    }

    /* renamed from: a */
    public static boolean m15709a(Rect rect, int i, int i2, int i3, int i4) {
        return rect.left == i && rect.top == i2 && rect.right == i3 && rect.bottom == i4;
    }

    /* renamed from: a */
    public final Typeface m15715a(int i) {
        TypedArray obtainStyledAttributes = this.f21111a.getContext().obtainStyledAttributes(i, new int[]{16843692});
        try {
            String string = obtainStyledAttributes.getString(0);
            if (string != null) {
                return Typeface.create(string, 0);
            }
            obtainStyledAttributes.recycle();
            return null;
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    /* renamed from: a */
    public final void m15719a() {
        float f = this.f21096E;
        m15702b(this.f21120j);
        CharSequence charSequence = this.f21133w;
        float f2 = 0.0f;
        float measureText = charSequence != null ? this.f21099H.measureText(charSequence, 0, charSequence.length()) : 0.0f;
        int absoluteGravity = GravityCompat.getAbsoluteGravity(this.f21118h, this.f21134x ? 1 : 0);
        int i = absoluteGravity & 112;
        if (i == 48) {
            this.f21124n = this.f21115e.top - this.f21099H.ascent();
        } else if (i != 80) {
            this.f21124n = this.f21115e.centerY() + (((this.f21099H.descent() - this.f21099H.ascent()) / 2.0f) - this.f21099H.descent());
        } else {
            this.f21124n = this.f21115e.bottom;
        }
        int i2 = absoluteGravity & GravityCompat.RELATIVE_HORIZONTAL_GRAVITY_MASK;
        if (i2 == 1) {
            this.f21126p = this.f21115e.centerX() - (measureText / 2.0f);
        } else if (i2 != 5) {
            this.f21126p = this.f21115e.left;
        } else {
            this.f21126p = this.f21115e.right - measureText;
        }
        m15702b(this.f21119i);
        CharSequence charSequence2 = this.f21133w;
        if (charSequence2 != null) {
            f2 = this.f21099H.measureText(charSequence2, 0, charSequence2.length());
        }
        int absoluteGravity2 = GravityCompat.getAbsoluteGravity(this.f21117g, this.f21134x ? 1 : 0);
        int i3 = absoluteGravity2 & 112;
        if (i3 == 48) {
            this.f21123m = this.f21114d.top - this.f21099H.ascent();
        } else if (i3 != 80) {
            this.f21123m = this.f21114d.centerY() + (((this.f21099H.descent() - this.f21099H.ascent()) / 2.0f) - this.f21099H.descent());
        } else {
            this.f21123m = this.f21114d.bottom;
        }
        int i4 = absoluteGravity2 & GravityCompat.RELATIVE_HORIZONTAL_GRAVITY_MASK;
        if (i4 == 1) {
            this.f21125o = this.f21114d.centerX() - (f2 / 2.0f);
        } else if (i4 != 5) {
            this.f21125o = this.f21114d.left;
        } else {
            this.f21125o = this.f21114d.right - f2;
        }
        m15693d();
        m15686f(f);
    }

    /* renamed from: a */
    public final void m15718a(float f) {
        m15695c(f);
        this.f21127q = m15716a(this.f21125o, this.f21126p, f, this.f21101J);
        this.f21128r = m15716a(this.f21123m, this.f21124n, f, this.f21101J);
        m15686f(m15716a(this.f21119i, this.f21120j, f, this.f21102K));
        if (this.f21122l != this.f21121k) {
            this.f21099H.setColor(m15714a(m15683i(), m15684h(), f));
        } else {
            this.f21099H.setColor(m15684h());
        }
        this.f21099H.setShadowLayer(m15716a(this.f21107P, this.f21103L, f, (TimeInterpolator) null), m15716a(this.f21108Q, this.f21104M, f, (TimeInterpolator) null), m15716a(this.f21109R, this.f21105N, f, (TimeInterpolator) null), m15714a(this.f21110S, this.f21106O, f));
        ViewCompat.postInvalidateOnAnimation(this.f21111a);
    }

    /* renamed from: a */
    public void m15713a(int i, int i2, int i3, int i4) {
        if (!m15709a(this.f21115e, i, i2, i3, i4)) {
            this.f21115e.set(i, i2, i3, i4);
            this.f21098G = true;
            m15679m();
        }
    }

    /* renamed from: a */
    public void m15712a(TimeInterpolator timeInterpolator) {
        this.f21101J = timeInterpolator;
        m15678n();
    }

    /* renamed from: a */
    public void m15711a(ColorStateList colorStateList) {
        if (this.f21122l != colorStateList) {
            this.f21122l = colorStateList;
            m15678n();
        }
    }

    /* renamed from: a */
    public void m15710a(Canvas canvas) {
        float f;
        int save = canvas.save();
        if (this.f21133w != null && this.f21112b) {
            float f2 = this.f21127q;
            float f3 = this.f21128r;
            boolean z = this.f21135y && this.f21136z != null;
            if (z) {
                f = this.f21093B * this.f21095D;
            } else {
                f = this.f21099H.ascent() * this.f21095D;
                this.f21099H.descent();
            }
            float f4 = f3;
            if (z) {
                f4 = f3 + f;
            }
            float f5 = this.f21095D;
            if (f5 != 1.0f) {
                canvas.scale(f5, f5, f2, f4);
            }
            if (z) {
                canvas.drawBitmap(this.f21136z, f2, f4, this.f21092A);
            } else {
                CharSequence charSequence = this.f21133w;
                canvas.drawText(charSequence, 0, charSequence.length(), f2, f4, this.f21099H);
            }
        }
        canvas.restoreToCount(save);
    }

    /* renamed from: a */
    public void m15708a(RectF rectF) {
        boolean a = m15705a(this.f21132v);
        Rect rect = this.f21115e;
        rectF.left = !a ? rect.left : rect.right - m15703b();
        Rect rect2 = this.f21115e;
        rectF.top = rect2.top;
        rectF.right = !a ? rectF.left + m15703b() : rect2.right;
        rectF.bottom = this.f21115e.top + m15685g();
    }

    /* renamed from: a */
    public void m15707a(Typeface typeface) {
        this.f21130t = typeface;
        this.f21129s = typeface;
        m15678n();
    }

    /* renamed from: a */
    public final void m15706a(TextPaint textPaint) {
        textPaint.setTextSize(this.f21120j);
        textPaint.setTypeface(this.f21129s);
    }

    /* renamed from: a */
    public final boolean m15705a(CharSequence charSequence) {
        boolean z = true;
        if (ViewCompat.getLayoutDirection(this.f21111a) != 1) {
            z = false;
        }
        return (z ? TextDirectionHeuristicsCompat.FIRSTSTRONG_RTL : TextDirectionHeuristicsCompat.FIRSTSTRONG_LTR).isRtl(charSequence, 0, charSequence.length());
    }

    /* renamed from: a */
    public final boolean m15704a(int[] iArr) {
        this.f21097F = iArr;
        if (!m15680l()) {
            return false;
        }
        m15678n();
        return true;
    }

    /* renamed from: b */
    public float m15703b() {
        if (this.f21132v == null) {
            return 0.0f;
        }
        m15706a(this.f21100I);
        TextPaint textPaint = this.f21100I;
        CharSequence charSequence = this.f21132v;
        return textPaint.measureText(charSequence, 0, charSequence.length());
    }

    /* renamed from: b */
    public final void m15702b(float f) {
        boolean z;
        float f2;
        float f3;
        if (this.f21132v != null) {
            float width = this.f21115e.width();
            float width2 = this.f21114d.width();
            boolean z2 = true;
            if (m15717a(f, this.f21120j)) {
                f2 = this.f21120j;
                this.f21095D = 1.0f;
                Typeface typeface = this.f21131u;
                Typeface typeface2 = this.f21129s;
                if (typeface != typeface2) {
                    this.f21131u = typeface2;
                    z = true;
                } else {
                    z = false;
                }
                f3 = width;
            } else {
                f2 = this.f21119i;
                Typeface typeface3 = this.f21131u;
                Typeface typeface4 = this.f21130t;
                if (typeface3 != typeface4) {
                    this.f21131u = typeface4;
                    z = true;
                } else {
                    z = false;
                }
                if (m15717a(f, this.f21119i)) {
                    this.f21095D = 1.0f;
                } else {
                    this.f21095D = f / this.f21119i;
                }
                float f4 = this.f21120j / this.f21119i;
                f3 = width2 * f4 > width ? Math.min(width / f4, width2) : width2;
            }
            boolean z3 = z;
            if (f3 > 0.0f) {
                z3 = this.f21096E != f2 || this.f21098G || z;
                this.f21096E = f2;
                this.f21098G = false;
            }
            if (this.f21133w == null || z3) {
                this.f21099H.setTextSize(this.f21096E);
                this.f21099H.setTypeface(this.f21131u);
                TextPaint textPaint = this.f21099H;
                if (this.f21095D == 1.0f) {
                    z2 = false;
                }
                textPaint.setLinearText(z2);
                CharSequence ellipsize = TextUtils.ellipsize(this.f21132v, this.f21099H, f3, TextUtils.TruncateAt.END);
                if (!TextUtils.equals(ellipsize, this.f21133w)) {
                    this.f21133w = ellipsize;
                    this.f21134x = m15705a(this.f21133w);
                }
            }
        }
    }

    /* renamed from: b */
    public void m15701b(int i) {
        TintTypedArray obtainStyledAttributes = TintTypedArray.obtainStyledAttributes(this.f21111a.getContext(), i, C0054R.styleable.TextAppearance);
        if (obtainStyledAttributes.hasValue(C0054R.styleable.TextAppearance_android_textColor)) {
            this.f21122l = obtainStyledAttributes.getColorStateList(C0054R.styleable.TextAppearance_android_textColor);
        }
        if (obtainStyledAttributes.hasValue(C0054R.styleable.TextAppearance_android_textSize)) {
            this.f21120j = obtainStyledAttributes.getDimensionPixelSize(C0054R.styleable.TextAppearance_android_textSize, (int) this.f21120j);
        }
        this.f21106O = obtainStyledAttributes.getInt(C0054R.styleable.TextAppearance_android_shadowColor, 0);
        this.f21104M = obtainStyledAttributes.getFloat(C0054R.styleable.TextAppearance_android_shadowDx, 0.0f);
        this.f21105N = obtainStyledAttributes.getFloat(C0054R.styleable.TextAppearance_android_shadowDy, 0.0f);
        this.f21103L = obtainStyledAttributes.getFloat(C0054R.styleable.TextAppearance_android_shadowRadius, 0.0f);
        obtainStyledAttributes.recycle();
        if (Build.VERSION.SDK_INT >= 16) {
            this.f21129s = m15715a(i);
        }
        m15678n();
    }

    /* renamed from: b */
    public void m15700b(int i, int i2, int i3, int i4) {
        if (!m15709a(this.f21114d, i, i2, i3, i4)) {
            this.f21114d.set(i, i2, i3, i4);
            this.f21098G = true;
            m15679m();
        }
    }

    /* renamed from: b */
    public void m15699b(TimeInterpolator timeInterpolator) {
        this.f21102K = timeInterpolator;
        m15678n();
    }

    /* renamed from: b */
    public void m15698b(ColorStateList colorStateList) {
        if (this.f21121k != colorStateList) {
            this.f21121k = colorStateList;
            m15678n();
        }
    }

    /* renamed from: b */
    public void m15697b(CharSequence charSequence) {
        if (charSequence == null || !charSequence.equals(this.f21132v)) {
            this.f21132v = charSequence;
            this.f21133w = null;
            m15693d();
            m15678n();
        }
    }

    /* renamed from: c */
    public final void m15696c() {
        m15718a(this.f21113c);
    }

    /* renamed from: c */
    public final void m15695c(float f) {
        this.f21116f.left = m15716a(this.f21114d.left, this.f21115e.left, f, this.f21101J);
        this.f21116f.top = m15716a(this.f21123m, this.f21124n, f, this.f21101J);
        this.f21116f.right = m15716a(this.f21114d.right, this.f21115e.right, f, this.f21101J);
        this.f21116f.bottom = m15716a(this.f21114d.bottom, this.f21115e.bottom, f, this.f21101J);
    }

    /* renamed from: c */
    public void m15694c(int i) {
        if (this.f21118h != i) {
            this.f21118h = i;
            m15678n();
        }
    }

    /* renamed from: d */
    public final void m15693d() {
        Bitmap bitmap = this.f21136z;
        if (bitmap != null) {
            bitmap.recycle();
            this.f21136z = null;
        }
    }

    /* renamed from: d */
    public void m15692d(float f) {
        if (this.f21119i != f) {
            this.f21119i = f;
            m15678n();
        }
    }

    /* renamed from: d */
    public void m15691d(int i) {
        TintTypedArray obtainStyledAttributes = TintTypedArray.obtainStyledAttributes(this.f21111a.getContext(), i, C0054R.styleable.TextAppearance);
        if (obtainStyledAttributes.hasValue(C0054R.styleable.TextAppearance_android_textColor)) {
            this.f21121k = obtainStyledAttributes.getColorStateList(C0054R.styleable.TextAppearance_android_textColor);
        }
        if (obtainStyledAttributes.hasValue(C0054R.styleable.TextAppearance_android_textSize)) {
            this.f21119i = obtainStyledAttributes.getDimensionPixelSize(C0054R.styleable.TextAppearance_android_textSize, (int) this.f21119i);
        }
        this.f21110S = obtainStyledAttributes.getInt(C0054R.styleable.TextAppearance_android_shadowColor, 0);
        this.f21108Q = obtainStyledAttributes.getFloat(C0054R.styleable.TextAppearance_android_shadowDx, 0.0f);
        this.f21109R = obtainStyledAttributes.getFloat(C0054R.styleable.TextAppearance_android_shadowDy, 0.0f);
        this.f21107P = obtainStyledAttributes.getFloat(C0054R.styleable.TextAppearance_android_shadowRadius, 0.0f);
        obtainStyledAttributes.recycle();
        if (Build.VERSION.SDK_INT >= 16) {
            this.f21130t = m15715a(i);
        }
        m15678n();
    }

    /* renamed from: e */
    public final void m15690e() {
        if (this.f21136z == null && !this.f21114d.isEmpty() && !TextUtils.isEmpty(this.f21133w)) {
            m15718a(0.0f);
            this.f21093B = this.f21099H.ascent();
            this.f21094C = this.f21099H.descent();
            TextPaint textPaint = this.f21099H;
            CharSequence charSequence = this.f21133w;
            int round = Math.round(textPaint.measureText(charSequence, 0, charSequence.length()));
            int round2 = Math.round(this.f21094C - this.f21093B);
            if (round > 0 && round2 > 0) {
                this.f21136z = Bitmap.createBitmap(round, round2, Bitmap.Config.ARGB_8888);
                Canvas canvas = new Canvas(this.f21136z);
                CharSequence charSequence2 = this.f21133w;
                canvas.drawText(charSequence2, 0, charSequence2.length(), 0.0f, round2 - this.f21099H.descent(), this.f21099H);
                if (this.f21092A == null) {
                    this.f21092A = new Paint(3);
                }
            }
        }
    }

    /* renamed from: e */
    public void m15689e(float f) {
        float clamp = MathUtils.clamp(f, 0.0f, 1.0f);
        if (clamp != this.f21113c) {
            this.f21113c = clamp;
            m15696c();
        }
    }

    /* renamed from: e */
    public void m15688e(int i) {
        if (this.f21117g != i) {
            this.f21117g = i;
            m15678n();
        }
    }

    /* renamed from: f */
    public ColorStateList m15687f() {
        return this.f21122l;
    }

    /* renamed from: f */
    public final void m15686f(float f) {
        m15702b(f);
        this.f21135y = f21090T && this.f21095D != 1.0f;
        if (this.f21135y) {
            m15690e();
        }
        ViewCompat.postInvalidateOnAnimation(this.f21111a);
    }

    /* renamed from: g */
    public float m15685g() {
        m15706a(this.f21100I);
        return -this.f21100I.ascent();
    }

    @ColorInt
    @VisibleForTesting
    /* renamed from: h */
    public int m15684h() {
        int[] iArr = this.f21097F;
        return iArr != null ? this.f21122l.getColorForState(iArr, 0) : this.f21122l.getDefaultColor();
    }

    @ColorInt
    /* renamed from: i */
    public final int m15683i() {
        int[] iArr = this.f21097F;
        return iArr != null ? this.f21121k.getColorForState(iArr, 0) : this.f21121k.getDefaultColor();
    }

    /* renamed from: j */
    public float m15682j() {
        return this.f21113c;
    }

    /* renamed from: k */
    public CharSequence m15681k() {
        return this.f21132v;
    }

    /* renamed from: l */
    public final boolean m15680l() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2 = this.f21122l;
        return (colorStateList2 != null && colorStateList2.isStateful()) || ((colorStateList = this.f21121k) != null && colorStateList.isStateful());
    }

    /* renamed from: m */
    public void m15679m() {
        this.f21112b = this.f21115e.width() > 0 && this.f21115e.height() > 0 && this.f21114d.width() > 0 && this.f21114d.height() > 0;
    }

    /* renamed from: n */
    public void m15678n() {
        if (this.f21111a.getHeight() > 0 && this.f21111a.getWidth() > 0) {
            m15719a();
            m15696c();
        }
    }
}
