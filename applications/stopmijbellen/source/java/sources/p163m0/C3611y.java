package p163m0;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.view.View;
import java.lang.ref.WeakReference;
import p086f.C2689y;
/* renamed from: m0.y */
/* loaded from: classes-dex2jar.jar:m0/y.class */
public final class C3611y {

    /* renamed from: a */
    public WeakReference<View> f11802a;

    /* renamed from: m0.y$a */
    /* loaded from: classes-dex2jar.jar:m0/y$a.class */
    public class C3612a extends AnimatorListenerAdapter {

        /* renamed from: a */
        public final /* synthetic */ AbstractC3614z f11803a;

        /* renamed from: b */
        public final /* synthetic */ View f11804b;

        public C3612a(C3611y c3611y, AbstractC3614z abstractC3614z, View view) {
            this.f11803a = abstractC3614z;
            this.f11804b = view;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f11803a.mo1977a(this.f11804b);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f11803a.mo1976c(this.f11804b);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            this.f11803a.mo1975d(this.f11804b);
        }
    }

    /* renamed from: m0.y$b */
    /* loaded from: classes-dex2jar.jar:m0/y$b.class */
    public class C3613b implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: a */
        public final /* synthetic */ AbstractC3548a0 f11805a;

        /* renamed from: b */
        public final /* synthetic */ View f11806b;

        public C3613b(C3611y c3611y, AbstractC3548a0 abstractC3548a0, View view) {
            this.f11805a = abstractC3548a0;
            this.f11806b = view;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            ((View) C2689y.this.f9241d.getParent()).invalidate();
        }
    }

    public C3611y(View view) {
        this.f11802a = new WeakReference<>(view);
    }

    /* renamed from: a */
    public C3611y m1984a(float f) {
        View view = this.f11802a.get();
        if (view != null) {
            view.animate().alpha(f);
        }
        return this;
    }

    /* renamed from: b */
    public void m1983b() {
        View view = this.f11802a.get();
        if (view != null) {
            view.animate().cancel();
        }
    }

    /* renamed from: c */
    public C3611y m1982c(long j) {
        View view = this.f11802a.get();
        if (view != null) {
            view.animate().setDuration(j);
        }
        return this;
    }

    /* renamed from: d */
    public C3611y m1981d(AbstractC3614z abstractC3614z) {
        View view = this.f11802a.get();
        if (view != null) {
            m1980e(view, abstractC3614z);
        }
        return this;
    }

    /* renamed from: e */
    public final void m1980e(View view, AbstractC3614z abstractC3614z) {
        if (abstractC3614z != null) {
            view.animate().setListener(new C3612a(this, abstractC3614z, view));
        } else {
            view.animate().setListener(null);
        }
    }

    /* renamed from: f */
    public C3611y m1979f(AbstractC3548a0 abstractC3548a0) {
        View view = this.f11802a.get();
        if (view != null) {
            C3613b c3613b = null;
            if (abstractC3548a0 != null) {
                c3613b = new C3613b(this, abstractC3548a0, view);
            }
            view.animate().setUpdateListener(c3613b);
        }
        return this;
    }

    /* renamed from: g */
    public C3611y m1978g(float f) {
        View view = this.f11802a.get();
        if (view != null) {
            view.animate().translationY(f);
        }
        return this;
    }
}
