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
import androidx.core.graphics.drawable.C0840a;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.material.C14376a;
import com.google.android.material.p372i.C14607b;
import com.google.android.material.p374k.C14666d;
import com.google.android.material.p374k.C14667e;
import com.google.android.material.p374k.C14670h;
import com.google.android.material.p374k.C14677l;
import com.google.android.material.p374k.C14678m;
/* renamed from: com.google.android.material.card.a */
/* loaded from: classes4-dex2jar.jar:com/google/android/material/card/a.class */
public final class C14475a {

    /* renamed from: r */
    private static final int[] f52783r = {16842912};

    /* renamed from: s */
    private static final double f52784s = Math.cos(Math.toRadians(45.0d));

    /* renamed from: a */
    final MaterialCardView f52785a;

    /* renamed from: c */
    final C14670h f52787c;

    /* renamed from: d */
    final C14670h f52788d;

    /* renamed from: e */
    int f52789e;

    /* renamed from: f */
    int f52790f;

    /* renamed from: g */
    int f52791g;

    /* renamed from: h */
    Drawable f52792h;

    /* renamed from: i */
    Drawable f52793i;

    /* renamed from: j */
    ColorStateList f52794j;

    /* renamed from: k */
    ColorStateList f52795k;

    /* renamed from: l */
    C14678m f52796l;

    /* renamed from: m */
    ColorStateList f52797m;

    /* renamed from: n */
    LayerDrawable f52798n;

    /* renamed from: o */
    C14670h f52799o;

    /* renamed from: q */
    boolean f52801q;

    /* renamed from: t */
    private Drawable f52802t;

    /* renamed from: u */
    private C14670h f52803u;

    /* renamed from: b */
    final Rect f52786b = new Rect();

    /* renamed from: p */
    boolean f52800p = false;

    public C14475a(MaterialCardView materialCardView, AttributeSet attributeSet, int i, int i2) {
        this.f52785a = materialCardView;
        C14670h c14670h = new C14670h(materialCardView.getContext(), attributeSet, i, i2);
        this.f52787c = c14670h;
        c14670h.m10479a(materialCardView.getContext());
        c14670h.m10453i();
        C14678m.C14680a m10422b = c14670h.f53492t.f53500a.m10422b();
        TypedArray obtainStyledAttributes = materialCardView.getContext().obtainStyledAttributes(attributeSet, C14376a.C14388l.CardView, i, C14376a.C14387k.CardView);
        if (obtainStyledAttributes.hasValue(C14376a.C14388l.CardView_cardCornerRadius)) {
            m10422b.m10420a(obtainStyledAttributes.getDimension(C14376a.C14388l.CardView_cardCornerRadius, BitmapDescriptorFactory.HUE_RED));
        }
        this.f52788d = new C14670h();
        m11008a(m10422b.m10421a());
        obtainStyledAttributes.recycle();
    }

    /* renamed from: a */
    private static float m11009a(C14666d c14666d, float f) {
        return c14666d instanceof C14677l ? (float) ((1.0d - f52784s) * f) : c14666d instanceof C14667e ? f / 2.0f : BitmapDescriptorFactory.HUE_RED;
    }

    /* renamed from: l */
    private boolean m10993l() {
        return Build.VERSION.SDK_INT >= 21 && this.f52787c.m10446o();
    }

    /* renamed from: m */
    private float m10992m() {
        return this.f52785a.getPreventCornerOverlap() ? (Build.VERSION.SDK_INT < 21 || this.f52785a.getUseCompatPadding()) ? (float) ((1.0d - f52784s) * this.f52785a.al_()) : BitmapDescriptorFactory.HUE_RED : BitmapDescriptorFactory.HUE_RED;
    }

    /* renamed from: n */
    private float m10991n() {
        return Math.max(Math.max(m11009a(this.f52796l.f53527b, this.f52787c.m10451k()), m11009a(this.f52796l.f53528c, this.f52787c.m10450l())), Math.max(m11009a(this.f52796l.f53529d, this.f52787c.m10448n()), m11009a(this.f52796l.f53530e, this.f52787c.m10449m())));
    }

    /* renamed from: o */
    private Drawable m10990o() {
        if (C14607b.f53247a) {
            this.f52799o = m10987r();
            return new RippleDrawable(this.f52794j, null, this.f52799o);
        }
        return m10989p();
    }

    /* renamed from: p */
    private Drawable m10989p() {
        StateListDrawable stateListDrawable = new StateListDrawable();
        C14670h m10987r = m10987r();
        this.f52803u = m10987r;
        m10987r.m10456g(this.f52794j);
        stateListDrawable.addState(new int[]{16842919}, this.f52803u);
        return stateListDrawable;
    }

    /* renamed from: q */
    private Drawable m10988q() {
        StateListDrawable stateListDrawable = new StateListDrawable();
        Drawable drawable = this.f52793i;
        if (drawable != null) {
            stateListDrawable.addState(f52783r, drawable);
        }
        return stateListDrawable;
    }

    /* renamed from: r */
    private C14670h m10987r() {
        return new C14670h(this.f52796l);
    }

    /* renamed from: a */
    public final void m11013a() {
        this.f52787c.m10439r(this.f52785a.getCardElevation());
    }

    /* renamed from: a */
    public final void m11012a(int i, int i2, int i3, int i4) {
        this.f52786b.set(i, i2, i3, i4);
        m11002d();
    }

    /* renamed from: a */
    public final void m11011a(ColorStateList colorStateList) {
        if (this.f52797m == colorStateList) {
            return;
        }
        this.f52797m = colorStateList;
        m11004c();
    }

    /* renamed from: a */
    public final void m11010a(Drawable drawable) {
        this.f52793i = drawable;
        if (drawable != null) {
            Drawable m44345f = C0840a.m44345f(drawable.mutate());
            this.f52793i = m44345f;
            C0840a.m44355a(m44345f, this.f52795k);
        }
        if (this.f52798n != null) {
            this.f52798n.setDrawableByLayerId(C14376a.C14382f.mtrl_card_checked_layer_id, m10988q());
        }
    }

    /* renamed from: a */
    public final void m11008a(C14678m c14678m) {
        this.f52796l = c14678m;
        this.f52787c.setShapeAppearanceModel(c14678m);
        C14670h c14670h = this.f52787c;
        c14670h.f53493u = !c14670h.m10446o();
        C14670h c14670h2 = this.f52788d;
        if (c14670h2 != null) {
            c14670h2.setShapeAppearanceModel(c14678m);
        }
        C14670h c14670h3 = this.f52799o;
        if (c14670h3 != null) {
            c14670h3.setShapeAppearanceModel(c14678m);
        }
        C14670h c14670h4 = this.f52803u;
        if (c14670h4 != null) {
            c14670h4.setShapeAppearanceModel(c14678m);
        }
    }

    /* renamed from: b */
    public final Drawable m11005b(Drawable drawable) {
        int i;
        int i2;
        if ((Build.VERSION.SDK_INT < 21) || this.f52785a.getUseCompatPadding()) {
            i2 = (int) Math.ceil(m10999f());
            i = (int) Math.ceil(m10998g());
        } else {
            i = 0;
            i2 = 0;
        }
        return new InsetDrawable(drawable, i, i2, i, i2) { // from class: com.google.android.material.card.a.1
            @Override // android.graphics.drawable.Drawable
            public final int getMinimumHeight() {
                return -1;
            }

            @Override // android.graphics.drawable.Drawable
            public final int getMinimumWidth() {
                return -1;
            }

            @Override // android.graphics.drawable.InsetDrawable, android.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
            public final boolean getPadding(Rect rect) {
                return false;
            }
        };
    }

    /* renamed from: b */
    public final void m11007b() {
        if (!this.f52800p) {
            this.f52785a.m11016a(m11005b(this.f52787c));
        }
        this.f52785a.setForeground(m11005b(this.f52792h));
    }

    /* renamed from: b */
    public final void m11006b(ColorStateList colorStateList) {
        this.f52787c.m10456g(colorStateList);
    }

    /* renamed from: c */
    public final void m11004c() {
        this.f52788d.m10481a(this.f52791g, this.f52797m);
    }

    /* renamed from: c */
    public final void m11003c(ColorStateList colorStateList) {
        C14670h c14670h = this.f52788d;
        ColorStateList colorStateList2 = colorStateList;
        if (colorStateList == null) {
            colorStateList2 = ColorStateList.valueOf(0);
        }
        c14670h.m10456g(colorStateList2);
    }

    /* renamed from: d */
    public final void m11002d() {
        int m10991n = (int) ((m10997h() || m10996i() ? m10991n() : 0.0f) - m10992m());
        this.f52785a.m11017a(this.f52786b.left + m10991n, this.f52786b.top + m10991n, this.f52786b.right + m10991n, this.f52786b.bottom + m10991n);
    }

    /* renamed from: d */
    public final void m11001d(ColorStateList colorStateList) {
        this.f52794j = colorStateList;
        m10994k();
    }

    /* renamed from: e */
    public final void m11000e() {
        Drawable drawable = this.f52802t;
        if (drawable != null) {
            Rect bounds = drawable.getBounds();
            int i = bounds.bottom;
            this.f52802t.setBounds(bounds.left, bounds.top, bounds.right, i - 1);
            this.f52802t.setBounds(bounds.left, bounds.top, bounds.right, i);
        }
    }

    /* renamed from: f */
    public final float m10999f() {
        return (this.f52785a.getMaxCardElevation() * 1.5f) + (m10996i() ? m10991n() : 0.0f);
    }

    /* renamed from: g */
    public final float m10998g() {
        return this.f52785a.getMaxCardElevation() + (m10996i() ? m10991n() : 0.0f);
    }

    /* renamed from: h */
    public final boolean m10997h() {
        return this.f52785a.getPreventCornerOverlap() && !m10993l();
    }

    /* renamed from: i */
    public final boolean m10996i() {
        return this.f52785a.getPreventCornerOverlap() && m10993l() && this.f52785a.getUseCompatPadding();
    }

    /* renamed from: j */
    public final Drawable m10995j() {
        if (this.f52802t == null) {
            this.f52802t = m10990o();
        }
        if (this.f52798n == null) {
            LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{this.f52802t, this.f52788d, m10988q()});
            this.f52798n = layerDrawable;
            layerDrawable.setId(2, C14376a.C14382f.mtrl_card_checked_layer_id);
        }
        return this.f52798n;
    }

    /* renamed from: k */
    public final void m10994k() {
        Drawable drawable;
        if (C14607b.f53247a && (drawable = this.f52802t) != null) {
            ((RippleDrawable) drawable).setColor(this.f52794j);
            return;
        }
        C14670h c14670h = this.f52803u;
        if (c14670h == null) {
            return;
        }
        c14670h.m10456g(this.f52794j);
    }
}
