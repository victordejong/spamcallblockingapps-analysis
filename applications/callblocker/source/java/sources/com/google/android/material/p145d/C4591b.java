package com.google.android.material.p145d;

import android.content.res.ColorStateList;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Build;
import androidx.core.graphics.drawable.C0535a;
import androidx.core.p026h.C0595u;
import com.google.android.material.C4492a;
import com.google.android.material.p157o.C4727b;
import com.google.android.material.p159q.C4733d;
import com.google.android.material.p159q.C4734e;
import com.google.android.material.p159q.C4736g;
import com.google.android.material.p159q.C4742j;
import com.google.android.material.p159q.C4743k;
/* renamed from: com.google.android.material.d.b */
/* loaded from: classes-dex2jar.jar:com/google/android/material/d/b.class */
public class C4591b {

    /* renamed from: a */
    private static final int[] f20004a = {16842912};

    /* renamed from: b */
    private static final double f20005b = Math.cos(Math.toRadians(45.0d));

    /* renamed from: c */
    private final C4589a f20006c;

    /* renamed from: d */
    private final Rect f20007d;

    /* renamed from: e */
    private final C4736g f20008e;

    /* renamed from: f */
    private final C4736g f20009f;

    /* renamed from: g */
    private final int f20010g;

    /* renamed from: h */
    private final int f20011h;

    /* renamed from: i */
    private int f20012i;

    /* renamed from: j */
    private Drawable f20013j;

    /* renamed from: k */
    private Drawable f20014k;

    /* renamed from: l */
    private ColorStateList f20015l;

    /* renamed from: m */
    private ColorStateList f20016m;

    /* renamed from: n */
    private C4743k f20017n;

    /* renamed from: o */
    private ColorStateList f20018o;

    /* renamed from: p */
    private Drawable f20019p;

    /* renamed from: q */
    private LayerDrawable f20020q;

    /* renamed from: r */
    private C4736g f20021r;

    /* renamed from: s */
    private C4736g f20022s;

    /* renamed from: t */
    private boolean f20023t;

    /* renamed from: u */
    private boolean f20024u;

    /* renamed from: A */
    private float m3286A() {
        return Math.max(Math.max(m3272a(this.f20017n.m2667b(), this.f20008e.m2730Y()), m3272a(this.f20017n.m2666c(), this.f20008e.m2729Z())), Math.max(m3272a(this.f20017n.m2665d(), this.f20008e.m2709ab()), m3272a(this.f20017n.m2664e(), this.f20008e.m2710aa())));
    }

    /* renamed from: B */
    private Drawable m3285B() {
        if (this.f20019p == null) {
            this.f20019p = m3284C();
        }
        if (this.f20020q == null) {
            this.f20020q = new LayerDrawable(new Drawable[]{this.f20019p, this.f20009f, m3281F()});
            this.f20020q.setId(2, C4492a.C4498f.mtrl_card_checked_layer_id);
        }
        return this.f20020q;
    }

    /* renamed from: C */
    private Drawable m3284C() {
        RippleDrawable m3283D;
        if (C4727b.f20437a) {
            this.f20022s = m3280G();
            m3283D = new RippleDrawable(this.f20015l, null, this.f20022s);
        } else {
            m3283D = m3283D();
        }
        return m3283D;
    }

    /* renamed from: D */
    private Drawable m3283D() {
        StateListDrawable stateListDrawable = new StateListDrawable();
        this.f20021r = m3280G();
        this.f20021r.m2697f(this.f20015l);
        stateListDrawable.addState(new int[]{16842919}, this.f20021r);
        return stateListDrawable;
    }

    /* renamed from: E */
    private void m3282E() {
        if (C4727b.f20437a && this.f20019p != null) {
            ((RippleDrawable) this.f20019p).setColor(this.f20015l);
        } else if (this.f20021r == null) {
        } else {
            this.f20021r.m2697f(this.f20015l);
        }
    }

    /* renamed from: F */
    private Drawable m3281F() {
        StateListDrawable stateListDrawable = new StateListDrawable();
        if (this.f20014k != null) {
            stateListDrawable.addState(f20004a, this.f20014k);
        }
        return stateListDrawable;
    }

    /* renamed from: G */
    private C4736g m3280G() {
        return new C4736g(this.f20017n);
    }

    /* renamed from: a */
    private float m3272a(C4733d c4733d, float f) {
        return c4733d instanceof C4742j ? (float) ((1.0d - f20005b) * f) : c4733d instanceof C4734e ? f / 2.0f : 0.0f;
    }

    /* renamed from: b */
    private void m3266b(Drawable drawable) {
        if (Build.VERSION.SDK_INT < 23 || !(this.f20006c.getForeground() instanceof InsetDrawable)) {
            this.f20006c.setForeground(m3262c(drawable));
        } else {
            ((InsetDrawable) this.f20006c.getForeground()).setDrawable(drawable);
        }
    }

    /* renamed from: c */
    private Drawable m3262c(Drawable drawable) {
        int i;
        int i2;
        if ((Build.VERSION.SDK_INT < 21) || this.f20006c.getUseCompatPadding()) {
            i2 = (int) Math.ceil(m3243u());
            i = (int) Math.ceil(m3242v());
        } else {
            i = 0;
            i2 = 0;
        }
        return new InsetDrawable(drawable, i, i2, i, i2) { // from class: com.google.android.material.d.b.1
            @Override // android.graphics.drawable.InsetDrawable, android.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
            public boolean getPadding(Rect rect) {
                return false;
            }
        };
    }

    /* renamed from: u */
    private float m3243u() {
        return (m3238z() ? m3286A() : 0.0f) + (1.5f * this.f20006c.getMaxCardElevation());
    }

    /* renamed from: v */
    private float m3242v() {
        return (m3238z() ? m3286A() : 0.0f) + this.f20006c.getMaxCardElevation();
    }

    /* renamed from: w */
    private boolean m3241w() {
        return Build.VERSION.SDK_INT >= 21 && this.f20008e.m2708ac();
    }

    /* renamed from: x */
    private float m3240x() {
        return (!this.f20006c.getPreventCornerOverlap() || (Build.VERSION.SDK_INT >= 21 && !this.f20006c.getUseCompatPadding())) ? 0.0f : (float) ((1.0d - f20005b) * this.f20006c.getCardViewRadius());
    }

    /* renamed from: y */
    private boolean m3239y() {
        return this.f20006c.getPreventCornerOverlap() && !m3241w();
    }

    /* renamed from: z */
    private boolean m3238z() {
        return this.f20006c.getPreventCornerOverlap() && m3241w() && this.f20006c.getUseCompatPadding();
    }

    /* renamed from: a */
    public void m3278a(float f) {
        m3271a(this.f20017n.m2677a(f));
        this.f20013j.invalidateSelf();
        if (m3238z() || m3239y()) {
            m3250n();
        }
        if (m3238z()) {
            m3252l();
        }
    }

    /* renamed from: a */
    public void m3277a(int i) {
        if (i == this.f20012i) {
            return;
        }
        this.f20012i = i;
        m3251m();
    }

    /* renamed from: a */
    public void m3276a(int i, int i2) {
        int i3;
        if (this.f20020q != null) {
            int i4 = (i - this.f20010g) - this.f20011h;
            int i5 = this.f20010g;
            int i6 = this.f20011h;
            int i7 = this.f20010g;
            if (C0595u.m20320g(this.f20006c) == 1) {
                i3 = i7;
                i7 = i4;
            } else {
                i3 = i4;
            }
            this.f20020q.setLayerInset(2, i3, this.f20010g, i7, (i2 - i5) - i6);
        }
    }

    /* renamed from: a */
    public void m3275a(int i, int i2, int i3, int i4) {
        this.f20007d.set(i, i2, i3, i4);
        m3250n();
    }

    /* renamed from: a */
    public void m3274a(ColorStateList colorStateList) {
        if (this.f20018o == colorStateList) {
            return;
        }
        this.f20018o = colorStateList;
        m3251m();
    }

    /* renamed from: a */
    public void m3273a(Drawable drawable) {
        this.f20014k = drawable;
        if (drawable != null) {
            this.f20014k = C0535a.m20584g(drawable.mutate());
            C0535a.m20595a(this.f20014k, this.f20016m);
        }
        if (this.f20020q != null) {
            this.f20020q.setDrawableByLayerId(C4492a.C4498f.mtrl_card_checked_layer_id, m3281F());
        }
    }

    /* renamed from: a */
    public void m3271a(C4743k c4743k) {
        this.f20017n = c4743k;
        this.f20008e.setShapeAppearanceModel(c4743k);
        if (this.f20009f != null) {
            this.f20009f.setShapeAppearanceModel(c4743k);
        }
        if (this.f20022s != null) {
            this.f20022s.setShapeAppearanceModel(c4743k);
        }
        if (this.f20021r != null) {
            this.f20021r.setShapeAppearanceModel(c4743k);
        }
    }

    /* renamed from: a */
    public void m3270a(boolean z) {
        this.f20023t = z;
    }

    /* renamed from: a */
    public boolean m3279a() {
        return this.f20023t;
    }

    /* renamed from: b */
    public int m3269b() {
        return this.f20018o == null ? -1 : this.f20018o.getDefaultColor();
    }

    /* renamed from: b */
    public void m3268b(float f) {
        this.f20008e.m2689p(f);
        if (this.f20009f != null) {
            this.f20009f.m2689p(f);
        }
        if (this.f20022s != null) {
            this.f20022s.m2689p(f);
        }
    }

    /* renamed from: b */
    public void m3267b(ColorStateList colorStateList) {
        this.f20008e.m2697f(colorStateList);
    }

    /* renamed from: b */
    public void m3265b(boolean z) {
        this.f20024u = z;
    }

    /* renamed from: c */
    public ColorStateList m3264c() {
        return this.f20018o;
    }

    /* renamed from: c */
    public void m3263c(ColorStateList colorStateList) {
        this.f20015l = colorStateList;
        m3282E();
    }

    /* renamed from: d */
    public int m3261d() {
        return this.f20012i;
    }

    /* renamed from: d */
    public void m3260d(ColorStateList colorStateList) {
        this.f20016m = colorStateList;
        if (this.f20014k != null) {
            C0535a.m20595a(this.f20014k, colorStateList);
        }
    }

    /* renamed from: e */
    public C4736g m3259e() {
        return this.f20008e;
    }

    /* renamed from: f */
    public ColorStateList m3258f() {
        return this.f20008e.m2742M();
    }

    /* renamed from: g */
    public Rect m3257g() {
        return this.f20007d;
    }

    /* renamed from: h */
    public void m3256h() {
        Drawable drawable = this.f20013j;
        this.f20013j = this.f20006c.isClickable() ? m3285B() : this.f20009f;
        if (drawable != this.f20013j) {
            m3266b(this.f20013j);
        }
    }

    /* renamed from: i */
    public float m3255i() {
        return this.f20008e.m2730Y();
    }

    /* renamed from: j */
    public float m3254j() {
        return this.f20008e.m2738Q();
    }

    /* renamed from: k */
    public void m3253k() {
        this.f20008e.m2687r(this.f20006c.getCardElevation());
    }

    /* renamed from: l */
    public void m3252l() {
        if (!m3279a()) {
            this.f20006c.setBackgroundInternal(m3262c(this.f20008e));
        }
        this.f20006c.setForeground(m3262c(this.f20013j));
    }

    /* renamed from: m */
    void m3251m() {
        this.f20009f.m2726a(this.f20012i, this.f20018o);
    }

    /* renamed from: n */
    public void m3250n() {
        int m3286A = (int) ((m3239y() || m3238z() ? m3286A() : 0.0f) - m3240x());
        this.f20006c.m3290b(this.f20007d.left + m3286A, this.f20007d.top + m3286A, this.f20007d.right + m3286A, m3286A + this.f20007d.bottom);
    }

    /* renamed from: o */
    public boolean m3249o() {
        return this.f20024u;
    }

    /* renamed from: p */
    public ColorStateList m3248p() {
        return this.f20016m;
    }

    /* renamed from: q */
    public ColorStateList m3247q() {
        return this.f20015l;
    }

    /* renamed from: r */
    public Drawable m3246r() {
        return this.f20014k;
    }

    /* renamed from: s */
    public void m3245s() {
        if (this.f20019p != null) {
            Rect bounds = this.f20019p.getBounds();
            int i = bounds.bottom;
            this.f20019p.setBounds(bounds.left, bounds.top, bounds.right, i - 1);
            this.f20019p.setBounds(bounds.left, bounds.top, bounds.right, i);
        }
    }

    /* renamed from: t */
    public C4743k m3244t() {
        return this.f20017n;
    }
}
