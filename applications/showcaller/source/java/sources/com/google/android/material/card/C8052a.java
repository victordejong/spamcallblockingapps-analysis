package com.google.android.material.card;

import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Build;
import android.util.AttributeSet;
import androidx.core.graphics.drawable.C0615a;
import p078c.p084c.p085a.p096b.C1886b;
import p078c.p084c.p085a.p096b.C1890f;
import p078c.p084c.p085a.p096b.C1895k;
import p078c.p084c.p085a.p096b.C1896l;
import p078c.p084c.p085a.p096b.p099o.C1909a;
import p078c.p084c.p085a.p096b.p105u.C1919c;
import p078c.p084c.p085a.p096b.p106v.C1928b;
import p078c.p084c.p085a.p096b.p108x.C1934d;
import p078c.p084c.p085a.p096b.p108x.C1935e;
import p078c.p084c.p085a.p096b.p108x.C1938h;
import p078c.p084c.p085a.p096b.p108x.C1945l;
import p078c.p084c.p085a.p096b.p108x.C1946m;
/* renamed from: com.google.android.material.card.a */
/* loaded from: classes2-dex2jar.jar:com/google/android/material/card/a.class */
public class C8052a {

    /* renamed from: a */
    private static final int[] f36395a = {16842912};

    /* renamed from: b */
    private static final double f36396b = Math.cos(Math.toRadians(45.0d));

    /* renamed from: c */
    private final MaterialCardView f36397c;

    /* renamed from: e */
    private final C1938h f36399e;

    /* renamed from: f */
    private final C1938h f36400f;

    /* renamed from: g */
    private int f36401g;

    /* renamed from: h */
    private int f36402h;

    /* renamed from: i */
    private int f36403i;

    /* renamed from: j */
    private Drawable f36404j;

    /* renamed from: k */
    private Drawable f36405k;

    /* renamed from: l */
    private ColorStateList f36406l;

    /* renamed from: m */
    private ColorStateList f36407m;

    /* renamed from: n */
    private C1946m f36408n;

    /* renamed from: o */
    private ColorStateList f36409o;

    /* renamed from: p */
    private Drawable f36410p;

    /* renamed from: q */
    private LayerDrawable f36411q;

    /* renamed from: r */
    private C1938h f36412r;

    /* renamed from: s */
    private C1938h f36413s;

    /* renamed from: u */
    private boolean f36415u;

    /* renamed from: d */
    private final Rect f36398d = new Rect();

    /* renamed from: t */
    private boolean f36414t = false;

    /* renamed from: com.google.android.material.card.a$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/card/a$a.class */
    public class C8053a extends InsetDrawable {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C8053a(Drawable drawable, int i, int i2, int i3, int i4) {
            super(drawable, i, i2, i3, i4);
            C8052a.this = r8;
        }

        @Override // android.graphics.drawable.Drawable
        public int getMinimumHeight() {
            return -1;
        }

        @Override // android.graphics.drawable.Drawable
        public int getMinimumWidth() {
            return -1;
        }

        @Override // android.graphics.drawable.InsetDrawable, android.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
        public boolean getPadding(Rect rect) {
            return false;
        }
    }

    public C8052a(MaterialCardView materialCardView, AttributeSet attributeSet, int i, int i2) {
        this.f36397c = materialCardView;
        C1938h c1938h = new C1938h(materialCardView.getContext(), attributeSet, i, i2);
        this.f36399e = c1938h;
        c1938h.m28636P(materialCardView.getContext());
        c1938h.m28613g0(-12303292);
        C1946m.C1948b m28554v = c1938h.m28648D().m28554v();
        TypedArray obtainStyledAttributes = materialCardView.getContext().obtainStyledAttributes(attributeSet, C1896l.CardView, i, C1895k.CardView);
        int i3 = C1896l.CardView_cardCornerRadius;
        if (obtainStyledAttributes.hasValue(i3)) {
            m28554v.m28526o(obtainStyledAttributes.getDimension(i3, 0.0f));
        }
        this.f36400f = new C1938h();
        m5288R(m28554v.m28528m());
        obtainStyledAttributes.recycle();
    }

    /* renamed from: B */
    private Drawable m5304B(Drawable drawable) {
        int i;
        int i2;
        if ((Build.VERSION.SDK_INT < 21) || this.f36397c.getUseCompatPadding()) {
            i2 = (int) Math.ceil(m5273d());
            i = (int) Math.ceil(m5275c());
        } else {
            i = 0;
            i2 = 0;
        }
        return new C8053a(drawable, i, i2, i, i2);
    }

    /* renamed from: V */
    private boolean m5284V() {
        return this.f36397c.getPreventCornerOverlap() && !m5271e();
    }

    /* renamed from: W */
    private boolean m5283W() {
        return this.f36397c.getPreventCornerOverlap() && m5271e() && this.f36397c.getUseCompatPadding();
    }

    /* renamed from: a */
    private float m5279a() {
        return Math.max(Math.max(m5277b(this.f36408n.m28559q(), this.f36399e.m28643I()), m5277b(this.f36408n.m28557s(), this.f36399e.m28642J())), Math.max(m5277b(this.f36408n.m28565k(), this.f36399e.m28591t()), m5277b(this.f36408n.m28567i(), this.f36399e.m28592s())));
    }

    /* renamed from: a0 */
    private void m5278a0(Drawable drawable) {
        if (Build.VERSION.SDK_INT < 23 || !(this.f36397c.getForeground() instanceof InsetDrawable)) {
            this.f36397c.setForeground(m5304B(drawable));
        } else {
            ((InsetDrawable) this.f36397c.getForeground()).setDrawable(drawable);
        }
    }

    /* renamed from: b */
    private float m5277b(C1934d c1934d, float f) {
        if (c1934d instanceof C1945l) {
            return (float) ((1.0d - f36396b) * f);
        }
        if (!(c1934d instanceof C1935e)) {
            return 0.0f;
        }
        return f / 2.0f;
    }

    /* renamed from: c */
    private float m5275c() {
        return this.f36397c.getMaxCardElevation() + (m5283W() ? m5279a() : 0.0f);
    }

    /* renamed from: c0 */
    private void m5274c0() {
        Drawable drawable;
        if (C1928b.f6876a && (drawable = this.f36410p) != null) {
            ((RippleDrawable) drawable).setColor(this.f36406l);
            return;
        }
        C1938h c1938h = this.f36412r;
        if (c1938h == null) {
            return;
        }
        c1938h.m28625a0(this.f36406l);
    }

    /* renamed from: d */
    private float m5273d() {
        return (this.f36397c.getMaxCardElevation() * 1.5f) + (m5283W() ? m5279a() : 0.0f);
    }

    /* renamed from: e */
    private boolean m5271e() {
        return Build.VERSION.SDK_INT >= 21 && this.f36399e.m28633S();
    }

    /* renamed from: f */
    private Drawable m5270f() {
        StateListDrawable stateListDrawable = new StateListDrawable();
        Drawable drawable = this.f36405k;
        if (drawable != null) {
            stateListDrawable.addState(f36395a, drawable);
        }
        return stateListDrawable;
    }

    /* renamed from: g */
    private Drawable m5269g() {
        StateListDrawable stateListDrawable = new StateListDrawable();
        C1938h m5267i = m5267i();
        this.f36412r = m5267i;
        m5267i.m28625a0(this.f36406l);
        stateListDrawable.addState(new int[]{16842919}, this.f36412r);
        return stateListDrawable;
    }

    /* renamed from: h */
    private Drawable m5268h() {
        if (C1928b.f6876a) {
            this.f36413s = m5267i();
            return new RippleDrawable(this.f36406l, null, this.f36413s);
        }
        return m5269g();
    }

    /* renamed from: i */
    private C1938h m5267i() {
        return new C1938h(this.f36408n);
    }

    /* renamed from: r */
    private Drawable m5258r() {
        if (this.f36410p == null) {
            this.f36410p = m5268h();
        }
        if (this.f36411q == null) {
            LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{this.f36410p, this.f36400f, m5270f()});
            this.f36411q = layerDrawable;
            layerDrawable.setId(2, C1890f.mtrl_card_checked_layer_id);
        }
        return this.f36411q;
    }

    /* renamed from: t */
    private float m5256t() {
        if (this.f36397c.getPreventCornerOverlap()) {
            if (Build.VERSION.SDK_INT >= 21 && !this.f36397c.getUseCompatPadding()) {
                return 0.0f;
            }
            return (float) ((1.0d - f36396b) * this.f36397c.getCardViewRadius());
        }
        return 0.0f;
    }

    /* renamed from: A */
    public Rect m5305A() {
        return this.f36398d;
    }

    /* renamed from: C */
    public boolean m5303C() {
        return this.f36414t;
    }

    /* renamed from: D */
    public boolean m5302D() {
        return this.f36415u;
    }

    /* renamed from: E */
    public void m5301E(TypedArray typedArray) {
        ColorStateList m28686a = C1919c.m28686a(this.f36397c.getContext(), typedArray, C1896l.MaterialCardView_strokeColor);
        this.f36409o = m28686a;
        if (m28686a == null) {
            this.f36409o = ColorStateList.valueOf(-1);
        }
        this.f36403i = typedArray.getDimensionPixelSize(C1896l.MaterialCardView_strokeWidth, 0);
        boolean z = typedArray.getBoolean(C1896l.MaterialCardView_android_checkable, false);
        this.f36415u = z;
        this.f36397c.setLongClickable(z);
        this.f36407m = C1919c.m28686a(this.f36397c.getContext(), typedArray, C1896l.MaterialCardView_checkedIconTint);
        m5295K(C1919c.m28683d(this.f36397c.getContext(), typedArray, C1896l.MaterialCardView_checkedIcon));
        m5293M(typedArray.getDimensionPixelSize(C1896l.MaterialCardView_checkedIconSize, 0));
        m5294L(typedArray.getDimensionPixelSize(C1896l.MaterialCardView_checkedIconMargin, 0));
        ColorStateList m28686a2 = C1919c.m28686a(this.f36397c.getContext(), typedArray, C1896l.MaterialCardView_rippleColor);
        this.f36406l = m28686a2;
        if (m28686a2 == null) {
            this.f36406l = ColorStateList.valueOf(C1909a.m28715d(this.f36397c, C1886b.colorControlHighlight));
        }
        m5297I(C1919c.m28686a(this.f36397c.getContext(), typedArray, C1896l.MaterialCardView_cardForegroundColor));
        m5274c0();
        m5280Z();
        m5272d0();
        this.f36397c.setBackgroundInternal(m5304B(this.f36399e));
        C1938h m5258r = this.f36397c.isClickable() ? m5258r() : this.f36400f;
        this.f36404j = m5258r;
        this.f36397c.setForeground(m5304B(m5258r));
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0042, code lost:
        if (r7.f36397c.getUseCompatPadding() != false) goto L12;
     */
    /* renamed from: F */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m5300F(int r8, int r9) {
        /*
            r7 = this;
            r0 = r7
            android.graphics.drawable.LayerDrawable r0 = r0.f36411q
            if (r0 == 0) goto L92
            r0 = r7
            int r0 = r0.f36401g
            r10 = r0
            r0 = r7
            int r0 = r0.f36402h
            r11 = r0
            r0 = r8
            r1 = r10
            int r0 = r0 - r1
            r1 = r11
            int r0 = r0 - r1
            r12 = r0
            r0 = r9
            r1 = r10
            int r0 = r0 - r1
            r1 = r11
            int r0 = r0 - r1
            r11 = r0
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 21
            if (r0 >= r1) goto L2f
            r0 = 1
            r8 = r0
            goto L31
        L2f:
            r0 = 0
            r8 = r0
        L31:
            r0 = r8
            if (r0 != 0) goto L45
            r0 = r12
            r8 = r0
            r0 = r11
            r9 = r0
            r0 = r7
            com.google.android.material.card.MaterialCardView r0 = r0.f36397c
            boolean r0 = r0.getUseCompatPadding()
            if (r0 == 0) goto L63
        L45:
            r0 = r11
            r1 = r7
            float r1 = r1.m5273d()
            r2 = 1073741824(0x40000000, float:2.0)
            float r1 = r1 * r2
            double r1 = (double) r1
            double r1 = java.lang.Math.ceil(r1)
            int r1 = (int) r1
            int r0 = r0 - r1
            r9 = r0
            r0 = r12
            r1 = r7
            float r1 = r1.m5275c()
            r2 = 1073741824(0x40000000, float:2.0)
            float r1 = r1 * r2
            double r1 = (double) r1
            double r1 = java.lang.Math.ceil(r1)
            int r1 = (int) r1
            int r0 = r0 - r1
            r8 = r0
        L63:
            r0 = r7
            int r0 = r0.f36401g
            r12 = r0
            r0 = r7
            com.google.android.material.card.MaterialCardView r0 = r0.f36397c
            int r0 = p020b.p041h.p050l.C1679w.m29346C(r0)
            r1 = 1
            if (r0 != r1) goto L7a
            r0 = r8
            r11 = r0
            goto L81
        L7a:
            r0 = r12
            r11 = r0
            r0 = r8
            r12 = r0
        L81:
            r0 = r7
            android.graphics.drawable.LayerDrawable r0 = r0.f36411q
            r1 = 2
            r2 = r12
            r3 = r7
            int r3 = r3.f36401g
            r4 = r11
            r5 = r9
            r0.setLayerInset(r1, r2, r3, r4, r5)
        L92:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.card.C8052a.m5300F(int, int):void");
    }

    /* renamed from: G */
    public void m5299G(boolean z) {
        this.f36414t = z;
    }

    /* renamed from: H */
    public void m5298H(ColorStateList colorStateList) {
        this.f36399e.m28625a0(colorStateList);
    }

    /* renamed from: I */
    public void m5297I(ColorStateList colorStateList) {
        C1938h c1938h = this.f36400f;
        ColorStateList colorStateList2 = colorStateList;
        if (colorStateList == null) {
            colorStateList2 = ColorStateList.valueOf(0);
        }
        c1938h.m28625a0(colorStateList2);
    }

    /* renamed from: J */
    public void m5296J(boolean z) {
        this.f36415u = z;
    }

    /* renamed from: K */
    public void m5295K(Drawable drawable) {
        this.f36405k = drawable;
        if (drawable != null) {
            Drawable m33212r = C0615a.m33212r(drawable.mutate());
            this.f36405k = m33212r;
            C0615a.m33215o(m33212r, this.f36407m);
        }
        if (this.f36411q != null) {
            this.f36411q.setDrawableByLayerId(C1890f.mtrl_card_checked_layer_id, m5270f());
        }
    }

    /* renamed from: L */
    public void m5294L(int i) {
        this.f36401g = i;
    }

    /* renamed from: M */
    public void m5293M(int i) {
        this.f36402h = i;
    }

    /* renamed from: N */
    public void m5292N(ColorStateList colorStateList) {
        this.f36407m = colorStateList;
        Drawable drawable = this.f36405k;
        if (drawable != null) {
            C0615a.m33215o(drawable, colorStateList);
        }
    }

    /* renamed from: O */
    public void m5291O(float f) {
        m5288R(this.f36408n.m28553w(f));
        this.f36404j.invalidateSelf();
        if (m5283W() || m5284V()) {
            m5281Y();
        }
        if (m5283W()) {
            m5276b0();
        }
    }

    /* renamed from: P */
    public void m5290P(float f) {
        this.f36399e.m28623b0(f);
        C1938h c1938h = this.f36400f;
        if (c1938h != null) {
            c1938h.m28623b0(f);
        }
        C1938h c1938h2 = this.f36413s;
        if (c1938h2 != null) {
            c1938h2.m28623b0(f);
        }
    }

    /* renamed from: Q */
    public void m5289Q(ColorStateList colorStateList) {
        this.f36406l = colorStateList;
        m5274c0();
    }

    /* renamed from: R */
    public void m5288R(C1946m c1946m) {
        this.f36408n = c1946m;
        this.f36399e.setShapeAppearanceModel(c1946m);
        C1938h c1938h = this.f36399e;
        c1938h.m28615f0(!c1938h.m28633S());
        C1938h c1938h2 = this.f36400f;
        if (c1938h2 != null) {
            c1938h2.setShapeAppearanceModel(c1946m);
        }
        C1938h c1938h3 = this.f36413s;
        if (c1938h3 != null) {
            c1938h3.setShapeAppearanceModel(c1946m);
        }
        C1938h c1938h4 = this.f36412r;
        if (c1938h4 != null) {
            c1938h4.setShapeAppearanceModel(c1946m);
        }
    }

    /* renamed from: S */
    public void m5287S(ColorStateList colorStateList) {
        if (this.f36409o == colorStateList) {
            return;
        }
        this.f36409o = colorStateList;
        m5272d0();
    }

    /* renamed from: T */
    public void m5286T(int i) {
        if (i == this.f36403i) {
            return;
        }
        this.f36403i = i;
        m5272d0();
    }

    /* renamed from: U */
    public void m5285U(int i, int i2, int i3, int i4) {
        this.f36398d.set(i, i2, i3, i4);
        m5281Y();
    }

    /* renamed from: X */
    public void m5282X() {
        Drawable drawable = this.f36404j;
        C1938h m5258r = this.f36397c.isClickable() ? m5258r() : this.f36400f;
        this.f36404j = m5258r;
        if (drawable != m5258r) {
            m5278a0(m5258r);
        }
    }

    /* renamed from: Y */
    public void m5281Y() {
        int m5279a = (int) ((m5284V() || m5283W() ? m5279a() : 0.0f) - m5256t());
        MaterialCardView materialCardView = this.f36397c;
        Rect rect = this.f36398d;
        materialCardView.m5307l(rect.left + m5279a, rect.top + m5279a, rect.right + m5279a, rect.bottom + m5279a);
    }

    /* renamed from: Z */
    public void m5280Z() {
        this.f36399e.m28626Z(this.f36397c.getCardElevation());
    }

    /* renamed from: b0 */
    public void m5276b0() {
        if (!m5303C()) {
            this.f36397c.setBackgroundInternal(m5304B(this.f36399e));
        }
        this.f36397c.setForeground(m5304B(this.f36404j));
    }

    /* renamed from: d0 */
    void m5272d0() {
        this.f36400f.m28605k0(this.f36403i, this.f36409o);
    }

    /* renamed from: j */
    public void m5266j() {
        Drawable drawable = this.f36410p;
        if (drawable != null) {
            Rect bounds = drawable.getBounds();
            int i = bounds.bottom;
            this.f36410p.setBounds(bounds.left, bounds.top, bounds.right, i - 1);
            this.f36410p.setBounds(bounds.left, bounds.top, bounds.right, i);
        }
    }

    /* renamed from: k */
    public C1938h m5265k() {
        return this.f36399e;
    }

    /* renamed from: l */
    public ColorStateList m5264l() {
        return this.f36399e.m28587x();
    }

    /* renamed from: m */
    public ColorStateList m5263m() {
        return this.f36400f.m28587x();
    }

    /* renamed from: n */
    public Drawable m5262n() {
        return this.f36405k;
    }

    /* renamed from: o */
    public int m5261o() {
        return this.f36401g;
    }

    /* renamed from: p */
    public int m5260p() {
        return this.f36402h;
    }

    /* renamed from: q */
    public ColorStateList m5259q() {
        return this.f36407m;
    }

    /* renamed from: s */
    public float m5257s() {
        return this.f36399e.m28643I();
    }

    /* renamed from: u */
    public float m5255u() {
        return this.f36399e.m28586y();
    }

    /* renamed from: v */
    public ColorStateList m5254v() {
        return this.f36406l;
    }

    /* renamed from: w */
    public C1946m m5253w() {
        return this.f36408n;
    }

    /* renamed from: x */
    public int m5252x() {
        ColorStateList colorStateList = this.f36409o;
        return colorStateList == null ? -1 : colorStateList.getDefaultColor();
    }

    /* renamed from: y */
    public ColorStateList m5251y() {
        return this.f36409o;
    }

    /* renamed from: z */
    public int m5250z() {
        return this.f36403i;
    }
}
