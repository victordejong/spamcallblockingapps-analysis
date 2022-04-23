package androidx.core.view;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.os.Build;
import android.view.View;
import android.view.animation.Interpolator;
import java.lang.ref.WeakReference;
/* loaded from: classes-dex2jar.jar:androidx/core/view/y.class */
public final class y {

    /* renamed from: a  reason: collision with root package name */
    Runnable f2027a = null;

    /* renamed from: b  reason: collision with root package name */
    Runnable f2028b = null;

    /* renamed from: c  reason: collision with root package name */
    int f2029c = -1;

    /* renamed from: d  reason: collision with root package name */
    private WeakReference<View> f2030d;

    /* loaded from: classes-dex2jar.jar:androidx/core/view/y$a.class */
    static final class a implements z {

        /* renamed from: a  reason: collision with root package name */
        y f2037a;

        /* renamed from: b  reason: collision with root package name */
        boolean f2038b;

        a(y yVar) {
            this.f2037a = yVar;
        }

        @Override // androidx.core.view.z
        public final void a(View view) {
            this.f2038b = false;
            z zVar = null;
            if (this.f2037a.f2029c >= 0) {
                view.setLayerType(2, null);
            }
            if (this.f2037a.f2027a != null) {
                Runnable runnable = this.f2037a.f2027a;
                this.f2037a.f2027a = null;
                runnable.run();
            }
            Object tag = view.getTag(2113929216);
            if (tag instanceof z) {
                zVar = (z) tag;
            }
            if (zVar != null) {
                zVar.a(view);
            }
        }

        @Override // androidx.core.view.z
        public final void b(View view) {
            z zVar = null;
            if (this.f2037a.f2029c >= 0) {
                view.setLayerType(this.f2037a.f2029c, null);
                this.f2037a.f2029c = -1;
            }
            if (Build.VERSION.SDK_INT >= 16 || !this.f2038b) {
                if (this.f2037a.f2028b != null) {
                    Runnable runnable = this.f2037a.f2028b;
                    this.f2037a.f2028b = null;
                    runnable.run();
                }
                Object tag = view.getTag(2113929216);
                if (tag instanceof z) {
                    zVar = (z) tag;
                }
                if (zVar != null) {
                    zVar.b(view);
                }
                this.f2038b = true;
            }
        }

        @Override // androidx.core.view.z
        public final void c(View view) {
            Object tag = view.getTag(2113929216);
            z zVar = tag instanceof z ? (z) tag : null;
            if (zVar != null) {
                zVar.c(view);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public y(View view) {
        this.f2030d = new WeakReference<>(view);
    }

    private void a(final View view, final z zVar) {
        if (zVar != null) {
            view.animate().setListener(new AnimatorListenerAdapter() { // from class: androidx.core.view.y.1
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public final void onAnimationCancel(Animator animator) {
                    zVar.c(view);
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public final void onAnimationEnd(Animator animator) {
                    zVar.b(view);
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public final void onAnimationStart(Animator animator) {
                    zVar.a(view);
                }
            });
        } else {
            view.animate().setListener(null);
        }
    }

    public final long a() {
        View view = this.f2030d.get();
        if (view != null) {
            return view.animate().getDuration();
        }
        return 0L;
    }

    public final y a(float f) {
        View view = this.f2030d.get();
        if (view != null) {
            view.animate().alpha(f);
        }
        return this;
    }

    public final y a(long j) {
        View view = this.f2030d.get();
        if (view != null) {
            view.animate().setDuration(j);
        }
        return this;
    }

    public final y a(Interpolator interpolator) {
        View view = this.f2030d.get();
        if (view != null) {
            view.animate().setInterpolator(interpolator);
        }
        return this;
    }

    public final y a(final ab abVar) {
        final View view = this.f2030d.get();
        if (view != null && Build.VERSION.SDK_INT >= 19) {
            ValueAnimator.AnimatorUpdateListener animatorUpdateListener = null;
            if (abVar != null) {
                animatorUpdateListener = new ValueAnimator.AnimatorUpdateListener() { // from class: androidx.core.view.y.2
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        abVar.a();
                    }
                };
            }
            view.animate().setUpdateListener(animatorUpdateListener);
        }
        return this;
    }

    public final y a(z zVar) {
        View view = this.f2030d.get();
        if (view != null) {
            if (Build.VERSION.SDK_INT >= 16) {
                a(view, zVar);
            } else {
                view.setTag(2113929216, zVar);
                a(view, new a(this));
            }
        }
        return this;
    }

    public final y b(float f) {
        View view = this.f2030d.get();
        if (view != null) {
            view.animate().translationY(f);
        }
        return this;
    }

    public final y b(long j) {
        View view = this.f2030d.get();
        if (view != null) {
            view.animate().setStartDelay(j);
        }
        return this;
    }

    public final void b() {
        View view = this.f2030d.get();
        if (view != null) {
            view.animate().cancel();
        }
    }

    public final void c() {
        View view = this.f2030d.get();
        if (view != null) {
            view.animate().start();
        }
    }
}
