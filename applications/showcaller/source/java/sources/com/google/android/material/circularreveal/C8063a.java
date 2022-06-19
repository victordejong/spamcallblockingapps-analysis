package com.google.android.material.circularreveal;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.TypeEvaluator;
import android.os.Build;
import android.util.Property;
import android.view.View;
import android.view.ViewAnimationUtils;
import com.google.android.material.circularreveal.AbstractC8067c;
/* renamed from: com.google.android.material.circularreveal.a */
/* loaded from: classes2-dex2jar.jar:com/google/android/material/circularreveal/a.class */
public final class C8063a {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.material.circularreveal.a$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/circularreveal/a$a.class */
    public static final class C8064a extends AnimatorListenerAdapter {

        /* renamed from: a */
        final /* synthetic */ AbstractC8067c f36525a;

        C8064a(AbstractC8067c abstractC8067c) {
            this.f36525a = abstractC8067c;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f36525a.mo5037b();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            this.f36525a.mo5038a();
        }
    }

    /* renamed from: a */
    public static Animator m5064a(AbstractC8067c abstractC8067c, float f, float f2, float f3) {
        ObjectAnimator ofObject = ObjectAnimator.ofObject(abstractC8067c, (Property<AbstractC8067c, V>) AbstractC8067c.C8070c.f36538a, (TypeEvaluator) AbstractC8067c.C8069b.f36536a, (Object[]) new AbstractC8067c.C8072e[]{new AbstractC8067c.C8072e(f, f2, f3)});
        if (Build.VERSION.SDK_INT >= 21) {
            AbstractC8067c.C8072e revealInfo = abstractC8067c.getRevealInfo();
            if (revealInfo == null) {
                throw new IllegalStateException("Caller must set a non-null RevealInfo before calling this.");
            }
            Animator createCircularReveal = ViewAnimationUtils.createCircularReveal((View) abstractC8067c, (int) f, (int) f2, revealInfo.f36542c, f3);
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.playTogether(ofObject, createCircularReveal);
            return animatorSet;
        }
        return ofObject;
    }

    /* renamed from: b */
    public static Animator.AnimatorListener m5063b(AbstractC8067c abstractC8067c) {
        return new C8064a(abstractC8067c);
    }
}
