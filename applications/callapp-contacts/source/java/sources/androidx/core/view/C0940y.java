package androidx.core.view;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.os.Build;
import android.view.View;
import android.view.animation.Interpolator;
import java.lang.ref.WeakReference;
/* renamed from: androidx.core.view.y */
/* loaded from: classes-dex2jar.jar:androidx/core/view/y.class */
public final class C0940y {

    /* renamed from: a */
    Runnable f3781a = null;

    /* renamed from: b */
    Runnable f3782b = null;

    /* renamed from: c */
    int f3783c = -1;

    /* renamed from: d */
    private WeakReference<View> f3784d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.core.view.y$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/view/y$a.class */
    public static final class C0943a implements AbstractC0944z {

        /* renamed from: a */
        C0940y f3791a;

        /* renamed from: b */
        boolean f3792b;

        C0943a(C0940y c0940y) {
            this.f3791a = c0940y;
        }

        @Override // androidx.core.view.AbstractC0944z
        /* renamed from: a */
        public final void mo44039a(View view) {
            this.f3792b = false;
            AbstractC0944z abstractC0944z = null;
            if (this.f3791a.f3783c >= 0) {
                view.setLayerType(2, null);
            }
            if (this.f3791a.f3781a != null) {
                Runnable runnable = this.f3791a.f3781a;
                this.f3791a.f3781a = null;
                runnable.run();
            }
            Object tag = view.getTag(2113929216);
            if (tag instanceof AbstractC0944z) {
                abstractC0944z = (AbstractC0944z) tag;
            }
            if (abstractC0944z != null) {
                abstractC0944z.mo44039a(view);
            }
        }

        @Override // androidx.core.view.AbstractC0944z
        /* renamed from: b */
        public final void mo44038b(View view) {
            AbstractC0944z abstractC0944z = null;
            if (this.f3791a.f3783c >= 0) {
                view.setLayerType(this.f3791a.f3783c, null);
                this.f3791a.f3783c = -1;
            }
            if (Build.VERSION.SDK_INT >= 16 || !this.f3792b) {
                if (this.f3791a.f3782b != null) {
                    Runnable runnable = this.f3791a.f3782b;
                    this.f3791a.f3782b = null;
                    runnable.run();
                }
                Object tag = view.getTag(2113929216);
                if (tag instanceof AbstractC0944z) {
                    abstractC0944z = (AbstractC0944z) tag;
                }
                if (abstractC0944z != null) {
                    abstractC0944z.mo44038b(view);
                }
                this.f3792b = true;
            }
        }

        @Override // androidx.core.view.AbstractC0944z
        /* renamed from: c */
        public final void mo44037c(View view) {
            Object tag = view.getTag(2113929216);
            AbstractC0944z abstractC0944z = tag instanceof AbstractC0944z ? (AbstractC0944z) tag : null;
            if (abstractC0944z != null) {
                abstractC0944z.mo44037c(view);
            }
        }
    }

    public C0940y(View view) {
        this.f3784d = new WeakReference<>(view);
    }

    /* renamed from: a */
    private void m44047a(final View view, final AbstractC0944z abstractC0944z) {
        if (abstractC0944z != null) {
            view.animate().setListener(new AnimatorListenerAdapter() { // from class: androidx.core.view.y.1
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public final void onAnimationCancel(Animator animator) {
                    abstractC0944z.mo44037c(view);
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public final void onAnimationEnd(Animator animator) {
                    abstractC0944z.mo44038b(view);
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public final void onAnimationStart(Animator animator) {
                    abstractC0944z.mo44039a(view);
                }
            });
        } else {
            view.animate().setListener(null);
        }
    }

    /* renamed from: a */
    public final long m44050a() {
        View view = this.f3784d.get();
        if (view != null) {
            return view.animate().getDuration();
        }
        return 0L;
    }

    /* renamed from: a */
    public final C0940y m44049a(float f) {
        View view = this.f3784d.get();
        if (view != null) {
            view.animate().alpha(f);
        }
        return this;
    }

    /* renamed from: a */
    public final C0940y m44048a(long j) {
        View view = this.f3784d.get();
        if (view != null) {
            view.animate().setDuration(j);
        }
        return this;
    }

    /* renamed from: a */
    public final C0940y m44046a(Interpolator interpolator) {
        View view = this.f3784d.get();
        if (view != null) {
            view.animate().setInterpolator(interpolator);
        }
        return this;
    }

    /* renamed from: a */
    public final C0940y m44045a(final AbstractC0888ab abstractC0888ab) {
        final View view = this.f3784d.get();
        if (view != null && Build.VERSION.SDK_INT >= 19) {
            ValueAnimator.AnimatorUpdateListener animatorUpdateListener = null;
            if (abstractC0888ab != null) {
                animatorUpdateListener = new ValueAnimator.AnimatorUpdateListener() { // from class: androidx.core.view.y.2
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        abstractC0888ab.mo44232a();
                    }
                };
            }
            view.animate().setUpdateListener(animatorUpdateListener);
        }
        return this;
    }

    /* renamed from: a */
    public final C0940y m44044a(AbstractC0944z abstractC0944z) {
        View view = this.f3784d.get();
        if (view != null) {
            if (Build.VERSION.SDK_INT >= 16) {
                m44047a(view, abstractC0944z);
            } else {
                view.setTag(2113929216, abstractC0944z);
                m44047a(view, new C0943a(this));
            }
        }
        return this;
    }

    /* renamed from: b */
    public final C0940y m44042b(float f) {
        View view = this.f3784d.get();
        if (view != null) {
            view.animate().translationY(f);
        }
        return this;
    }

    /* renamed from: b */
    public final C0940y m44041b(long j) {
        View view = this.f3784d.get();
        if (view != null) {
            view.animate().setStartDelay(j);
        }
        return this;
    }

    /* renamed from: b */
    public final void m44043b() {
        View view = this.f3784d.get();
        if (view != null) {
            view.animate().cancel();
        }
    }

    /* renamed from: c */
    public final void m44040c() {
        View view = this.f3784d.get();
        if (view != null) {
            view.animate().start();
        }
    }
}
