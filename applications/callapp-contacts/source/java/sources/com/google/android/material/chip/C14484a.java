package com.google.android.material.chip;

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
import android.os.Build;
import android.text.TextUtils;
import android.util.AttributeSet;
import androidx.core.graphics.C0834a;
import androidx.core.graphics.drawable.AbstractC0841b;
import androidx.core.graphics.drawable.C0840a;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.material.C14376a;
import com.google.android.material.internal.C14641i;
import com.google.android.material.internal.C14647l;
import com.google.android.material.internal.C14654r;
import com.google.android.material.p364a.C14396h;
import com.google.android.material.p367d.C14496a;
import com.google.android.material.p371h.C14598c;
import com.google.android.material.p371h.C14599d;
import com.google.android.material.p372i.C14607b;
import com.google.android.material.p374k.C14670h;
import java.lang.ref.WeakReference;
import java.util.Arrays;
/* renamed from: com.google.android.material.chip.a */
/* loaded from: classes4-dex2jar.jar:com/google/android/material/chip/a.class */
public final class C14484a extends C14670h implements Drawable.Callback, AbstractC0841b, C14641i.AbstractC14643a {

    /* renamed from: v */
    private static final int[] f52845v = {16842910};

    /* renamed from: w */
    private static final ShapeDrawable f52846w = new ShapeDrawable(new OvalShape());

    /* renamed from: A */
    private ColorStateList f52847A;

    /* renamed from: B */
    private float f52848B;

    /* renamed from: C */
    private boolean f52849C;

    /* renamed from: D */
    private Drawable f52850D;

    /* renamed from: E */
    private ColorStateList f52851E;

    /* renamed from: F */
    private float f52852F;

    /* renamed from: G */
    private boolean f52853G;

    /* renamed from: H */
    private Drawable f52854H;

    /* renamed from: I */
    private ColorStateList f52855I;

    /* renamed from: J */
    private float f52856J;

    /* renamed from: K */
    private boolean f52857K;

    /* renamed from: L */
    private Drawable f52858L;

    /* renamed from: M */
    private ColorStateList f52859M;

    /* renamed from: N */
    private float f52860N;

    /* renamed from: O */
    private float f52861O;

    /* renamed from: P */
    private float f52862P;

    /* renamed from: Q */
    private float f52863Q;

    /* renamed from: X */
    private int f52870X;

    /* renamed from: Y */
    private int f52871Y;

    /* renamed from: Z */
    private int f52872Z;

    /* renamed from: a */
    float f52873a;

    /* renamed from: aa */
    private int f52874aa;

    /* renamed from: ab */
    private int f52875ab;

    /* renamed from: ac */
    private int f52876ac;

    /* renamed from: ad */
    private boolean f52877ad;

    /* renamed from: ae */
    private int f52878ae;

    /* renamed from: ag */
    private ColorFilter f52880ag;

    /* renamed from: ah */
    private PorterDuffColorFilter f52881ah;

    /* renamed from: ai */
    private ColorStateList f52882ai;

    /* renamed from: ak */
    private int[] f52884ak;

    /* renamed from: al */
    private ColorStateList f52885al;

    /* renamed from: an */
    private boolean f52887an;

    /* renamed from: b */
    ColorStateList f52888b;

    /* renamed from: d */
    boolean f52890d;

    /* renamed from: e */
    Drawable f52891e;

    /* renamed from: f */
    CharSequence f52892f;

    /* renamed from: g */
    boolean f52893g;

    /* renamed from: h */
    C14396h f52894h;

    /* renamed from: i */
    C14396h f52895i;

    /* renamed from: j */
    float f52896j;

    /* renamed from: k */
    float f52897k;

    /* renamed from: l */
    float f52898l;

    /* renamed from: m */
    float f52899m;

    /* renamed from: n */
    final Context f52900n;

    /* renamed from: o */
    final C14641i f52901o;

    /* renamed from: p */
    boolean f52902p;

    /* renamed from: q */
    TextUtils.TruncateAt f52903q;

    /* renamed from: s */
    int f52905s;

    /* renamed from: x */
    private ColorStateList f52906x;

    /* renamed from: y */
    private ColorStateList f52907y;

    /* renamed from: z */
    private float f52908z = -1.0f;

    /* renamed from: R */
    private final Paint f52864R = new Paint(1);

    /* renamed from: T */
    private final Paint.FontMetrics f52866T = new Paint.FontMetrics();

    /* renamed from: U */
    private final RectF f52867U = new RectF();

    /* renamed from: V */
    private final PointF f52868V = new PointF();

    /* renamed from: W */
    private final Path f52869W = new Path();

    /* renamed from: af */
    private int f52879af = 255;

    /* renamed from: aj */
    private PorterDuff.Mode f52883aj = PorterDuff.Mode.SRC_IN;

    /* renamed from: am */
    private WeakReference<AbstractC14485a> f52886am = new WeakReference<>(null);

    /* renamed from: c */
    CharSequence f52889c = "";

    /* renamed from: S */
    private final Paint f52865S = null;

    /* renamed from: r */
    boolean f52904r = true;

    /* renamed from: com.google.android.material.chip.a$a */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/chip/a$a.class */
    public interface AbstractC14485a {
        /* renamed from: a */
        void mo10889a();
    }

    private C14484a(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        m10479a(context);
        this.f52900n = context;
        C14641i c14641i = new C14641i(this);
        this.f52901o = c14641i;
        c14641i.f53426a.density = context.getResources().getDisplayMetrics().density;
        int[] iArr = f52845v;
        setState(iArr);
        m10934a(iArr);
        if (C14607b.f53247a) {
            f52846w.setTint(-1);
        }
    }

    /* renamed from: A */
    private void m10947A() {
        this.f52854H = new RippleDrawable(C14607b.m10633b(this.f52888b), this.f52891e, f52846w);
    }

    /* renamed from: a */
    public static C14484a m10943a(Context context, AttributeSet attributeSet, int i, int i2) {
        C14484a c14484a = new C14484a(context, attributeSet, i, i2);
        TypedArray m10508a = C14647l.m10508a(c14484a.f52900n, attributeSet, C14376a.C14388l.Chip, i, i2, new int[0]);
        c14484a.f52887an = m10508a.hasValue(C14376a.C14388l.Chip_shapeAppearance);
        ColorStateList m10653a = C14598c.m10653a(c14484a.f52900n, m10508a, C14376a.C14388l.Chip_chipSurfaceColor);
        if (c14484a.f52906x != m10653a) {
            c14484a.f52906x = m10653a;
            c14484a.onStateChange(c14484a.getState());
        }
        c14484a.m10942a(C14598c.m10653a(c14484a.f52900n, m10508a, C14376a.C14388l.Chip_chipBackgroundColor));
        c14484a.m10945a(m10508a.getDimension(C14376a.C14388l.Chip_chipMinHeight, BitmapDescriptorFactory.HUE_RED));
        if (m10508a.hasValue(C14376a.C14388l.Chip_chipCornerRadius)) {
            c14484a.m10932b(m10508a.getDimension(C14376a.C14388l.Chip_chipCornerRadius, BitmapDescriptorFactory.HUE_RED));
        }
        c14484a.m10931b(C14598c.m10653a(c14484a.f52900n, m10508a, C14376a.C14388l.Chip_chipStrokeColor));
        c14484a.m10925c(m10508a.getDimension(C14376a.C14388l.Chip_chipStrokeWidth, BitmapDescriptorFactory.HUE_RED));
        c14484a.m10924c(C14598c.m10653a(c14484a.f52900n, m10508a, C14376a.C14388l.Chip_rippleColor));
        c14484a.m10936a(m10508a.getText(C14376a.C14388l.Chip_android_text));
        C14599d m10648c = C14598c.m10648c(c14484a.f52900n, m10508a, C14376a.C14388l.Chip_android_textAppearance);
        m10648c.f53234n = m10508a.getDimension(C14376a.C14388l.Chip_android_textSize, m10648c.f53234n);
        c14484a.m10937a(m10648c);
        int i3 = m10508a.getInt(C14376a.C14388l.Chip_android_ellipsize, 0);
        if (i3 == 1) {
            c14484a.f52903q = TextUtils.TruncateAt.START;
        } else if (i3 == 2) {
            c14484a.f52903q = TextUtils.TruncateAt.MIDDLE;
        } else if (i3 == 3) {
            c14484a.f52903q = TextUtils.TruncateAt.END;
        }
        c14484a.m10928b(m10508a.getBoolean(C14376a.C14388l.Chip_chipIconVisible, false));
        if (attributeSet != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "chipIconEnabled") != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "chipIconVisible") == null) {
            c14484a.m10928b(m10508a.getBoolean(C14376a.C14388l.Chip_chipIconEnabled, false));
        }
        c14484a.m10929b(C14598c.m10649b(c14484a.f52900n, m10508a, C14376a.C14388l.Chip_chipIcon));
        if (m10508a.hasValue(C14376a.C14388l.Chip_chipIconTint)) {
            c14484a.m10918d(C14598c.m10653a(c14484a.f52900n, m10508a, C14376a.C14388l.Chip_chipIconTint));
        }
        c14484a.m10919d(m10508a.getDimension(C14376a.C14388l.Chip_chipIconSize, -1.0f));
        c14484a.m10921c(m10508a.getBoolean(C14376a.C14388l.Chip_closeIconVisible, false));
        if (attributeSet != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "closeIconEnabled") != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "closeIconVisible") == null) {
            c14484a.m10921c(m10508a.getBoolean(C14376a.C14388l.Chip_closeIconEnabled, false));
        }
        c14484a.m10922c(C14598c.m10649b(c14484a.f52900n, m10508a, C14376a.C14388l.Chip_closeIcon));
        c14484a.m10914e(C14598c.m10653a(c14484a.f52900n, m10508a, C14376a.C14388l.Chip_closeIconTint));
        c14484a.m10915e(m10508a.getDimension(C14376a.C14388l.Chip_closeIconSize, BitmapDescriptorFactory.HUE_RED));
        c14484a.m10916d(m10508a.getBoolean(C14376a.C14388l.Chip_android_checkable, false));
        c14484a.m10912e(m10508a.getBoolean(C14376a.C14388l.Chip_checkedIconVisible, false));
        if (attributeSet != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "checkedIconEnabled") != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "checkedIconVisible") == null) {
            c14484a.m10912e(m10508a.getBoolean(C14376a.C14388l.Chip_checkedIconEnabled, false));
        }
        c14484a.m10917d(C14598c.m10649b(c14484a.f52900n, m10508a, C14376a.C14388l.Chip_checkedIcon));
        if (m10508a.hasValue(C14376a.C14388l.Chip_checkedIconTint)) {
            c14484a.m10910f(C14598c.m10653a(c14484a.f52900n, m10508a, C14376a.C14388l.Chip_checkedIconTint));
        }
        c14484a.f52894h = C14396h.m11332a(c14484a.f52900n, m10508a, C14376a.C14388l.Chip_showMotionSpec);
        c14484a.f52895i = C14396h.m11332a(c14484a.f52900n, m10508a, C14376a.C14388l.Chip_hideMotionSpec);
        c14484a.m10911f(m10508a.getDimension(C14376a.C14388l.Chip_chipStartPadding, BitmapDescriptorFactory.HUE_RED));
        c14484a.m10908g(m10508a.getDimension(C14376a.C14388l.Chip_iconStartPadding, BitmapDescriptorFactory.HUE_RED));
        c14484a.m10907h(m10508a.getDimension(C14376a.C14388l.Chip_iconEndPadding, BitmapDescriptorFactory.HUE_RED));
        c14484a.m10906i(m10508a.getDimension(C14376a.C14388l.Chip_textStartPadding, BitmapDescriptorFactory.HUE_RED));
        c14484a.m10904j(m10508a.getDimension(C14376a.C14388l.Chip_textEndPadding, BitmapDescriptorFactory.HUE_RED));
        c14484a.m10903k(m10508a.getDimension(C14376a.C14388l.Chip_closeIconStartPadding, BitmapDescriptorFactory.HUE_RED));
        c14484a.m10902l(m10508a.getDimension(C14376a.C14388l.Chip_closeIconEndPadding, BitmapDescriptorFactory.HUE_RED));
        c14484a.m10901m(m10508a.getDimension(C14376a.C14388l.Chip_chipEndPadding, BitmapDescriptorFactory.HUE_RED));
        c14484a.f52905s = m10508a.getDimensionPixelSize(C14376a.C14388l.Chip_android_maxWidth, Integer.MAX_VALUE);
        m10508a.recycle();
        return c14484a;
    }

    /* renamed from: a */
    private void m10941a(Rect rect, RectF rectF) {
        rectF.setEmpty();
        if (m10899q() || m10898r()) {
            float f = this.f52896j + this.f52860N;
            float m10895u = m10895u();
            if (C0840a.m44343h(this) == 0) {
                rectF.left = rect.left + f;
                rectF.right = rectF.left + m10895u;
            } else {
                rectF.right = rect.right - f;
                rectF.left = rectF.right - m10895u;
            }
            float m10894v = m10894v();
            rectF.top = rect.exactCenterY() - (m10894v / 2.0f);
            rectF.bottom = rectF.top + m10894v;
        }
    }

    /* renamed from: a */
    public static boolean m10939a(Drawable drawable) {
        return drawable != null && drawable.isStateful();
    }

    /* JADX WARN: Removed duplicated region for block: B:71:0x01d4  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x01e3  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x01ef  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x020b  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x021b  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0234  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x024d  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0281  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x029e  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x02a7  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean m10933a(int[] r7, int[] r8) {
        /*
            Method dump skipped, instructions count: 685
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.chip.C14484a.m10933a(int[], int[]):boolean");
    }

    /* renamed from: b */
    private void m10930b(Rect rect, RectF rectF) {
        rectF.setEmpty();
        if (m10897s()) {
            float f = this.f52899m + this.f52863Q;
            if (C0840a.m44343h(this) == 0) {
                rectF.right = rect.right - f;
                rectF.left = rectF.right - this.f52856J;
            } else {
                rectF.left = rect.left + f;
                rectF.right = rectF.left + this.f52856J;
            }
            rectF.top = rect.exactCenterY() - (this.f52856J / 2.0f);
            rectF.bottom = rectF.top + this.f52856J;
        }
    }

    /* renamed from: b */
    private static boolean m10927b(int[] iArr) {
        if (iArr == null) {
            return false;
        }
        for (int i : iArr) {
            if (i == 16842912) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: c */
    private void m10923c(Rect rect, RectF rectF) {
        rectF.setEmpty();
        if (m10897s()) {
            float f = this.f52899m + this.f52863Q + this.f52856J + this.f52862P + this.f52898l;
            if (C0840a.m44343h(this) == 0) {
                rectF.right = rect.right;
                rectF.left = rectF.right - f;
            } else {
                rectF.left = rect.left;
                rectF.right = rect.left + f;
            }
            rectF.top = rect.top;
            rectF.bottom = rect.bottom;
        }
    }

    /* renamed from: e */
    private static void m10913e(Drawable drawable) {
        if (drawable != null) {
            drawable.setCallback(null);
        }
    }

    /* renamed from: f */
    private void m10909f(Drawable drawable) {
        if (drawable == null) {
            return;
        }
        drawable.setCallback(this);
        C0840a.m44349b(drawable, C0840a.m44343h(this));
        drawable.setLevel(getLevel());
        drawable.setVisible(isVisible(), false);
        if (drawable == this.f52891e) {
            if (drawable.isStateful()) {
                drawable.setState(this.f52884ak);
            }
            C0840a.m44355a(drawable, this.f52855I);
            return;
        }
        if (drawable.isStateful()) {
            drawable.setState(getState());
        }
        Drawable drawable2 = this.f52850D;
        if (drawable != drawable2 || !this.f52853G) {
            return;
        }
        C0840a.m44355a(drawable2, this.f52851E);
    }

    /* renamed from: i */
    private static boolean m10905i(ColorStateList colorStateList) {
        return colorStateList != null && colorStateList.isStateful();
    }

    /* renamed from: p */
    private void m10900p() {
        AbstractC14485a abstractC14485a = this.f52886am.get();
        if (abstractC14485a != null) {
            abstractC14485a.mo10889a();
        }
    }

    /* renamed from: q */
    private boolean m10899q() {
        return this.f52849C && this.f52850D != null;
    }

    /* renamed from: r */
    private boolean m10898r() {
        return this.f52857K && this.f52858L != null && this.f52877ad;
    }

    /* renamed from: s */
    private boolean m10897s() {
        return this.f52890d && this.f52891e != null;
    }

    /* renamed from: t */
    private boolean m10896t() {
        return this.f52857K && this.f52858L != null && this.f52893g;
    }

    /* renamed from: u */
    private float m10895u() {
        Drawable drawable = this.f52877ad ? this.f52858L : this.f52850D;
        float f = this.f52852F;
        return (f > BitmapDescriptorFactory.HUE_RED || drawable == null) ? f : drawable.getIntrinsicWidth();
    }

    /* renamed from: v */
    private float m10894v() {
        Drawable drawable = this.f52877ad ? this.f52858L : this.f52850D;
        float f = this.f52852F;
        float f2 = f;
        if (f <= BitmapDescriptorFactory.HUE_RED) {
            f2 = f;
            if (drawable != null) {
                float ceil = (float) Math.ceil(C14654r.m10498a(this.f52900n, 24));
                f2 = ceil;
                if (drawable.getIntrinsicHeight() <= ceil) {
                    return drawable.getIntrinsicHeight();
                }
            }
        }
        return f2;
    }

    /* renamed from: w */
    private ColorFilter m10893w() {
        ColorFilter colorFilter = this.f52880ag;
        return colorFilter != null ? colorFilter : this.f52881ah;
    }

    /* renamed from: x */
    private void m10892x() {
        this.f52885al = this.f52902p ? C14607b.m10633b(this.f52888b) : null;
    }

    /* renamed from: y */
    private float m10891y() {
        return this.f52887an ? m10451k() : this.f52908z;
    }

    /* renamed from: z */
    private Drawable m10890z() {
        Drawable drawable = this.f52850D;
        if (drawable != null) {
            return C0840a.m44344g(drawable);
        }
        return null;
    }

    /* renamed from: a */
    public final float m10946a() {
        return (m10899q() || m10898r()) ? this.f52860N + m10895u() + this.f52861O : BitmapDescriptorFactory.HUE_RED;
    }

    /* renamed from: a */
    public final void m10945a(float f) {
        if (this.f52873a != f) {
            this.f52873a = f;
            invalidateSelf();
            m10900p();
        }
    }

    /* renamed from: a */
    public final void m10944a(int i) {
        m10937a(new C14599d(this.f52900n, i));
    }

    /* renamed from: a */
    public final void m10942a(ColorStateList colorStateList) {
        if (this.f52907y != colorStateList) {
            this.f52907y = colorStateList;
            onStateChange(getState());
        }
    }

    /* renamed from: a */
    public final void m10940a(RectF rectF) {
        m10923c(getBounds(), rectF);
    }

    /* renamed from: a */
    public final void m10938a(AbstractC14485a abstractC14485a) {
        this.f52886am = new WeakReference<>(abstractC14485a);
    }

    /* renamed from: a */
    public final void m10937a(C14599d c14599d) {
        this.f52901o.m10519a(c14599d, this.f52900n);
    }

    /* renamed from: a */
    public final void m10936a(CharSequence charSequence) {
        CharSequence charSequence2 = charSequence;
        if (charSequence == null) {
            charSequence2 = "";
        }
        if (!TextUtils.equals(this.f52889c, charSequence2)) {
            this.f52889c = charSequence2;
            this.f52901o.f53427b = true;
            invalidateSelf();
            m10900p();
        }
    }

    /* renamed from: a */
    public final void m10935a(boolean z) {
        if (this.f52902p != z) {
            this.f52902p = z;
            m10892x();
            onStateChange(getState());
        }
    }

    /* renamed from: a */
    public final boolean m10934a(int[] iArr) {
        if (!Arrays.equals(this.f52884ak, iArr)) {
            this.f52884ak = iArr;
            if (!m10897s()) {
                return false;
            }
            return m10933a(getState(), iArr);
        }
        return false;
    }

    @Override // com.google.android.material.internal.C14641i.AbstractC14643a
    /* renamed from: b */
    public final void mo10370b() {
        m10900p();
        invalidateSelf();
    }

    @Deprecated
    /* renamed from: b */
    public final void m10932b(float f) {
        if (this.f52908z != f) {
            this.f52908z = f;
            setShapeAppearanceModel(this.f53492t.f53500a.m10429a(f));
        }
    }

    /* renamed from: b */
    public final void m10931b(ColorStateList colorStateList) {
        if (this.f52847A != colorStateList) {
            this.f52847A = colorStateList;
            if (this.f52887an) {
                m10454h(colorStateList);
            }
            onStateChange(getState());
        }
    }

    /* renamed from: b */
    public final void m10929b(Drawable drawable) {
        Drawable m10890z = m10890z();
        if (m10890z != drawable) {
            float m10946a = m10946a();
            this.f52850D = drawable != null ? C0840a.m44345f(drawable).mutate() : null;
            float m10946a2 = m10946a();
            m10913e(m10890z);
            if (m10899q()) {
                m10909f(this.f52850D);
            }
            invalidateSelf();
            if (m10946a == m10946a2) {
                return;
            }
            m10900p();
        }
    }

    /* renamed from: b */
    public final void m10928b(boolean z) {
        if (this.f52849C != z) {
            boolean m10899q = m10899q();
            this.f52849C = z;
            boolean m10899q2 = m10899q();
            if (!(m10899q != m10899q2)) {
                return;
            }
            if (m10899q2) {
                m10909f(this.f52850D);
            } else {
                m10913e(this.f52850D);
            }
            invalidateSelf();
            m10900p();
        }
    }

    /* renamed from: c */
    public final float m10926c() {
        return m10897s() ? this.f52862P + this.f52856J + this.f52863Q : BitmapDescriptorFactory.HUE_RED;
    }

    /* renamed from: c */
    public final void m10925c(float f) {
        if (this.f52848B != f) {
            this.f52848B = f;
            this.f52864R.setStrokeWidth(f);
            if (this.f52887an) {
                super.m10447n(f);
            }
            invalidateSelf();
        }
    }

    /* renamed from: c */
    public final void m10924c(ColorStateList colorStateList) {
        if (this.f52888b != colorStateList) {
            this.f52888b = colorStateList;
            m10892x();
            onStateChange(getState());
        }
    }

    /* renamed from: c */
    public final void m10922c(Drawable drawable) {
        Drawable m10920d = m10920d();
        if (m10920d != drawable) {
            float m10926c = m10926c();
            this.f52891e = drawable != null ? C0840a.m44345f(drawable).mutate() : null;
            if (C14607b.f53247a) {
                m10947A();
            }
            float m10926c2 = m10926c();
            m10913e(m10920d);
            if (m10897s()) {
                m10909f(this.f52891e);
            }
            invalidateSelf();
            if (m10926c == m10926c2) {
                return;
            }
            m10900p();
        }
    }

    /* renamed from: c */
    public final void m10921c(boolean z) {
        if (this.f52890d != z) {
            boolean m10897s = m10897s();
            this.f52890d = z;
            boolean m10897s2 = m10897s();
            if (!(m10897s != m10897s2)) {
                return;
            }
            if (m10897s2) {
                m10909f(this.f52891e);
            } else {
                m10913e(this.f52891e);
            }
            invalidateSelf();
            m10900p();
        }
    }

    /* renamed from: d */
    public final Drawable m10920d() {
        Drawable drawable = this.f52891e;
        if (drawable != null) {
            return C0840a.m44344g(drawable);
        }
        return null;
    }

    /* renamed from: d */
    public final void m10919d(float f) {
        if (this.f52852F != f) {
            float m10946a = m10946a();
            this.f52852F = f;
            float m10946a2 = m10946a();
            invalidateSelf();
            if (m10946a == m10946a2) {
                return;
            }
            m10900p();
        }
    }

    /* renamed from: d */
    public final void m10918d(ColorStateList colorStateList) {
        this.f52853G = true;
        if (this.f52851E != colorStateList) {
            this.f52851E = colorStateList;
            if (m10899q()) {
                C0840a.m44355a(this.f52850D, colorStateList);
            }
            onStateChange(getState());
        }
    }

    /* renamed from: d */
    public final void m10917d(Drawable drawable) {
        if (this.f52858L != drawable) {
            float m10946a = m10946a();
            this.f52858L = drawable;
            float m10946a2 = m10946a();
            m10913e(this.f52858L);
            m10909f(this.f52858L);
            invalidateSelf();
            if (m10946a == m10946a2) {
                return;
            }
            m10900p();
        }
    }

    /* renamed from: d */
    public final void m10916d(boolean z) {
        if (this.f52893g != z) {
            this.f52893g = z;
            float m10946a = m10946a();
            if (!z && this.f52877ad) {
                this.f52877ad = false;
            }
            float m10946a2 = m10946a();
            invalidateSelf();
            if (m10946a == m10946a2) {
                return;
            }
            m10900p();
        }
    }

    @Override // com.google.android.material.p374k.C14670h, android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        int i;
        int i2;
        Rect bounds = getBounds();
        if (bounds.isEmpty() || getAlpha() == 0) {
            return;
        }
        if (this.f52879af < 255) {
            float f = bounds.left;
            float f2 = bounds.top;
            float f3 = bounds.right;
            float f4 = bounds.bottom;
            int i3 = this.f52879af;
            i = Build.VERSION.SDK_INT > 21 ? canvas.saveLayerAlpha(f, f2, f3, f4, i3) : canvas.saveLayerAlpha(f, f2, f3, f4, i3, 31);
        } else {
            i = 0;
        }
        if (!this.f52887an) {
            this.f52864R.setColor(this.f52870X);
            this.f52864R.setStyle(Paint.Style.FILL);
            this.f52867U.set(bounds);
            canvas.drawRoundRect(this.f52867U, m10891y(), m10891y(), this.f52864R);
        }
        if (!this.f52887an) {
            this.f52864R.setColor(this.f52871Y);
            this.f52864R.setStyle(Paint.Style.FILL);
            this.f52864R.setColorFilter(m10893w());
            this.f52867U.set(bounds);
            canvas.drawRoundRect(this.f52867U, m10891y(), m10891y(), this.f52864R);
        }
        if (this.f52887an) {
            super.draw(canvas);
        }
        if (this.f52848B > BitmapDescriptorFactory.HUE_RED && !this.f52887an) {
            this.f52864R.setColor(this.f52874aa);
            this.f52864R.setStyle(Paint.Style.STROKE);
            if (!this.f52887an) {
                this.f52864R.setColorFilter(m10893w());
            }
            this.f52867U.set(bounds.left + (this.f52848B / 2.0f), bounds.top + (this.f52848B / 2.0f), bounds.right - (this.f52848B / 2.0f), bounds.bottom - (this.f52848B / 2.0f));
            float f5 = this.f52908z - (this.f52848B / 2.0f);
            canvas.drawRoundRect(this.f52867U, f5, f5, this.f52864R);
        }
        this.f52864R.setColor(this.f52875ab);
        this.f52864R.setStyle(Paint.Style.FILL);
        this.f52867U.set(bounds);
        if (!this.f52887an) {
            canvas.drawRoundRect(this.f52867U, m10891y(), m10891y(), this.f52864R);
        } else {
            m10471a(new RectF(bounds), this.f52869W);
            super.m10474a(canvas, this.f52864R, this.f52869W, m10459e());
        }
        if (m10899q()) {
            m10941a(bounds, this.f52867U);
            float f6 = this.f52867U.left;
            float f7 = this.f52867U.top;
            canvas.translate(f6, f7);
            this.f52850D.setBounds(0, 0, (int) this.f52867U.width(), (int) this.f52867U.height());
            this.f52850D.draw(canvas);
            canvas.translate(-f6, -f7);
        }
        if (m10898r()) {
            m10941a(bounds, this.f52867U);
            float f8 = this.f52867U.left;
            float f9 = this.f52867U.top;
            canvas.translate(f8, f9);
            this.f52858L.setBounds(0, 0, (int) this.f52867U.width(), (int) this.f52867U.height());
            this.f52858L.draw(canvas);
            canvas.translate(-f8, -f9);
        }
        if (this.f52904r && this.f52889c != null) {
            PointF pointF = this.f52868V;
            pointF.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
            Paint.Align align = Paint.Align.LEFT;
            if (this.f52889c != null) {
                float m10946a = this.f52896j + m10946a() + this.f52897k;
                if (C0840a.m44343h(this) == 0) {
                    pointF.x = bounds.left + m10946a;
                    align = Paint.Align.LEFT;
                } else {
                    pointF.x = bounds.right - m10946a;
                    align = Paint.Align.RIGHT;
                }
                float centerY = bounds.centerY();
                this.f52901o.f53426a.getFontMetrics(this.f52866T);
                pointF.y = centerY - ((this.f52866T.descent + this.f52866T.ascent) / 2.0f);
            }
            RectF rectF = this.f52867U;
            rectF.setEmpty();
            if (this.f52889c != null) {
                float m10946a2 = this.f52896j + m10946a() + this.f52897k;
                float m10926c = this.f52899m + m10926c() + this.f52898l;
                if (C0840a.m44343h(this) == 0) {
                    rectF.left = bounds.left + m10946a2;
                    rectF.right = bounds.right - m10926c;
                } else {
                    rectF.left = bounds.left + m10926c;
                    rectF.right = bounds.right - m10946a2;
                }
                rectF.top = bounds.top;
                rectF.bottom = bounds.bottom;
            }
            if (this.f52901o.f53429d != null) {
                this.f52901o.f53426a.drawableState = getState();
                this.f52901o.m10520a(this.f52900n);
            }
            this.f52901o.f53426a.setTextAlign(align);
            boolean z = Math.round(this.f52901o.m10517a(this.f52889c.toString())) > Math.round(this.f52867U.width());
            if (z) {
                i2 = canvas.save();
                canvas.clipRect(this.f52867U);
            } else {
                i2 = 0;
            }
            CharSequence charSequence = this.f52889c;
            CharSequence charSequence2 = charSequence;
            if (z) {
                charSequence2 = charSequence;
                if (this.f52903q != null) {
                    charSequence2 = TextUtils.ellipsize(charSequence, this.f52901o.f53426a, this.f52867U.width(), this.f52903q);
                }
            }
            canvas.drawText(charSequence2, 0, charSequence2.length(), this.f52868V.x, this.f52868V.y, this.f52901o.f53426a);
            if (z) {
                canvas.restoreToCount(i2);
            }
        }
        if (m10897s()) {
            m10930b(bounds, this.f52867U);
            float f10 = this.f52867U.left;
            float f11 = this.f52867U.top;
            canvas.translate(f10, f11);
            this.f52891e.setBounds(0, 0, (int) this.f52867U.width(), (int) this.f52867U.height());
            if (C14607b.f53247a) {
                this.f52854H.setBounds(this.f52891e.getBounds());
                this.f52854H.jumpToCurrentState();
                this.f52854H.draw(canvas);
            } else {
                this.f52891e.draw(canvas);
            }
            canvas.translate(-f10, -f11);
        }
        Paint paint = this.f52865S;
        if (paint != null) {
            paint.setColor(C0834a.m44396b(-16777216, 127));
            canvas.drawRect(bounds, this.f52865S);
            if (m10899q() || m10898r()) {
                m10941a(bounds, this.f52867U);
                canvas.drawRect(this.f52867U, this.f52865S);
            }
            if (this.f52889c != null) {
                canvas.drawLine(bounds.left, bounds.exactCenterY(), bounds.right, bounds.exactCenterY(), this.f52865S);
            }
            if (m10897s()) {
                m10930b(bounds, this.f52867U);
                canvas.drawRect(this.f52867U, this.f52865S);
            }
            this.f52865S.setColor(C0834a.m44396b(-65536, 127));
            RectF rectF2 = this.f52867U;
            rectF2.set(bounds);
            if (m10897s()) {
                float f12 = this.f52899m + this.f52863Q + this.f52856J + this.f52862P + this.f52898l;
                if (C0840a.m44343h(this) == 0) {
                    rectF2.right = bounds.right - f12;
                } else {
                    rectF2.left = bounds.left + f12;
                }
            }
            canvas.drawRect(this.f52867U, this.f52865S);
            this.f52865S.setColor(C0834a.m44396b(-16711936, 127));
            m10923c(bounds, this.f52867U);
            canvas.drawRect(this.f52867U, this.f52865S);
        }
        if (this.f52879af >= 255) {
            return;
        }
        canvas.restoreToCount(i);
    }

    /* renamed from: e */
    public final void m10915e(float f) {
        if (this.f52856J != f) {
            this.f52856J = f;
            invalidateSelf();
            if (!m10897s()) {
                return;
            }
            m10900p();
        }
    }

    /* renamed from: e */
    public final void m10914e(ColorStateList colorStateList) {
        if (this.f52855I != colorStateList) {
            this.f52855I = colorStateList;
            if (m10897s()) {
                C0840a.m44355a(this.f52891e, colorStateList);
            }
            onStateChange(getState());
        }
    }

    /* renamed from: e */
    public final void m10912e(boolean z) {
        if (this.f52857K != z) {
            boolean m10898r = m10898r();
            this.f52857K = z;
            boolean m10898r2 = m10898r();
            if (!(m10898r != m10898r2)) {
                return;
            }
            if (m10898r2) {
                m10909f(this.f52858L);
            } else {
                m10913e(this.f52858L);
            }
            invalidateSelf();
            m10900p();
        }
    }

    /* renamed from: f */
    public final void m10911f(float f) {
        if (this.f52896j != f) {
            this.f52896j = f;
            invalidateSelf();
            m10900p();
        }
    }

    /* renamed from: f */
    public final void m10910f(ColorStateList colorStateList) {
        if (this.f52859M != colorStateList) {
            this.f52859M = colorStateList;
            if (m10896t()) {
                C0840a.m44355a(this.f52858L, colorStateList);
            }
            onStateChange(getState());
        }
    }

    /* renamed from: g */
    public final void m10908g(float f) {
        if (this.f52860N != f) {
            float m10946a = m10946a();
            this.f52860N = f;
            float m10946a2 = m10946a();
            invalidateSelf();
            if (m10946a == m10946a2) {
                return;
            }
            m10900p();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final int getAlpha() {
        return this.f52879af;
    }

    @Override // android.graphics.drawable.Drawable
    public final ColorFilter getColorFilter() {
        return this.f52880ag;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        return (int) this.f52873a;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        return Math.min(Math.round(this.f52896j + m10946a() + this.f52897k + this.f52901o.m10517a(this.f52889c.toString()) + this.f52898l + m10926c() + this.f52899m), this.f52905s);
    }

    @Override // com.google.android.material.p374k.C14670h, android.graphics.drawable.Drawable
    public final int getOpacity() {
        return -3;
    }

    @Override // com.google.android.material.p374k.C14670h, android.graphics.drawable.Drawable
    public final void getOutline(Outline outline) {
        if (this.f52887an) {
            super.getOutline(outline);
            return;
        }
        Rect bounds = getBounds();
        if (!bounds.isEmpty()) {
            outline.setRoundRect(bounds, this.f52908z);
        } else {
            outline.setRoundRect(0, 0, getIntrinsicWidth(), getIntrinsicHeight(), this.f52908z);
        }
        outline.setAlpha(getAlpha() / 255.0f);
    }

    /* renamed from: h */
    public final void m10907h(float f) {
        if (this.f52861O != f) {
            float m10946a = m10946a();
            this.f52861O = f;
            float m10946a2 = m10946a();
            invalidateSelf();
            if (m10946a == m10946a2) {
                return;
            }
            m10900p();
        }
    }

    /* renamed from: i */
    public final void m10906i(float f) {
        if (this.f52897k != f) {
            this.f52897k = f;
            invalidateSelf();
            m10900p();
        }
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void invalidateDrawable(Drawable drawable) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.invalidateDrawable(this);
        }
    }

    @Override // com.google.android.material.p374k.C14670h, android.graphics.drawable.Drawable
    public final boolean isStateful() {
        if (m10905i(this.f52906x) || m10905i(this.f52907y) || m10905i(this.f52847A)) {
            return true;
        }
        if (this.f52902p && m10905i(this.f52885al)) {
            return true;
        }
        C14599d c14599d = this.f52901o.f53429d;
        return (c14599d != null && c14599d.f53221a != null && c14599d.f53221a.isStateful()) || m10896t() || m10939a(this.f52850D) || m10939a(this.f52858L) || m10905i(this.f52882ai);
    }

    /* renamed from: j */
    public final void m10904j(float f) {
        if (this.f52898l != f) {
            this.f52898l = f;
            invalidateSelf();
            m10900p();
        }
    }

    /* renamed from: k */
    public final void m10903k(float f) {
        if (this.f52862P != f) {
            this.f52862P = f;
            invalidateSelf();
            if (!m10897s()) {
                return;
            }
            m10900p();
        }
    }

    /* renamed from: l */
    public final void m10902l(float f) {
        if (this.f52863Q != f) {
            this.f52863Q = f;
            invalidateSelf();
            if (!m10897s()) {
                return;
            }
            m10900p();
        }
    }

    /* renamed from: m */
    public final void m10901m(float f) {
        if (this.f52899m != f) {
            this.f52899m = f;
            invalidateSelf();
            m10900p();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean onLayoutDirectionChanged(int i) {
        boolean onLayoutDirectionChanged = super.onLayoutDirectionChanged(i);
        boolean z = onLayoutDirectionChanged;
        if (m10899q()) {
            z = onLayoutDirectionChanged | C0840a.m44349b(this.f52850D, i);
        }
        boolean z2 = z;
        if (m10898r()) {
            z2 = z | C0840a.m44349b(this.f52858L, i);
        }
        boolean z3 = z2;
        if (m10897s()) {
            z3 = z2 | C0840a.m44349b(this.f52891e, i);
        }
        if (z3) {
            invalidateSelf();
            return true;
        }
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    protected final boolean onLevelChange(int i) {
        boolean onLevelChange = super.onLevelChange(i);
        boolean z = onLevelChange;
        if (m10899q()) {
            z = onLevelChange | this.f52850D.setLevel(i);
        }
        boolean z2 = z;
        if (m10898r()) {
            z2 = z | this.f52858L.setLevel(i);
        }
        boolean z3 = z2;
        if (m10897s()) {
            z3 = z2 | this.f52891e.setLevel(i);
        }
        if (z3) {
            invalidateSelf();
        }
        return z3;
    }

    @Override // com.google.android.material.p374k.C14670h, android.graphics.drawable.Drawable, com.google.android.material.internal.C14641i.AbstractC14643a
    public final boolean onStateChange(int[] iArr) {
        if (this.f52887an) {
            super.onStateChange(iArr);
        }
        return m10933a(iArr, this.f52884ak);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.scheduleDrawable(this, runnable, j);
        }
    }

    @Override // com.google.android.material.p374k.C14670h, android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
        if (this.f52879af != i) {
            this.f52879af = i;
            invalidateSelf();
        }
    }

    @Override // com.google.android.material.p374k.C14670h, android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        if (this.f52880ag != colorFilter) {
            this.f52880ag = colorFilter;
            invalidateSelf();
        }
    }

    @Override // com.google.android.material.p374k.C14670h, android.graphics.drawable.Drawable, androidx.core.graphics.drawable.AbstractC0841b
    public final void setTintList(ColorStateList colorStateList) {
        if (this.f52882ai != colorStateList) {
            this.f52882ai = colorStateList;
            onStateChange(getState());
        }
    }

    @Override // com.google.android.material.p374k.C14670h, android.graphics.drawable.Drawable, androidx.core.graphics.drawable.AbstractC0841b
    public final void setTintMode(PorterDuff.Mode mode) {
        if (this.f52883aj != mode) {
            this.f52883aj = mode;
            this.f52881ah = C14496a.m10864a(this, this.f52882ai, mode);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean setVisible(boolean z, boolean z2) {
        boolean visible = super.setVisible(z, z2);
        boolean z3 = visible;
        if (m10899q()) {
            z3 = visible | this.f52850D.setVisible(z, z2);
        }
        boolean z4 = z3;
        if (m10898r()) {
            z4 = z3 | this.f52858L.setVisible(z, z2);
        }
        boolean z5 = z4;
        if (m10897s()) {
            z5 = z4 | this.f52891e.setVisible(z, z2);
        }
        if (z5) {
            invalidateSelf();
        }
        return z5;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.unscheduleDrawable(this, runnable);
        }
    }
}
