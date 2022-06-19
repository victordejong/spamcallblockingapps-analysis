package androidx.core.p026h;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.os.Build;
import android.view.View;
import android.view.animation.Interpolator;
import java.lang.ref.WeakReference;
/* renamed from: androidx.core.h.y */
/* loaded from: classes-dex2jar.jar:androidx/core/h/y.class */
public final class C0607y {

    /* renamed from: a */
    Runnable f2113a = null;

    /* renamed from: b */
    Runnable f2114b = null;

    /* renamed from: c */
    int f2115c = -1;

    /* renamed from: d */
    private WeakReference<View> f2116d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.core.h.y$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/h/y$a.class */
    public static class C0610a implements AbstractC0611z {

        /* renamed from: a */
        C0607y f2123a;

        /* renamed from: b */
        boolean f2124b;

        C0610a(C0607y c0607y) {
            this.f2123a = c0607y;
        }

        @Override // androidx.core.p026h.AbstractC0611z
        /* renamed from: a */
        public void mo20245a(View view) {
            this.f2124b = false;
            if (this.f2123a.f2115c > -1) {
                view.setLayerType(2, null);
            }
            if (this.f2123a.f2113a != null) {
                Runnable runnable = this.f2123a.f2113a;
                this.f2123a.f2113a = null;
                runnable.run();
            }
            Object tag = view.getTag(2113929216);
            AbstractC0611z abstractC0611z = tag instanceof AbstractC0611z ? (AbstractC0611z) tag : null;
            if (abstractC0611z != null) {
                abstractC0611z.mo20245a(view);
            }
        }

        @Override // androidx.core.p026h.AbstractC0611z
        /* renamed from: b */
        public void mo20244b(View view) {
            if (this.f2123a.f2115c > -1) {
                view.setLayerType(this.f2123a.f2115c, null);
                this.f2123a.f2115c = -1;
            }
            if (Build.VERSION.SDK_INT >= 16 || !this.f2124b) {
                if (this.f2123a.f2114b != null) {
                    Runnable runnable = this.f2123a.f2114b;
                    this.f2123a.f2114b = null;
                    runnable.run();
                }
                Object tag = view.getTag(2113929216);
                AbstractC0611z abstractC0611z = tag instanceof AbstractC0611z ? (AbstractC0611z) tag : null;
                if (abstractC0611z != null) {
                    abstractC0611z.mo20244b(view);
                }
                this.f2124b = true;
            }
        }

        @Override // androidx.core.p026h.AbstractC0611z
        /* renamed from: c */
        public void mo20243c(View view) {
            Object tag = view.getTag(2113929216);
            AbstractC0611z abstractC0611z = tag instanceof AbstractC0611z ? (AbstractC0611z) tag : null;
            if (abstractC0611z != null) {
                abstractC0611z.mo20243c(view);
            }
        }
    }

    public C0607y(View view) {
        this.f2116d = new WeakReference<>(view);
    }

    /* renamed from: a */
    private void m20253a(final View view, final AbstractC0611z abstractC0611z) {
        if (abstractC0611z != null) {
            view.animate().setListener(new AnimatorListenerAdapter() { // from class: androidx.core.h.y.1
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationCancel(Animator animator) {
                    abstractC0611z.mo20243c(view);
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    abstractC0611z.mo20244b(view);
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                    abstractC0611z.mo20245a(view);
                }
            });
        } else {
            view.animate().setListener(null);
        }
    }

    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    /* renamed from: a */
    public long m20256a() {
        View view = this.f2116d.get();
        return view != null ? view.animate().getDuration() : (char) 0;
    }

    /* renamed from: a */
    public C0607y m20255a(float f) {
        View view = this.f2116d.get();
        if (view != null) {
            view.animate().alpha(f);
        }
        return this;
    }

    /* renamed from: a */
    public C0607y m20254a(long j) {
        View view = this.f2116d.get();
        if (view != null) {
            view.animate().setDuration(j);
        }
        return this;
    }

    /* renamed from: a */
    public C0607y m20252a(Interpolator interpolator) {
        View view = this.f2116d.get();
        if (view != null) {
            view.animate().setInterpolator(interpolator);
        }
        return this;
    }

    /* renamed from: a */
    public C0607y m20251a(final AbstractC0571ab abstractC0571ab) {
        final View view = this.f2116d.get();
        if (view != null && Build.VERSION.SDK_INT >= 19) {
            ValueAnimator.AnimatorUpdateListener animatorUpdateListener = null;
            if (abstractC0571ab != null) {
                animatorUpdateListener = new ValueAnimator.AnimatorUpdateListener() { // from class: androidx.core.h.y.2
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public void onAnimationUpdate(ValueAnimator valueAnimator) {
                        abstractC0571ab.mo20443a(view);
                    }
                };
            }
            view.animate().setUpdateListener(animatorUpdateListener);
        }
        return this;
    }

    /* renamed from: a */
    public C0607y m20250a(AbstractC0611z abstractC0611z) {
        View view = this.f2116d.get();
        if (view != null) {
            if (Build.VERSION.SDK_INT >= 16) {
                m20253a(view, abstractC0611z);
            } else {
                view.setTag(2113929216, abstractC0611z);
                m20253a(view, new C0610a(this));
            }
        }
        return this;
    }

    /* renamed from: b */
    public C0607y m20248b(float f) {
        View view = this.f2116d.get();
        if (view != null) {
            view.animate().translationY(f);
        }
        return this;
    }

    /* renamed from: b */
    public C0607y m20247b(long j) {
        View view = this.f2116d.get();
        if (view != null) {
            view.animate().setStartDelay(j);
        }
        return this;
    }

    /* renamed from: b */
    public void m20249b() {
        View view = this.f2116d.get();
        if (view != null) {
            view.animate().cancel();
        }
    }

    /* renamed from: c */
    public void m20246c() {
        View view = this.f2116d.get();
        if (view != null) {
            view.animate().start();
        }
    }
}
