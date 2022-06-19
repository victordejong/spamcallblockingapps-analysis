package p1727n3.p1859r.p1860a;

import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.Transformation;
import p1727n3.p1807k.p1821i.ViewTreeObserver$OnPreDrawListenerC26612q;
/* renamed from: n3.r.a.q */
/* loaded from: classes-dex2jar.jar:n3/r/a/q.class */
public class RunnableC26953q extends AnimationSet implements Runnable {

    /* renamed from: a */
    public final ViewGroup f75433a;

    /* renamed from: b */
    public final View f75434b;

    /* renamed from: c */
    public boolean f75435c;

    /* renamed from: d */
    public boolean f75436d;

    /* renamed from: e */
    public boolean f75437e = true;

    public RunnableC26953q(Animation animation, ViewGroup viewGroup, View view) {
        super(false);
        this.f75433a = viewGroup;
        this.f75434b = view;
        addAnimation(animation);
        viewGroup.post(this);
    }

    @Override // android.view.animation.AnimationSet, android.view.animation.Animation
    public boolean getTransformation(long j, Transformation transformation) {
        this.f75437e = true;
        if (this.f75435c) {
            return !this.f75436d;
        }
        if (super.getTransformation(j, transformation)) {
            return true;
        }
        this.f75435c = true;
        ViewTreeObserver$OnPreDrawListenerC26612q.m1582a(this.f75433a, this);
        return true;
    }

    @Override // android.view.animation.Animation
    public boolean getTransformation(long j, Transformation transformation, float f) {
        this.f75437e = true;
        if (this.f75435c) {
            return !this.f75436d;
        }
        if (super.getTransformation(j, transformation, f)) {
            return true;
        }
        this.f75435c = true;
        ViewTreeObserver$OnPreDrawListenerC26612q.m1582a(this.f75433a, this);
        return true;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.f75435c || !this.f75437e) {
            this.f75433a.endViewTransition(this.f75434b);
            this.f75436d = true;
            return;
        }
        this.f75437e = false;
        this.f75433a.post(this);
    }
}
