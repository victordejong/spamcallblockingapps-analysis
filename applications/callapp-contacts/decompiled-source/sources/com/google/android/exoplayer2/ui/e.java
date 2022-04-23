package com.google.android.exoplayer2.ui;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.res.Resources;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.LinearInterpolator;
import com.google.android.exoplayer2.ui.StyledPlayerControlView;
import com.google.android.exoplayer2.ui.c;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/ui/e.class */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    final StyledPlayerControlView f22039a;

    /* renamed from: b  reason: collision with root package name */
    final View f22040b;

    /* renamed from: c  reason: collision with root package name */
    final ViewGroup f22041c;

    /* renamed from: d  reason: collision with root package name */
    final ViewGroup f22042d;
    final ViewGroup e;
    final ViewGroup f;
    final View g;
    boolean k;
    boolean l;
    private final ViewGroup n;
    private final ViewGroup o;
    private final ViewGroup p;
    private final View q;
    private final AnimatorSet r;
    private final AnimatorSet s;
    private final AnimatorSet t;
    private final AnimatorSet u;
    private final AnimatorSet v;
    private final ValueAnimator w;
    private final ValueAnimator x;
    final Runnable h = new Runnable() { // from class: com.google.android.exoplayer2.ui._$$Lambda$vN3l0cI62BjgbVMgQGJF6LN50Lc
        @Override // java.lang.Runnable
        public final void run() {
            e.this.d();
        }
    };
    private final Runnable y = new Runnable() { // from class: com.google.android.exoplayer2.ui._$$Lambda$euhkbBcb9lDyd9sOw6tYkhUUW1Q
        @Override // java.lang.Runnable
        public final void run() {
            e.this.e();
        }
    };
    private final Runnable z = new Runnable() { // from class: com.google.android.exoplayer2.ui._$$Lambda$KGl8eJ_WdS59hupWl5709o5qpA0
        @Override // java.lang.Runnable
        public final void run() {
            e.this.f();
        }
    };
    private final Runnable A = new Runnable() { // from class: com.google.android.exoplayer2.ui._$$Lambda$e$nr9nVqzOIqjfrK3WUJRoQzC9h9E
        @Override // java.lang.Runnable
        public final void run() {
            e.this.h();
        }
    };
    private final Runnable B = new Runnable() { // from class: com.google.android.exoplayer2.ui._$$Lambda$MyiFFe0TmdPVmTlzAcROVTFS8NQ
        @Override // java.lang.Runnable
        public final void run() {
            e.this.g();
        }
    };
    final View.OnLayoutChangeListener i = new View.OnLayoutChangeListener() { // from class: com.google.android.exoplayer2.ui._$$Lambda$e$VhknJSMy1sfnCemLy8k7I9FBmeo
        @Override // android.view.View.OnLayoutChangeListener
        public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            e.this.a(view, i, i2, i3, i4, i5, i6, i7, i8);
        }
    };
    boolean m = true;
    int j = 0;
    private final List<View> C = new ArrayList();

    public e(final StyledPlayerControlView styledPlayerControlView) {
        this.f22039a = styledPlayerControlView;
        this.f22040b = styledPlayerControlView.findViewById(c.f.exo_controls_background);
        this.f22041c = (ViewGroup) styledPlayerControlView.findViewById(c.f.exo_center_controls);
        this.f22042d = (ViewGroup) styledPlayerControlView.findViewById(c.f.exo_minimal_controls);
        ViewGroup viewGroup = (ViewGroup) styledPlayerControlView.findViewById(c.f.exo_bottom_bar);
        this.n = viewGroup;
        this.p = (ViewGroup) styledPlayerControlView.findViewById(c.f.exo_time);
        View findViewById = styledPlayerControlView.findViewById(c.f.exo_progress);
        this.g = findViewById;
        this.e = (ViewGroup) styledPlayerControlView.findViewById(c.f.exo_basic_controls);
        this.o = (ViewGroup) styledPlayerControlView.findViewById(c.f.exo_extra_controls);
        this.f = (ViewGroup) styledPlayerControlView.findViewById(c.f.exo_extra_controls_scroll_view);
        View findViewById2 = styledPlayerControlView.findViewById(c.f.exo_overflow_show);
        this.q = findViewById2;
        View findViewById3 = styledPlayerControlView.findViewById(c.f.exo_overflow_hide);
        if (!(findViewById2 == null || findViewById3 == null)) {
            findViewById2.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.exoplayer2.ui._$$Lambda$e$7ajgIBKKRouS_MJap0v9oW1ODHg
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    e.this.b(view);
                }
            });
            findViewById3.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.exoplayer2.ui._$$Lambda$e$7ajgIBKKRouS_MJap0v9oW1ODHg
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    e.this.b(view);
                }
            });
        }
        ValueAnimator ofFloat = ValueAnimator.ofFloat(1.0f, BitmapDescriptorFactory.HUE_RED);
        ofFloat.setInterpolator(new LinearInterpolator());
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.exoplayer2.ui._$$Lambda$e$su4tzBM_8DpFEmq6RYQxktzUWAs
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                e.this.d(valueAnimator);
            }
        });
        ofFloat.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.exoplayer2.ui.e.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                if (e.this.f22040b != null) {
                    e.this.f22040b.setVisibility(4);
                }
                if (e.this.f22041c != null) {
                    e.this.f22041c.setVisibility(4);
                }
                if (e.this.f22042d != null) {
                    e.this.f22042d.setVisibility(4);
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationStart(Animator animator) {
                if ((e.this.g instanceof DefaultTimeBar) && !e.this.k) {
                    DefaultTimeBar defaultTimeBar = (DefaultTimeBar) e.this.g;
                    if (defaultTimeBar.f21967b.isStarted()) {
                        defaultTimeBar.f21967b.cancel();
                    }
                    defaultTimeBar.f21967b.setFloatValues(defaultTimeBar.f21968c, BitmapDescriptorFactory.HUE_RED);
                    defaultTimeBar.f21967b.setDuration(250L);
                    defaultTimeBar.f21967b.start();
                }
            }
        });
        ValueAnimator ofFloat2 = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
        ofFloat2.setInterpolator(new LinearInterpolator());
        ofFloat2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.exoplayer2.ui._$$Lambda$e$FtsvR9MIGUBMGRIeg707fHuOWPM
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                e.this.c(valueAnimator);
            }
        });
        ofFloat2.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.exoplayer2.ui.e.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationStart(Animator animator) {
                if (e.this.f22040b != null) {
                    e.this.f22040b.setVisibility(0);
                }
                if (e.this.f22041c != null) {
                    e.this.f22041c.setVisibility(0);
                }
                if (e.this.f22042d != null) {
                    e.this.f22042d.setVisibility(e.this.k ? 0 : 4);
                }
                if ((e.this.g instanceof DefaultTimeBar) && !e.this.k) {
                    DefaultTimeBar defaultTimeBar = (DefaultTimeBar) e.this.g;
                    if (defaultTimeBar.f21967b.isStarted()) {
                        defaultTimeBar.f21967b.cancel();
                    }
                    defaultTimeBar.f21969d = false;
                    defaultTimeBar.f21967b.setFloatValues(defaultTimeBar.f21968c, 1.0f);
                    defaultTimeBar.f21967b.setDuration(250L);
                    defaultTimeBar.f21967b.start();
                }
            }
        });
        Resources resources = styledPlayerControlView.getResources();
        float dimension = resources.getDimension(c.C0444c.exo_styled_bottom_bar_height) - resources.getDimension(c.C0444c.exo_styled_progress_bar_height);
        float dimension2 = resources.getDimension(c.C0444c.exo_styled_bottom_bar_height);
        AnimatorSet animatorSet = new AnimatorSet();
        this.r = animatorSet;
        animatorSet.setDuration(250L);
        animatorSet.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.exoplayer2.ui.e.3
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                e.this.a(1);
                if (e.this.l) {
                    styledPlayerControlView.post(e.this.h);
                    e.this.l = false;
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationStart(Animator animator) {
                e.this.a(3);
            }
        });
        animatorSet.play(ofFloat).with(a(BitmapDescriptorFactory.HUE_RED, dimension, findViewById)).with(a(BitmapDescriptorFactory.HUE_RED, dimension, viewGroup));
        AnimatorSet animatorSet2 = new AnimatorSet();
        this.s = animatorSet2;
        animatorSet2.setDuration(250L);
        animatorSet2.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.exoplayer2.ui.e.4
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                e.this.a(2);
                if (e.this.l) {
                    styledPlayerControlView.post(e.this.h);
                    e.this.l = false;
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationStart(Animator animator) {
                e.this.a(3);
            }
        });
        animatorSet2.play(a(dimension, dimension2, findViewById)).with(a(dimension, dimension2, viewGroup));
        AnimatorSet animatorSet3 = new AnimatorSet();
        this.t = animatorSet3;
        animatorSet3.setDuration(250L);
        animatorSet3.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.exoplayer2.ui.e.5
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                e.this.a(2);
                if (e.this.l) {
                    styledPlayerControlView.post(e.this.h);
                    e.this.l = false;
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationStart(Animator animator) {
                e.this.a(3);
            }
        });
        animatorSet3.play(ofFloat).with(a(BitmapDescriptorFactory.HUE_RED, dimension2, findViewById)).with(a(BitmapDescriptorFactory.HUE_RED, dimension2, viewGroup));
        AnimatorSet animatorSet4 = new AnimatorSet();
        this.u = animatorSet4;
        animatorSet4.setDuration(250L);
        animatorSet4.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.exoplayer2.ui.e.6
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                e.this.a(0);
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationStart(Animator animator) {
                e.this.a(4);
            }
        });
        animatorSet4.play(ofFloat2).with(a(dimension, BitmapDescriptorFactory.HUE_RED, findViewById)).with(a(dimension, BitmapDescriptorFactory.HUE_RED, viewGroup));
        AnimatorSet animatorSet5 = new AnimatorSet();
        this.v = animatorSet5;
        animatorSet5.setDuration(250L);
        animatorSet5.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.exoplayer2.ui.e.7
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                e.this.a(0);
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationStart(Animator animator) {
                e.this.a(4);
            }
        });
        animatorSet5.play(ofFloat2).with(a(dimension2, BitmapDescriptorFactory.HUE_RED, findViewById)).with(a(dimension2, BitmapDescriptorFactory.HUE_RED, viewGroup));
        ValueAnimator ofFloat3 = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
        this.w = ofFloat3;
        ofFloat3.setDuration(250L);
        ofFloat3.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.exoplayer2.ui._$$Lambda$e$4aeeCh_BfiTqNVjKiimBmK_kgyc
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                e.this.b(valueAnimator);
            }
        });
        ofFloat3.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.exoplayer2.ui.e.8
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                if (e.this.e != null) {
                    e.this.e.setVisibility(4);
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationStart(Animator animator) {
                if (e.this.f != null) {
                    e.this.f.setVisibility(0);
                    e.this.f.setTranslationX(e.this.f.getWidth());
                    e.this.f.scrollTo(e.this.f.getWidth(), 0);
                }
            }
        });
        ValueAnimator ofFloat4 = ValueAnimator.ofFloat(1.0f, BitmapDescriptorFactory.HUE_RED);
        this.x = ofFloat4;
        ofFloat4.setDuration(250L);
        ofFloat4.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.exoplayer2.ui._$$Lambda$e$6TIETajvi2jbe_FHSi39QtKJ_p8
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                e.this.a(valueAnimator);
            }
        });
        ofFloat4.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.exoplayer2.ui.e.9
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                if (e.this.f != null) {
                    e.this.f.setVisibility(4);
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationStart(Animator animator) {
                if (e.this.e != null) {
                    e.this.e.setVisibility(0);
                }
            }
        });
    }

    private static ObjectAnimator a(float f, float f2, View view) {
        return ObjectAnimator.ofFloat(view, "translationY", f, f2);
    }

    private void a(float f) {
        ViewGroup viewGroup = this.f;
        if (viewGroup != null) {
            this.f.setTranslationX((int) (viewGroup.getWidth() * (1.0f - f)));
        }
        ViewGroup viewGroup2 = this.p;
        if (viewGroup2 != null) {
            viewGroup2.setAlpha(1.0f - f);
        }
        ViewGroup viewGroup3 = this.e;
        if (viewGroup3 != null) {
            viewGroup3.setAlpha(1.0f - f);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(ValueAnimator valueAnimator) {
        a(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        int width = this.f22039a.getWidth();
        int paddingLeft = this.f22039a.getPaddingLeft();
        int paddingRight = this.f22039a.getPaddingRight();
        int height = this.f22039a.getHeight();
        int paddingBottom = this.f22039a.getPaddingBottom();
        int paddingTop = this.f22039a.getPaddingTop();
        int d2 = d(this.f22041c);
        ViewGroup viewGroup = this.f22041c;
        boolean z = false;
        int paddingLeft2 = viewGroup != null ? viewGroup.getPaddingLeft() + this.f22041c.getPaddingRight() : 0;
        int e = e(this.f22041c);
        ViewGroup viewGroup2 = this.f22041c;
        boolean z2 = (width - paddingLeft) - paddingRight <= Math.max(d2 - paddingLeft2, d(this.p) + d(this.q)) || (height - paddingBottom) - paddingTop <= (e - (viewGroup2 != null ? viewGroup2.getPaddingTop() + this.f22041c.getPaddingBottom() : 0)) + (e(this.n) * 2);
        if (this.k != z2) {
            this.k = z2;
            view.post(new Runnable() { // from class: com.google.android.exoplayer2.ui._$$Lambda$e$ypDRjW_f9fhKb9TLqJoLZIdKAKE
                @Override // java.lang.Runnable
                public final void run() {
                    e.this.i();
                }
            });
        }
        if (i3 - i != i7 - i5) {
            z = true;
        }
        if (!this.k && z) {
            view.post(new Runnable() { // from class: com.google.android.exoplayer2.ui._$$Lambda$e$z7H8EhWNkCdGHZwC_vrRtLf_Uf4
                @Override // java.lang.Runnable
                public final void run() {
                    e.this.j();
                }
            });
        }
    }

    private void a(Runnable runnable, long j) {
        if (j >= 0) {
            this.f22039a.postDelayed(runnable, j);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(ValueAnimator valueAnimator) {
        a(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(View view) {
        a();
        if (view.getId() == c.f.exo_overflow_show) {
            this.w.start();
        } else if (view.getId() == c.f.exo_overflow_hide) {
            this.x.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(ValueAnimator valueAnimator) {
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        View view = this.f22040b;
        if (view != null) {
            view.setAlpha(floatValue);
        }
        ViewGroup viewGroup = this.f22041c;
        if (viewGroup != null) {
            viewGroup.setAlpha(floatValue);
        }
        ViewGroup viewGroup2 = this.f22042d;
        if (viewGroup2 != null) {
            viewGroup2.setAlpha(floatValue);
        }
    }

    private static boolean c(View view) {
        int id = view.getId();
        return id == c.f.exo_bottom_bar || id == c.f.exo_prev || id == c.f.exo_next || id == c.f.exo_rew || id == c.f.exo_rew_with_amount || id == c.f.exo_ffwd || id == c.f.exo_ffwd_with_amount;
    }

    private static int d(View view) {
        if (view == null) {
            return 0;
        }
        int width = view.getWidth();
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        int i = width;
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            i = width + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin;
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d(ValueAnimator valueAnimator) {
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        View view = this.f22040b;
        if (view != null) {
            view.setAlpha(floatValue);
        }
        ViewGroup viewGroup = this.f22041c;
        if (viewGroup != null) {
            viewGroup.setAlpha(floatValue);
        }
        ViewGroup viewGroup2 = this.f22042d;
        if (viewGroup2 != null) {
            viewGroup2.setAlpha(floatValue);
        }
    }

    private static int e(View view) {
        if (view == null) {
            return 0;
        }
        int height = view.getHeight();
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        int i = height;
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            i = height + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h() {
        this.r.start();
        a(this.z, 2000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i() {
        ViewGroup viewGroup = this.f22042d;
        if (viewGroup != null) {
            viewGroup.setVisibility(this.k ? 0 : 4);
        }
        View view = this.g;
        if (view != null) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
            int dimensionPixelSize = this.f22039a.getResources().getDimensionPixelSize(c.C0444c.exo_styled_progress_margin_bottom);
            if (this.k) {
                dimensionPixelSize = 0;
            }
            marginLayoutParams.bottomMargin = dimensionPixelSize;
            this.g.setLayoutParams(marginLayoutParams);
            View view2 = this.g;
            if (view2 instanceof DefaultTimeBar) {
                DefaultTimeBar defaultTimeBar = (DefaultTimeBar) view2;
                if (this.k) {
                    defaultTimeBar.a(true);
                } else {
                    int i = this.j;
                    if (i == 1) {
                        defaultTimeBar.a(false);
                    } else if (i != 3) {
                        if (defaultTimeBar.f21967b.isStarted()) {
                            defaultTimeBar.f21967b.cancel();
                        }
                        defaultTimeBar.f21969d = false;
                        defaultTimeBar.f21968c = 1.0f;
                        defaultTimeBar.invalidate(defaultTimeBar.f21966a);
                    }
                }
            }
        }
        for (View view3 : this.C) {
            view3.setVisibility((!this.k || !c(view3)) ? 0 : 4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j() {
        int i;
        if (!(this.e == null || this.o == null)) {
            int width = (this.f22039a.getWidth() - this.f22039a.getPaddingLeft()) - this.f22039a.getPaddingRight();
            while (true) {
                if (this.o.getChildCount() <= 1) {
                    break;
                }
                int childCount = this.o.getChildCount() - 2;
                View childAt = this.o.getChildAt(childCount);
                this.o.removeViewAt(childCount);
                this.e.addView(childAt, 0);
            }
            View view = this.q;
            if (view != null) {
                view.setVisibility(8);
            }
            int d2 = d(this.p);
            int childCount2 = this.e.getChildCount() - 1;
            for (int i2 = 0; i2 < childCount2; i2++) {
                d2 += d(this.e.getChildAt(i2));
            }
            if (d2 > width) {
                View view2 = this.q;
                int i3 = d2;
                if (view2 != null) {
                    view2.setVisibility(0);
                    i3 = d2 + d(this.q);
                }
                ArrayList arrayList = new ArrayList();
                for (int i4 = 0; i4 < childCount2; i4++) {
                    View childAt2 = this.e.getChildAt(i4);
                    i3 -= d(childAt2);
                    arrayList.add(childAt2);
                    if (i3 <= width) {
                        break;
                    }
                }
                if (!arrayList.isEmpty()) {
                    this.e.removeViews(0, arrayList.size());
                    for (i = 0; i < arrayList.size(); i++) {
                        this.o.addView((View) arrayList.get(i), this.o.getChildCount() - 1);
                    }
                    return;
                }
                return;
            }
            ViewGroup viewGroup = this.f;
            if (!(viewGroup == null || viewGroup.getVisibility() != 0 || this.x.isStarted())) {
                this.w.cancel();
                this.x.start();
            }
        }
    }

    public final void a() {
        if (this.j != 3) {
            b();
            int i = this.f22039a.f21983b;
            if (i <= 0) {
                return;
            }
            if (!this.m) {
                a(this.B, i);
            } else if (this.j == 1) {
                a(this.z, 2000L);
            } else {
                a(this.A, i);
            }
        }
    }

    final void a(int i) {
        int i2 = this.j;
        this.j = i;
        if (i == 2) {
            this.f22039a.setVisibility(8);
        } else if (i2 == 2) {
            this.f22039a.setVisibility(0);
        }
        if (i2 != i) {
            StyledPlayerControlView styledPlayerControlView = this.f22039a;
            Iterator<StyledPlayerControlView.l> it2 = styledPlayerControlView.f21982a.iterator();
            while (it2.hasNext()) {
                styledPlayerControlView.getVisibility();
                it2.next().a();
            }
        }
    }

    public final void a(View view, boolean z) {
        if (view != null) {
            if (!z) {
                view.setVisibility(8);
                this.C.remove(view);
                return;
            }
            if (!this.k || !c(view)) {
                view.setVisibility(0);
            } else {
                view.setVisibility(4);
            }
            this.C.add(view);
        }
    }

    public final boolean a(View view) {
        return view != null && this.C.contains(view);
    }

    public final void b() {
        this.f22039a.removeCallbacks(this.B);
        this.f22039a.removeCallbacks(this.y);
        this.f22039a.removeCallbacks(this.A);
        this.f22039a.removeCallbacks(this.z);
    }

    public final boolean c() {
        return this.j == 0 && this.f22039a.c();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void d() {
        if (!this.m) {
            a(0);
            a();
            return;
        }
        int i = this.j;
        if (i == 1) {
            this.u.start();
        } else if (i == 2) {
            this.v.start();
        } else if (i == 3) {
            this.l = true;
        } else if (i == 4) {
            return;
        }
        a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void e() {
        this.t.start();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void f() {
        this.s.start();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void g() {
        a(2);
    }
}
