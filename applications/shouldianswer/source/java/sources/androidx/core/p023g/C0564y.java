package androidx.core.p023g;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.os.Build;
import android.view.View;
import android.view.animation.Interpolator;
import java.lang.ref.WeakReference;
/* renamed from: androidx.core.g.y */
/* loaded from: classes-dex2jar.jar:androidx/core/g/y.class */
public final class C0564y {

    /* renamed from: a */
    Runnable f1904a = null;

    /* renamed from: b */
    Runnable f1905b = null;

    /* renamed from: c */
    int f1906c = -1;

    /* renamed from: d */
    private WeakReference<View> f1907d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.core.g.y$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/g/y$a.class */
    public static class C0567a implements AbstractC0568z {

        /* renamed from: a */
        C0564y f1914a;

        /* renamed from: b */
        boolean f1915b;

        C0567a(C0564y c0564y) {
            this.f1914a = c0564y;
        }

        @Override // androidx.core.p023g.AbstractC0568z
        /* renamed from: a */
        public void mo3963a(View view) {
            this.f1915b = false;
            AbstractC0568z abstractC0568z = null;
            if (this.f1914a.f1906c > -1) {
                view.setLayerType(2, null);
            }
            if (this.f1914a.f1904a != null) {
                Runnable runnable = this.f1914a.f1904a;
                this.f1914a.f1904a = null;
                runnable.run();
            }
            Object tag = view.getTag(2113929216);
            if (tag instanceof AbstractC0568z) {
                abstractC0568z = (AbstractC0568z) tag;
            }
            if (abstractC0568z != null) {
                abstractC0568z.mo3963a(view);
            }
        }

        @Override // androidx.core.p023g.AbstractC0568z
        /* renamed from: b */
        public void mo3962b(View view) {
            AbstractC0568z abstractC0568z = null;
            if (this.f1914a.f1906c > -1) {
                view.setLayerType(this.f1914a.f1906c, null);
                this.f1914a.f1906c = -1;
            }
            if (Build.VERSION.SDK_INT >= 16 || !this.f1915b) {
                if (this.f1914a.f1905b != null) {
                    Runnable runnable = this.f1914a.f1905b;
                    this.f1914a.f1905b = null;
                    runnable.run();
                }
                Object tag = view.getTag(2113929216);
                if (tag instanceof AbstractC0568z) {
                    abstractC0568z = (AbstractC0568z) tag;
                }
                if (abstractC0568z != null) {
                    abstractC0568z.mo3962b(view);
                }
                this.f1915b = true;
            }
        }

        @Override // androidx.core.p023g.AbstractC0568z
        /* renamed from: c */
        public void mo3961c(View view) {
            Object tag = view.getTag(2113929216);
            AbstractC0568z abstractC0568z = tag instanceof AbstractC0568z ? (AbstractC0568z) tag : null;
            if (abstractC0568z != null) {
                abstractC0568z.mo3961c(view);
            }
        }
    }

    public C0564y(View view) {
        this.f1907d = new WeakReference<>(view);
    }

    /* renamed from: a */
    private void m6186a(final View view, final AbstractC0568z abstractC0568z) {
        if (abstractC0568z != null) {
            view.animate().setListener(new AnimatorListenerAdapter() { // from class: androidx.core.g.y.1
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationCancel(Animator animator) {
                    abstractC0568z.mo3961c(view);
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    abstractC0568z.mo3962b(view);
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                    abstractC0568z.mo3963a(view);
                }
            });
        } else {
            view.animate().setListener(null);
        }
    }

    /* renamed from: a */
    public long m6189a() {
        View view = this.f1907d.get();
        if (view != null) {
            return view.animate().getDuration();
        }
        return 0L;
    }

    /* renamed from: a */
    public C0564y m6188a(float f) {
        View view = this.f1907d.get();
        if (view != null) {
            view.animate().alpha(f);
        }
        return this;
    }

    /* renamed from: a */
    public C0564y m6187a(long j) {
        View view = this.f1907d.get();
        if (view != null) {
            view.animate().setDuration(j);
        }
        return this;
    }

    /* renamed from: a */
    public C0564y m6185a(Interpolator interpolator) {
        View view = this.f1907d.get();
        if (view != null) {
            view.animate().setInterpolator(interpolator);
        }
        return this;
    }

    /* renamed from: a */
    public C0564y m6184a(final AbstractC0528ab abstractC0528ab) {
        final View view = this.f1907d.get();
        if (view != null && Build.VERSION.SDK_INT >= 19) {
            ValueAnimator.AnimatorUpdateListener animatorUpdateListener = null;
            if (abstractC0528ab != null) {
                animatorUpdateListener = new ValueAnimator.AnimatorUpdateListener() { // from class: androidx.core.g.y.2
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public void onAnimationUpdate(ValueAnimator valueAnimator) {
                        abstractC0528ab.mo6368a(view);
                    }
                };
            }
            view.animate().setUpdateListener(animatorUpdateListener);
        }
        return this;
    }

    /* renamed from: a */
    public C0564y m6183a(AbstractC0568z abstractC0568z) {
        View view = this.f1907d.get();
        if (view != null) {
            if (Build.VERSION.SDK_INT >= 16) {
                m6186a(view, abstractC0568z);
            } else {
                view.setTag(2113929216, abstractC0568z);
                m6186a(view, new C0567a(this));
            }
        }
        return this;
    }

    /* renamed from: b */
    public C0564y m6181b(float f) {
        View view = this.f1907d.get();
        if (view != null) {
            view.animate().translationX(f);
        }
        return this;
    }

    /* renamed from: b */
    public C0564y m6180b(long j) {
        View view = this.f1907d.get();
        if (view != null) {
            view.animate().setStartDelay(j);
        }
        return this;
    }

    /* renamed from: b */
    public void m6182b() {
        View view = this.f1907d.get();
        if (view != null) {
            view.animate().cancel();
        }
    }

    /* renamed from: c */
    public C0564y m6178c(float f) {
        View view = this.f1907d.get();
        if (view != null) {
            view.animate().translationY(f);
        }
        return this;
    }

    /* renamed from: c */
    public void m6179c() {
        View view = this.f1907d.get();
        if (view != null) {
            view.animate().start();
        }
    }

    /* renamed from: d */
    public C0564y m6177d(float f) {
        View view = this.f1907d.get();
        if (view != null) {
            view.animate().rotation(f);
        }
        return this;
    }

    /* renamed from: e */
    public C0564y m6176e(float f) {
        View view = this.f1907d.get();
        if (view != null) {
            view.animate().scaleX(f);
        }
        return this;
    }

    /* renamed from: f */
    public C0564y m6175f(float f) {
        View view = this.f1907d.get();
        if (view != null) {
            view.animate().scaleY(f);
        }
        return this;
    }

    /* renamed from: g */
    public C0564y m6174g(float f) {
        View view = this.f1907d.get();
        if (view != null && Build.VERSION.SDK_INT >= 21) {
            view.animate().translationZ(f);
        }
        return this;
    }
}
