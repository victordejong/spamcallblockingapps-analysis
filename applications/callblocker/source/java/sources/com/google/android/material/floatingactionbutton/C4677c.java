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
import androidx.core.p017a.C0438a;
import androidx.core.p025g.C0527f;
import com.google.android.material.C4492a;
import com.google.android.material.p157o.C4727b;
import com.google.android.material.p158p.AbstractC4729b;
import com.google.android.material.p159q.C4736g;
import com.google.android.material.p159q.C4743k;
import java.util.ArrayList;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.material.floatingactionbutton.c */
/* loaded from: classes-dex2jar.jar:com/google/android/material/floatingactionbutton/c.class */
public class C4677c extends C4664b {

    /* renamed from: com.google.android.material.floatingactionbutton.c$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/floatingactionbutton/c$a.class */
    public static class C4678a extends C4736g {
        C4678a(C4743k c4743k) {
            super(c4743k);
        }

        @Override // com.google.android.material.p159q.C4736g, android.graphics.drawable.Drawable
        public boolean isStateful() {
            return true;
        }
    }

    public C4677c(FloatingActionButton floatingActionButton, AbstractC4729b abstractC4729b) {
        super(floatingActionButton, abstractC4729b);
    }

    /* renamed from: a */
    private Animator m2947a(float f, float f2) {
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.play(ObjectAnimator.ofFloat(this.f20261s, "elevation", f).setDuration(0L)).with(ObjectAnimator.ofFloat(this.f20261s, View.TRANSLATION_Z, f2).setDuration(100L));
        animatorSet.setInterpolator(f20231a);
        return animatorSet;
    }

    @Override // com.google.android.material.floatingactionbutton.C4664b
    /* renamed from: a */
    public float mo2948a() {
        return this.f20261s.getElevation();
    }

    /* renamed from: a */
    C4661a m2945a(int i, ColorStateList colorStateList) {
        Context context = this.f20261s.getContext();
        C4661a c4661a = new C4661a((C4743k) C0527f.m20644a(this.f20250b));
        c4661a.m3007a(C0438a.m20892c(context, C4492a.C4495c.design_fab_stroke_top_outer_color), C0438a.m20892c(context, C4492a.C4495c.design_fab_stroke_top_inner_color), C0438a.m20892c(context, C4492a.C4495c.design_fab_stroke_end_inner_color), C0438a.m20892c(context, C4492a.C4495c.design_fab_stroke_end_outer_color));
        c4661a.m3008a(i);
        c4661a.m3006a(colorStateList);
        return c4661a;
    }

    @Override // com.google.android.material.floatingactionbutton.C4664b
    /* renamed from: a */
    void mo2946a(float f, float f2, float f3) {
        if (Build.VERSION.SDK_INT == 21) {
            this.f20261s.refreshDrawableState();
        } else {
            StateListAnimator stateListAnimator = new StateListAnimator();
            stateListAnimator.addState(f20232m, m2947a(f, f3));
            stateListAnimator.addState(f20233n, m2947a(f, f2));
            stateListAnimator.addState(f20234o, m2947a(f, f2));
            stateListAnimator.addState(f20235p, m2947a(f, f2));
            AnimatorSet animatorSet = new AnimatorSet();
            ArrayList arrayList = new ArrayList();
            arrayList.add(ObjectAnimator.ofFloat(this.f20261s, "elevation", f).setDuration(0L));
            if (Build.VERSION.SDK_INT >= 22 && Build.VERSION.SDK_INT <= 24) {
                arrayList.add(ObjectAnimator.ofFloat(this.f20261s, View.TRANSLATION_Z, this.f20261s.getTranslationZ()).setDuration(100L));
            }
            arrayList.add(ObjectAnimator.ofFloat(this.f20261s, View.TRANSLATION_Z, 0.0f).setDuration(100L));
            animatorSet.playSequentially((Animator[]) arrayList.toArray(new Animator[0]));
            animatorSet.setInterpolator(f20231a);
            stateListAnimator.addState(f20236q, animatorSet);
            stateListAnimator.addState(f20237r, m2947a(0.0f, 0.0f));
            this.f20261s.setStateListAnimator(stateListAnimator);
        }
        if (mo2938p()) {
            m2963o();
        }
    }

    @Override // com.google.android.material.floatingactionbutton.C4664b
    /* renamed from: a */
    public void mo2944a(ColorStateList colorStateList, PorterDuff.Mode mode, ColorStateList colorStateList2, int i) {
        Drawable drawable;
        this.f20251c = mo2936u();
        this.f20251c.setTintList(colorStateList);
        if (mode != null) {
            this.f20251c.setTintMode(mode);
        }
        this.f20251c.m2722a(this.f20261s.getContext());
        if (i > 0) {
            this.f20253e = m2945a(i, colorStateList);
            drawable = new LayerDrawable(new Drawable[]{(Drawable) C0527f.m20644a(this.f20253e), (Drawable) C0527f.m20644a(this.f20251c)});
        } else {
            this.f20253e = null;
            drawable = this.f20251c;
        }
        this.f20252d = new RippleDrawable(C4727b.m2756b(colorStateList2), drawable, null);
        this.f20254f = this.f20252d;
    }

    @Override // com.google.android.material.floatingactionbutton.C4664b
    /* renamed from: a */
    public void mo2943a(Rect rect) {
        if (this.f20262t.mo2751a()) {
            super.mo2943a(rect);
        } else if (m2968h()) {
            rect.set(0, 0, 0, 0);
        } else {
            int sizeDimension = (this.f20260l - this.f20261s.getSizeDimension()) / 2;
            rect.set(sizeDimension, sizeDimension, sizeDimension, sizeDimension);
        }
    }

    @Override // com.google.android.material.floatingactionbutton.C4664b
    /* renamed from: a */
    public void mo2942a(int[] iArr) {
        if (Build.VERSION.SDK_INT == 21) {
            if (!this.f20261s.isEnabled()) {
                this.f20261s.setElevation(0.0f);
                this.f20261s.setTranslationZ(0.0f);
                return;
            }
            this.f20261s.setElevation(this.f20257i);
            if (this.f20261s.isPressed()) {
                this.f20261s.setTranslationZ(this.f20259k);
            } else if (this.f20261s.isFocused() || this.f20261s.isHovered()) {
                this.f20261s.setTranslationZ(this.f20258j);
            } else {
                this.f20261s.setTranslationZ(0.0f);
            }
        }
    }

    @Override // com.google.android.material.floatingactionbutton.C4664b
    /* renamed from: b */
    public void mo2941b(ColorStateList colorStateList) {
        if (this.f20252d instanceof RippleDrawable) {
            ((RippleDrawable) this.f20252d).setColor(C4727b.m2756b(colorStateList));
        } else {
            super.mo2941b(colorStateList);
        }
    }

    @Override // com.google.android.material.floatingactionbutton.C4664b
    /* renamed from: j */
    public void mo2940j() {
    }

    @Override // com.google.android.material.floatingactionbutton.C4664b
    /* renamed from: n */
    public void mo2939n() {
        m2963o();
    }

    @Override // com.google.android.material.floatingactionbutton.C4664b
    /* renamed from: p */
    boolean mo2938p() {
        return this.f20262t.mo2751a() || !m2968h();
    }

    @Override // com.google.android.material.floatingactionbutton.C4664b
    /* renamed from: s */
    boolean mo2937s() {
        return false;
    }

    @Override // com.google.android.material.floatingactionbutton.C4664b
    /* renamed from: u */
    C4736g mo2936u() {
        return new C4678a((C4743k) C0527f.m20644a(this.f20250b));
    }

    @Override // com.google.android.material.floatingactionbutton.C4664b
    /* renamed from: x */
    void mo2935x() {
    }
}
