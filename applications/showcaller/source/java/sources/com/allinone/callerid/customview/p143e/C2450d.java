package com.allinone.callerid.customview.p143e;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.animation.Interpolator;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* renamed from: com.allinone.callerid.customview.e.d */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/customview/e/d.class */
public class C2450d {

    /* renamed from: g */
    private AnimatorSet f8714g;

    /* renamed from: i */
    private AbstractC2448b f8716i;

    /* renamed from: j */
    private AbstractC2449c f8717j;

    /* renamed from: a */
    private List<C2447a> f8708a = new ArrayList();

    /* renamed from: b */
    private long f8709b = 3000;

    /* renamed from: c */
    private long f8710c = 0;

    /* renamed from: d */
    private Interpolator f8711d = null;

    /* renamed from: e */
    private int f8712e = 0;

    /* renamed from: f */
    private int f8713f = 1;

    /* renamed from: h */
    private View f8715h = null;

    /* renamed from: k */
    private C2450d f8718k = null;

    /* renamed from: l */
    private C2450d f8719l = null;

    /* renamed from: com.allinone.callerid.customview.e.d$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/customview/e/d$a.class */
    public class C2451a implements Animator.AnimatorListener {
        C2451a() {
            C2450d.this = r4;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (C2450d.this.f8717j != null) {
                C2450d.this.f8717j.mo25757a();
            }
            if (C2450d.this.f8719l != null) {
                C2450d.this.f8719l.f8718k = null;
                C2450d.this.f8719l.m27313n();
            }
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            if (C2450d.this.f8716i != null) {
                C2450d.this.f8716i.onStart();
            }
        }
    }

    /* renamed from: com.allinone.callerid.customview.e.d$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/customview/e/d$b.class */
    public class ViewTreeObserver$OnPreDrawListenerC2452b implements ViewTreeObserver.OnPreDrawListener {
        ViewTreeObserver$OnPreDrawListenerC2452b() {
            C2450d.this = r4;
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            C2450d.this.f8714g.start();
            C2450d.this.f8715h.getViewTreeObserver().removeOnPreDrawListener(this);
            return false;
        }
    }

    /* renamed from: h */
    public static C2447a m27319h(View... viewArr) {
        return new C2450d().m27320g(viewArr);
    }

    /* renamed from: g */
    public C2447a m27320g(View... viewArr) {
        C2447a c2447a = new C2447a(this, viewArr);
        this.f8708a.add(c2447a);
        return c2447a;
    }

    /* renamed from: i */
    protected AnimatorSet m27318i() {
        ArrayList<Animator> arrayList = new ArrayList();
        for (C2447a c2447a : this.f8708a) {
            List<Animator> m27337b = c2447a.m27337b();
            if (c2447a.m27334e() != null) {
                for (Animator animator : m27337b) {
                    animator.setInterpolator(c2447a.m27334e());
                }
            }
            arrayList.addAll(m27337b);
        }
        Iterator<C2447a> it = this.f8708a.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            C2447a next = it.next();
            if (next.m27331h()) {
                this.f8715h = next.m27332g();
                break;
            }
        }
        for (Animator animator2 : arrayList) {
            if (animator2 instanceof ValueAnimator) {
                ValueAnimator valueAnimator = (ValueAnimator) animator2;
                valueAnimator.setRepeatCount(this.f8712e);
                valueAnimator.setRepeatMode(this.f8713f);
            }
        }
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(arrayList);
        animatorSet.setDuration(this.f8709b);
        animatorSet.setStartDelay(this.f8710c);
        Interpolator interpolator = this.f8711d;
        if (interpolator != null) {
            animatorSet.setInterpolator(interpolator);
        }
        animatorSet.addListener(new C2451a());
        return animatorSet;
    }

    /* renamed from: j */
    public C2450d m27317j(long j) {
        this.f8709b = j;
        return this;
    }

    /* renamed from: k */
    public C2450d m27316k(Interpolator interpolator) {
        this.f8711d = interpolator;
        return this;
    }

    /* renamed from: l */
    public C2450d m27315l(AbstractC2449c abstractC2449c) {
        this.f8717j = abstractC2449c;
        return this;
    }

    /* renamed from: m */
    public C2450d m27314m(int i) {
        this.f8712e = i;
        return this;
    }

    /* renamed from: n */
    public C2450d m27313n() {
        C2450d c2450d = this.f8718k;
        if (c2450d != null) {
            c2450d.m27313n();
        } else {
            AnimatorSet m27318i = m27318i();
            this.f8714g = m27318i;
            View view = this.f8715h;
            if (view != null) {
                view.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver$OnPreDrawListenerC2452b());
            } else {
                m27318i.start();
            }
        }
        return this;
    }
}
