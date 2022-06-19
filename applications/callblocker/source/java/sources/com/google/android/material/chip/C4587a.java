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
import androidx.appcompat.p008a.p009a.C0094a;
import androidx.core.graphics.C0529a;
import androidx.core.graphics.drawable.AbstractC0536b;
import androidx.core.graphics.drawable.C0535a;
import androidx.core.p024f.C0503a;
import com.google.android.material.C4492a;
import com.google.android.material.internal.C4697g;
import com.google.android.material.internal.C4702i;
import com.google.android.material.p142a.C4512h;
import com.google.android.material.p144c.C4578a;
import com.google.android.material.p149g.C4680a;
import com.google.android.material.p151i.C4682a;
import com.google.android.material.p156n.C4718c;
import com.google.android.material.p156n.C4719d;
import com.google.android.material.p157o.C4727b;
import com.google.android.material.p159q.C4736g;
import java.lang.ref.WeakReference;
import java.util.Arrays;
/* renamed from: com.google.android.material.chip.a */
/* loaded from: classes-dex2jar.jar:com/google/android/material/chip/a.class */
public class C4587a extends C4736g implements Drawable.Callback, AbstractC0536b, C4697g.AbstractC4699a {

    /* renamed from: a */
    private static final int[] f19932a = {16842910};

    /* renamed from: b */
    private static final ShapeDrawable f19933b = new ShapeDrawable(new OvalShape());

    /* renamed from: A */
    private float f19934A;

    /* renamed from: B */
    private float f19935B;

    /* renamed from: C */
    private float f19936C;

    /* renamed from: D */
    private float f19937D;

    /* renamed from: E */
    private float f19938E;

    /* renamed from: F */
    private float f19939F;

    /* renamed from: G */
    private float f19940G;

    /* renamed from: H */
    private float f19941H;

    /* renamed from: I */
    private final Context f19942I;

    /* renamed from: Q */
    private int f19950Q;

    /* renamed from: R */
    private int f19951R;

    /* renamed from: S */
    private int f19952S;

    /* renamed from: T */
    private int f19953T;

    /* renamed from: U */
    private int f19954U;

    /* renamed from: V */
    private int f19955V;

    /* renamed from: W */
    private boolean f19956W;

    /* renamed from: X */
    private int f19957X;

    /* renamed from: Z */
    private ColorFilter f19959Z;

    /* renamed from: aa */
    private PorterDuffColorFilter f19960aa;

    /* renamed from: ab */
    private ColorStateList f19961ab;

    /* renamed from: ad */
    private int[] f19963ad;

    /* renamed from: ae */
    private boolean f19964ae;

    /* renamed from: af */
    private ColorStateList f19965af;

    /* renamed from: ah */
    private TextUtils.TruncateAt f19967ah;

    /* renamed from: ai */
    private boolean f19968ai;

    /* renamed from: aj */
    private int f19969aj;

    /* renamed from: ak */
    private boolean f19970ak;

    /* renamed from: c */
    private ColorStateList f19971c;

    /* renamed from: d */
    private ColorStateList f19972d;

    /* renamed from: e */
    private float f19973e;

    /* renamed from: f */
    private float f19974f;

    /* renamed from: g */
    private ColorStateList f19975g;

    /* renamed from: h */
    private float f19976h;

    /* renamed from: i */
    private ColorStateList f19977i;

    /* renamed from: k */
    private boolean f19979k;

    /* renamed from: l */
    private Drawable f19980l;

    /* renamed from: m */
    private ColorStateList f19981m;

    /* renamed from: n */
    private float f19982n;

    /* renamed from: o */
    private boolean f19983o;

    /* renamed from: p */
    private boolean f19984p;

    /* renamed from: q */
    private Drawable f19985q;

    /* renamed from: r */
    private Drawable f19986r;

    /* renamed from: s */
    private ColorStateList f19987s;

    /* renamed from: t */
    private float f19988t;

    /* renamed from: u */
    private CharSequence f19989u;

    /* renamed from: v */
    private boolean f19990v;

    /* renamed from: w */
    private boolean f19991w;

    /* renamed from: x */
    private Drawable f19992x;

    /* renamed from: y */
    private C4512h f19993y;

    /* renamed from: z */
    private C4512h f19994z;

    /* renamed from: J */
    private final Paint f19943J = new Paint(1);

    /* renamed from: L */
    private final Paint.FontMetrics f19945L = new Paint.FontMetrics();

    /* renamed from: M */
    private final RectF f19946M = new RectF();

    /* renamed from: N */
    private final PointF f19947N = new PointF();

    /* renamed from: O */
    private final Path f19948O = new Path();

    /* renamed from: Y */
    private int f19958Y = 255;

    /* renamed from: ac */
    private PorterDuff.Mode f19962ac = PorterDuff.Mode.SRC_IN;

    /* renamed from: ag */
    private WeakReference<AbstractC4588a> f19966ag = new WeakReference<>(null);

    /* renamed from: P */
    private final C4697g f19949P = new C4697g(this);

    /* renamed from: j */
    private CharSequence f19978j = "";

    /* renamed from: K */
    private final Paint f19944K = null;

    /* renamed from: com.google.android.material.chip.a$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/chip/a$a.class */
    public interface AbstractC4588a {
        /* renamed from: a */
        void mo3294a();
    }

    private C4587a(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        m2722a(context);
        this.f19942I = context;
        this.f19949P.m2843a().density = context.getResources().getDisplayMetrics().density;
        if (this.f19944K != null) {
            this.f19944K.setStyle(Paint.Style.STROKE);
        }
        setState(f19932a);
        m3397a(f19932a);
        this.f19968ai = true;
        if (C4727b.f20437a) {
            f19933b.setTint(-1);
        }
    }

    /* renamed from: a */
    public static C4587a m3411a(Context context, AttributeSet attributeSet, int i, int i2) {
        C4587a c4587a = new C4587a(context, attributeSet, i, i2);
        c4587a.m3403a(attributeSet, i, i2);
        return c4587a;
    }

    /* renamed from: a */
    private void m3409a(Canvas canvas, Rect rect) {
        if (!this.f19970ak) {
            this.f19943J.setColor(this.f19950Q);
            this.f19943J.setStyle(Paint.Style.FILL);
            this.f19946M.set(rect);
            canvas.drawRoundRect(this.f19946M, m3332j(), m3332j(), this.f19943J);
        }
    }

    /* renamed from: a */
    private void m3407a(Rect rect, RectF rectF) {
        rectF.setEmpty();
        if (m3394ad() || m3393ae()) {
            float f = this.f19934A + this.f19935B;
            if (C0535a.m20582i(this) == 0) {
                rectF.left = f + rect.left;
                rectF.right = rectF.left + this.f19982n;
            } else {
                rectF.right = rect.right - f;
                rectF.left = rectF.right - this.f19982n;
            }
            rectF.top = rect.exactCenterY() - (this.f19982n / 2.0f);
            rectF.bottom = rectF.top + this.f19982n;
        }
    }

    /* renamed from: a */
    private void m3403a(AttributeSet attributeSet, int i, int i2) {
        TypedArray m2825a = C4702i.m2825a(this.f19942I, attributeSet, C4492a.C4504l.Chip, i, i2, new int[0]);
        this.f19970ak = m2825a.hasValue(C4492a.C4504l.Chip_shapeAppearance);
        m3334i(C4718c.m2784a(this.f19942I, m2825a, C4492a.C4504l.Chip_chipSurfaceColor));
        m3410a(C4718c.m2784a(this.f19942I, m2825a, C4492a.C4504l.Chip_chipBackgroundColor));
        m3413a(m2825a.getDimension(C4492a.C4504l.Chip_chipMinHeight, 0.0f));
        if (m2825a.hasValue(C4492a.C4504l.Chip_chipCornerRadius)) {
            m3385b(m2825a.getDimension(C4492a.C4504l.Chip_chipCornerRadius, 0.0f));
        }
        m3383b(C4718c.m2784a(this.f19942I, m2825a, C4492a.C4504l.Chip_chipStrokeColor));
        m3374c(m2825a.getDimension(C4492a.C4504l.Chip_chipStrokeWidth, 0.0f));
        m3372c(C4718c.m2784a(this.f19942I, m2825a, C4492a.C4504l.Chip_rippleColor));
        m3399a(m2825a.getText(C4492a.C4504l.Chip_android_text));
        m3400a(C4718c.m2779c(this.f19942I, m2825a, C4492a.C4504l.Chip_android_textAppearance));
        switch (m2825a.getInt(C4492a.C4504l.Chip_android_ellipsize, 0)) {
            case 1:
                m3404a(TextUtils.TruncateAt.START);
                break;
            case 2:
                m3404a(TextUtils.TruncateAt.MIDDLE);
                break;
            case 3:
                m3404a(TextUtils.TruncateAt.END);
                break;
        }
        m3376b(m2825a.getBoolean(C4492a.C4504l.Chip_chipIconVisible, false));
        if (attributeSet != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "chipIconEnabled") != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "chipIconVisible") == null) {
            m3376b(m2825a.getBoolean(C4492a.C4504l.Chip_chipIconEnabled, false));
        }
        m3405a(C4718c.m2780b(this.f19942I, m2825a, C4492a.C4504l.Chip_chipIcon));
        if (m2825a.hasValue(C4492a.C4504l.Chip_chipIconTint)) {
            m3364d(C4718c.m2784a(this.f19942I, m2825a, C4492a.C4504l.Chip_chipIconTint));
        }
        m3366d(m2825a.getDimension(C4492a.C4504l.Chip_chipIconSize, 0.0f));
        m3368c(m2825a.getBoolean(C4492a.C4504l.Chip_closeIconVisible, false));
        if (attributeSet != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "closeIconEnabled") != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "closeIconVisible") == null) {
            m3368c(m2825a.getBoolean(C4492a.C4504l.Chip_closeIconEnabled, false));
        }
        m3380b(C4718c.m2780b(this.f19942I, m2825a, C4492a.C4504l.Chip_closeIcon));
        m3357e(C4718c.m2784a(this.f19942I, m2825a, C4492a.C4504l.Chip_closeIconTint));
        m3359e(m2825a.getDimension(C4492a.C4504l.Chip_closeIconSize, 0.0f));
        m3360d(m2825a.getBoolean(C4492a.C4504l.Chip_android_checkable, false));
        m3353e(m2825a.getBoolean(C4492a.C4504l.Chip_checkedIconVisible, false));
        if (attributeSet != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "checkedIconEnabled") != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "checkedIconVisible") == null) {
            m3353e(m2825a.getBoolean(C4492a.C4504l.Chip_checkedIconEnabled, false));
        }
        m3369c(C4718c.m2780b(this.f19942I, m2825a, C4492a.C4504l.Chip_checkedIcon));
        m3402a(C4512h.m3843a(this.f19942I, m2825a, C4492a.C4504l.Chip_showMotionSpec));
        m3379b(C4512h.m3843a(this.f19942I, m2825a, C4492a.C4504l.Chip_hideMotionSpec));
        m3351f(m2825a.getDimension(C4492a.C4504l.Chip_chipStartPadding, 0.0f));
        m3345g(m2825a.getDimension(C4492a.C4504l.Chip_iconStartPadding, 0.0f));
        m3341h(m2825a.getDimension(C4492a.C4504l.Chip_iconEndPadding, 0.0f));
        m3336i(m2825a.getDimension(C4492a.C4504l.Chip_textStartPadding, 0.0f));
        m3331j(m2825a.getDimension(C4492a.C4504l.Chip_textEndPadding, 0.0f));
        m3328k(m2825a.getDimension(C4492a.C4504l.Chip_closeIconStartPadding, 0.0f));
        m3325l(m2825a.getDimension(C4492a.C4504l.Chip_closeIconEndPadding, 0.0f));
        m3322m(m2825a.getDimension(C4492a.C4504l.Chip_chipEndPadding, 0.0f));
        m3424B(m2825a.getDimensionPixelSize(C4492a.C4504l.Chip_android_maxWidth, Integer.MAX_VALUE));
        m2825a.recycle();
    }

    /* renamed from: a */
    private static boolean m3396a(int[] iArr, int i) {
        boolean z;
        if (iArr == null) {
            z = false;
        } else {
            int length = iArr.length;
            int i2 = 0;
            while (true) {
                z = false;
                if (i2 >= length) {
                    break;
                } else if (iArr[i2] == i) {
                    z = true;
                    break;
                } else {
                    i2++;
                }
            }
        }
        return z;
    }

    /* renamed from: a */
    private boolean m3395a(int[] iArr, int[] iArr2) {
        boolean z;
        boolean onStateChange = super.onStateChange(iArr);
        int colorForState = this.f19971c != null ? this.f19971c.getColorForState(iArr, this.f19950Q) : 0;
        if (this.f19950Q != colorForState) {
            this.f19950Q = colorForState;
            onStateChange = true;
        }
        int colorForState2 = this.f19972d != null ? this.f19972d.getColorForState(iArr, this.f19951R) : 0;
        if (this.f19951R != colorForState2) {
            this.f19951R = colorForState2;
            onStateChange = true;
        }
        int m2924a = C4680a.m2924a(colorForState, colorForState2);
        if ((this.f19952S != m2924a) | (m2742M() == null)) {
            this.f19952S = m2924a;
            m2697f(ColorStateList.valueOf(this.f19952S));
            onStateChange = true;
        }
        int colorForState3 = this.f19975g != null ? this.f19975g.getColorForState(iArr, this.f19953T) : 0;
        boolean z2 = onStateChange;
        if (this.f19953T != colorForState3) {
            this.f19953T = colorForState3;
            z2 = true;
        }
        int colorForState4 = (this.f19965af == null || !C4727b.m2757a(iArr)) ? 0 : this.f19965af.getColorForState(iArr, this.f19954U);
        boolean z3 = z2;
        if (this.f19954U != colorForState4) {
            this.f19954U = colorForState4;
            z3 = z2;
            if (this.f19964ae) {
                z3 = true;
            }
        }
        int colorForState5 = (this.f19949P.m2834b() == null || this.f19949P.m2834b().f20414b == null) ? 0 : this.f19949P.m2834b().f20414b.getColorForState(iArr, this.f19955V);
        if (this.f19955V != colorForState5) {
            this.f19955V = colorForState5;
            z3 = true;
        }
        boolean z4 = m3396a(getState(), 16842912) && this.f19990v;
        if (this.f19956W == z4 || this.f19992x == null) {
            z = false;
        } else {
            float m3375c = m3375c();
            this.f19956W = z4;
            if (m3375c != m3375c()) {
                z = true;
                z3 = true;
            } else {
                z = false;
                z3 = true;
            }
        }
        int colorForState6 = this.f19961ab != null ? this.f19961ab.getColorForState(iArr, this.f19957X) : 0;
        if (this.f19957X != colorForState6) {
            this.f19957X = colorForState6;
            this.f19960aa = C4682a.m2917a(this, this.f19961ab, this.f19962ac);
            z3 = true;
        }
        boolean z5 = z3;
        if (m3361d(this.f19980l)) {
            z5 = z3 | this.f19980l.setState(iArr);
        }
        boolean z6 = z5;
        if (m3361d(this.f19992x)) {
            z6 = z5 | this.f19992x.setState(iArr);
        }
        boolean z7 = z6;
        if (m3361d(this.f19985q)) {
            int[] iArr3 = new int[iArr.length + iArr2.length];
            System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
            System.arraycopy(iArr2, 0, iArr3, iArr.length, iArr2.length);
            z7 = z6 | this.f19985q.setState(iArr3);
        }
        boolean z8 = z7;
        if (C4727b.f20437a) {
            z8 = z7;
            if (m3361d(this.f19986r)) {
                z8 = z7 | this.f19986r.setState(iArr2);
            }
        }
        if (z8) {
            invalidateSelf();
        }
        if (z) {
            m3386b();
        }
        return z8;
    }

    /* renamed from: ad */
    private boolean m3394ad() {
        return this.f19979k && this.f19980l != null;
    }

    /* renamed from: ae */
    private boolean m3393ae() {
        return this.f19991w && this.f19992x != null && this.f19956W;
    }

    /* renamed from: af */
    private boolean m3392af() {
        return this.f19984p && this.f19985q != null;
    }

    /* renamed from: ag */
    private boolean m3391ag() {
        return this.f19991w && this.f19992x != null && this.f19990v;
    }

    /* renamed from: ah */
    private float m3390ah() {
        this.f19949P.m2843a().getFontMetrics(this.f19945L);
        return (this.f19945L.descent + this.f19945L.ascent) / 2.0f;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v6, types: [android.graphics.ColorFilter] */
    /* renamed from: ai */
    private ColorFilter m3389ai() {
        return this.f19959Z != null ? this.f19959Z : this.f19960aa;
    }

    /* renamed from: aj */
    private void m3388aj() {
        this.f19965af = this.f19964ae ? C4727b.m2756b(this.f19977i) : null;
    }

    @TargetApi(21)
    /* renamed from: ak */
    private void m3387ak() {
        this.f19986r = new RippleDrawable(C4727b.m2756b(m3323m()), this.f19985q, f19933b);
    }

    /* renamed from: b */
    private void m3382b(Canvas canvas, Rect rect) {
        if (!this.f19970ak) {
            this.f19943J.setColor(this.f19951R);
            this.f19943J.setStyle(Paint.Style.FILL);
            this.f19943J.setColorFilter(m3389ai());
            this.f19946M.set(rect);
            canvas.drawRoundRect(this.f19946M, m3332j(), m3332j(), this.f19943J);
        }
    }

    /* renamed from: b */
    private void m3381b(Rect rect, RectF rectF) {
        rectF.setEmpty();
        if (this.f19978j != null) {
            float m3375c = this.f19934A + m3375c() + this.f19937D;
            float m3367d = this.f19941H + m3367d() + this.f19938E;
            if (C0535a.m20582i(this) == 0) {
                rectF.left = m3375c + rect.left;
                rectF.right = rect.right - m3367d;
            } else {
                rectF.left = m3367d + rect.left;
                rectF.right = rect.right - m3375c;
            }
            rectF.top = rect.top;
            rectF.bottom = rect.bottom;
        }
    }

    /* renamed from: b */
    private static boolean m3378b(C4719d c4719d) {
        return (c4719d == null || c4719d.f20414b == null || !c4719d.f20414b.isStateful()) ? false : true;
    }

    /* renamed from: c */
    private void m3371c(Canvas canvas, Rect rect) {
        if (this.f19976h <= 0.0f || this.f19970ak) {
            return;
        }
        this.f19943J.setColor(this.f19953T);
        this.f19943J.setStyle(Paint.Style.STROKE);
        if (!this.f19970ak) {
            this.f19943J.setColorFilter(m3389ai());
        }
        this.f19946M.set(rect.left + (this.f19976h / 2.0f), rect.top + (this.f19976h / 2.0f), rect.right - (this.f19976h / 2.0f), rect.bottom - (this.f19976h / 2.0f));
        float f = this.f19974f - (this.f19976h / 2.0f);
        canvas.drawRoundRect(this.f19946M, f, f, this.f19943J);
    }

    /* renamed from: c */
    private void m3370c(Rect rect, RectF rectF) {
        rectF.setEmpty();
        if (m3392af()) {
            float f = this.f19941H + this.f19940G;
            if (C0535a.m20582i(this) == 0) {
                rectF.right = rect.right - f;
                rectF.left = rectF.right - this.f19988t;
            } else {
                rectF.left = f + rect.left;
                rectF.right = rectF.left + this.f19988t;
            }
            rectF.top = rect.exactCenterY() - (this.f19988t / 2.0f);
            rectF.bottom = rectF.top + this.f19988t;
        }
    }

    /* renamed from: d */
    private void m3363d(Canvas canvas, Rect rect) {
        this.f19943J.setColor(this.f19954U);
        this.f19943J.setStyle(Paint.Style.FILL);
        this.f19946M.set(rect);
        if (!this.f19970ak) {
            canvas.drawRoundRect(this.f19946M, m3332j(), m3332j(), this.f19943J);
            return;
        }
        m2714a(new RectF(rect), this.f19948O);
        super.m2717a(canvas, this.f19943J, this.f19948O, m2740O());
    }

    /* renamed from: d */
    private void m3362d(Rect rect, RectF rectF) {
        rectF.set(rect);
        if (m3392af()) {
            float f = this.f19941H + this.f19940G + this.f19988t + this.f19939F + this.f19938E;
            if (C0535a.m20582i(this) == 0) {
                rectF.right = rect.right - f;
            } else {
                rectF.left = f + rect.left;
            }
        }
    }

    /* renamed from: d */
    private static boolean m3361d(Drawable drawable) {
        return drawable != null && drawable.isStateful();
    }

    /* renamed from: e */
    private void m3356e(Canvas canvas, Rect rect) {
        if (m3394ad()) {
            m3407a(rect, this.f19946M);
            float f = this.f19946M.left;
            float f2 = this.f19946M.top;
            canvas.translate(f, f2);
            this.f19980l.setBounds(0, 0, (int) this.f19946M.width(), (int) this.f19946M.height());
            this.f19980l.draw(canvas);
            canvas.translate(-f, -f2);
        }
    }

    /* renamed from: e */
    private void m3355e(Rect rect, RectF rectF) {
        rectF.setEmpty();
        if (m3392af()) {
            float f = this.f19941H + this.f19940G + this.f19988t + this.f19939F + this.f19938E;
            if (C0535a.m20582i(this) == 0) {
                rectF.right = rect.right;
                rectF.left = rectF.right - f;
            } else {
                rectF.left = rect.left;
                rectF.right = f + rect.left;
            }
            rectF.top = rect.top;
            rectF.bottom = rect.bottom;
        }
    }

    /* renamed from: e */
    private void m3354e(Drawable drawable) {
        if (drawable != null) {
            drawable.setCallback(null);
        }
    }

    /* renamed from: f */
    private void m3349f(Canvas canvas, Rect rect) {
        if (m3393ae()) {
            m3407a(rect, this.f19946M);
            float f = this.f19946M.left;
            float f2 = this.f19946M.top;
            canvas.translate(f, f2);
            this.f19992x.setBounds(0, 0, (int) this.f19946M.width(), (int) this.f19946M.height());
            this.f19992x.draw(canvas);
            canvas.translate(-f, -f2);
        }
    }

    /* renamed from: f */
    private void m3348f(Drawable drawable) {
        if (drawable == null) {
            return;
        }
        drawable.setCallback(this);
        C0535a.m20589b(drawable, C0535a.m20582i(this));
        drawable.setLevel(getLevel());
        drawable.setVisible(isVisible(), false);
        if (drawable == this.f19985q) {
            if (drawable.isStateful()) {
                drawable.setState(m3346g());
            }
            C0535a.m20595a(drawable, this.f19987s);
            return;
        }
        if (drawable.isStateful()) {
            drawable.setState(getState());
        }
        if (drawable != this.f19980l || !this.f19983o) {
            return;
        }
        C0535a.m20595a(this.f19980l, this.f19981m);
    }

    /* renamed from: g */
    private void m3343g(Canvas canvas, Rect rect) {
        int i;
        if (this.f19978j != null) {
            Paint.Align m3408a = m3408a(rect, this.f19947N);
            m3381b(rect, this.f19946M);
            if (this.f19949P.m2834b() != null) {
                this.f19949P.m2843a().drawableState = getState();
                this.f19949P.m2842a(this.f19942I);
            }
            this.f19949P.m2843a().setTextAlign(m3408a);
            boolean z = Math.round(this.f19949P.m2836a(m3320n().toString())) > Math.round(this.f19946M.width());
            if (z) {
                i = canvas.save();
                canvas.clipRect(this.f19946M);
            } else {
                i = 0;
            }
            CharSequence charSequence = this.f19978j;
            CharSequence charSequence2 = charSequence;
            if (z) {
                charSequence2 = charSequence;
                if (this.f19967ah != null) {
                    charSequence2 = TextUtils.ellipsize(this.f19978j, this.f19949P.m2843a(), this.f19946M.width(), this.f19967ah);
                }
            }
            canvas.drawText(charSequence2, 0, charSequence2.length(), this.f19947N.x, this.f19947N.y, this.f19949P.m2843a());
            if (!z) {
                return;
            }
            canvas.restoreToCount(i);
        }
    }

    /* renamed from: h */
    private void m3338h(Canvas canvas, Rect rect) {
        if (m3392af()) {
            m3370c(rect, this.f19946M);
            float f = this.f19946M.left;
            float f2 = this.f19946M.top;
            canvas.translate(f, f2);
            this.f19985q.setBounds(0, 0, (int) this.f19946M.width(), (int) this.f19946M.height());
            if (C4727b.f20437a) {
                this.f19986r.setBounds(this.f19985q.getBounds());
                this.f19986r.jumpToCurrentState();
                this.f19986r.draw(canvas);
            } else {
                this.f19985q.draw(canvas);
            }
            canvas.translate(-f, -f2);
        }
    }

    /* renamed from: h */
    private static boolean m3339h(ColorStateList colorStateList) {
        return colorStateList != null && colorStateList.isStateful();
    }

    /* renamed from: i */
    private void m3334i(ColorStateList colorStateList) {
        if (this.f19971c != colorStateList) {
            this.f19971c = colorStateList;
            onStateChange(getState());
        }
    }

    /* renamed from: i */
    private void m3333i(Canvas canvas, Rect rect) {
        if (this.f19944K != null) {
            this.f19944K.setColor(C0529a.m20633b(-16777216, 127));
            canvas.drawRect(rect, this.f19944K);
            if (m3394ad() || m3393ae()) {
                m3407a(rect, this.f19946M);
                canvas.drawRect(this.f19946M, this.f19944K);
            }
            if (this.f19978j != null) {
                canvas.drawLine(rect.left, rect.exactCenterY(), rect.right, rect.exactCenterY(), this.f19944K);
            }
            if (m3392af()) {
                m3370c(rect, this.f19946M);
                canvas.drawRect(this.f19946M, this.f19944K);
            }
            this.f19944K.setColor(C0529a.m20633b(-65536, 127));
            m3362d(rect, this.f19946M);
            canvas.drawRect(this.f19946M, this.f19944K);
            this.f19944K.setColor(C0529a.m20633b(-16711936, 127));
            m3355e(rect, this.f19946M);
            canvas.drawRect(this.f19946M, this.f19944K);
        }
    }

    /* renamed from: A */
    public C4512h m3427A() {
        return this.f19993y;
    }

    /* renamed from: A */
    public void m3426A(int i) {
        m3322m(this.f19942I.getResources().getDimension(i));
    }

    /* renamed from: B */
    public C4512h m3425B() {
        return this.f19994z;
    }

    /* renamed from: B */
    public void m3424B(int i) {
        this.f19969aj = i;
    }

    /* renamed from: C */
    public float m3423C() {
        return this.f19934A;
    }

    /* renamed from: D */
    public float m3422D() {
        return this.f19935B;
    }

    /* renamed from: E */
    public float m3421E() {
        return this.f19936C;
    }

    /* renamed from: F */
    public float m3420F() {
        return this.f19937D;
    }

    /* renamed from: G */
    public float m3419G() {
        return this.f19938E;
    }

    /* renamed from: H */
    public float m3418H() {
        return this.f19939F;
    }

    /* renamed from: I */
    public float m3417I() {
        return this.f19940G;
    }

    /* renamed from: J */
    public float m3416J() {
        return this.f19941H;
    }

    /* renamed from: K */
    public boolean m3415K() {
        return this.f19968ai;
    }

    /* renamed from: a */
    Paint.Align m3408a(Rect rect, PointF pointF) {
        pointF.set(0.0f, 0.0f);
        Paint.Align align = Paint.Align.LEFT;
        if (this.f19978j != null) {
            float m3375c = this.f19934A + m3375c() + this.f19937D;
            if (C0535a.m20582i(this) == 0) {
                pointF.x = m3375c + rect.left;
                align = Paint.Align.LEFT;
            } else {
                pointF.x = rect.right - m3375c;
                align = Paint.Align.RIGHT;
            }
            pointF.y = rect.centerY() - m3390ah();
        }
        return align;
    }

    /* renamed from: a */
    public void m3413a(float f) {
        if (this.f19973e != f) {
            this.f19973e = f;
            invalidateSelf();
            m3386b();
        }
    }

    /* renamed from: a */
    public void m3412a(int i) {
        m3410a(C0094a.m22277a(this.f19942I, i));
    }

    /* renamed from: a */
    public void m3410a(ColorStateList colorStateList) {
        if (this.f19972d != colorStateList) {
            this.f19972d = colorStateList;
            onStateChange(getState());
        }
    }

    /* renamed from: a */
    public void m3406a(RectF rectF) {
        m3355e(getBounds(), rectF);
    }

    /* renamed from: a */
    public void m3405a(Drawable drawable) {
        Drawable m3314q = m3314q();
        if (m3314q != drawable) {
            float m3375c = m3375c();
            this.f19980l = drawable != null ? C0535a.m20584g(drawable).mutate() : null;
            float m3375c2 = m3375c();
            m3354e(m3314q);
            if (m3394ad()) {
                m3348f(this.f19980l);
            }
            invalidateSelf();
            if (m3375c == m3375c2) {
                return;
            }
            m3386b();
        }
    }

    /* renamed from: a */
    public void m3404a(TextUtils.TruncateAt truncateAt) {
        this.f19967ah = truncateAt;
    }

    /* renamed from: a */
    public void m3402a(C4512h c4512h) {
        this.f19993y = c4512h;
    }

    /* renamed from: a */
    public void m3401a(AbstractC4588a abstractC4588a) {
        this.f19966ag = new WeakReference<>(abstractC4588a);
    }

    /* renamed from: a */
    public void m3400a(C4719d c4719d) {
        this.f19949P.m2838a(c4719d, this.f19942I);
    }

    /* renamed from: a */
    public void m3399a(CharSequence charSequence) {
        CharSequence charSequence2 = charSequence;
        if (charSequence == null) {
            charSequence2 = "";
        }
        if (!TextUtils.equals(this.f19978j, charSequence2)) {
            this.f19978j = charSequence2;
            this.f19949P.m2835a(true);
            invalidateSelf();
            m3386b();
        }
    }

    /* renamed from: a */
    public void m3398a(boolean z) {
        if (this.f19964ae != z) {
            this.f19964ae = z;
            m3388aj();
            onStateChange(getState());
        }
    }

    /* renamed from: a */
    public boolean m3414a() {
        return this.f19964ae;
    }

    /* renamed from: a */
    public boolean m3397a(int[] iArr) {
        boolean z;
        if (!Arrays.equals(this.f19963ad, iArr)) {
            this.f19963ad = iArr;
            if (m3392af()) {
                z = m3395a(getState(), iArr);
                return z;
            }
        }
        z = false;
        return z;
    }

    /* renamed from: b */
    protected void m3386b() {
        AbstractC4588a abstractC4588a = this.f19966ag.get();
        if (abstractC4588a != null) {
            abstractC4588a.mo3294a();
        }
    }

    @Deprecated
    /* renamed from: b */
    public void m3385b(float f) {
        if (this.f19974f != f) {
            this.f19974f = f;
            setShapeAppearanceModel(m2743L().m2677a(f));
        }
    }

    /* renamed from: b */
    public void m3384b(int i) {
        m3413a(this.f19942I.getResources().getDimension(i));
    }

    /* renamed from: b */
    public void m3383b(ColorStateList colorStateList) {
        if (this.f19975g != colorStateList) {
            this.f19975g = colorStateList;
            if (this.f19970ak) {
                m2695g(colorStateList);
            }
            onStateChange(getState());
        }
    }

    /* renamed from: b */
    public void m3380b(Drawable drawable) {
        Drawable m3306u = m3306u();
        if (m3306u != drawable) {
            float m3367d = m3367d();
            this.f19985q = drawable != null ? C0535a.m20584g(drawable).mutate() : null;
            if (C4727b.f20437a) {
                m3387ak();
            }
            float m3367d2 = m3367d();
            m3354e(m3306u);
            if (m3392af()) {
                m3348f(this.f19985q);
            }
            invalidateSelf();
            if (m3367d == m3367d2) {
                return;
            }
            m3386b();
        }
    }

    /* renamed from: b */
    public void m3379b(C4512h c4512h) {
        this.f19994z = c4512h;
    }

    /* renamed from: b */
    public void m3377b(CharSequence charSequence) {
        if (this.f19989u != charSequence) {
            this.f19989u = C0503a.m20692a().m20691a(charSequence);
            invalidateSelf();
        }
    }

    /* renamed from: b */
    public void m3376b(boolean z) {
        if (this.f19979k != z) {
            boolean m3394ad = m3394ad();
            this.f19979k = z;
            boolean m3394ad2 = m3394ad();
            if (!(m3394ad != m3394ad2)) {
                return;
            }
            if (m3394ad2) {
                m3348f(this.f19980l);
            } else {
                m3354e(this.f19980l);
            }
            invalidateSelf();
            m3386b();
        }
    }

    /* renamed from: c */
    public float m3375c() {
        return (m3394ad() || m3393ae()) ? this.f19935B + this.f19982n + this.f19936C : 0.0f;
    }

    /* renamed from: c */
    public void m3374c(float f) {
        if (this.f19976h != f) {
            this.f19976h = f;
            this.f19943J.setStrokeWidth(f);
            if (this.f19970ak) {
                super.m2691n(f);
            }
            invalidateSelf();
        }
    }

    @Deprecated
    /* renamed from: c */
    public void m3373c(int i) {
        m3385b(this.f19942I.getResources().getDimension(i));
    }

    /* renamed from: c */
    public void m3372c(ColorStateList colorStateList) {
        if (this.f19977i != colorStateList) {
            this.f19977i = colorStateList;
            m3388aj();
            onStateChange(getState());
        }
    }

    /* renamed from: c */
    public void m3369c(Drawable drawable) {
        if (this.f19992x != drawable) {
            float m3375c = m3375c();
            this.f19992x = drawable;
            float m3375c2 = m3375c();
            m3354e(this.f19992x);
            m3348f(this.f19992x);
            invalidateSelf();
            if (m3375c == m3375c2) {
                return;
            }
            m3386b();
        }
    }

    /* renamed from: c */
    public void m3368c(boolean z) {
        if (this.f19984p != z) {
            boolean m3392af = m3392af();
            this.f19984p = z;
            boolean m3392af2 = m3392af();
            if (!(m3392af != m3392af2)) {
                return;
            }
            if (m3392af2) {
                m3348f(this.f19985q);
            } else {
                m3354e(this.f19985q);
            }
            invalidateSelf();
            m3386b();
        }
    }

    /* renamed from: d */
    public float m3367d() {
        return m3392af() ? this.f19939F + this.f19988t + this.f19940G : 0.0f;
    }

    /* renamed from: d */
    public void m3366d(float f) {
        if (this.f19982n != f) {
            float m3375c = m3375c();
            this.f19982n = f;
            float m3375c2 = m3375c();
            invalidateSelf();
            if (m3375c == m3375c2) {
                return;
            }
            m3386b();
        }
    }

    /* renamed from: d */
    public void m3365d(int i) {
        m3383b(C0094a.m22277a(this.f19942I, i));
    }

    /* renamed from: d */
    public void m3364d(ColorStateList colorStateList) {
        this.f19983o = true;
        if (this.f19981m != colorStateList) {
            this.f19981m = colorStateList;
            if (m3394ad()) {
                C0535a.m20595a(this.f19980l, colorStateList);
            }
            onStateChange(getState());
        }
    }

    /* renamed from: d */
    public void m3360d(boolean z) {
        if (this.f19990v != z) {
            this.f19990v = z;
            float m3375c = m3375c();
            if (!z && this.f19956W) {
                this.f19956W = false;
            }
            float m3375c2 = m3375c();
            invalidateSelf();
            if (m3375c == m3375c2) {
                return;
            }
            m3386b();
        }
    }

    @Override // com.google.android.material.p159q.C4736g, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Rect bounds = getBounds();
        if (bounds.isEmpty() || getAlpha() == 0) {
            return;
        }
        int i = 0;
        if (this.f19958Y < 255) {
            i = C4578a.m3471a(canvas, bounds.left, bounds.top, bounds.right, bounds.bottom, this.f19958Y);
        }
        m3409a(canvas, bounds);
        m3382b(canvas, bounds);
        if (this.f19970ak) {
            super.draw(canvas);
        }
        m3371c(canvas, bounds);
        m3363d(canvas, bounds);
        m3356e(canvas, bounds);
        m3349f(canvas, bounds);
        if (this.f19968ai) {
            m3343g(canvas, bounds);
        }
        m3338h(canvas, bounds);
        m3333i(canvas, bounds);
        if (this.f19958Y >= 255) {
            return;
        }
        canvas.restoreToCount(i);
    }

    @Override // com.google.android.material.internal.C4697g.AbstractC4699a
    /* renamed from: e */
    public void mo2833e() {
        m3386b();
        invalidateSelf();
    }

    /* renamed from: e */
    public void m3359e(float f) {
        if (this.f19988t != f) {
            this.f19988t = f;
            invalidateSelf();
            if (!m3392af()) {
                return;
            }
            m3386b();
        }
    }

    /* renamed from: e */
    public void m3358e(int i) {
        m3374c(this.f19942I.getResources().getDimension(i));
    }

    /* renamed from: e */
    public void m3357e(ColorStateList colorStateList) {
        if (this.f19987s != colorStateList) {
            this.f19987s = colorStateList;
            if (m3392af()) {
                C0535a.m20595a(this.f19985q, colorStateList);
            }
            onStateChange(getState());
        }
    }

    /* renamed from: e */
    public void m3353e(boolean z) {
        if (this.f19991w != z) {
            boolean m3393ae = m3393ae();
            this.f19991w = z;
            boolean m3393ae2 = m3393ae();
            if (!(m3393ae != m3393ae2)) {
                return;
            }
            if (m3393ae2) {
                m3348f(this.f19992x);
            } else {
                m3354e(this.f19992x);
            }
            invalidateSelf();
            m3386b();
        }
    }

    /* renamed from: f */
    public void m3351f(float f) {
        if (this.f19934A != f) {
            this.f19934A = f;
            invalidateSelf();
            m3386b();
        }
    }

    /* renamed from: f */
    public void m3350f(int i) {
        m3372c(C0094a.m22277a(this.f19942I, i));
    }

    /* renamed from: f */
    public void m3347f(boolean z) {
        this.f19968ai = z;
    }

    /* renamed from: f */
    public boolean m3352f() {
        return m3361d(this.f19985q);
    }

    /* renamed from: g */
    public void m3345g(float f) {
        if (this.f19935B != f) {
            float m3375c = m3375c();
            this.f19935B = f;
            float m3375c2 = m3375c();
            invalidateSelf();
            if (m3375c == m3375c2) {
                return;
            }
            m3386b();
        }
    }

    /* renamed from: g */
    public void m3344g(int i) {
        m3400a(new C4719d(this.f19942I, i));
    }

    /* renamed from: g */
    public int[] m3346g() {
        return this.f19963ad;
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f19958Y;
    }

    @Override // android.graphics.drawable.Drawable
    public ColorFilter getColorFilter() {
        return this.f19959Z;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return (int) this.f19973e;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return Math.min(Math.round(this.f19934A + m3375c() + this.f19937D + this.f19949P.m2836a(m3320n().toString()) + this.f19938E + m3367d() + this.f19941H), this.f19969aj);
    }

    @Override // com.google.android.material.p159q.C4736g, android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // com.google.android.material.p159q.C4736g, android.graphics.drawable.Drawable
    @TargetApi(21)
    public void getOutline(Outline outline) {
        if (this.f19970ak) {
            super.getOutline(outline);
            return;
        }
        Rect bounds = getBounds();
        if (!bounds.isEmpty()) {
            outline.setRoundRect(bounds, this.f19974f);
        } else {
            outline.setRoundRect(0, 0, getIntrinsicWidth(), getIntrinsicHeight(), this.f19974f);
        }
        outline.setAlpha(getAlpha() / 255.0f);
    }

    /* renamed from: h */
    public ColorStateList m3342h() {
        return this.f19972d;
    }

    /* renamed from: h */
    public void m3341h(float f) {
        if (this.f19936C != f) {
            float m3375c = m3375c();
            this.f19936C = f;
            float m3375c2 = m3375c();
            invalidateSelf();
            if (m3375c == m3375c2) {
                return;
            }
            m3386b();
        }
    }

    /* renamed from: h */
    public void m3340h(int i) {
        m3376b(this.f19942I.getResources().getBoolean(i));
    }

    /* renamed from: i */
    public float m3337i() {
        return this.f19973e;
    }

    /* renamed from: i */
    public void m3336i(float f) {
        if (this.f19937D != f) {
            this.f19937D = f;
            invalidateSelf();
            m3386b();
        }
    }

    /* renamed from: i */
    public void m3335i(int i) {
        m3405a(C0094a.m22275b(this.f19942I, i));
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(Drawable drawable) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.invalidateDrawable(this);
        }
    }

    @Override // com.google.android.material.p159q.C4736g, android.graphics.drawable.Drawable
    public boolean isStateful() {
        return m3339h(this.f19971c) || m3339h(this.f19972d) || m3339h(this.f19975g) || (this.f19964ae && m3339h(this.f19965af)) || m3378b(this.f19949P.m2834b()) || m3391ag() || m3361d(this.f19980l) || m3361d(this.f19992x) || m3339h(this.f19961ab);
    }

    /* renamed from: j */
    public float m3332j() {
        return this.f19970ak ? m2730Y() : this.f19974f;
    }

    /* renamed from: j */
    public void m3331j(float f) {
        if (this.f19938E != f) {
            this.f19938E = f;
            invalidateSelf();
            m3386b();
        }
    }

    /* renamed from: j */
    public void m3330j(int i) {
        m3364d(C0094a.m22277a(this.f19942I, i));
    }

    /* renamed from: k */
    public ColorStateList m3329k() {
        return this.f19975g;
    }

    /* renamed from: k */
    public void m3328k(float f) {
        if (this.f19939F != f) {
            this.f19939F = f;
            invalidateSelf();
            if (!m3392af()) {
                return;
            }
            m3386b();
        }
    }

    /* renamed from: k */
    public void m3327k(int i) {
        m3366d(this.f19942I.getResources().getDimension(i));
    }

    /* renamed from: l */
    public float m3326l() {
        return this.f19976h;
    }

    /* renamed from: l */
    public void m3325l(float f) {
        if (this.f19940G != f) {
            this.f19940G = f;
            invalidateSelf();
            if (!m3392af()) {
                return;
            }
            m3386b();
        }
    }

    /* renamed from: l */
    public void m3324l(int i) {
        m3380b(C0094a.m22275b(this.f19942I, i));
    }

    /* renamed from: m */
    public ColorStateList m3323m() {
        return this.f19977i;
    }

    /* renamed from: m */
    public void m3322m(float f) {
        if (this.f19941H != f) {
            this.f19941H = f;
            invalidateSelf();
            m3386b();
        }
    }

    /* renamed from: m */
    public void m3321m(int i) {
        m3357e(C0094a.m22277a(this.f19942I, i));
    }

    /* renamed from: n */
    public CharSequence m3320n() {
        return this.f19978j;
    }

    /* renamed from: n */
    public void m3319n(int i) {
        m3359e(this.f19942I.getResources().getDimension(i));
    }

    /* renamed from: o */
    public C4719d m3318o() {
        return this.f19949P.m2834b();
    }

    /* renamed from: o */
    public void m3317o(int i) {
        m3360d(this.f19942I.getResources().getBoolean(i));
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onLayoutDirectionChanged(int i) {
        boolean onLayoutDirectionChanged = super.onLayoutDirectionChanged(i);
        boolean z = onLayoutDirectionChanged;
        if (m3394ad()) {
            z = onLayoutDirectionChanged | C0535a.m20589b(this.f19980l, i);
        }
        boolean z2 = z;
        if (m3393ae()) {
            z2 = z | C0535a.m20589b(this.f19992x, i);
        }
        boolean z3 = z2;
        if (m3392af()) {
            z3 = z2 | C0535a.m20589b(this.f19985q, i);
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
        if (m3394ad()) {
            z = onLevelChange | this.f19980l.setLevel(i);
        }
        boolean z2 = z;
        if (m3393ae()) {
            z2 = z | this.f19992x.setLevel(i);
        }
        boolean z3 = z2;
        if (m3392af()) {
            z3 = z2 | this.f19985q.setLevel(i);
        }
        if (z3) {
            invalidateSelf();
        }
        return z3;
    }

    @Override // com.google.android.material.p159q.C4736g, android.graphics.drawable.Drawable, com.google.android.material.internal.C4697g.AbstractC4699a
    public boolean onStateChange(int[] iArr) {
        if (this.f19970ak) {
            super.onStateChange(iArr);
        }
        return m3395a(iArr, m3346g());
    }

    /* renamed from: p */
    public TextUtils.TruncateAt m3316p() {
        return this.f19967ah;
    }

    /* renamed from: p */
    public void m3315p(int i) {
        m3353e(this.f19942I.getResources().getBoolean(i));
    }

    /* renamed from: q */
    public Drawable m3314q() {
        return this.f19980l != null ? C0535a.m20583h(this.f19980l) : null;
    }

    /* renamed from: q */
    public void m3313q(int i) {
        m3369c(C0094a.m22275b(this.f19942I, i));
    }

    /* renamed from: r */
    public ColorStateList m3312r() {
        return this.f19981m;
    }

    /* renamed from: r */
    public void m3311r(int i) {
        m3402a(C4512h.m3844a(this.f19942I, i));
    }

    /* renamed from: s */
    public float m3310s() {
        return this.f19982n;
    }

    /* renamed from: s */
    public void m3309s(int i) {
        m3379b(C4512h.m3844a(this.f19942I, i));
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.scheduleDrawable(this, runnable, j);
        }
    }

    @Override // com.google.android.material.p159q.C4736g, android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        if (this.f19958Y != i) {
            this.f19958Y = i;
            invalidateSelf();
        }
    }

    @Override // com.google.android.material.p159q.C4736g, android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        if (this.f19959Z != colorFilter) {
            this.f19959Z = colorFilter;
            invalidateSelf();
        }
    }

    @Override // com.google.android.material.p159q.C4736g, android.graphics.drawable.Drawable, androidx.core.graphics.drawable.AbstractC0536b
    public void setTintList(ColorStateList colorStateList) {
        if (this.f19961ab != colorStateList) {
            this.f19961ab = colorStateList;
            onStateChange(getState());
        }
    }

    @Override // com.google.android.material.p159q.C4736g, android.graphics.drawable.Drawable, androidx.core.graphics.drawable.AbstractC0536b
    public void setTintMode(PorterDuff.Mode mode) {
        if (this.f19962ac != mode) {
            this.f19962ac = mode;
            this.f19960aa = C4682a.m2917a(this, this.f19961ab, mode);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        boolean visible = super.setVisible(z, z2);
        boolean z3 = visible;
        if (m3394ad()) {
            z3 = visible | this.f19980l.setVisible(z, z2);
        }
        boolean z4 = z3;
        if (m3393ae()) {
            z4 = z3 | this.f19992x.setVisible(z, z2);
        }
        boolean z5 = z4;
        if (m3392af()) {
            z5 = z4 | this.f19985q.setVisible(z, z2);
        }
        if (z5) {
            invalidateSelf();
        }
        return z5;
    }

    /* renamed from: t */
    public void m3307t(int i) {
        m3351f(this.f19942I.getResources().getDimension(i));
    }

    /* renamed from: t */
    public boolean m3308t() {
        return this.f19984p;
    }

    /* renamed from: u */
    public Drawable m3306u() {
        return this.f19985q != null ? C0535a.m20583h(this.f19985q) : null;
    }

    /* renamed from: u */
    public void m3305u(int i) {
        m3345g(this.f19942I.getResources().getDimension(i));
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.unscheduleDrawable(this, runnable);
        }
    }

    /* renamed from: v */
    public ColorStateList m3304v() {
        return this.f19987s;
    }

    /* renamed from: v */
    public void m3303v(int i) {
        m3341h(this.f19942I.getResources().getDimension(i));
    }

    /* renamed from: w */
    public float m3302w() {
        return this.f19988t;
    }

    /* renamed from: w */
    public void m3301w(int i) {
        m3336i(this.f19942I.getResources().getDimension(i));
    }

    /* renamed from: x */
    public CharSequence m3300x() {
        return this.f19989u;
    }

    /* renamed from: x */
    public void m3299x(int i) {
        m3331j(this.f19942I.getResources().getDimension(i));
    }

    /* renamed from: y */
    public void m3297y(int i) {
        m3328k(this.f19942I.getResources().getDimension(i));
    }

    /* renamed from: y */
    public boolean m3298y() {
        return this.f19990v;
    }

    /* renamed from: z */
    public Drawable m3296z() {
        return this.f19992x;
    }

    /* renamed from: z */
    public void m3295z(int i) {
        m3325l(this.f19942I.getResources().getDimension(i));
    }
}
