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
import androidx.core.e.d;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.material.a;
import com.google.android.material.j.b;
import com.google.android.material.k.h;
import com.google.android.material.k.m;
import java.util.ArrayList;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/floatingactionbutton/e.class */
final class e extends d {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/floatingactionbutton/e$a.class */
    public static final class a extends h {
        a(m mVar) {
            super(mVar);
        }

        @Override // com.google.android.material.k.h, android.graphics.drawable.Drawable
        public final boolean isStateful() {
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(FloatingActionButton floatingActionButton, b bVar) {
        super(floatingActionButton, bVar);
    }

    private Animator a(float f, float f2) {
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.play(ObjectAnimator.ofFloat(this.z, "elevation", f).setDuration(0L)).with(ObjectAnimator.ofFloat(this.z, View.TRANSLATION_Z, f2).setDuration(100L));
        animatorSet.setInterpolator(f30536a);
        return animatorSet;
    }

    @Override // com.google.android.material.floatingactionbutton.d
    public final float a() {
        return this.z.getElevation();
    }

    @Override // com.google.android.material.floatingactionbutton.d
    final void a(float f, float f2, float f3) {
        if (Build.VERSION.SDK_INT == 21) {
            this.z.refreshDrawableState();
        } else {
            StateListAnimator stateListAnimator = new StateListAnimator();
            stateListAnimator.addState(t, a(f, f3));
            stateListAnimator.addState(u, a(f, f2));
            stateListAnimator.addState(v, a(f, f2));
            stateListAnimator.addState(w, a(f, f2));
            AnimatorSet animatorSet = new AnimatorSet();
            ArrayList arrayList = new ArrayList();
            arrayList.add(ObjectAnimator.ofFloat(this.z, "elevation", f).setDuration(0L));
            if (Build.VERSION.SDK_INT >= 22 && Build.VERSION.SDK_INT <= 24) {
                arrayList.add(ObjectAnimator.ofFloat(this.z, View.TRANSLATION_Z, this.z.getTranslationZ()).setDuration(100L));
            }
            arrayList.add(ObjectAnimator.ofFloat(this.z, View.TRANSLATION_Z, BitmapDescriptorFactory.HUE_RED).setDuration(100L));
            animatorSet.playSequentially((Animator[]) arrayList.toArray(new Animator[0]));
            animatorSet.setInterpolator(f30536a);
            stateListAnimator.addState(x, animatorSet);
            stateListAnimator.addState(y, a(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED));
            this.z.setStateListAnimator(stateListAnimator);
        }
        if (i()) {
            h();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.floatingactionbutton.d
    public final void a(ColorStateList colorStateList) {
        if (this.f30539d instanceof RippleDrawable) {
            ((RippleDrawable) this.f30539d).setColor(com.google.android.material.i.b.b(colorStateList));
        } else {
            super.a(colorStateList);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.floatingactionbutton.d
    public final void a(ColorStateList colorStateList, PorterDuff.Mode mode, ColorStateList colorStateList2, int i) {
        Drawable drawable;
        this.f30538c = k();
        this.f30538c.setTintList(colorStateList);
        if (mode != null) {
            this.f30538c.setTintMode(mode);
        }
        this.f30538c.a(this.z.getContext());
        if (i > 0) {
            Context context = this.z.getContext();
            c cVar = new c((m) d.a(this.f30537b));
            int c2 = androidx.core.content.b.c(context, a.c.design_fab_stroke_top_outer_color);
            int c3 = androidx.core.content.b.c(context, a.c.design_fab_stroke_top_inner_color);
            int c4 = androidx.core.content.b.c(context, a.c.design_fab_stroke_end_inner_color);
            int c5 = androidx.core.content.b.c(context, a.c.design_fab_stroke_end_outer_color);
            cVar.f30533c = c2;
            cVar.f30534d = c3;
            cVar.e = c4;
            cVar.f = c5;
            float f = i;
            if (cVar.f30532b != f) {
                cVar.f30532b = f;
                cVar.f30531a.setStrokeWidth(f * 1.3333f);
                cVar.g = true;
                cVar.invalidateSelf();
            }
            cVar.a(colorStateList);
            this.e = cVar;
            drawable = new LayerDrawable(new Drawable[]{(Drawable) d.a(this.e), (Drawable) d.a(this.f30538c)});
        } else {
            this.e = null;
            drawable = this.f30538c;
        }
        this.f30539d = new RippleDrawable(com.google.android.material.i.b.b(colorStateList2), drawable, null);
        this.f = this.f30539d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.floatingactionbutton.d
    public final void a(Rect rect) {
        if (this.A.a()) {
            super.a(rect);
        } else if (!c()) {
            int c2 = (this.l - this.z.c()) / 2;
            rect.set(c2, c2, c2, c2);
        } else {
            rect.set(0, 0, 0, 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.floatingactionbutton.d
    public final void a(int[] iArr) {
        if (Build.VERSION.SDK_INT != 21) {
            return;
        }
        if (this.z.isEnabled()) {
            this.z.setElevation(this.i);
            if (this.z.isPressed()) {
                this.z.setTranslationZ(this.k);
            } else if (this.z.isFocused() || this.z.isHovered()) {
                this.z.setTranslationZ(this.j);
            } else {
                this.z.setTranslationZ(BitmapDescriptorFactory.HUE_RED);
            }
        } else {
            this.z.setElevation(BitmapDescriptorFactory.HUE_RED);
            this.z.setTranslationZ(BitmapDescriptorFactory.HUE_RED);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.floatingactionbutton.d
    public final void d() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.floatingactionbutton.d
    public final void g() {
        h();
    }

    @Override // com.google.android.material.floatingactionbutton.d
    final boolean i() {
        return this.A.a() || !c();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.floatingactionbutton.d
    public final boolean j() {
        return false;
    }

    @Override // com.google.android.material.floatingactionbutton.d
    final h k() {
        return new a((m) d.a(this.f30537b));
    }

    @Override // com.google.android.material.floatingactionbutton.d
    final void n() {
    }
}
