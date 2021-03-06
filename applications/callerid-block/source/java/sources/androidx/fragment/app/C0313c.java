package androidx.fragment.app;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.AnimationUtils;
import android.view.animation.Transformation;
import androidx.fragment.app.C0336q;
import d.h.i.a;
import d.h.m.q;
import d.m.b;
/* renamed from: androidx.fragment.app.c */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/c.class */
public class C0313c {

    /* renamed from: androidx.fragment.app.c$b */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/c$b.class */
    public static final class animationAnimation$AnimationListenerC0314b implements Animation.AnimationListener {

        /* renamed from: a */
        final /* synthetic */ ViewGroup f1870a;

        /* renamed from: b */
        final /* synthetic */ Fragment f1871b;

        /* renamed from: c */
        final /* synthetic */ C0336q.AbstractC0343g f1872c;

        /* renamed from: d */
        final /* synthetic */ a f1873d;

        /* renamed from: androidx.fragment.app.c$b$a */
        /* loaded from: classes-dex2jar.jar:androidx/fragment/app/c$b$a.class */
        class RunnableC0315a implements Runnable {
            RunnableC0315a() {
                animationAnimation$AnimationListenerC0314b.this = r4;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (animationAnimation$AnimationListenerC0314b.this.f1871b.s() != null) {
                    animationAnimation$AnimationListenerC0314b.this.f1871b.p1((View) null);
                    animationAnimation$AnimationListenerC0314b animationanimation_animationlistenerc0314b = animationAnimation$AnimationListenerC0314b.this;
                    animationanimation_animationlistenerc0314b.f1872c.m13052a(animationanimation_animationlistenerc0314b.f1871b, animationanimation_animationlistenerc0314b.f1873d);
                }
            }
        }

        animationAnimation$AnimationListenerC0314b(ViewGroup viewGroup, Fragment fragment, C0336q.AbstractC0343g abstractC0343g, a aVar) {
            this.f1870a = viewGroup;
            this.f1871b = fragment;
            this.f1872c = abstractC0343g;
            this.f1873d = aVar;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            this.f1870a.post(new RunnableC0315a());
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    /* renamed from: androidx.fragment.app.c$c */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/c$c.class */
    public static final class C0316c extends AnimatorListenerAdapter {

        /* renamed from: a */
        final /* synthetic */ ViewGroup f1875a;

        /* renamed from: b */
        final /* synthetic */ View f1876b;

        /* renamed from: c */
        final /* synthetic */ Fragment f1877c;

        /* renamed from: d */
        final /* synthetic */ C0336q.AbstractC0343g f1878d;

        /* renamed from: e */
        final /* synthetic */ a f1879e;

        C0316c(ViewGroup viewGroup, View view, Fragment fragment, C0336q.AbstractC0343g abstractC0343g, a aVar) {
            this.f1875a = viewGroup;
            this.f1876b = view;
            this.f1877c = fragment;
            this.f1878d = abstractC0343g;
            this.f1879e = aVar;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f1875a.endViewTransition(this.f1876b);
            Animator t = this.f1877c.t();
            this.f1877c.q1((Animator) null);
            if (t == null || this.f1875a.indexOfChild(this.f1876b) >= 0) {
                return;
            }
            this.f1878d.m13052a(this.f1877c, this.f1879e);
        }
    }

    /* renamed from: androidx.fragment.app.c$d */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/c$d.class */
    public static class C0317d {

        /* renamed from: a */
        public final Animation f1880a;

        /* renamed from: b */
        public final Animator f1881b;

        C0317d(Animator animator) {
            this.f1880a = null;
            this.f1881b = animator;
            if (animator != null) {
                return;
            }
            throw new IllegalStateException("Animator cannot be null");
        }

        C0317d(Animation animation) {
            this.f1880a = animation;
            this.f1881b = null;
            if (animation != null) {
                return;
            }
            throw new IllegalStateException("Animation cannot be null");
        }
    }

    /* renamed from: androidx.fragment.app.c$e */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/c$e.class */
    public static class RunnableC0318e extends AnimationSet implements Runnable {

        /* renamed from: b */
        private final ViewGroup f1882b;

        /* renamed from: c */
        private final View f1883c;

        /* renamed from: d */
        private boolean f1884d;

        /* renamed from: e */
        private boolean f1885e;

        /* renamed from: f */
        private boolean f1886f = true;

        RunnableC0318e(Animation animation, ViewGroup viewGroup, View view) {
            super(false);
            this.f1882b = viewGroup;
            this.f1883c = view;
            addAnimation(animation);
            viewGroup.post(this);
        }

        @Override // android.view.animation.AnimationSet, android.view.animation.Animation
        public boolean getTransformation(long j, Transformation transformation) {
            this.f1886f = true;
            if (this.f1884d) {
                return !this.f1885e;
            }
            if (super.getTransformation(j, transformation)) {
                return true;
            }
            this.f1884d = true;
            q.a(this.f1882b, this);
            return true;
        }

        @Override // android.view.animation.Animation
        public boolean getTransformation(long j, Transformation transformation, float f) {
            this.f1886f = true;
            if (this.f1884d) {
                return !this.f1885e;
            }
            if (super.getTransformation(j, transformation, f)) {
                return true;
            }
            this.f1884d = true;
            q.a(this.f1882b, this);
            return true;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f1884d || !this.f1886f) {
                this.f1882b.endViewTransition(this.f1883c);
                this.f1885e = true;
                return;
            }
            this.f1886f = false;
            this.f1882b.post(this);
        }
    }

    /* renamed from: a */
    public static void m13302a(Fragment fragment, C0317d c0317d, C0336q.AbstractC0343g abstractC0343g) {
        View view = fragment.H;
        ViewGroup viewGroup = fragment.G;
        viewGroup.startViewTransition(view);
        a aVar = new a();
        aVar.c(new a(fragment));
        abstractC0343g.m13051b(fragment, aVar);
        if (c0317d.f1880a != null) {
            RunnableC0318e runnableC0318e = new RunnableC0318e(c0317d.f1880a, viewGroup, view);
            fragment.p1(fragment.H);
            runnableC0318e.setAnimationListener(new animationAnimation$AnimationListenerC0314b(viewGroup, fragment, abstractC0343g, aVar));
            fragment.H.startAnimation(runnableC0318e);
            return;
        }
        Animator animator = c0317d.f1881b;
        fragment.q1(animator);
        animator.addListener(new C0316c(viewGroup, view, fragment, abstractC0343g, aVar));
        animator.setTarget(fragment.H);
        animator.start();
    }

    /* renamed from: b */
    public static C0317d m13301b(Context context, AbstractC0319d abstractC0319d, Fragment fragment, boolean z) {
        int m13300c;
        int F = fragment.F();
        int E = fragment.E();
        fragment.u1(0);
        View m13298e = abstractC0319d.m13298e(fragment.x);
        if (m13298e != null) {
            int i = b.visible_removing_fragment_view_tag;
            if (m13298e.getTag(i) != null) {
                m13298e.setTag(i, null);
            }
        }
        ViewGroup viewGroup = fragment.G;
        if (viewGroup == null || viewGroup.getLayoutTransition() == null) {
            Animation n0 = fragment.n0(F, z, E);
            if (n0 != null) {
                return new C0317d(n0);
            }
            Animator o0 = fragment.o0(F, z, E);
            if (o0 != null) {
                return new C0317d(o0);
            }
            if (E != 0) {
                boolean equals = "anim".equals(context.getResources().getResourceTypeName(E));
                boolean z2 = false;
                if (equals) {
                    try {
                        Animation loadAnimation = AnimationUtils.loadAnimation(context, E);
                        if (loadAnimation != null) {
                            return new C0317d(loadAnimation);
                        }
                        z2 = true;
                    } catch (Resources.NotFoundException e) {
                        throw e;
                    } catch (RuntimeException e2) {
                        z2 = false;
                    }
                }
                if (!z2) {
                    try {
                        Animator loadAnimator = AnimatorInflater.loadAnimator(context, E);
                        if (loadAnimator != null) {
                            return new C0317d(loadAnimator);
                        }
                    } catch (RuntimeException e3) {
                        if (equals) {
                            throw e3;
                        }
                        Animation loadAnimation2 = AnimationUtils.loadAnimation(context, E);
                        if (loadAnimation2 != null) {
                            return new C0317d(loadAnimation2);
                        }
                    }
                }
            }
            if (F == 0 || (m13300c = m13300c(F, z)) < 0) {
                return null;
            }
            return new C0317d(AnimationUtils.loadAnimation(context, m13300c));
        }
        return null;
    }

    /* renamed from: c */
    private static int m13300c(int i, boolean z) {
        return i != 4097 ? i != 4099 ? i != 8194 ? -1 : z ? d.m.a.fragment_close_enter : d.m.a.fragment_close_exit : z ? d.m.a.fragment_fade_enter : d.m.a.fragment_fade_exit : z ? d.m.a.fragment_open_enter : d.m.a.fragment_open_exit;
    }
}
