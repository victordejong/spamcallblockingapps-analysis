package p193e.p1485h.p1486a.p1493c.p1501q0;

import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.animation.AlphaAnimation;
import android.view.animation.AnimationSet;
import android.view.animation.TranslateAnimation;
/* renamed from: e.h.a.c.q0.g$b */
/* loaded from: classes-dex2jar.jar:e/h/a/c/q0/g$b.class */
public class g$b extends GestureDetector.SimpleOnGestureListener {

    /* renamed from: a */
    public final /* synthetic */ g f63196a;

    public g$b(g gVar, g$a g_a) {
        this.f63196a = gVar;
    }

    /* renamed from: a */
    public final boolean m7752a(boolean z) {
        AnimationSet animationSet = new AnimationSet(true);
        animationSet.addAnimation(z ? new TranslateAnimation(0.0f, this.f63196a.TA(50), 0.0f, 0.0f) : new TranslateAnimation(0.0f, -this.f63196a.TA(50), 0.0f, 0.0f));
        animationSet.addAnimation(new AlphaAnimation(1.0f, 0.0f));
        animationSet.setDuration(300L);
        animationSet.setFillAfter(true);
        animationSet.setFillEnabled(true);
        animationSet.setAnimationListener(new animationAnimation$AnimationListenerC22799h(this));
        this.f63196a.i.startAnimation(animationSet);
        return true;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        if (motionEvent.getX() - motionEvent2.getX() > 120.0f && Math.abs(f) > 200.0f) {
            m7752a(false);
            return true;
        } else if (motionEvent2.getX() - motionEvent.getX() <= 120.0f || Math.abs(f) <= 200.0f) {
            return false;
        } else {
            m7752a(true);
            return true;
        }
    }
}
