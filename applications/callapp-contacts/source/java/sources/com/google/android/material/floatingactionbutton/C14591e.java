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
import androidx.core.content.C0790b;
import androidx.core.p036e.C0833d;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.material.C14376a;
import com.google.android.material.p372i.C14607b;
import com.google.android.material.p373j.AbstractC14662b;
import com.google.android.material.p374k.C14670h;
import com.google.android.material.p374k.C14678m;
import java.util.ArrayList;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.material.floatingactionbutton.e */
/* loaded from: classes4-dex2jar.jar:com/google/android/material/floatingactionbutton/e.class */
public final class C14591e extends C14578d {

    /* renamed from: com.google.android.material.floatingactionbutton.e$a */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/floatingactionbutton/e$a.class */
    public static final class C14592a extends C14670h {
        C14592a(C14678m c14678m) {
            super(c14678m);
        }

        @Override // com.google.android.material.p374k.C14670h, android.graphics.drawable.Drawable
        public final boolean isStateful() {
            return true;
        }
    }

    public C14591e(FloatingActionButton floatingActionButton, AbstractC14662b abstractC14662b) {
        super(floatingActionButton, abstractC14662b);
    }

    /* renamed from: a */
    private Animator m10685a(float f, float f2) {
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.play(ObjectAnimator.ofFloat(this.f53198z, "elevation", f).setDuration(0L)).with(ObjectAnimator.ofFloat(this.f53198z, View.TRANSLATION_Z, f2).setDuration(100L));
        animatorSet.setInterpolator(f53161a);
        return animatorSet;
    }

    @Override // com.google.android.material.floatingactionbutton.C14578d
    /* renamed from: a */
    public final float mo10686a() {
        return this.f53198z.getElevation();
    }

    @Override // com.google.android.material.floatingactionbutton.C14578d
    /* renamed from: a */
    final void mo10684a(float f, float f2, float f3) {
        if (Build.VERSION.SDK_INT == 21) {
            this.f53198z.refreshDrawableState();
        } else {
            StateListAnimator stateListAnimator = new StateListAnimator();
            stateListAnimator.addState(f53162t, m10685a(f, f3));
            stateListAnimator.addState(f53163u, m10685a(f, f2));
            stateListAnimator.addState(f53164v, m10685a(f, f2));
            stateListAnimator.addState(f53165w, m10685a(f, f2));
            AnimatorSet animatorSet = new AnimatorSet();
            ArrayList arrayList = new ArrayList();
            arrayList.add(ObjectAnimator.ofFloat(this.f53198z, "elevation", f).setDuration(0L));
            if (Build.VERSION.SDK_INT >= 22 && Build.VERSION.SDK_INT <= 24) {
                arrayList.add(ObjectAnimator.ofFloat(this.f53198z, View.TRANSLATION_Z, this.f53198z.getTranslationZ()).setDuration(100L));
            }
            arrayList.add(ObjectAnimator.ofFloat(this.f53198z, View.TRANSLATION_Z, BitmapDescriptorFactory.HUE_RED).setDuration(100L));
            animatorSet.playSequentially((Animator[]) arrayList.toArray(new Animator[0]));
            animatorSet.setInterpolator(f53161a);
            stateListAnimator.addState(f53166x, animatorSet);
            stateListAnimator.addState(f53167y, m10685a(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED));
            this.f53198z.setStateListAnimator(stateListAnimator);
        }
        if (mo10677i()) {
            m10698h();
        }
    }

    @Override // com.google.android.material.floatingactionbutton.C14578d
    /* renamed from: a */
    public final void mo10683a(ColorStateList colorStateList) {
        if (this.f53182d instanceof RippleDrawable) {
            ((RippleDrawable) this.f53182d).setColor(C14607b.m10633b(colorStateList));
        } else {
            super.mo10683a(colorStateList);
        }
    }

    @Override // com.google.android.material.floatingactionbutton.C14578d
    /* renamed from: a */
    public final void mo10682a(ColorStateList colorStateList, PorterDuff.Mode mode, ColorStateList colorStateList2, int i) {
        LayerDrawable layerDrawable;
        this.f53181c = mo10675k();
        this.f53181c.setTintList(colorStateList);
        if (mode != null) {
            this.f53181c.setTintMode(mode);
        }
        this.f53181c.m10479a(this.f53198z.getContext());
        if (i > 0) {
            Context context = this.f53198z.getContext();
            C14575c c14575c = new C14575c((C14678m) C0833d.m44410a(this.f53180b));
            int m44492c = C0790b.m44492c(context, C14376a.C14379c.design_fab_stroke_top_outer_color);
            int m44492c2 = C0790b.m44492c(context, C14376a.C14379c.design_fab_stroke_top_inner_color);
            int m44492c3 = C0790b.m44492c(context, C14376a.C14379c.design_fab_stroke_end_inner_color);
            int m44492c4 = C0790b.m44492c(context, C14376a.C14379c.design_fab_stroke_end_outer_color);
            c14575c.f53146c = m44492c;
            c14575c.f53147d = m44492c2;
            c14575c.f53148e = m44492c3;
            c14575c.f53149f = m44492c4;
            float f = i;
            if (c14575c.f53145b != f) {
                c14575c.f53145b = f;
                c14575c.f53144a.setStrokeWidth(f * 1.3333f);
                c14575c.f53150g = true;
                c14575c.invalidateSelf();
            }
            c14575c.m10720a(colorStateList);
            this.f53183e = c14575c;
            layerDrawable = new LayerDrawable(new Drawable[]{(Drawable) C0833d.m44410a(this.f53183e), (Drawable) C0833d.m44410a(this.f53181c)});
        } else {
            this.f53183e = null;
            layerDrawable = this.f53181c;
        }
        this.f53182d = new RippleDrawable(C14607b.m10633b(colorStateList2), layerDrawable, null);
        this.f53184f = this.f53182d;
    }

    @Override // com.google.android.material.floatingactionbutton.C14578d
    /* renamed from: a */
    public final void mo10681a(Rect rect) {
        if (this.f53168A.mo10487a()) {
            super.mo10681a(rect);
        } else if (m10704c()) {
            rect.set(0, 0, 0, 0);
        } else {
            int m10737c = (this.f53190l - this.f53198z.m10737c()) / 2;
            rect.set(m10737c, m10737c, m10737c, m10737c);
        }
    }

    @Override // com.google.android.material.floatingactionbutton.C14578d
    /* renamed from: a */
    public final void mo10680a(int[] iArr) {
        if (Build.VERSION.SDK_INT == 21) {
            if (!this.f53198z.isEnabled()) {
                this.f53198z.setElevation(BitmapDescriptorFactory.HUE_RED);
                this.f53198z.setTranslationZ(BitmapDescriptorFactory.HUE_RED);
                return;
            }
            this.f53198z.setElevation(this.f53187i);
            if (this.f53198z.isPressed()) {
                this.f53198z.setTranslationZ(this.f53189k);
            } else if (this.f53198z.isFocused() || this.f53198z.isHovered()) {
                this.f53198z.setTranslationZ(this.f53188j);
            } else {
                this.f53198z.setTranslationZ(BitmapDescriptorFactory.HUE_RED);
            }
        }
    }

    @Override // com.google.android.material.floatingactionbutton.C14578d
    /* renamed from: d */
    public final void mo10679d() {
    }

    @Override // com.google.android.material.floatingactionbutton.C14578d
    /* renamed from: g */
    public final void mo10678g() {
        m10698h();
    }

    @Override // com.google.android.material.floatingactionbutton.C14578d
    /* renamed from: i */
    final boolean mo10677i() {
        return this.f53168A.mo10487a() || !m10704c();
    }

    @Override // com.google.android.material.floatingactionbutton.C14578d
    /* renamed from: j */
    public final boolean mo10676j() {
        return false;
    }

    @Override // com.google.android.material.floatingactionbutton.C14578d
    /* renamed from: k */
    final C14670h mo10675k() {
        return new C14592a((C14678m) C0833d.m44410a(this.f53180b));
    }

    @Override // com.google.android.material.floatingactionbutton.C14578d
    /* renamed from: n */
    final void mo10674n() {
    }
}
