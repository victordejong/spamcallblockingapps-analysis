package p012b.p042i.p054p;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.os.Build;
import android.view.View;
import android.view.animation.Interpolator;
import java.lang.ref.WeakReference;
/* renamed from: b.i.p.y */
/* loaded from: classes-dex2jar.jar:b/i/p/y.class */
public final class C1017y {

    /* renamed from: a */
    public WeakReference<View> f4272a;

    /* renamed from: b */
    public Runnable f4273b = null;

    /* renamed from: c */
    public Runnable f4274c = null;

    /* renamed from: d */
    public int f4275d = -1;

    /* renamed from: b.i.p.y$a */
    /* loaded from: classes-dex2jar.jar:b/i/p/y$a.class */
    public class C1018a extends AnimatorListenerAdapter {

        /* renamed from: a */
        public final /* synthetic */ AbstractC1021z f4276a;

        /* renamed from: b */
        public final /* synthetic */ View f4277b;

        public C1018a(C1017y yVar, AbstractC1021z zVar, View view) {
            this.f4276a = zVar;
            this.f4277b = view;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f4276a.mo35154a(this.f4277b);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f4276a.mo35153b(this.f4277b);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            this.f4276a.mo35152c(this.f4277b);
        }
    }

    /* renamed from: b.i.p.y$b */
    /* loaded from: classes-dex2jar.jar:b/i/p/y$b.class */
    public class C1019b implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: a */
        public final /* synthetic */ AbstractC0955b0 f4278a;

        /* renamed from: b */
        public final /* synthetic */ View f4279b;

        public C1019b(C1017y yVar, AbstractC0955b0 b0Var, View view) {
            this.f4278a = b0Var;
            this.f4279b = view;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            this.f4278a.mo35420a(this.f4279b);
        }
    }

    /* renamed from: b.i.p.y$c */
    /* loaded from: classes-dex2jar.jar:b/i/p/y$c.class */
    public static class C1020c implements AbstractC1021z {

        /* renamed from: a */
        public C1017y f4280a;

        /* renamed from: b */
        public boolean f4281b;

        public C1020c(C1017y yVar) {
            this.f4280a = yVar;
        }

        @Override // p012b.p042i.p054p.AbstractC1021z
        /* renamed from: a */
        public void mo35154a(View view) {
            Object tag = view.getTag(2113929216);
            AbstractC1021z zVar = tag instanceof AbstractC1021z ? (AbstractC1021z) tag : null;
            if (zVar != null) {
                zVar.mo35154a(view);
            }
        }

        @Override // p012b.p042i.p054p.AbstractC1021z
        /* renamed from: b */
        public void mo35153b(View view) {
            int i = this.f4280a.f4275d;
            AbstractC1021z zVar = null;
            if (i > -1) {
                view.setLayerType(i, null);
                this.f4280a.f4275d = -1;
            }
            if (Build.VERSION.SDK_INT >= 16 || !this.f4281b) {
                C1017y yVar = this.f4280a;
                Runnable runnable = yVar.f4274c;
                if (runnable != null) {
                    yVar.f4274c = null;
                    runnable.run();
                }
                Object tag = view.getTag(2113929216);
                if (tag instanceof AbstractC1021z) {
                    zVar = (AbstractC1021z) tag;
                }
                if (zVar != null) {
                    zVar.mo35153b(view);
                }
                this.f4281b = true;
            }
        }

        @Override // p012b.p042i.p054p.AbstractC1021z
        /* renamed from: c */
        public void mo35152c(View view) {
            this.f4281b = false;
            AbstractC1021z zVar = null;
            if (this.f4280a.f4275d > -1) {
                view.setLayerType(2, null);
            }
            C1017y yVar = this.f4280a;
            Runnable runnable = yVar.f4273b;
            if (runnable != null) {
                yVar.f4273b = null;
                runnable.run();
            }
            Object tag = view.getTag(2113929216);
            if (tag instanceof AbstractC1021z) {
                zVar = (AbstractC1021z) tag;
            }
            if (zVar != null) {
                zVar.mo35152c(view);
            }
        }
    }

    public C1017y(View view) {
        this.f4272a = new WeakReference<>(view);
    }

    /* renamed from: a */
    public C1017y m35164a(float f) {
        View view = this.f4272a.get();
        if (view != null) {
            view.animate().alpha(f);
        }
        return this;
    }

    /* renamed from: a */
    public C1017y m35163a(long j) {
        View view = this.f4272a.get();
        if (view != null) {
            view.animate().setDuration(j);
        }
        return this;
    }

    /* renamed from: a */
    public C1017y m35161a(Interpolator interpolator) {
        View view = this.f4272a.get();
        if (view != null) {
            view.animate().setInterpolator(interpolator);
        }
        return this;
    }

    /* renamed from: a */
    public C1017y m35160a(AbstractC0955b0 b0Var) {
        View view = this.f4272a.get();
        if (view != null && Build.VERSION.SDK_INT >= 19) {
            C1019b bVar = null;
            if (b0Var != null) {
                bVar = new C1019b(this, b0Var, view);
            }
            view.animate().setUpdateListener(bVar);
        }
        return this;
    }

    /* renamed from: a */
    public C1017y m35159a(AbstractC1021z zVar) {
        View view = this.f4272a.get();
        if (view != null) {
            if (Build.VERSION.SDK_INT >= 16) {
                m35162a(view, zVar);
            } else {
                view.setTag(2113929216, zVar);
                m35162a(view, new C1020c(this));
            }
        }
        return this;
    }

    /* renamed from: a */
    public void m35165a() {
        View view = this.f4272a.get();
        if (view != null) {
            view.animate().cancel();
        }
    }

    /* renamed from: a */
    public final void m35162a(View view, AbstractC1021z zVar) {
        if (zVar != null) {
            view.animate().setListener(new C1018a(this, zVar, view));
        } else {
            view.animate().setListener(null);
        }
    }

    /* renamed from: b */
    public long m35158b() {
        View view = this.f4272a.get();
        if (view != null) {
            return view.animate().getDuration();
        }
        return 0L;
    }

    /* renamed from: b */
    public C1017y m35157b(float f) {
        View view = this.f4272a.get();
        if (view != null) {
            view.animate().translationY(f);
        }
        return this;
    }

    /* renamed from: b */
    public C1017y m35156b(long j) {
        View view = this.f4272a.get();
        if (view != null) {
            view.animate().setStartDelay(j);
        }
        return this;
    }

    /* renamed from: c */
    public void m35155c() {
        View view = this.f4272a.get();
        if (view != null) {
            view.animate().start();
        }
    }
}
