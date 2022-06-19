package p193e.p1485h.p1486a.p1493c.p1501q0;

import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.animation.AlphaAnimation;
import android.view.animation.AnimationSet;
import android.view.animation.TranslateAnimation;
/* renamed from: e.h.a.c.q0.i$b */
/* loaded from: classes-dex2jar.jar:e/h/a/c/q0/i$b.class */
public class i$b extends GestureDetector.SimpleOnGestureListener {

    /* renamed from: a */
    public final /* synthetic */ i f63199a;

    public i$b(i iVar, i$a i_a) {
        this.f63199a = iVar;
    }

    /* renamed from: a */
    public final boolean m7751a(boolean z) {
        AnimationSet animationSet = new AnimationSet(true);
        animationSet.addAnimation(z ? new TranslateAnimation(0.0f, this.f63199a.TA(50), 0.0f, 0.0f) : new TranslateAnimation(0.0f, -this.f63199a.TA(50), 0.0f, 0.0f));
        animationSet.addAnimation(new AlphaAnimation(1.0f, 0.0f));
        animationSet.setDuration(300L);
        animationSet.setFillAfter(true);
        animationSet.setFillEnabled(true);
        animationSet.setAnimationListener(new animationAnimation$AnimationListenerC22800j(this));
        this.f63199a.i.startAnimation(animationSet);
        return true;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public boolean onDown(MotionEvent motionEvent) {
        return true;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        if (motionEvent.getX() - motionEvent2.getX() > 120.0f && Math.abs(f) > 200.0f) {
            m7751a(false);
            return true;
        } else if (motionEvent2.getX() - motionEvent.getX() <= 120.0f || Math.abs(f) <= 200.0f) {
            return false;
        } else {
            m7751a(true);
            return true;
        }
    }
}
