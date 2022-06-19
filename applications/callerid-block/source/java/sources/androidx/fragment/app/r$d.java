package androidx.fragment.app;

import android.transition.Transition;
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/r$d.class */
class r$d implements Transition.TransitionListener {

    /* renamed from: a */
    final /* synthetic */ Runnable f2013a;

    r$d(r rVar, Runnable runnable) {
        this.f2013a = runnable;
    }

    @Override // android.transition.Transition.TransitionListener
    public void onTransitionCancel(Transition transition) {
    }

    @Override // android.transition.Transition.TransitionListener
    public void onTransitionEnd(Transition transition) {
        this.f2013a.run();
    }

    @Override // android.transition.Transition.TransitionListener
    public void onTransitionPause(Transition transition) {
    }

    @Override // android.transition.Transition.TransitionListener
    public void onTransitionResume(Transition transition) {
    }

    @Override // android.transition.Transition.TransitionListener
    public void onTransitionStart(Transition transition) {
    }
}
