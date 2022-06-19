package p1727n3.p1859r.p1860a;

import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import p1727n3.p1807k.p1816e.C26508a;
import p1727n3.p1859r.p1860a.C26937m0;
/* renamed from: n3.r.a.n */
/* loaded from: classes-dex2jar.jar:n3/r/a/n.class */
public class animationAnimation$AnimationListenerC26940n implements Animation.AnimationListener {

    /* renamed from: a */
    public final /* synthetic */ ViewGroup f75402a;

    /* renamed from: b */
    public final /* synthetic */ Fragment f75403b;

    /* renamed from: c */
    public final /* synthetic */ C26937m0.AbstractC26938a f75404c;

    /* renamed from: d */
    public final /* synthetic */ C26508a f75405d;

    /* renamed from: n3.r.a.n$a */
    /* loaded from: classes-dex2jar.jar:n3/r/a/n$a.class */
    public class RunnableC26941a implements Runnable {
        public RunnableC26941a() {
            animationAnimation$AnimationListenerC26940n.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (animationAnimation$AnimationListenerC26940n.this.f75403b.getAnimatingAway() != null) {
                animationAnimation$AnimationListenerC26940n.this.f75403b.setAnimatingAway((View) null);
                animationAnimation$AnimationListenerC26940n animationanimation_animationlistenerc26940n = animationAnimation$AnimationListenerC26940n.this;
                C26937m0.AbstractC26938a abstractC26938a = animationanimation_animationlistenerc26940n.f75404c;
                ((FragmentManager.C0167d) abstractC26938a).m42877a(animationanimation_animationlistenerc26940n.f75403b, animationanimation_animationlistenerc26940n.f75405d);
            }
        }
    }

    public animationAnimation$AnimationListenerC26940n(ViewGroup viewGroup, Fragment fragment, C26937m0.AbstractC26938a abstractC26938a, C26508a c26508a) {
        this.f75402a = viewGroup;
        this.f75403b = fragment;
        this.f75404c = abstractC26938a;
        this.f75405d = c26508a;
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationEnd(Animation animation) {
        this.f75402a.post(new RunnableC26941a());
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationRepeat(Animation animation) {
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationStart(Animation animation) {
    }
}
