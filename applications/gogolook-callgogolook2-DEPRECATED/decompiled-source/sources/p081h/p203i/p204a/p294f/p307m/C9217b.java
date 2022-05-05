package p081h.p203i.p204a.p294f.p307m;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.StateListAnimator;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.core.graphics.drawable.DrawableCompat;
import com.google.android.material.internal.VisibilityAwareImageButton;
import java.util.ArrayList;
import p081h.p203i.p204a.p294f.p308n.C9219a;
import p081h.p203i.p204a.p294f.p308n.C9222b;
import p081h.p203i.p204a.p294f.p311q.C9252a;
import p081h.p203i.p204a.p294f.p312r.AbstractC9254b;
import p081h.p203i.p204a.p294f.p312r.C9253a;
@RequiresApi(21)
/* renamed from: h.i.a.f.m.b */
/* loaded from: classes2-dex2jar.jar:h/i/a/f/m/b.class */
public class C9217b extends C9207a {

    /* renamed from: I */
    public InsetDrawable f21075I;

    /* renamed from: h.i.a.f.m.b$a */
    /* loaded from: classes2-dex2jar.jar:h/i/a/f/m/b$a.class */
    public static class C9218a extends GradientDrawable {
        @Override // android.graphics.drawable.GradientDrawable, android.graphics.drawable.Drawable
        public boolean isStateful() {
            return true;
        }
    }

    public C9217b(VisibilityAwareImageButton visibilityAwareImageButton, AbstractC9254b bVar) {
        super(visibilityAwareImageButton, bVar);
    }

    @NonNull
    /* renamed from: a */
    public final Animator m15735a(float f, float f2) {
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.play(ObjectAnimator.ofFloat(this.f21054u, "elevation", f).setDuration(0L)).with(ObjectAnimator.ofFloat(this.f21054u, View.TRANSLATION_Z, f2).setDuration(100L));
        animatorSet.setInterpolator(C9207a.f21026B);
        return animatorSet;
    }

    @Override // p081h.p203i.p204a.p294f.p307m.C9207a
    /* renamed from: a */
    public void mo15734a(float f, float f2, float f3) {
        if (Build.VERSION.SDK_INT == 21) {
            this.f21054u.refreshDrawableState();
        } else {
            StateListAnimator stateListAnimator = new StateListAnimator();
            stateListAnimator.addState(C9207a.f21027C, m15735a(f, f3));
            stateListAnimator.addState(C9207a.f21028D, m15735a(f, f2));
            stateListAnimator.addState(C9207a.f21029E, m15735a(f, f2));
            stateListAnimator.addState(C9207a.f21030F, m15735a(f, f2));
            AnimatorSet animatorSet = new AnimatorSet();
            ArrayList arrayList = new ArrayList();
            arrayList.add(ObjectAnimator.ofFloat(this.f21054u, "elevation", f).setDuration(0L));
            int i = Build.VERSION.SDK_INT;
            if (i >= 22 && i <= 24) {
                VisibilityAwareImageButton visibilityAwareImageButton = this.f21054u;
                arrayList.add(ObjectAnimator.ofFloat(visibilityAwareImageButton, View.TRANSLATION_Z, visibilityAwareImageButton.getTranslationZ()).setDuration(100L));
            }
            arrayList.add(ObjectAnimator.ofFloat(this.f21054u, View.TRANSLATION_Z, 0.0f).setDuration(100L));
            animatorSet.playSequentially((Animator[]) arrayList.toArray(new Animator[0]));
            animatorSet.setInterpolator(C9207a.f21026B);
            stateListAnimator.addState(C9207a.f21031G, animatorSet);
            stateListAnimator.addState(C9207a.f21032H, m15735a(0.0f, 0.0f));
            this.f21054u.setStateListAnimator(stateListAnimator);
        }
        if (this.f21055v.mo15600a()) {
            m15739q();
        }
    }

    @Override // p081h.p203i.p204a.p294f.p307m.C9207a
    /* renamed from: a */
    public void mo15733a(ColorStateList colorStateList, PorterDuff.Mode mode, ColorStateList colorStateList2, int i) {
        Drawable drawable;
        this.f21043j = DrawableCompat.wrap(m15770a());
        DrawableCompat.setTintList(this.f21043j, colorStateList);
        if (mode != null) {
            DrawableCompat.setTintMode(this.f21043j, mode);
        }
        if (i > 0) {
            this.f21045l = m15766a(i, colorStateList);
            drawable = new LayerDrawable(new Drawable[]{this.f21045l, this.f21043j});
        } else {
            this.f21045l = null;
            drawable = this.f21043j;
        }
        this.f21044k = new RippleDrawable(C9252a.m15613a(colorStateList2), drawable, null);
        Drawable drawable2 = this.f21044k;
        this.f21046m = drawable2;
        this.f21055v.setBackgroundDrawable(drawable2);
    }

    @Override // p081h.p203i.p204a.p294f.p307m.C9207a
    /* renamed from: a */
    public void mo15732a(Rect rect) {
        if (this.f21055v.mo15600a()) {
            float b = this.f21055v.mo15599b();
            float r = m15725r() + this.f21049p;
            int ceil = (int) Math.ceil(C9253a.m15608a(r, b, false));
            int ceil2 = (int) Math.ceil(C9253a.m15602b(r, b, false));
            rect.set(ceil, ceil2, ceil, ceil2);
            return;
        }
        rect.set(0, 0, 0, 0);
    }

    @Override // p081h.p203i.p204a.p294f.p307m.C9207a
    /* renamed from: a */
    public void mo15731a(int[] iArr) {
        if (Build.VERSION.SDK_INT != 21) {
            return;
        }
        if (this.f21054u.isEnabled()) {
            this.f21054u.setElevation(this.f21047n);
            if (this.f21054u.isPressed()) {
                this.f21054u.setTranslationZ(this.f21049p);
            } else if (this.f21054u.isFocused() || this.f21054u.isHovered()) {
                this.f21054u.setTranslationZ(this.f21048o);
            } else {
                this.f21054u.setTranslationZ(0.0f);
            }
        } else {
            this.f21054u.setElevation(0.0f);
            this.f21054u.setTranslationZ(0.0f);
        }
    }

    @Override // p081h.p203i.p204a.p294f.p307m.C9207a
    /* renamed from: b */
    public void mo15730b(Rect rect) {
        if (this.f21055v.mo15600a()) {
            this.f21075I = new InsetDrawable(this.f21044k, rect.left, rect.top, rect.right, rect.bottom);
            this.f21055v.setBackgroundDrawable(this.f21075I);
            return;
        }
        this.f21055v.setBackgroundDrawable(this.f21044k);
    }

    @Override // p081h.p203i.p204a.p294f.p307m.C9207a
    /* renamed from: g */
    public void mo15729g() {
    }

    @Override // p081h.p203i.p204a.p294f.p307m.C9207a
    /* renamed from: h */
    public C9219a mo15728h() {
        return new C9222b();
    }

    @Override // p081h.p203i.p204a.p294f.p307m.C9207a
    /* renamed from: i */
    public GradientDrawable mo15727i() {
        return new C9218a();
    }

    @Override // p081h.p203i.p204a.p294f.p307m.C9207a
    /* renamed from: m */
    public boolean mo15726m() {
        return false;
    }

    /* renamed from: r */
    public float m15725r() {
        return this.f21054u.getElevation();
    }
}
