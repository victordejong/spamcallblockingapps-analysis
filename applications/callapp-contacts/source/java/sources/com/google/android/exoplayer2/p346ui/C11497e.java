package com.google.android.exoplayer2.p346ui;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.res.Resources;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.LinearInterpolator;
import com.google.android.exoplayer2.p346ui.C11479c;
import com.google.android.exoplayer2.p346ui.StyledPlayerControlView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* renamed from: com.google.android.exoplayer2.ui.e */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/ui/e.class */
public final class C11497e {

    /* renamed from: a */
    final StyledPlayerControlView f38181a;

    /* renamed from: b */
    final View f38182b;

    /* renamed from: c */
    final ViewGroup f38183c;

    /* renamed from: d */
    final ViewGroup f38184d;

    /* renamed from: e */
    final ViewGroup f38185e;

    /* renamed from: f */
    final ViewGroup f38186f;

    /* renamed from: g */
    final View f38187g;

    /* renamed from: k */
    boolean f38191k;

    /* renamed from: l */
    boolean f38192l;

    /* renamed from: n */
    private final ViewGroup f38194n;

    /* renamed from: o */
    private final ViewGroup f38195o;

    /* renamed from: p */
    private final ViewGroup f38196p;

    /* renamed from: q */
    private final View f38197q;

    /* renamed from: r */
    private final AnimatorSet f38198r;

    /* renamed from: s */
    private final AnimatorSet f38199s;

    /* renamed from: t */
    private final AnimatorSet f38200t;

    /* renamed from: u */
    private final AnimatorSet f38201u;

    /* renamed from: v */
    private final AnimatorSet f38202v;

    /* renamed from: w */
    private final ValueAnimator f38203w;

    /* renamed from: x */
    private final ValueAnimator f38204x;

    /* renamed from: h */
    final Runnable f38188h = new Runnable() { // from class: com.google.android.exoplayer2.ui._$$Lambda$vN3l0cI62BjgbVMgQGJF6LN50Lc
        @Override // java.lang.Runnable
        public final void run() {
            C11497e.this.m20243d();
        }
    };

    /* renamed from: y */
    private final Runnable f38205y = new Runnable() { // from class: com.google.android.exoplayer2.ui._$$Lambda$euhkbBcb9lDyd9sOw6tYkhUUW1Q
        @Override // java.lang.Runnable
        public final void run() {
            C11497e.this.m20240e();
        }
    };

    /* renamed from: z */
    private final Runnable f38206z = new Runnable() { // from class: com.google.android.exoplayer2.ui._$$Lambda$KGl8eJ_WdS59hupWl5709o5qpA0
        @Override // java.lang.Runnable
        public final void run() {
            C11497e.this.m20238f();
        }
    };

    /* renamed from: A */
    private final Runnable f38178A = new Runnable() { // from class: com.google.android.exoplayer2.ui._$$Lambda$e$nr9nVqzOIqjfrK3WUJRoQzC9h9E
        @Override // java.lang.Runnable
        public final void run() {
            C11497e.this.m20236h();
        }
    };

    /* renamed from: B */
    private final Runnable f38179B = new Runnable() { // from class: com.google.android.exoplayer2.ui._$$Lambda$MyiFFe0TmdPVmTlzAcROVTFS8NQ
        @Override // java.lang.Runnable
        public final void run() {
            C11497e.this.m20237g();
        }
    };

    /* renamed from: i */
    final View.OnLayoutChangeListener f38189i = new View.OnLayoutChangeListener() { // from class: com.google.android.exoplayer2.ui._$$Lambda$e$VhknJSMy1sfnCemLy8k7I9FBmeo
        @Override // android.view.View.OnLayoutChangeListener
        public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            C11497e.this.m20252a(view, i, i2, i3, i4, i5, i6, i7, i8);
        }
    };

    /* renamed from: m */
    boolean f38193m = true;

    /* renamed from: j */
    int f38190j = 0;

    /* renamed from: C */
    private final List<View> f38180C = new ArrayList();

    public C11497e(final StyledPlayerControlView styledPlayerControlView) {
        this.f38181a = styledPlayerControlView;
        this.f38182b = styledPlayerControlView.findViewById(C11479c.C11485f.exo_controls_background);
        this.f38183c = (ViewGroup) styledPlayerControlView.findViewById(C11479c.C11485f.exo_center_controls);
        this.f38184d = (ViewGroup) styledPlayerControlView.findViewById(C11479c.C11485f.exo_minimal_controls);
        ViewGroup viewGroup = (ViewGroup) styledPlayerControlView.findViewById(C11479c.C11485f.exo_bottom_bar);
        this.f38194n = viewGroup;
        this.f38196p = (ViewGroup) styledPlayerControlView.findViewById(C11479c.C11485f.exo_time);
        View findViewById = styledPlayerControlView.findViewById(C11479c.C11485f.exo_progress);
        this.f38187g = findViewById;
        this.f38185e = (ViewGroup) styledPlayerControlView.findViewById(C11479c.C11485f.exo_basic_controls);
        this.f38195o = (ViewGroup) styledPlayerControlView.findViewById(C11479c.C11485f.exo_extra_controls);
        this.f38186f = (ViewGroup) styledPlayerControlView.findViewById(C11479c.C11485f.exo_extra_controls_scroll_view);
        View findViewById2 = styledPlayerControlView.findViewById(C11479c.C11485f.exo_overflow_show);
        this.f38197q = findViewById2;
        View findViewById3 = styledPlayerControlView.findViewById(C11479c.C11485f.exo_overflow_hide);
        if (findViewById2 != null && findViewById3 != null) {
            findViewById2.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.exoplayer2.ui._$$Lambda$e$7ajgIBKKRouS_MJap0v9oW1ODHg
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    C11497e.this.m20247b(view);
                }
            });
            findViewById3.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.exoplayer2.ui._$$Lambda$e$7ajgIBKKRouS_MJap0v9oW1ODHg
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    C11497e.this.m20247b(view);
                }
            });
        }
        ValueAnimator ofFloat = ValueAnimator.ofFloat(1.0f, BitmapDescriptorFactory.HUE_RED);
        ofFloat.setInterpolator(new LinearInterpolator());
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.exoplayer2.ui._$$Lambda$e$su4tzBM_8DpFEmq6RYQxktzUWAs
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                C11497e.this.m20242d(valueAnimator);
            }
        });
        ofFloat.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.exoplayer2.ui.e.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                if (C11497e.this.f38182b != null) {
                    C11497e.this.f38182b.setVisibility(4);
                }
                if (C11497e.this.f38183c != null) {
                    C11497e.this.f38183c.setVisibility(4);
                }
                if (C11497e.this.f38184d != null) {
                    C11497e.this.f38184d.setVisibility(4);
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationStart(Animator animator) {
                if (!(C11497e.this.f38187g instanceof DefaultTimeBar) || C11497e.this.f38191k) {
                    return;
                }
                DefaultTimeBar defaultTimeBar = (DefaultTimeBar) C11497e.this.f38187g;
                if (defaultTimeBar.f37883b.isStarted()) {
                    defaultTimeBar.f37883b.cancel();
                }
                defaultTimeBar.f37883b.setFloatValues(defaultTimeBar.f37884c, BitmapDescriptorFactory.HUE_RED);
                defaultTimeBar.f37883b.setDuration(250L);
                defaultTimeBar.f37883b.start();
            }
        });
        ValueAnimator ofFloat2 = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
        ofFloat2.setInterpolator(new LinearInterpolator());
        ofFloat2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.exoplayer2.ui._$$Lambda$e$FtsvR9MIGUBMGRIeg707fHuOWPM
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                C11497e.this.m20245c(valueAnimator);
            }
        });
        ofFloat2.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.exoplayer2.ui.e.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationStart(Animator animator) {
                if (C11497e.this.f38182b != null) {
                    C11497e.this.f38182b.setVisibility(0);
                }
                if (C11497e.this.f38183c != null) {
                    C11497e.this.f38183c.setVisibility(0);
                }
                if (C11497e.this.f38184d != null) {
                    C11497e.this.f38184d.setVisibility(C11497e.this.f38191k ? 0 : 4);
                }
                if (!(C11497e.this.f38187g instanceof DefaultTimeBar) || C11497e.this.f38191k) {
                    return;
                }
                DefaultTimeBar defaultTimeBar = (DefaultTimeBar) C11497e.this.f38187g;
                if (defaultTimeBar.f37883b.isStarted()) {
                    defaultTimeBar.f37883b.cancel();
                }
                defaultTimeBar.f37885d = false;
                defaultTimeBar.f37883b.setFloatValues(defaultTimeBar.f37884c, 1.0f);
                defaultTimeBar.f37883b.setDuration(250L);
                defaultTimeBar.f37883b.start();
            }
        });
        Resources resources = styledPlayerControlView.getResources();
        float dimension = resources.getDimension(C11479c.C11482c.exo_styled_bottom_bar_height) - resources.getDimension(C11479c.C11482c.exo_styled_progress_bar_height);
        float dimension2 = resources.getDimension(C11479c.C11482c.exo_styled_bottom_bar_height);
        AnimatorSet animatorSet = new AnimatorSet();
        this.f38198r = animatorSet;
        animatorSet.setDuration(250L);
        animatorSet.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.exoplayer2.ui.e.3
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                C11497e.this.m20255a(1);
                if (C11497e.this.f38192l) {
                    styledPlayerControlView.post(C11497e.this.f38188h);
                    C11497e.this.f38192l = false;
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationStart(Animator animator) {
                C11497e.this.m20255a(3);
            }
        });
        animatorSet.play(ofFloat).with(m20256a(BitmapDescriptorFactory.HUE_RED, dimension, findViewById)).with(m20256a(BitmapDescriptorFactory.HUE_RED, dimension, viewGroup));
        AnimatorSet animatorSet2 = new AnimatorSet();
        this.f38199s = animatorSet2;
        animatorSet2.setDuration(250L);
        animatorSet2.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.exoplayer2.ui.e.4
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                C11497e.this.m20255a(2);
                if (C11497e.this.f38192l) {
                    styledPlayerControlView.post(C11497e.this.f38188h);
                    C11497e.this.f38192l = false;
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationStart(Animator animator) {
                C11497e.this.m20255a(3);
            }
        });
        animatorSet2.play(m20256a(dimension, dimension2, findViewById)).with(m20256a(dimension, dimension2, viewGroup));
        AnimatorSet animatorSet3 = new AnimatorSet();
        this.f38200t = animatorSet3;
        animatorSet3.setDuration(250L);
        animatorSet3.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.exoplayer2.ui.e.5
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                C11497e.this.m20255a(2);
                if (C11497e.this.f38192l) {
                    styledPlayerControlView.post(C11497e.this.f38188h);
                    C11497e.this.f38192l = false;
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationStart(Animator animator) {
                C11497e.this.m20255a(3);
            }
        });
        animatorSet3.play(ofFloat).with(m20256a(BitmapDescriptorFactory.HUE_RED, dimension2, findViewById)).with(m20256a(BitmapDescriptorFactory.HUE_RED, dimension2, viewGroup));
        AnimatorSet animatorSet4 = new AnimatorSet();
        this.f38201u = animatorSet4;
        animatorSet4.setDuration(250L);
        animatorSet4.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.exoplayer2.ui.e.6
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                C11497e.this.m20255a(0);
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationStart(Animator animator) {
                C11497e.this.m20255a(4);
            }
        });
        animatorSet4.play(ofFloat2).with(m20256a(dimension, BitmapDescriptorFactory.HUE_RED, findViewById)).with(m20256a(dimension, BitmapDescriptorFactory.HUE_RED, viewGroup));
        AnimatorSet animatorSet5 = new AnimatorSet();
        this.f38202v = animatorSet5;
        animatorSet5.setDuration(250L);
        animatorSet5.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.exoplayer2.ui.e.7
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                C11497e.this.m20255a(0);
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationStart(Animator animator) {
                C11497e.this.m20255a(4);
            }
        });
        animatorSet5.play(ofFloat2).with(m20256a(dimension2, BitmapDescriptorFactory.HUE_RED, findViewById)).with(m20256a(dimension2, BitmapDescriptorFactory.HUE_RED, viewGroup));
        ValueAnimator ofFloat3 = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
        this.f38203w = ofFloat3;
        ofFloat3.setDuration(250L);
        ofFloat3.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.exoplayer2.ui._$$Lambda$e$4aeeCh_BfiTqNVjKiimBmK_kgyc
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                C11497e.this.m20248b(valueAnimator);
            }
        });
        ofFloat3.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.exoplayer2.ui.e.8
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                if (C11497e.this.f38185e != null) {
                    C11497e.this.f38185e.setVisibility(4);
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationStart(Animator animator) {
                if (C11497e.this.f38186f != null) {
                    C11497e.this.f38186f.setVisibility(0);
                    C11497e.this.f38186f.setTranslationX(C11497e.this.f38186f.getWidth());
                    C11497e.this.f38186f.scrollTo(C11497e.this.f38186f.getWidth(), 0);
                }
            }
        });
        ValueAnimator ofFloat4 = ValueAnimator.ofFloat(1.0f, BitmapDescriptorFactory.HUE_RED);
        this.f38204x = ofFloat4;
        ofFloat4.setDuration(250L);
        ofFloat4.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.exoplayer2.ui._$$Lambda$e$6TIETajvi2jbe_FHSi39QtKJ_p8
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                C11497e.this.m20254a(valueAnimator);
            }
        });
        ofFloat4.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.exoplayer2.ui.e.9
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                if (C11497e.this.f38186f != null) {
                    C11497e.this.f38186f.setVisibility(4);
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationStart(Animator animator) {
                if (C11497e.this.f38185e != null) {
                    C11497e.this.f38185e.setVisibility(0);
                }
            }
        });
    }

    /* renamed from: a */
    private static ObjectAnimator m20256a(float f, float f2, View view) {
        return ObjectAnimator.ofFloat(view, "translationY", f, f2);
    }

    /* renamed from: a */
    private void m20257a(float f) {
        ViewGroup viewGroup = this.f38186f;
        if (viewGroup != null) {
            this.f38186f.setTranslationX((int) (viewGroup.getWidth() * (1.0f - f)));
        }
        ViewGroup viewGroup2 = this.f38196p;
        if (viewGroup2 != null) {
            viewGroup2.setAlpha(1.0f - f);
        }
        ViewGroup viewGroup3 = this.f38185e;
        if (viewGroup3 != null) {
            viewGroup3.setAlpha(1.0f - f);
        }
    }

    /* renamed from: a */
    public /* synthetic */ void m20254a(ValueAnimator valueAnimator) {
        m20257a(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }

    /* renamed from: a */
    public void m20252a(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        int width = this.f38181a.getWidth();
        int paddingLeft = this.f38181a.getPaddingLeft();
        int paddingRight = this.f38181a.getPaddingRight();
        int height = this.f38181a.getHeight();
        int paddingBottom = this.f38181a.getPaddingBottom();
        int paddingTop = this.f38181a.getPaddingTop();
        int m20241d = m20241d(this.f38183c);
        ViewGroup viewGroup = this.f38183c;
        int paddingLeft2 = viewGroup != null ? viewGroup.getPaddingLeft() + this.f38183c.getPaddingRight() : 0;
        int m20239e = m20239e(this.f38183c);
        ViewGroup viewGroup2 = this.f38183c;
        boolean z = (width - paddingLeft) - paddingRight <= Math.max(m20241d - paddingLeft2, m20241d(this.f38196p) + m20241d(this.f38197q)) || (height - paddingBottom) - paddingTop <= (m20239e - (viewGroup2 != null ? viewGroup2.getPaddingTop() + this.f38183c.getPaddingBottom() : 0)) + (m20239e(this.f38194n) * 2);
        if (this.f38191k != z) {
            this.f38191k = z;
            view.post(new Runnable() { // from class: com.google.android.exoplayer2.ui._$$Lambda$e$ypDRjW_f9fhKb9TLqJoLZIdKAKE
                @Override // java.lang.Runnable
                public final void run() {
                    C11497e.this.m20235i();
                }
            });
        }
        boolean z2 = false;
        if (i3 - i != i7 - i5) {
            z2 = true;
        }
        if (this.f38191k || !z2) {
            return;
        }
        view.post(new Runnable() { // from class: com.google.android.exoplayer2.ui._$$Lambda$e$z7H8EhWNkCdGHZwC_vrRtLf_Uf4
            @Override // java.lang.Runnable
            public final void run() {
                C11497e.this.m20234j();
            }
        });
    }

    /* renamed from: a */
    private void m20250a(Runnable runnable, long j) {
        if (j >= 0) {
            this.f38181a.postDelayed(runnable, j);
        }
    }

    /* renamed from: b */
    public /* synthetic */ void m20248b(ValueAnimator valueAnimator) {
        m20257a(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }

    /* renamed from: b */
    public void m20247b(View view) {
        m20258a();
        if (view.getId() == C11479c.C11485f.exo_overflow_show) {
            this.f38203w.start();
        } else if (view.getId() != C11479c.C11485f.exo_overflow_hide) {
        } else {
            this.f38204x.start();
        }
    }

    /* renamed from: c */
    public /* synthetic */ void m20245c(ValueAnimator valueAnimator) {
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        View view = this.f38182b;
        if (view != null) {
            view.setAlpha(floatValue);
        }
        ViewGroup viewGroup = this.f38183c;
        if (viewGroup != null) {
            viewGroup.setAlpha(floatValue);
        }
        ViewGroup viewGroup2 = this.f38184d;
        if (viewGroup2 != null) {
            viewGroup2.setAlpha(floatValue);
        }
    }

    /* renamed from: c */
    private static boolean m20244c(View view) {
        int id = view.getId();
        return id == C11479c.C11485f.exo_bottom_bar || id == C11479c.C11485f.exo_prev || id == C11479c.C11485f.exo_next || id == C11479c.C11485f.exo_rew || id == C11479c.C11485f.exo_rew_with_amount || id == C11479c.C11485f.exo_ffwd || id == C11479c.C11485f.exo_ffwd_with_amount;
    }

    /* renamed from: d */
    private static int m20241d(View view) {
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

    /* renamed from: d */
    public /* synthetic */ void m20242d(ValueAnimator valueAnimator) {
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        View view = this.f38182b;
        if (view != null) {
            view.setAlpha(floatValue);
        }
        ViewGroup viewGroup = this.f38183c;
        if (viewGroup != null) {
            viewGroup.setAlpha(floatValue);
        }
        ViewGroup viewGroup2 = this.f38184d;
        if (viewGroup2 != null) {
            viewGroup2.setAlpha(floatValue);
        }
    }

    /* renamed from: e */
    private static int m20239e(View view) {
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

    /* renamed from: h */
    public void m20236h() {
        this.f38198r.start();
        m20250a(this.f38206z, 2000L);
    }

    /* renamed from: i */
    public void m20235i() {
        ViewGroup viewGroup = this.f38184d;
        if (viewGroup != null) {
            viewGroup.setVisibility(this.f38191k ? 0 : 4);
        }
        View view = this.f38187g;
        if (view != null) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
            int dimensionPixelSize = this.f38181a.getResources().getDimensionPixelSize(C11479c.C11482c.exo_styled_progress_margin_bottom);
            if (this.f38191k) {
                dimensionPixelSize = 0;
            }
            marginLayoutParams.bottomMargin = dimensionPixelSize;
            this.f38187g.setLayoutParams(marginLayoutParams);
            View view2 = this.f38187g;
            if (view2 instanceof DefaultTimeBar) {
                DefaultTimeBar defaultTimeBar = (DefaultTimeBar) view2;
                if (this.f38191k) {
                    defaultTimeBar.m20526a(true);
                } else {
                    int i = this.f38190j;
                    if (i == 1) {
                        defaultTimeBar.m20526a(false);
                    } else if (i != 3) {
                        if (defaultTimeBar.f37883b.isStarted()) {
                            defaultTimeBar.f37883b.cancel();
                        }
                        defaultTimeBar.f37885d = false;
                        defaultTimeBar.f37884c = 1.0f;
                        defaultTimeBar.invalidate(defaultTimeBar.f37882a);
                    }
                }
            }
        }
        for (View view3 : this.f38180C) {
            view3.setVisibility((!this.f38191k || !m20244c(view3)) ? 0 : 4);
        }
    }

    /* renamed from: j */
    public void m20234j() {
        if (this.f38185e == null || this.f38195o == null) {
            return;
        }
        int width = (this.f38181a.getWidth() - this.f38181a.getPaddingLeft()) - this.f38181a.getPaddingRight();
        while (this.f38195o.getChildCount() > 1) {
            int childCount = this.f38195o.getChildCount() - 2;
            View childAt = this.f38195o.getChildAt(childCount);
            this.f38195o.removeViewAt(childCount);
            this.f38185e.addView(childAt, 0);
        }
        View view = this.f38197q;
        if (view != null) {
            view.setVisibility(8);
        }
        int m20241d = m20241d(this.f38196p);
        int childCount2 = this.f38185e.getChildCount() - 1;
        for (int i = 0; i < childCount2; i++) {
            m20241d += m20241d(this.f38185e.getChildAt(i));
        }
        if (m20241d <= width) {
            ViewGroup viewGroup = this.f38186f;
            if (viewGroup == null || viewGroup.getVisibility() != 0 || this.f38204x.isStarted()) {
                return;
            }
            this.f38203w.cancel();
            this.f38204x.start();
            return;
        }
        View view2 = this.f38197q;
        int i2 = m20241d;
        if (view2 != null) {
            view2.setVisibility(0);
            i2 = m20241d + m20241d(this.f38197q);
        }
        ArrayList arrayList = new ArrayList();
        for (int i3 = 0; i3 < childCount2; i3++) {
            View childAt2 = this.f38185e.getChildAt(i3);
            i2 -= m20241d(childAt2);
            arrayList.add(childAt2);
            if (i2 <= width) {
                break;
            }
        }
        if (arrayList.isEmpty()) {
            return;
        }
        this.f38185e.removeViews(0, arrayList.size());
        for (int i4 = 0; i4 < arrayList.size(); i4++) {
            this.f38195o.addView((View) arrayList.get(i4), this.f38195o.getChildCount() - 1);
        }
    }

    /* renamed from: a */
    public final void m20258a() {
        if (this.f38190j == 3) {
            return;
        }
        m20249b();
        int i = this.f38181a.f38046b;
        if (i <= 0) {
            return;
        }
        if (!this.f38193m) {
            m20250a(this.f38179B, i);
        } else if (this.f38190j == 1) {
            m20250a(this.f38206z, 2000L);
        } else {
            m20250a(this.f38178A, i);
        }
    }

    /* renamed from: a */
    final void m20255a(int i) {
        int i2 = this.f38190j;
        this.f38190j = i;
        if (i == 2) {
            this.f38181a.setVisibility(8);
        } else if (i2 == 2) {
            this.f38181a.setVisibility(0);
        }
        if (i2 != i) {
            StyledPlayerControlView styledPlayerControlView = this.f38181a;
            Iterator<StyledPlayerControlView.AbstractC11468l> it2 = styledPlayerControlView.f38016a.iterator();
            while (it2.hasNext()) {
                styledPlayerControlView.getVisibility();
                it2.next().mo20312a();
            }
        }
    }

    /* renamed from: a */
    public final void m20251a(View view, boolean z) {
        if (view == null) {
            return;
        }
        if (!z) {
            view.setVisibility(8);
            this.f38180C.remove(view);
            return;
        }
        if (!this.f38191k || !m20244c(view)) {
            view.setVisibility(0);
        } else {
            view.setVisibility(4);
        }
        this.f38180C.add(view);
    }

    /* renamed from: a */
    public final boolean m20253a(View view) {
        return view != null && this.f38180C.contains(view);
    }

    /* renamed from: b */
    public final void m20249b() {
        this.f38181a.removeCallbacks(this.f38179B);
        this.f38181a.removeCallbacks(this.f38205y);
        this.f38181a.removeCallbacks(this.f38178A);
        this.f38181a.removeCallbacks(this.f38206z);
    }

    /* renamed from: c */
    public final boolean m20246c() {
        return this.f38190j == 0 && this.f38181a.m20400c();
    }

    /* renamed from: d */
    public final void m20243d() {
        if (!this.f38193m) {
            m20255a(0);
            m20258a();
            return;
        }
        int i = this.f38190j;
        if (i == 1) {
            this.f38201u.start();
        } else if (i == 2) {
            this.f38202v.start();
        } else if (i == 3) {
            this.f38192l = true;
        } else if (i == 4) {
            return;
        }
        m20258a();
    }

    /* renamed from: e */
    public final void m20240e() {
        this.f38200t.start();
    }

    /* renamed from: f */
    public final void m20238f() {
        this.f38199s.start();
    }

    /* renamed from: g */
    public final void m20237g() {
        m20255a(2);
    }
}
