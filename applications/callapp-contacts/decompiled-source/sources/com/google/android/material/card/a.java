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
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.material.a;
import com.google.android.material.i.b;
import com.google.android.material.k.d;
import com.google.android.material.k.e;
import com.google.android.material.k.h;
import com.google.android.material.k.l;
import com.google.android.material.k.m;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/google/android/material/card/a.class */
public final class a {
    private static final int[] r = {16842912};
    private static final double s = Math.cos(Math.toRadians(45.0d));

    /* renamed from: a  reason: collision with root package name */
    final MaterialCardView f30360a;

    /* renamed from: c  reason: collision with root package name */
    final h f30362c;

    /* renamed from: d  reason: collision with root package name */
    final h f30363d;
    int e;
    int f;
    int g;
    Drawable h;
    Drawable i;
    ColorStateList j;
    ColorStateList k;
    m l;
    ColorStateList m;
    LayerDrawable n;
    h o;
    boolean q;
    private Drawable t;
    private h u;

    /* renamed from: b  reason: collision with root package name */
    final Rect f30361b = new Rect();
    boolean p = false;

    public a(MaterialCardView materialCardView, AttributeSet attributeSet, int i, int i2) {
        this.f30360a = materialCardView;
        h hVar = new h(materialCardView.getContext(), attributeSet, i, i2);
        this.f30362c = hVar;
        hVar.a(materialCardView.getContext());
        hVar.i();
        m.a b2 = hVar.t.f30683a.b();
        TypedArray obtainStyledAttributes = materialCardView.getContext().obtainStyledAttributes(attributeSet, a.l.CardView, i, a.k.CardView);
        if (obtainStyledAttributes.hasValue(a.l.CardView_cardCornerRadius)) {
            b2.a(obtainStyledAttributes.getDimension(a.l.CardView_cardCornerRadius, BitmapDescriptorFactory.HUE_RED));
        }
        this.f30363d = new h();
        a(b2.a());
        obtainStyledAttributes.recycle();
    }

    private static float a(d dVar, float f) {
        return dVar instanceof l ? (float) ((1.0d - s) * f) : dVar instanceof e ? f / 2.0f : BitmapDescriptorFactory.HUE_RED;
    }

    private boolean l() {
        return Build.VERSION.SDK_INT >= 21 && this.f30362c.o();
    }

    private float m() {
        return this.f30360a.getPreventCornerOverlap() ? (Build.VERSION.SDK_INT < 21 || this.f30360a.getUseCompatPadding()) ? (float) ((1.0d - s) * this.f30360a.al_()) : BitmapDescriptorFactory.HUE_RED : BitmapDescriptorFactory.HUE_RED;
    }

    private float n() {
        return Math.max(Math.max(a(this.l.f30692b, this.f30362c.k()), a(this.l.f30693c, this.f30362c.l())), Math.max(a(this.l.f30694d, this.f30362c.n()), a(this.l.e, this.f30362c.m())));
    }

    private Drawable o() {
        if (!b.f30575a) {
            return p();
        }
        this.o = r();
        return new RippleDrawable(this.j, null, this.o);
    }

    private Drawable p() {
        StateListDrawable stateListDrawable = new StateListDrawable();
        h r2 = r();
        this.u = r2;
        r2.g(this.j);
        stateListDrawable.addState(new int[]{16842919}, this.u);
        return stateListDrawable;
    }

    private Drawable q() {
        StateListDrawable stateListDrawable = new StateListDrawable();
        Drawable drawable = this.i;
        if (drawable != null) {
            stateListDrawable.addState(r, drawable);
        }
        return stateListDrawable;
    }

    private h r() {
        return new h(this.l);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a() {
        this.f30362c.r(this.f30360a.getCardElevation());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(int i, int i2, int i3, int i4) {
        this.f30361b.set(i, i2, i3, i4);
        d();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(ColorStateList colorStateList) {
        if (this.m != colorStateList) {
            this.m = colorStateList;
            c();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(Drawable drawable) {
        this.i = drawable;
        if (drawable != null) {
            Drawable f = androidx.core.graphics.drawable.a.f(drawable.mutate());
            this.i = f;
            androidx.core.graphics.drawable.a.a(f, this.k);
        }
        if (this.n != null) {
            this.n.setDrawableByLayerId(a.f.mtrl_card_checked_layer_id, q());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(m mVar) {
        this.l = mVar;
        this.f30362c.setShapeAppearanceModel(mVar);
        h hVar = this.f30362c;
        hVar.u = !hVar.o();
        h hVar2 = this.f30363d;
        if (hVar2 != null) {
            hVar2.setShapeAppearanceModel(mVar);
        }
        h hVar3 = this.o;
        if (hVar3 != null) {
            hVar3.setShapeAppearanceModel(mVar);
        }
        h hVar4 = this.u;
        if (hVar4 != null) {
            hVar4.setShapeAppearanceModel(mVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Drawable b(Drawable drawable) {
        int i;
        int i2;
        if ((Build.VERSION.SDK_INT < 21) || this.f30360a.getUseCompatPadding()) {
            i2 = (int) Math.ceil(f());
            i = (int) Math.ceil(g());
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

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b() {
        if (!this.p) {
            this.f30360a.a(b(this.f30362c));
        }
        this.f30360a.setForeground(b(this.h));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b(ColorStateList colorStateList) {
        this.f30362c.g(colorStateList);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void c() {
        this.f30363d.a(this.g, this.m);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void c(ColorStateList colorStateList) {
        h hVar = this.f30363d;
        ColorStateList colorStateList2 = colorStateList;
        if (colorStateList == null) {
            colorStateList2 = ColorStateList.valueOf(0);
        }
        hVar.g(colorStateList2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void d() {
        int n = (int) ((h() || i() ? n() : BitmapDescriptorFactory.HUE_RED) - m());
        this.f30360a.a(this.f30361b.left + n, this.f30361b.top + n, this.f30361b.right + n, this.f30361b.bottom + n);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void d(ColorStateList colorStateList) {
        this.j = colorStateList;
        k();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void e() {
        Drawable drawable = this.t;
        if (drawable != null) {
            Rect bounds = drawable.getBounds();
            int i = bounds.bottom;
            this.t.setBounds(bounds.left, bounds.top, bounds.right, i - 1);
            this.t.setBounds(bounds.left, bounds.top, bounds.right, i);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final float f() {
        return (this.f30360a.getMaxCardElevation() * 1.5f) + (i() ? n() : BitmapDescriptorFactory.HUE_RED);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final float g() {
        return this.f30360a.getMaxCardElevation() + (i() ? n() : BitmapDescriptorFactory.HUE_RED);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean h() {
        return this.f30360a.getPreventCornerOverlap() && !l();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean i() {
        return this.f30360a.getPreventCornerOverlap() && l() && this.f30360a.getUseCompatPadding();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Drawable j() {
        if (this.t == null) {
            this.t = o();
        }
        if (this.n == null) {
            LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{this.t, this.f30363d, q()});
            this.n = layerDrawable;
            layerDrawable.setId(2, a.f.mtrl_card_checked_layer_id);
        }
        return this.n;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void k() {
        Drawable drawable;
        if (!b.f30575a || (drawable = this.t) == null) {
            h hVar = this.u;
            if (hVar != null) {
                hVar.g(this.j);
                return;
            }
            return;
        }
        ((RippleDrawable) drawable).setColor(this.j);
    }
}
