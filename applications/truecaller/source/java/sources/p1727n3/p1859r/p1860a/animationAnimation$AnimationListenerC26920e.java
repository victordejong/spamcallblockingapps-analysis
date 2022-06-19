package p1727n3.p1859r.p1860a;

import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import p1727n3.p1859r.p1860a.C26909b;
/* renamed from: n3.r.a.e */
/* loaded from: classes-dex2jar.jar:n3/r/a/e.class */
public class animationAnimation$AnimationListenerC26920e implements Animation.AnimationListener {

    /* renamed from: a */
    public final /* synthetic */ ViewGroup f75307a;

    /* renamed from: b */
    public final /* synthetic */ View f75308b;

    /* renamed from: c */
    public final /* synthetic */ C26909b.C26911b f75309c;

    /* renamed from: n3.r.a.e$a */
    /* loaded from: classes-dex2jar.jar:n3/r/a/e$a.class */
    public class RunnableC26921a implements Runnable {
        public RunnableC26921a() {
            animationAnimation$AnimationListenerC26920e.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            animationAnimation$AnimationListenerC26920e animationanimation_animationlistenerc26920e = animationAnimation$AnimationListenerC26920e.this;
            animationanimation_animationlistenerc26920e.f75307a.endViewTransition(animationanimation_animationlistenerc26920e.f75308b);
            animationAnimation$AnimationListenerC26920e.this.f75309c.m1171a();
        }
    }

    public animationAnimation$AnimationListenerC26920e(C26909b c26909b, ViewGroup viewGroup, View view, C26909b.C26911b c26911b) {
        this.f75307a = viewGroup;
        this.f75308b = view;
        this.f75309c = c26911b;
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationEnd(Animation animation) {
        this.f75307a.post(new RunnableC26921a());
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationRepeat(Animation animation) {
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationStart(Animation animation) {
    }
}
