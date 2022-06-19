package androidx.fragment.app;

import android.view.ViewGroup;
import android.view.animation.Animation;
import androidx.fragment.app.AbstractC0397a0;
import androidx.fragment.app.C0459p0;
import p120i0.C3056b;
/* renamed from: androidx.fragment.app.q */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/q.class */
public class animationAnimation$AnimationListenerC0462q implements Animation.AnimationListener {

    /* renamed from: a */
    public final /* synthetic */ ViewGroup f1906a;

    /* renamed from: b */
    public final /* synthetic */ Fragment f1907b;

    /* renamed from: c */
    public final /* synthetic */ C0459p0.AbstractC0460a f1908c;

    /* renamed from: d */
    public final /* synthetic */ C3056b f1909d;

    /* renamed from: androidx.fragment.app.q$a */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/q$a.class */
    public class RunnableC0463a implements Runnable {
        public RunnableC0463a() {
            animationAnimation$AnimationListenerC0462q.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (animationAnimation$AnimationListenerC0462q.this.f1907b.getAnimatingAway() != null) {
                animationAnimation$AnimationListenerC0462q.this.f1907b.setAnimatingAway(null);
                animationAnimation$AnimationListenerC0462q animationanimation_animationlistenerc0462q = animationAnimation$AnimationListenerC0462q.this;
                C0459p0.AbstractC0460a abstractC0460a = animationanimation_animationlistenerc0462q.f1908c;
                ((AbstractC0397a0.C0401d) abstractC0460a).m8141a(animationanimation_animationlistenerc0462q.f1907b, animationanimation_animationlistenerc0462q.f1909d);
            }
        }
    }

    public animationAnimation$AnimationListenerC0462q(ViewGroup viewGroup, Fragment fragment, C0459p0.AbstractC0460a abstractC0460a, C3056b c3056b) {
        this.f1906a = viewGroup;
        this.f1907b = fragment;
        this.f1908c = abstractC0460a;
        this.f1909d = c3056b;
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationEnd(Animation animation) {
        this.f1906a.post(new RunnableC0463a());
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationRepeat(Animation animation) {
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationStart(Animation animation) {
    }
}
