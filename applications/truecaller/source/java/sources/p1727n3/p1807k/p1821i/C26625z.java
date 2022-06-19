package p1727n3.p1807k.p1821i;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.view.View;
import java.lang.ref.WeakReference;
import p1727n3.p1734b.p1735a.C25437v;
/* renamed from: n3.k.i.z */
/* loaded from: classes-dex2jar.jar:n3/k/i/z.class */
public final class C26625z {

    /* renamed from: a */
    public WeakReference<View> f74523a;

    /* renamed from: b */
    public int f74524b = -1;

    /* renamed from: n3.k.i.z$a */
    /* loaded from: classes-dex2jar.jar:n3/k/i/z$a.class */
    public class C26626a extends AnimatorListenerAdapter {

        /* renamed from: a */
        public final /* synthetic */ AbstractC26560a0 f74525a;

        /* renamed from: b */
        public final /* synthetic */ View f74526b;

        public C26626a(C26625z c26625z, AbstractC26560a0 abstractC26560a0, View view) {
            this.f74525a = abstractC26560a0;
            this.f74526b = view;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f74525a.mo1668a(this.f74526b);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f74525a.mo1677b(this.f74526b);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            this.f74525a.mo1667c(this.f74526b);
        }
    }

    /* renamed from: n3.k.i.z$b */
    /* loaded from: classes-dex2jar.jar:n3/k/i/z$b.class */
    public class C26627b implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: a */
        public final /* synthetic */ AbstractC26566c0 f74527a;

        /* renamed from: b */
        public final /* synthetic */ View f74528b;

        public C26627b(C26625z c26625z, AbstractC26566c0 abstractC26566c0, View view) {
            this.f74527a = abstractC26566c0;
            this.f74528b = view;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            ((View) C25437v.this.f70988d.getParent()).invalidate();
        }
    }

    public C26625z(View view) {
        this.f74523a = new WeakReference<>(view);
    }

    /* renamed from: a */
    public C26625z m1551a(float f) {
        View view = this.f74523a.get();
        if (view != null) {
            view.animate().alpha(f);
        }
        return this;
    }

    /* renamed from: b */
    public void m1550b() {
        View view = this.f74523a.get();
        if (view != null) {
            view.animate().cancel();
        }
    }

    /* renamed from: c */
    public C26625z m1549c(long j) {
        View view = this.f74523a.get();
        if (view != null) {
            view.animate().setDuration(j);
        }
        return this;
    }

    /* renamed from: d */
    public C26625z m1548d(AbstractC26560a0 abstractC26560a0) {
        View view = this.f74523a.get();
        if (view != null) {
            m1547e(view, abstractC26560a0);
        }
        return this;
    }

    /* renamed from: e */
    public final void m1547e(View view, AbstractC26560a0 abstractC26560a0) {
        if (abstractC26560a0 != null) {
            view.animate().setListener(new C26626a(this, abstractC26560a0, view));
        } else {
            view.animate().setListener(null);
        }
    }

    /* renamed from: f */
    public C26625z m1546f(AbstractC26566c0 abstractC26566c0) {
        View view = this.f74523a.get();
        if (view != null) {
            C26627b c26627b = null;
            if (abstractC26566c0 != null) {
                c26627b = new C26627b(this, abstractC26566c0, view);
            }
            view.animate().setUpdateListener(c26627b);
        }
        return this;
    }

    /* renamed from: g */
    public C26625z m1545g(float f) {
        View view = this.f74523a.get();
        if (view != null) {
            view.animate().translationY(f);
        }
        return this;
    }
}
