package p020b.p041h.p050l;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.os.Build;
import android.view.View;
import android.view.animation.Interpolator;
import java.lang.ref.WeakReference;
/* renamed from: b.h.l.a0 */
/* loaded from: classes-dex2jar.jar:b/h/l/a0.class */
public final class C1601a0 {

    /* renamed from: a */
    private WeakReference<View> f6198a;

    /* renamed from: b */
    Runnable f6199b = null;

    /* renamed from: c */
    Runnable f6200c = null;

    /* renamed from: d */
    int f6201d = -1;

    /* renamed from: b.h.l.a0$a */
    /* loaded from: classes-dex2jar.jar:b/h/l/a0$a.class */
    public class C1602a extends AnimatorListenerAdapter {

        /* renamed from: a */
        final /* synthetic */ AbstractC1608b0 f6202a;

        /* renamed from: b */
        final /* synthetic */ View f6203b;

        C1602a(AbstractC1608b0 abstractC1608b0, View view) {
            C1601a0.this = r4;
            this.f6202a = abstractC1608b0;
            this.f6203b = view;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f6202a.mo29609a(this.f6203b);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f6202a.mo29619b(this.f6203b);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            this.f6202a.mo29608c(this.f6203b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b.h.l.a0$b */
    /* loaded from: classes-dex2jar.jar:b/h/l/a0$b.class */
    public class C1603b implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: a */
        final /* synthetic */ AbstractC1613d0 f6205a;

        /* renamed from: b */
        final /* synthetic */ View f6206b;

        C1603b(AbstractC1613d0 abstractC1613d0, View view) {
            C1601a0.this = r4;
            this.f6205a = abstractC1613d0;
            this.f6206b = view;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            this.f6205a.mo29602a(this.f6206b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b.h.l.a0$c */
    /* loaded from: classes-dex2jar.jar:b/h/l/a0$c.class */
    public static class C1604c implements AbstractC1608b0 {

        /* renamed from: a */
        C1601a0 f6208a;

        /* renamed from: b */
        boolean f6209b;

        C1604c(C1601a0 c1601a0) {
            this.f6208a = c1601a0;
        }

        @Override // p020b.p041h.p050l.AbstractC1608b0
        /* renamed from: a */
        public void mo29609a(View view) {
            Object tag = view.getTag(2113929216);
            AbstractC1608b0 abstractC1608b0 = tag instanceof AbstractC1608b0 ? (AbstractC1608b0) tag : null;
            if (abstractC1608b0 != null) {
                abstractC1608b0.mo29609a(view);
            }
        }

        @Override // p020b.p041h.p050l.AbstractC1608b0
        @SuppressLint({"WrongConstant"})
        /* renamed from: b */
        public void mo29619b(View view) {
            int i = this.f6208a.f6201d;
            AbstractC1608b0 abstractC1608b0 = null;
            if (i > -1) {
                view.setLayerType(i, null);
                this.f6208a.f6201d = -1;
            }
            if (Build.VERSION.SDK_INT >= 16 || !this.f6209b) {
                C1601a0 c1601a0 = this.f6208a;
                Runnable runnable = c1601a0.f6200c;
                if (runnable != null) {
                    c1601a0.f6200c = null;
                    runnable.run();
                }
                Object tag = view.getTag(2113929216);
                if (tag instanceof AbstractC1608b0) {
                    abstractC1608b0 = (AbstractC1608b0) tag;
                }
                if (abstractC1608b0 != null) {
                    abstractC1608b0.mo29619b(view);
                }
                this.f6209b = true;
            }
        }

        @Override // p020b.p041h.p050l.AbstractC1608b0
        /* renamed from: c */
        public void mo29608c(View view) {
            this.f6209b = false;
            AbstractC1608b0 abstractC1608b0 = null;
            if (this.f6208a.f6201d > -1) {
                view.setLayerType(2, null);
            }
            C1601a0 c1601a0 = this.f6208a;
            Runnable runnable = c1601a0.f6199b;
            if (runnable != null) {
                c1601a0.f6199b = null;
                runnable.run();
            }
            Object tag = view.getTag(2113929216);
            if (tag instanceof AbstractC1608b0) {
                abstractC1608b0 = (AbstractC1608b0) tag;
            }
            if (abstractC1608b0 != null) {
                abstractC1608b0.mo29608c(view);
            }
        }
    }

    public C1601a0(View view) {
        this.f6198a = new WeakReference<>(view);
    }

    /* renamed from: g */
    private void m29636g(View view, AbstractC1608b0 abstractC1608b0) {
        if (abstractC1608b0 != null) {
            view.animate().setListener(new C1602a(abstractC1608b0, view));
        } else {
            view.animate().setListener(null);
        }
    }

    /* renamed from: a */
    public C1601a0 m29642a(float f) {
        View view = this.f6198a.get();
        if (view != null) {
            view.animate().alpha(f);
        }
        return this;
    }

    /* renamed from: b */
    public void m29641b() {
        View view = this.f6198a.get();
        if (view != null) {
            view.animate().cancel();
        }
    }

    /* renamed from: c */
    public long m29640c() {
        View view = this.f6198a.get();
        if (view != null) {
            return view.animate().getDuration();
        }
        return 0L;
    }

    /* renamed from: d */
    public C1601a0 m29639d(long j) {
        View view = this.f6198a.get();
        if (view != null) {
            view.animate().setDuration(j);
        }
        return this;
    }

    /* renamed from: e */
    public C1601a0 m29638e(Interpolator interpolator) {
        View view = this.f6198a.get();
        if (view != null) {
            view.animate().setInterpolator(interpolator);
        }
        return this;
    }

    /* renamed from: f */
    public C1601a0 m29637f(AbstractC1608b0 abstractC1608b0) {
        View view = this.f6198a.get();
        if (view != null) {
            if (Build.VERSION.SDK_INT >= 16) {
                m29636g(view, abstractC1608b0);
            } else {
                view.setTag(2113929216, abstractC1608b0);
                m29636g(view, new C1604c(this));
            }
        }
        return this;
    }

    /* renamed from: h */
    public C1601a0 m29635h(long j) {
        View view = this.f6198a.get();
        if (view != null) {
            view.animate().setStartDelay(j);
        }
        return this;
    }

    /* renamed from: i */
    public C1601a0 m29634i(AbstractC1613d0 abstractC1613d0) {
        View view = this.f6198a.get();
        if (view != null && Build.VERSION.SDK_INT >= 19) {
            C1603b c1603b = null;
            if (abstractC1613d0 != null) {
                c1603b = new C1603b(abstractC1613d0, view);
            }
            view.animate().setUpdateListener(c1603b);
        }
        return this;
    }

    /* renamed from: j */
    public void m29633j() {
        View view = this.f6198a.get();
        if (view != null) {
            view.animate().start();
        }
    }

    /* renamed from: k */
    public C1601a0 m29632k(float f) {
        View view = this.f6198a.get();
        if (view != null) {
            view.animate().translationY(f);
        }
        return this;
    }
}
