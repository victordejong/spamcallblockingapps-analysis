package androidx.core.view;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.os.Build;
import android.view.View;
import android.view.animation.Interpolator;
import java.lang.ref.WeakReference;
/* loaded from: classes-dex2jar.jar:androidx/core/view/ViewPropertyAnimatorCompat.class */
public final class ViewPropertyAnimatorCompat {

    /* renamed from: a */
    private WeakReference<View> f3296a;

    /* renamed from: b */
    Runnable f3297b = null;

    /* renamed from: c */
    Runnable f3298c = null;

    /* renamed from: d */
    int f3299d = -1;

    /* loaded from: classes-dex2jar.jar:androidx/core/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14.class */
    static class ViewPropertyAnimatorListenerApi14 implements ViewPropertyAnimatorListener {

        /* renamed from: a */
        ViewPropertyAnimatorCompat f3304a;

        /* renamed from: b */
        boolean f3305b;

        ViewPropertyAnimatorListenerApi14(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat) {
            this.f3304a = viewPropertyAnimatorCompat;
        }

        @Override // androidx.core.view.ViewPropertyAnimatorListener
        /* renamed from: a */
        public void mo19104a(View view) {
            Object tag = view.getTag(2113929216);
            ViewPropertyAnimatorListener viewPropertyAnimatorListener = tag instanceof ViewPropertyAnimatorListener ? (ViewPropertyAnimatorListener) tag : null;
            if (viewPropertyAnimatorListener != null) {
                viewPropertyAnimatorListener.mo19104a(view);
            }
        }

        @Override // androidx.core.view.ViewPropertyAnimatorListener
        @SuppressLint({"WrongConstant"})
        /* renamed from: b */
        public void mo19103b(View view) {
            int i = this.f3304a.f3299d;
            ViewPropertyAnimatorListener viewPropertyAnimatorListener = null;
            if (i > -1) {
                view.setLayerType(i, null);
                this.f3304a.f3299d = -1;
            }
            if (Build.VERSION.SDK_INT >= 16 || !this.f3305b) {
                ViewPropertyAnimatorCompat viewPropertyAnimatorCompat = this.f3304a;
                Runnable runnable = viewPropertyAnimatorCompat.f3298c;
                if (runnable != null) {
                    viewPropertyAnimatorCompat.f3298c = null;
                    runnable.run();
                }
                Object tag = view.getTag(2113929216);
                if (tag instanceof ViewPropertyAnimatorListener) {
                    viewPropertyAnimatorListener = (ViewPropertyAnimatorListener) tag;
                }
                if (viewPropertyAnimatorListener != null) {
                    viewPropertyAnimatorListener.mo19103b(view);
                }
                this.f3305b = true;
            }
        }

        @Override // androidx.core.view.ViewPropertyAnimatorListener
        /* renamed from: c */
        public void mo19102c(View view) {
            this.f3305b = false;
            ViewPropertyAnimatorListener viewPropertyAnimatorListener = null;
            if (this.f3304a.f3299d > -1) {
                view.setLayerType(2, null);
            }
            ViewPropertyAnimatorCompat viewPropertyAnimatorCompat = this.f3304a;
            Runnable runnable = viewPropertyAnimatorCompat.f3297b;
            if (runnable != null) {
                viewPropertyAnimatorCompat.f3297b = null;
                runnable.run();
            }
            Object tag = view.getTag(2113929216);
            if (tag instanceof ViewPropertyAnimatorListener) {
                viewPropertyAnimatorListener = (ViewPropertyAnimatorListener) tag;
            }
            if (viewPropertyAnimatorListener != null) {
                viewPropertyAnimatorListener.mo19102c(view);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ViewPropertyAnimatorCompat(View view) {
        this.f3296a = new WeakReference<>(view);
    }

    /* renamed from: g */
    private void m19109g(final View view, final ViewPropertyAnimatorListener viewPropertyAnimatorListener) {
        if (viewPropertyAnimatorListener != null) {
            view.animate().setListener(new AnimatorListenerAdapter(this) { // from class: androidx.core.view.ViewPropertyAnimatorCompat.1
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationCancel(Animator animator) {
                    viewPropertyAnimatorListener.mo19104a(view);
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    viewPropertyAnimatorListener.mo19103b(view);
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                    viewPropertyAnimatorListener.mo19102c(view);
                }
            });
        } else {
            view.animate().setListener(null);
        }
    }

    /* renamed from: a */
    public ViewPropertyAnimatorCompat m19115a(float f) {
        View view = this.f3296a.get();
        if (view != null) {
            view.animate().alpha(f);
        }
        return this;
    }

    /* renamed from: b */
    public void m19114b() {
        View view = this.f3296a.get();
        if (view != null) {
            view.animate().cancel();
        }
    }

    /* renamed from: c */
    public long m19113c() {
        View view = this.f3296a.get();
        if (view != null) {
            return view.animate().getDuration();
        }
        return 0L;
    }

    /* renamed from: d */
    public ViewPropertyAnimatorCompat m19112d(long j) {
        View view = this.f3296a.get();
        if (view != null) {
            view.animate().setDuration(j);
        }
        return this;
    }

    /* renamed from: e */
    public ViewPropertyAnimatorCompat m19111e(Interpolator interpolator) {
        View view = this.f3296a.get();
        if (view != null) {
            view.animate().setInterpolator(interpolator);
        }
        return this;
    }

    /* renamed from: f */
    public ViewPropertyAnimatorCompat m19110f(ViewPropertyAnimatorListener viewPropertyAnimatorListener) {
        View view = this.f3296a.get();
        if (view != null) {
            if (Build.VERSION.SDK_INT >= 16) {
                m19109g(view, viewPropertyAnimatorListener);
            } else {
                view.setTag(2113929216, viewPropertyAnimatorListener);
                m19109g(view, new ViewPropertyAnimatorListenerApi14(this));
            }
        }
        return this;
    }

    /* renamed from: h */
    public ViewPropertyAnimatorCompat m19108h(long j) {
        View view = this.f3296a.get();
        if (view != null) {
            view.animate().setStartDelay(j);
        }
        return this;
    }

    /* renamed from: i */
    public ViewPropertyAnimatorCompat m19107i(final ViewPropertyAnimatorUpdateListener viewPropertyAnimatorUpdateListener) {
        final View view = this.f3296a.get();
        if (view != null && Build.VERSION.SDK_INT >= 19) {
            ValueAnimator.AnimatorUpdateListener animatorUpdateListener = null;
            if (viewPropertyAnimatorUpdateListener != null) {
                animatorUpdateListener = new ValueAnimator.AnimatorUpdateListener(this) { // from class: androidx.core.view.ViewPropertyAnimatorCompat.2
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public void onAnimationUpdate(ValueAnimator valueAnimator) {
                        viewPropertyAnimatorUpdateListener.mo19101a(view);
                    }
                };
            }
            view.animate().setUpdateListener(animatorUpdateListener);
        }
        return this;
    }

    /* renamed from: j */
    public void m19106j() {
        View view = this.f3296a.get();
        if (view != null) {
            view.animate().start();
        }
    }

    /* renamed from: k */
    public ViewPropertyAnimatorCompat m19105k(float f) {
        View view = this.f3296a.get();
        if (view != null) {
            view.animate().translationY(f);
        }
        return this;
    }
}
