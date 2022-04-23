package androidx.fragment.app;

import android.transition.Transition;
import android.view.View;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/r$b.class */
class r$b implements Transition.TransitionListener {

    /* renamed from: a */
    final /* synthetic */ View f2004a;

    /* renamed from: b */
    final /* synthetic */ ArrayList f2005b;

    r$b(r rVar, View view, ArrayList arrayList) {
        this.f2004a = view;
        this.f2005b = arrayList;
    }

    @Override // android.transition.Transition.TransitionListener
    public void onTransitionCancel(Transition transition) {
    }

    @Override // android.transition.Transition.TransitionListener
    public void onTransitionEnd(Transition transition) {
        transition.removeListener(this);
        this.f2004a.setVisibility(8);
        int size = this.f2005b.size();
        for (int i = 0; i < size; i++) {
            ((View) this.f2005b.get(i)).setVisibility(0);
        }
    }

    @Override // android.transition.Transition.TransitionListener
    public void onTransitionPause(Transition transition) {
    }

    @Override // android.transition.Transition.TransitionListener
    public void onTransitionResume(Transition transition) {
    }

    @Override // android.transition.Transition.TransitionListener
    public void onTransitionStart(Transition transition) {
        transition.removeListener(this);
        transition.addListener(this);
    }
}
