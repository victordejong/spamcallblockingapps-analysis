package p251u3;

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
import com.google.android.material.floatingactionbutton.C1782d;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import java.util.ArrayList;
import java.util.Objects;
import p005a4.C0016b;
import p019b4.AbstractC0729b;
import p029c4.C0822f;
import p029c4.C0827i;
import p066d0.C2134a;
/* renamed from: u3.d */
/* loaded from: classes-dex2jar.jar:u3/d.class */
public class C4482d extends C1782d {

    /* renamed from: u3.d$a */
    /* loaded from: classes-dex2jar.jar:u3/d$a.class */
    public static class C4483a extends C0822f {
        public C4483a(C0827i c0827i) {
            super(c0827i);
        }

        @Override // p029c4.C0822f, android.graphics.drawable.Drawable
        public boolean isStateful() {
            return true;
        }
    }

    public C4482d(FloatingActionButton floatingActionButton, AbstractC0729b abstractC0729b) {
        super(floatingActionButton, abstractC0729b);
    }

    @Override // com.google.android.material.floatingactionbutton.C1782d
    /* renamed from: e */
    public float mo879e() {
        return this.f6688w.getElevation();
    }

    @Override // com.google.android.material.floatingactionbutton.C1782d
    /* renamed from: f */
    public void mo878f(Rect rect) {
        if (FloatingActionButton.this.f6636l) {
            super.mo878f(rect);
        } else if (m4558u()) {
            rect.set(0, 0, 0, 0);
        } else {
            int sizeDimension = (this.f6676k - this.f6688w.getSizeDimension()) / 2;
            rect.set(sizeDimension, sizeDimension, sizeDimension, sizeDimension);
        }
    }

    @Override // com.google.android.material.floatingactionbutton.C1782d
    /* renamed from: g */
    public void mo877g(ColorStateList colorStateList, PorterDuff.Mode mode, ColorStateList colorStateList2, int i) {
        LayerDrawable layerDrawable;
        C0827i c0827i = this.f6666a;
        Objects.requireNonNull(c0827i);
        C4483a c4483a = new C4483a(c0827i);
        this.f6667b = c4483a;
        c4483a.setTintList(colorStateList);
        if (mode != null) {
            this.f6667b.setTintMode(mode);
        }
        this.f6667b.m7316o(this.f6688w.getContext());
        if (i > 0) {
            Context context = this.f6688w.getContext();
            C0827i c0827i2 = this.f6666a;
            Objects.requireNonNull(c0827i2);
            C4477a c4477a = new C4477a(c0827i2);
            int m3845b = C2134a.m3845b(context, 2131099790);
            int m3845b2 = C2134a.m3845b(context, 2131099789);
            int m3845b3 = C2134a.m3845b(context, 2131099787);
            int m3845b4 = C2134a.m3845b(context, 2131099788);
            c4477a.f13873i = m3845b;
            c4477a.f13874j = m3845b2;
            c4477a.f13875k = m3845b3;
            c4477a.f13876l = m3845b4;
            float f = i;
            if (c4477a.f13872h != f) {
                c4477a.f13872h = f;
                c4477a.f13866b.setStrokeWidth(f * 1.3333f);
                c4477a.f13878n = true;
                c4477a.invalidateSelf();
            }
            c4477a.m880b(colorStateList);
            this.f6669d = c4477a;
            C4477a c4477a2 = this.f6669d;
            Objects.requireNonNull(c4477a2);
            C0822f c0822f = this.f6667b;
            Objects.requireNonNull(c0822f);
            layerDrawable = new LayerDrawable(new Drawable[]{c4477a2, c0822f});
        } else {
            this.f6669d = null;
            layerDrawable = this.f6667b;
        }
        RippleDrawable rippleDrawable = new RippleDrawable(C0016b.m8930a(colorStateList2), layerDrawable, null);
        this.f6668c = rippleDrawable;
        this.f6670e = rippleDrawable;
    }

    @Override // com.google.android.material.floatingactionbutton.C1782d
    /* renamed from: j */
    public void mo876j() {
    }

    @Override // com.google.android.material.floatingactionbutton.C1782d
    /* renamed from: k */
    public void mo875k() {
        m4557w();
    }

    @Override // com.google.android.material.floatingactionbutton.C1782d
    /* renamed from: l */
    public void mo874l(int[] iArr) {
        if (Build.VERSION.SDK_INT == 21) {
            if (!this.f6688w.isEnabled()) {
                this.f6688w.setElevation(0.0f);
                this.f6688w.setTranslationZ(0.0f);
                return;
            }
            this.f6688w.setElevation(this.f6673h);
            if (this.f6688w.isPressed()) {
                this.f6688w.setTranslationZ(this.f6675j);
            } else if (this.f6688w.isFocused() || this.f6688w.isHovered()) {
                this.f6688w.setTranslationZ(this.f6674i);
            } else {
                this.f6688w.setTranslationZ(0.0f);
            }
        }
    }

    @Override // com.google.android.material.floatingactionbutton.C1782d
    /* renamed from: m */
    public void mo873m(float f, float f2, float f3) {
        int i = Build.VERSION.SDK_INT;
        if (i == 21) {
            this.f6688w.refreshDrawableState();
        } else {
            StateListAnimator stateListAnimator = new StateListAnimator();
            stateListAnimator.addState(C1782d.f6657E, m869y(f, f3));
            stateListAnimator.addState(C1782d.f6658F, m869y(f, f2));
            stateListAnimator.addState(C1782d.f6659G, m869y(f, f2));
            stateListAnimator.addState(C1782d.f6660H, m869y(f, f2));
            AnimatorSet animatorSet = new AnimatorSet();
            ArrayList arrayList = new ArrayList();
            arrayList.add(ObjectAnimator.ofFloat(this.f6688w, "elevation", f).setDuration(0L));
            if (i >= 22 && i <= 24) {
                FloatingActionButton floatingActionButton = this.f6688w;
                arrayList.add(ObjectAnimator.ofFloat(floatingActionButton, View.TRANSLATION_Z, floatingActionButton.getTranslationZ()).setDuration(100L));
            }
            arrayList.add(ObjectAnimator.ofFloat(this.f6688w, View.TRANSLATION_Z, 0.0f).setDuration(100L));
            animatorSet.playSequentially((Animator[]) arrayList.toArray(new Animator[0]));
            animatorSet.setInterpolator(C1782d.f6656D);
            stateListAnimator.addState(C1782d.f6661I, animatorSet);
            stateListAnimator.addState(C1782d.f6662J, m869y(0.0f, 0.0f));
            this.f6688w.setStateListAnimator(stateListAnimator);
        }
        if (mo871s()) {
            m4557w();
        }
    }

    @Override // com.google.android.material.floatingactionbutton.C1782d
    /* renamed from: q */
    public void mo872q(ColorStateList colorStateList) {
        Drawable drawable = this.f6668c;
        if (drawable instanceof RippleDrawable) {
            ((RippleDrawable) drawable).setColor(C0016b.m8930a(colorStateList));
        } else if (drawable == null) {
        } else {
            drawable.setTintList(C0016b.m8930a(colorStateList));
        }
    }

    @Override // com.google.android.material.floatingactionbutton.C1782d
    /* renamed from: s */
    public boolean mo871s() {
        return FloatingActionButton.this.f6636l || !m4558u();
    }

    @Override // com.google.android.material.floatingactionbutton.C1782d
    /* renamed from: v */
    public void mo870v() {
    }

    /* renamed from: y */
    public final Animator m869y(float f, float f2) {
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.play(ObjectAnimator.ofFloat(this.f6688w, "elevation", f).setDuration(0L)).with(ObjectAnimator.ofFloat(this.f6688w, View.TRANSLATION_Z, f2).setDuration(100L));
        animatorSet.setInterpolator(C1782d.f6656D);
        return animatorSet;
    }
}
