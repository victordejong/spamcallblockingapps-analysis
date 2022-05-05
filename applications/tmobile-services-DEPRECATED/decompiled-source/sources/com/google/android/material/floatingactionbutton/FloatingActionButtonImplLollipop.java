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
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.core.content.ContextCompat;
import androidx.core.util.Preconditions;
import com.google.android.material.C1027R;
import com.google.android.material.ripple.RippleUtils;
import com.google.android.material.shadow.ShadowViewDelegate;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.ShapeAppearanceModel;
import java.util.ArrayList;
@RequiresApi
/* loaded from: classes-dex2jar.jar:com/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop.class */
class FloatingActionButtonImplLollipop extends FloatingActionButtonImpl {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop$AlwaysStatefulMaterialShapeDrawable.class */
    public static class AlwaysStatefulMaterialShapeDrawable extends MaterialShapeDrawable {
        AlwaysStatefulMaterialShapeDrawable(ShapeAppearanceModel shapeAppearanceModel) {
            super(shapeAppearanceModel);
        }

        @Override // com.google.android.material.shape.MaterialShapeDrawable, android.graphics.drawable.Drawable
        public boolean isStateful() {
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public FloatingActionButtonImplLollipop(FloatingActionButton floatingActionButton, ShadowViewDelegate shadowViewDelegate) {
        super(floatingActionButton, shadowViewDelegate);
    }

    @NonNull
    /* renamed from: j0 */
    private Animator m9643j0(float f, float f2) {
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.play(ObjectAnimator.ofFloat(this.f10758y, "elevation", f).setDuration(0L)).with(ObjectAnimator.ofFloat(this.f10758y, View.TRANSLATION_Z, f2).setDuration(100L));
        animatorSet.setInterpolator(FloatingActionButtonImpl.f10722F);
        return animatorSet;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.floatingactionbutton.FloatingActionButtonImpl
    /* renamed from: A */
    public void mo9653A() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.floatingactionbutton.FloatingActionButtonImpl
    /* renamed from: C */
    public void mo9652C() {
        m9679f0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.floatingactionbutton.FloatingActionButtonImpl
    /* renamed from: E */
    public void mo9651E(int[] iArr) {
        if (Build.VERSION.SDK_INT != 21) {
            return;
        }
        if (this.f10758y.isEnabled()) {
            this.f10758y.setElevation(this.f10741h);
            if (this.f10758y.isPressed()) {
                this.f10758y.setTranslationZ(this.f10743j);
            } else if (this.f10758y.isFocused() || this.f10758y.isHovered()) {
                this.f10758y.setTranslationZ(this.f10742i);
            } else {
                this.f10758y.setTranslationZ(0.0f);
            }
        } else {
            this.f10758y.setElevation(0.0f);
            this.f10758y.setTranslationZ(0.0f);
        }
    }

    @Override // com.google.android.material.floatingactionbutton.FloatingActionButtonImpl
    /* renamed from: F */
    void mo9650F(float f, float f2, float f3) {
        if (Build.VERSION.SDK_INT == 21) {
            this.f10758y.refreshDrawableState();
        } else {
            StateListAnimator stateListAnimator = new StateListAnimator();
            stateListAnimator.addState(FloatingActionButtonImpl.f10723G, m9643j0(f, f3));
            stateListAnimator.addState(FloatingActionButtonImpl.f10724H, m9643j0(f, f2));
            stateListAnimator.addState(FloatingActionButtonImpl.f10725I, m9643j0(f, f2));
            stateListAnimator.addState(FloatingActionButtonImpl.f10726J, m9643j0(f, f2));
            AnimatorSet animatorSet = new AnimatorSet();
            ArrayList arrayList = new ArrayList();
            arrayList.add(ObjectAnimator.ofFloat(this.f10758y, "elevation", f).setDuration(0L));
            int i = Build.VERSION.SDK_INT;
            if (i >= 22 && i <= 24) {
                FloatingActionButton floatingActionButton = this.f10758y;
                arrayList.add(ObjectAnimator.ofFloat(floatingActionButton, View.TRANSLATION_Z, floatingActionButton.getTranslationZ()).setDuration(100L));
            }
            arrayList.add(ObjectAnimator.ofFloat(this.f10758y, View.TRANSLATION_Z, 0.0f).setDuration(100L));
            animatorSet.playSequentially((Animator[]) arrayList.toArray(new Animator[0]));
            animatorSet.setInterpolator(FloatingActionButtonImpl.f10722F);
            stateListAnimator.addState(FloatingActionButtonImpl.f10727K, animatorSet);
            stateListAnimator.addState(FloatingActionButtonImpl.f10728L, m9643j0(0.0f, 0.0f));
            this.f10758y.setStateListAnimator(stateListAnimator);
        }
        if (mo9647Z()) {
            m9679f0();
        }
    }

    @Override // com.google.android.material.floatingactionbutton.FloatingActionButtonImpl
    /* renamed from: K */
    boolean mo9649K() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.floatingactionbutton.FloatingActionButtonImpl
    /* renamed from: V */
    public void mo9648V(@Nullable ColorStateList colorStateList) {
        Drawable drawable = this.f10736c;
        if (drawable instanceof RippleDrawable) {
            ((RippleDrawable) drawable).setColor(RippleUtils.m9367d(colorStateList));
        } else {
            super.mo9648V(colorStateList);
        }
    }

    @Override // com.google.android.material.floatingactionbutton.FloatingActionButtonImpl
    /* renamed from: Z */
    boolean mo9647Z() {
        return this.f10759z.mo9355b() || !m9686b0();
    }

    @Override // com.google.android.material.floatingactionbutton.FloatingActionButtonImpl
    /* renamed from: d0 */
    void mo9646d0() {
    }

    @NonNull
    /* renamed from: i0 */
    BorderDrawable m9645i0(int i, ColorStateList colorStateList) {
        Context context = this.f10758y.getContext();
        ShapeAppearanceModel shapeAppearanceModel = this.f10734a;
        Preconditions.m19337d(shapeAppearanceModel);
        BorderDrawable borderDrawable = new BorderDrawable(shapeAppearanceModel);
        borderDrawable.m9775e(ContextCompat.m19675d(context, C1027R.C1028color.design_fab_stroke_top_outer_color), ContextCompat.m19675d(context, C1027R.C1028color.design_fab_stroke_top_inner_color), ContextCompat.m19675d(context, C1027R.C1028color.design_fab_stroke_end_inner_color), ContextCompat.m19675d(context, C1027R.C1028color.design_fab_stroke_end_outer_color));
        borderDrawable.m9776d(i);
        borderDrawable.m9777c(colorStateList);
        return borderDrawable;
    }

    @Override // com.google.android.material.floatingactionbutton.FloatingActionButtonImpl
    @NonNull
    /* renamed from: j */
    MaterialShapeDrawable mo9644j() {
        ShapeAppearanceModel shapeAppearanceModel = this.f10734a;
        Preconditions.m19337d(shapeAppearanceModel);
        return new AlwaysStatefulMaterialShapeDrawable(shapeAppearanceModel);
    }

    @Override // com.google.android.material.floatingactionbutton.FloatingActionButtonImpl
    /* renamed from: n */
    public float mo9642n() {
        return this.f10758y.getElevation();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.floatingactionbutton.FloatingActionButtonImpl
    /* renamed from: s */
    public void mo9641s(@NonNull Rect rect) {
        if (this.f10759z.mo9355b()) {
            super.mo9641s(rect);
        } else if (!m9686b0()) {
            int sizeDimension = (this.f10744k - this.f10758y.getSizeDimension()) / 2;
            rect.set(sizeDimension, sizeDimension, sizeDimension, sizeDimension);
        } else {
            rect.set(0, 0, 0, 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.floatingactionbutton.FloatingActionButtonImpl
    /* renamed from: x */
    public void mo9640x(ColorStateList colorStateList, @Nullable PorterDuff.Mode mode, ColorStateList colorStateList2, int i) {
        Drawable drawable;
        MaterialShapeDrawable j = mo9644j();
        this.f10735b = j;
        j.setTintList(colorStateList);
        if (mode != null) {
            this.f10735b.setTintMode(mode);
        }
        this.f10735b.m9338M(this.f10758y.getContext());
        if (i > 0) {
            this.f10737d = m9645i0(i, colorStateList);
            BorderDrawable borderDrawable = this.f10737d;
            Preconditions.m19337d(borderDrawable);
            BorderDrawable borderDrawable2 = borderDrawable;
            MaterialShapeDrawable materialShapeDrawable = this.f10735b;
            Preconditions.m19337d(materialShapeDrawable);
            drawable = new LayerDrawable(new Drawable[]{borderDrawable2, materialShapeDrawable});
        } else {
            this.f10737d = null;
            drawable = this.f10735b;
        }
        RippleDrawable rippleDrawable = new RippleDrawable(RippleUtils.m9367d(colorStateList2), drawable, null);
        this.f10736c = rippleDrawable;
        this.f10738e = rippleDrawable;
    }
}
