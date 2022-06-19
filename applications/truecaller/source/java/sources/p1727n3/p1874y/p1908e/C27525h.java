package p1727n3.p1874y.p1908e;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.widget.ImageButton;
import androidx.media2.widget.C0285R;
/* renamed from: n3.y.e.h */
/* loaded from: classes-dex2jar.jar:n3/y/e/h.class */
public class C27525h extends AnimatorListenerAdapter {

    /* renamed from: a */
    public final /* synthetic */ k f77534a;

    public C27525h(k kVar) {
        this.f77534a = kVar;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        int i = 4;
        this.f77534a.j0.setVisibility(4);
        ImageButton g = this.f77534a.g(C0285R.C0287id.ffwd);
        C27544x c27544x = this.f77534a.d;
        if (c27544x == null || !c27544x.m144b()) {
            i = 8;
        }
        g.setVisibility(i);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        this.f77534a.k0.setVisibility(0);
    }
}
