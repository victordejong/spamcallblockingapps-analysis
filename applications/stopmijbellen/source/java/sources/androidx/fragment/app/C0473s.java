package androidx.fragment.app;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.AnimationUtils;
import android.view.animation.Transformation;
import p163m0.ViewTreeObserver$OnPreDrawListenerC3583p;
/* renamed from: androidx.fragment.app.s */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/s.class */
public class C0473s {

    /* renamed from: androidx.fragment.app.s$a */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/s$a.class */
    public static class C0474a {

        /* renamed from: a */
        public final Animation f1933a;

        /* renamed from: b */
        public final Animator f1934b;

        public C0474a(Animator animator) {
            this.f1933a = null;
            this.f1934b = animator;
        }

        public C0474a(Animation animation) {
            this.f1933a = animation;
            this.f1934b = null;
        }
    }

    /* renamed from: androidx.fragment.app.s$b */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/s$b.class */
    public static class RunnableC0475b extends AnimationSet implements Runnable {

        /* renamed from: a */
        public final ViewGroup f1935a;

        /* renamed from: b */
        public final View f1936b;

        /* renamed from: c */
        public boolean f1937c;

        /* renamed from: d */
        public boolean f1938d;

        /* renamed from: e */
        public boolean f1939e = true;

        public RunnableC0475b(Animation animation, ViewGroup viewGroup, View view) {
            super(false);
            this.f1935a = viewGroup;
            this.f1936b = view;
            addAnimation(animation);
            viewGroup.post(this);
        }

        @Override // android.view.animation.AnimationSet, android.view.animation.Animation
        public boolean getTransformation(long j, Transformation transformation) {
            this.f1939e = true;
            if (this.f1937c) {
                return !this.f1938d;
            }
            if (super.getTransformation(j, transformation)) {
                return true;
            }
            this.f1937c = true;
            ViewTreeObserver$OnPreDrawListenerC3583p.m2126a(this.f1935a, this);
            return true;
        }

        @Override // android.view.animation.Animation
        public boolean getTransformation(long j, Transformation transformation, float f) {
            this.f1939e = true;
            if (this.f1937c) {
                return !this.f1938d;
            }
            if (super.getTransformation(j, transformation, f)) {
                return true;
            }
            this.f1937c = true;
            ViewTreeObserver$OnPreDrawListenerC3583p.m2126a(this.f1935a, this);
            return true;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f1937c || !this.f1939e) {
                this.f1935a.endViewTransition(this.f1936b);
                this.f1938d = true;
                return;
            }
            this.f1939e = false;
            this.f1935a.post(this);
        }
    }

    /* renamed from: a */
    public static C0474a m8062a(Context context, Fragment fragment, boolean z, boolean z2) {
        int nextTransition = fragment.getNextTransition();
        int popEnterAnim = z2 ? z ? fragment.getPopEnterAnim() : fragment.getPopExitAnim() : z ? fragment.getEnterAnim() : fragment.getExitAnim();
        fragment.setAnimations(0, 0, 0, 0);
        ViewGroup viewGroup = fragment.mContainer;
        if (viewGroup != null && viewGroup.getTag(2131297212) != null) {
            fragment.mContainer.setTag(2131297212, null);
        }
        ViewGroup viewGroup2 = fragment.mContainer;
        if (viewGroup2 == null || viewGroup2.getLayoutTransition() == null) {
            Animation onCreateAnimation = fragment.onCreateAnimation(nextTransition, z, popEnterAnim);
            if (onCreateAnimation != null) {
                return new C0474a(onCreateAnimation);
            }
            Animator onCreateAnimator = fragment.onCreateAnimator(nextTransition, z, popEnterAnim);
            if (onCreateAnimator != null) {
                return new C0474a(onCreateAnimator);
            }
            int i = popEnterAnim;
            if (popEnterAnim == 0) {
                i = popEnterAnim;
                if (nextTransition != 0) {
                    i = nextTransition != 4097 ? nextTransition != 4099 ? nextTransition != 8194 ? -1 : z ? 2130837507 : 2130837508 : z ? 2130837509 : 2130837510 : z ? 2130837511 : 2130837512;
                }
            }
            if (i == 0) {
                return null;
            }
            boolean equals = "anim".equals(context.getResources().getResourceTypeName(i));
            boolean z3 = false;
            if (equals) {
                try {
                    Animation loadAnimation = AnimationUtils.loadAnimation(context, i);
                    if (loadAnimation != null) {
                        return new C0474a(loadAnimation);
                    }
                    z3 = true;
                } catch (Resources.NotFoundException e) {
                    throw e;
                } catch (RuntimeException e2) {
                    z3 = false;
                }
            }
            if (z3) {
                return null;
            }
            try {
                Animator loadAnimator = AnimatorInflater.loadAnimator(context, i);
                if (loadAnimator == null) {
                    return null;
                }
                return new C0474a(loadAnimator);
            } catch (RuntimeException e3) {
                if (equals) {
                    throw e3;
                }
                Animation loadAnimation2 = AnimationUtils.loadAnimation(context, i);
                if (loadAnimation2 == null) {
                    return null;
                }
                return new C0474a(loadAnimation2);
            }
        }
        return null;
    }
}
