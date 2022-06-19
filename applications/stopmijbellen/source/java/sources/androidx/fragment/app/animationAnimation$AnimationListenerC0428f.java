package androidx.fragment.app;

import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import androidx.fragment.app.C0416c;
/* renamed from: androidx.fragment.app.f */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/f.class */
public class animationAnimation$AnimationListenerC0428f implements Animation.AnimationListener {

    /* renamed from: a */
    public final /* synthetic */ ViewGroup f1786a;

    /* renamed from: b */
    public final /* synthetic */ View f1787b;

    /* renamed from: c */
    public final /* synthetic */ C0416c.C0418b f1788c;

    /* renamed from: androidx.fragment.app.f$a */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/f$a.class */
    public class RunnableC0429a implements Runnable {
        public RunnableC0429a() {
            animationAnimation$AnimationListenerC0428f.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            animationAnimation$AnimationListenerC0428f animationanimation_animationlistenerc0428f = animationAnimation$AnimationListenerC0428f.this;
            animationanimation_animationlistenerc0428f.f1786a.endViewTransition(animationanimation_animationlistenerc0428f.f1787b);
            animationAnimation$AnimationListenerC0428f.this.f1788c.m8133a();
        }
    }

    public animationAnimation$AnimationListenerC0428f(C0416c c0416c, ViewGroup viewGroup, View view, C0416c.C0418b c0418b) {
        this.f1786a = viewGroup;
        this.f1787b = view;
        this.f1788c = c0418b;
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationEnd(Animation animation) {
        this.f1786a.post(new RunnableC0429a());
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationRepeat(Animation animation) {
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationStart(Animation animation) {
    }
}
