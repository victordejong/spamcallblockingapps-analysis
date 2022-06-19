package com.google.android.material.floatingactionbutton;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.StateListAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.view.View;
import androidx.core.content.C0586a;
import java.util.ArrayList;
import p020b.p041h.p049k.C1597h;
import p078c.p084c.p085a.p096b.C1887c;
import p078c.p084c.p085a.p096b.p106v.C1928b;
import p078c.p084c.p085a.p096b.p107w.AbstractC1930b;
import p078c.p084c.p085a.p096b.p108x.C1938h;
import p078c.p084c.p085a.p096b.p108x.C1946m;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.material.floatingactionbutton.e */
/* loaded from: classes2-dex2jar.jar:com/google/android/material/floatingactionbutton/e.class */
public class C8162e extends C8149d {

    /* renamed from: com.google.android.material.floatingactionbutton.e$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/floatingactionbutton/e$a.class */
    public static class C8163a extends C1938h {
        C8163a(C1946m c1946m) {
            super(c1946m);
        }

        @Override // p078c.p084c.p085a.p096b.p108x.C1938h, android.graphics.drawable.Drawable
        public boolean isStateful() {
            return true;
        }
    }

    public C8162e(FloatingActionButton floatingActionButton, AbstractC1930b abstractC1930b) {
        super(floatingActionButton, abstractC1930b);
    }

    /* renamed from: j0 */
    private Animator m4677j0(float f, float f2) {
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.play(ObjectAnimator.ofFloat(this.f36804F, "elevation", f).setDuration(0L)).with(ObjectAnimator.ofFloat(this.f36804F, View.TRANSLATION_Z, f2).setDuration(100L));
        animatorSet.setInterpolator(C8149d.f36792a);
        return animatorSet;
    }

    @Override // com.google.android.material.floatingactionbutton.C8149d
    /* renamed from: A */
    public void mo4687A() {
    }

    @Override // com.google.android.material.floatingactionbutton.C8149d
    /* renamed from: C */
    public void mo4686C() {
        m4713f0();
    }

    @Override // com.google.android.material.floatingactionbutton.C8149d
    /* renamed from: E */
    public void mo4685E(int[] iArr) {
        if (Build.VERSION.SDK_INT == 21) {
            if (!this.f36804F.isEnabled()) {
                this.f36804F.setElevation(0.0f);
                this.f36804F.setTranslationZ(0.0f);
                return;
            }
            this.f36804F.setElevation(this.f36818o);
            if (this.f36804F.isPressed()) {
                this.f36804F.setTranslationZ(this.f36820q);
            } else if (this.f36804F.isFocused() || this.f36804F.isHovered()) {
                this.f36804F.setTranslationZ(this.f36819p);
            } else {
                this.f36804F.setTranslationZ(0.0f);
            }
        }
    }

    @Override // com.google.android.material.floatingactionbutton.C8149d
    /* renamed from: F */
    void mo4684F(float f, float f2, float f3) {
        int i = Build.VERSION.SDK_INT;
        if (i == 21) {
            this.f36804F.refreshDrawableState();
        } else {
            StateListAnimator stateListAnimator = new StateListAnimator();
            stateListAnimator.addState(C8149d.f36793b, m4677j0(f, f3));
            stateListAnimator.addState(C8149d.f36794c, m4677j0(f, f2));
            stateListAnimator.addState(C8149d.f36795d, m4677j0(f, f2));
            stateListAnimator.addState(C8149d.f36796e, m4677j0(f, f2));
            AnimatorSet animatorSet = new AnimatorSet();
            ArrayList arrayList = new ArrayList();
            arrayList.add(ObjectAnimator.ofFloat(this.f36804F, "elevation", f).setDuration(0L));
            if (i >= 22 && i <= 24) {
                FloatingActionButton floatingActionButton = this.f36804F;
                arrayList.add(ObjectAnimator.ofFloat(floatingActionButton, View.TRANSLATION_Z, floatingActionButton.getTranslationZ()).setDuration(100L));
            }
            arrayList.add(ObjectAnimator.ofFloat(this.f36804F, View.TRANSLATION_Z, 0.0f).setDuration(100L));
            animatorSet.playSequentially((Animator[]) arrayList.toArray(new Animator[0]));
            animatorSet.setInterpolator(C8149d.f36792a);
            stateListAnimator.addState(C8149d.f36797f, animatorSet);
            stateListAnimator.addState(C8149d.f36798g, m4677j0(0.0f, 0.0f));
            this.f36804F.setStateListAnimator(stateListAnimator);
        }
        if (mo4681Z()) {
            m4713f0();
        }
    }

    @Override // com.google.android.material.floatingactionbutton.C8149d
    /* renamed from: K */
    boolean mo4683K() {
        return false;
    }

    @Override // com.google.android.material.floatingactionbutton.C8149d
    /* renamed from: V */
    public void mo4682V(ColorStateList colorStateList) {
        Drawable drawable = this.f36813j;
        if (drawable instanceof RippleDrawable) {
            ((RippleDrawable) drawable).setColor(C1928b.m28658d(colorStateList));
        } else {
            super.mo4682V(colorStateList);
        }
    }

    @Override // com.google.android.material.floatingactionbutton.C8149d
    /* renamed from: Z */
    boolean mo4681Z() {
        return this.f36805G.mo4757c() || !m4720b0();
    }

    @Override // com.google.android.material.floatingactionbutton.C8149d
    /* renamed from: d0 */
    void mo4680d0() {
    }

    /* renamed from: i0 */
    C8146c m4679i0(int i, ColorStateList colorStateList) {
        Context context = this.f36804F.getContext();
        C8146c c8146c = new C8146c((C1946m) C1597h.m29659e(this.f36811h));
        c8146c.m4744e(C0586a.m33350d(context, C1887c.design_fab_stroke_top_outer_color), C0586a.m33350d(context, C1887c.design_fab_stroke_top_inner_color), C0586a.m33350d(context, C1887c.design_fab_stroke_end_inner_color), C0586a.m33350d(context, C1887c.design_fab_stroke_end_outer_color));
        c8146c.m4745d(i);
        c8146c.m4746c(colorStateList);
        return c8146c;
    }

    @Override // com.google.android.material.floatingactionbutton.C8149d
    /* renamed from: j */
    C1938h mo4678j() {
        return new C8163a((C1946m) C1597h.m29659e(this.f36811h));
    }

    @Override // com.google.android.material.floatingactionbutton.C8149d
    /* renamed from: n */
    public float mo4676n() {
        return this.f36804F.getElevation();
    }

    @Override // com.google.android.material.floatingactionbutton.C8149d
    /* renamed from: s */
    public void mo4675s(Rect rect) {
        if (this.f36805G.mo4757c()) {
            super.mo4675s(rect);
        } else if (m4720b0()) {
            rect.set(0, 0, 0, 0);
        } else {
            int sizeDimension = (this.f36821r - this.f36804F.getSizeDimension()) / 2;
            rect.set(sizeDimension, sizeDimension, sizeDimension, sizeDimension);
        }
    }

    @Override // com.google.android.material.floatingactionbutton.C8149d
    /* renamed from: x */
    public void mo4674x(ColorStateList colorStateList, PorterDuff.Mode mode, ColorStateList colorStateList2, int i) {
        LayerDrawable layerDrawable;
        C1938h mo4678j = mo4678j();
        this.f36812i = mo4678j;
        mo4678j.setTintList(colorStateList);
        if (mode != null) {
            this.f36812i.setTintMode(mode);
        }
        this.f36812i.m28636P(this.f36804F.getContext());
        if (i > 0) {
            this.f36814k = m4679i0(i, colorStateList);
            layerDrawable = new LayerDrawable(new Drawable[]{(Drawable) C1597h.m29659e(this.f36814k), (Drawable) C1597h.m29659e(this.f36812i)});
        } else {
            this.f36814k = null;
            layerDrawable = this.f36812i;
        }
        RippleDrawable rippleDrawable = new RippleDrawable(C1928b.m28658d(colorStateList2), layerDrawable, null);
        this.f36813j = rippleDrawable;
        this.f36815l = rippleDrawable;
    }
}
