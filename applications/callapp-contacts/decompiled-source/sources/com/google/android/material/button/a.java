package com.google.android.material.button;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import androidx.core.view.v;
import com.google.android.material.a;
import com.google.android.material.h.b;
import com.google.android.material.k.h;
import com.google.android.material.k.m;
import com.google.android.material.k.q;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/google/android/material/button/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    static final boolean f30352a;

    /* renamed from: b  reason: collision with root package name */
    final MaterialButton f30353b;

    /* renamed from: c  reason: collision with root package name */
    m f30354c;

    /* renamed from: d  reason: collision with root package name */
    int f30355d;
    int e;
    int f;
    int g;
    int h;
    int i;
    PorterDuff.Mode j;
    ColorStateList k;
    ColorStateList l;
    ColorStateList m;
    Drawable n;
    boolean o = false;
    boolean p = false;
    boolean q = false;
    boolean r;
    int s;
    private LayerDrawable t;

    static {
        f30352a = Build.VERSION.SDK_INT >= 21;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(MaterialButton materialButton, m mVar) {
        this.f30353b = materialButton;
        this.f30354c = mVar;
    }

    private InsetDrawable a(Drawable drawable) {
        return new InsetDrawable(drawable, this.f30355d, this.f, this.e, this.g);
    }

    private void b(m mVar) {
        if (a(false) != null) {
            a(false).setShapeAppearanceModel(mVar);
        }
        if (a(true) != null) {
            a(true).setShapeAppearanceModel(mVar);
        }
        if (e() != null) {
            e().setShapeAppearanceModel(mVar);
        }
    }

    private Drawable d() {
        h hVar = new h(this.f30354c);
        hVar.a(this.f30353b.getContext());
        androidx.core.graphics.drawable.a.a(hVar, this.k);
        PorterDuff.Mode mode = this.j;
        if (mode != null) {
            androidx.core.graphics.drawable.a.a(hVar, mode);
        }
        hVar.a(this.i, this.l);
        h hVar2 = new h(this.f30354c);
        hVar2.setTint(0);
        hVar2.a(this.i, this.o ? b.a(this.f30353b, a.b.colorSurface) : 0);
        if (f30352a) {
            h hVar3 = new h(this.f30354c);
            this.n = hVar3;
            androidx.core.graphics.drawable.a.a(hVar3, -1);
            RippleDrawable rippleDrawable = new RippleDrawable(com.google.android.material.i.b.b(this.m), a(new LayerDrawable(new Drawable[]{hVar2, hVar})), this.n);
            this.t = rippleDrawable;
            return rippleDrawable;
        }
        com.google.android.material.i.a aVar = new com.google.android.material.i.a(this.f30354c);
        this.n = aVar;
        androidx.core.graphics.drawable.a.a(aVar, com.google.android.material.i.b.b(this.m));
        LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{hVar2, hVar, this.n});
        this.t = layerDrawable;
        return a(layerDrawable);
    }

    private q e() {
        LayerDrawable layerDrawable = this.t;
        if (layerDrawable == null || layerDrawable.getNumberOfLayers() <= 1) {
            return null;
        }
        return this.t.getNumberOfLayers() > 2 ? (q) this.t.getDrawable(2) : (q) this.t.getDrawable(1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    public final h a(boolean z) {
        LayerDrawable layerDrawable = this.t;
        if (layerDrawable == null || layerDrawable.getNumberOfLayers() <= 0) {
            return null;
        }
        return f30352a ? (h) ((LayerDrawable) ((InsetDrawable) this.t.getDrawable(0)).getDrawable()).getDrawable(!z ? 1 : 0) : (h) this.t.getDrawable(!z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a() {
        this.f30353b.a(d());
        h a2 = a(false);
        if (a2 != null) {
            a2.r(this.s);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(int i, int i2) {
        int i3 = v.i(this.f30353b);
        int paddingTop = this.f30353b.getPaddingTop();
        int j = v.j(this.f30353b);
        int paddingBottom = this.f30353b.getPaddingBottom();
        int i4 = this.f;
        int i5 = this.g;
        this.g = i2;
        this.f = i;
        if (!this.p) {
            a();
        }
        v.b(this.f30353b, i3, (paddingTop + i) - i4, j, (paddingBottom + i2) - i5);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(m mVar) {
        this.f30354c = mVar;
        b(mVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b() {
        this.p = true;
        this.f30353b.setSupportBackgroundTintList(this.k);
        this.f30353b.setSupportBackgroundTintMode(this.j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void c() {
        int i = 0;
        h a2 = a(false);
        h a3 = a(true);
        if (a2 != null) {
            a2.a(this.i, this.l);
            if (a3 != null) {
                float f = this.i;
                if (this.o) {
                    i = b.a(this.f30353b, a.b.colorSurface);
                }
                a3.a(f, i);
            }
        }
    }
}
