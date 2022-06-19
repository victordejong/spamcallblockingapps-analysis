package p1727n3.p1789g0;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import java.util.concurrent.atomic.AtomicInteger;
import p1727n3.p1807k.p1821i.C26614s;
/* renamed from: n3.g0.f$b */
/* loaded from: classes-dex2jar.jar:n3/g0/f$b.class */
public class f$b extends AnimatorListenerAdapter {

    /* renamed from: a */
    public final View f73054a;

    /* renamed from: b */
    public boolean f73055b = false;

    public f$b(View view) {
        this.f73054a = view;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        C26233z.f73143a.mo2555e(this.f73054a, 1.0f);
        if (this.f73055b) {
            this.f73054a.setLayerType(0, null);
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        View view = this.f73054a;
        AtomicInteger atomicInteger = C26614s.f74505a;
        if (!view.hasOverlappingRendering() || this.f73054a.getLayerType() != 0) {
            return;
        }
        this.f73055b = true;
        this.f73054a.setLayerType(2, null);
    }
}
