package p000;

import android.view.animation.Animation;
import ey;
/* renamed from: ey$h$b */
/* loaded from: classes-dex2jar.jar:ey$h$b.class */
public class ey$h$b implements Animation.AnimationListener {

    /* renamed from: a */
    public final /* synthetic */ ey.h f6479a;

    public ey$h$b(ey.h hVar) {
        this.f6479a = hVar;
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationEnd(Animation animation) {
        ey eyVar = this.f6479a.j;
        eyVar.w = false;
        eyVar.p();
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationRepeat(Animation animation) {
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationStart(Animation animation) {
        this.f6479a.j.w = true;
    }
}
