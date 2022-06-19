package p153l1;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import p226s.C4251a;
/* renamed from: l1.h */
/* loaded from: classes-dex2jar.jar:l1/h.class */
public class C3456h extends AnimatorListenerAdapter {

    /* renamed from: a */
    public final /* synthetic */ C4251a f11546a;

    /* renamed from: b */
    public final /* synthetic */ AbstractC3451g f11547b;

    public C3456h(AbstractC3451g abstractC3451g, C4251a c4251a) {
        this.f11547b = abstractC3451g;
        this.f11546a = c4251a;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        this.f11546a.remove(animator);
        this.f11547b.f11533m.remove(animator);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        this.f11547b.f11533m.add(animator);
    }
}
