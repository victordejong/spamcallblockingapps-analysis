package com.callapp.contacts.widget.floatingwidget.p240ui.callapp;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.manager.inAppBilling.BillingManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.widget.floatingwidget.p240ui.ChatHead;
import com.callapp.contacts.widget.floatingwidget.p240ui.ChatHeadManager;
import com.facebook.rebound.C10414e;
import com.facebook.rebound.C10422k;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.skyfishjy.library.RippleBackground;
/* renamed from: com.callapp.contacts.widget.floatingwidget.ui.callapp.WelcomeTutorialWidget */
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget.class */
public class WelcomeTutorialWidget extends InActivityWidget {

    /* renamed from: J */
    private Drawable f29204J;

    /* renamed from: K */
    private RippleBackground[] f29205K;

    /* renamed from: L */
    private ValueAnimator f29206L;

    /* renamed from: v */
    private int f29210v = ((int) CallAppApplication.get().getResources().getDimension(2131166143)) * 2;

    /* renamed from: w */
    private int f29211w = ((int) CallAppApplication.get().getResources().getDimension(2131166144)) + this.f29210v;

    /* renamed from: x */
    private int f29212x = (int) CallAppApplication.get().getResources().getDimension(2131166144);

    /* renamed from: y */
    private int f29213y = (int) CallAppApplication.get().getResources().getDimension(2131165549);

    /* renamed from: z */
    private final int f29214z = 0;

    /* renamed from: A */
    private final float f29195A = 5.68f;

    /* renamed from: B */
    private final float f29196B = 30.75f;

    /* renamed from: C */
    private final float f29197C = 55.29f;

    /* renamed from: D */
    private final float f29198D = 78.07f;

    /* renamed from: E */
    private final float f29199E = 100.0f;

    /* renamed from: F */
    private final float[] f29200F = {BitmapDescriptorFactory.HUE_RED, 5.68f, 30.75f, 55.29f, 78.07f, 100.0f};

    /* renamed from: G */
    private final int[] f29201G = {-1, 2131363696, 2131363697, 2131363698, 2131363699, 2131363700};

    /* renamed from: s */
    Runnable f29207s = new Runnable() { // from class: com.callapp.contacts.widget.floatingwidget.ui.callapp.WelcomeTutorialWidget.1
        @Override // java.lang.Runnable
        public void run() {
            if (WelcomeTutorialWidget.this.f29205K != null) {
                for (int i = 1; i < WelcomeTutorialWidget.this.f29205K.length; i++) {
                    if (WelcomeTutorialWidget.this.f29205K != null && WelcomeTutorialWidget.this.f29205K[i].f60707a) {
                        WelcomeTutorialWidget.this.f29205K[i].m5863b();
                        return;
                    }
                }
            }
        }
    };

    /* renamed from: H */
    private final Runnable f29202H = new Runnable() { // from class: com.callapp.contacts.widget.floatingwidget.ui.callapp.WelcomeTutorialWidget.2
        @Override // java.lang.Runnable
        public void run() {
            WelcomeTutorialWidget.this.m26446g();
        }
    };

    /* renamed from: I */
    private final Runnable f29203I = new Runnable() { // from class: com.callapp.contacts.widget.floatingwidget.ui.callapp.WelcomeTutorialWidget.3
        @Override // java.lang.Runnable
        public void run() {
            if (WelcomeTutorialWidget.this.isDragging()) {
                return;
            }
            WelcomeTutorialWidget.this.f29181p = Boolean.FALSE;
            WelcomeTutorialWidget.this.m26469c(true);
        }
    };

    /* renamed from: t */
    int f29208t = 1;

    /* renamed from: u */
    Handler f29209u = new Handler();

    public WelcomeTutorialWidget(ChatHeadManager chatHeadManager, C10422k c10422k, Context context, boolean z) {
        super(chatHeadManager, c10422k, context, z);
    }

    /* renamed from: a */
    private float m26465a(float f) {
        return this.f29200F[Math.round(f * 5.0f)];
    }

    /* renamed from: a */
    static /* synthetic */ boolean m26462a(WelcomeTutorialWidget welcomeTutorialWidget, float f) {
        if (!welcomeTutorialWidget.isTooltipRightShown() || f <= welcomeTutorialWidget.f29174i) {
            return welcomeTutorialWidget.isTooltipLeftShown() && f < ((float) (welcomeTutorialWidget.f29047b.getMaxWidth() - welcomeTutorialWidget.f29174i));
        }
        return true;
    }

    /* renamed from: b */
    static /* synthetic */ void m26457b(WelcomeTutorialWidget welcomeTutorialWidget, float f) {
        int i = welcomeTutorialWidget.f29208t;
        float[] fArr = welcomeTutorialWidget.f29200F;
        if (i >= fArr.length || f < fArr[i]) {
            return;
        }
        welcomeTutorialWidget.f29205K[i].m5866a();
        welcomeTutorialWidget.f29209u.postDelayed(welcomeTutorialWidget.f29207s, 700L);
        welcomeTutorialWidget.f29208t++;
    }

    /* renamed from: e */
    public void m26449e(boolean z) {
        final float m26465a = m26465a(((WelcomeTutorialWidgetManager) this.f29047b).getTutorialProgress());
        if (!z) {
            this.f29204J.setLevel(Math.round(m26465a) * 100);
            return;
        }
        ValueAnimator ofFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, m26465a);
        this.f29206L = ofFloat;
        ofFloat.setDuration(1000L);
        this.f29206L.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.callapp.contacts.widget.floatingwidget.ui.callapp.WelcomeTutorialWidget.10
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                try {
                    float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                    WelcomeTutorialWidget.this.f29204J.setLevel(Math.round(floatValue) * 100);
                    WelcomeTutorialWidget.m26457b(WelcomeTutorialWidget.this, floatValue);
                } catch (NullPointerException e) {
                    WelcomeTutorialWidget.this.f29206L.cancel();
                }
            }
        });
        this.f29206L.addListener(new AnimatorListenerAdapter() { // from class: com.callapp.contacts.widget.floatingwidget.ui.callapp.WelcomeTutorialWidget.11
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                if (Float.compare(((Float) ((ValueAnimator) animator).getAnimatedValue()).floatValue(), m26465a) == 0) {
                    WelcomeTutorialWidget.m26439m(WelcomeTutorialWidget.this);
                }
            }
        });
        m26448f();
        this.f29208t = 1;
        this.f29206L.start();
    }

    /* renamed from: f */
    private void m26448f() {
        View view = isTooltipLeftShown() ? this.f29171f : this.f29172g;
        RippleBackground[] rippleBackgroundArr = new RippleBackground[6];
        this.f29205K = rippleBackgroundArr;
        rippleBackgroundArr[0] = null;
        for (int i = 1; i < 6; i++) {
            this.f29205K[i] = (RippleBackground) view.findViewById(this.f29201G[i]);
        }
    }

    /* renamed from: g */
    public void m26446g() {
        final RippleBackground rippleBackground = (RippleBackground) findViewById(2131362992);
        if (rippleBackground != null) {
            rippleBackground.removeCallbacks(this.f29202H);
            rippleBackground.animate().alpha(BitmapDescriptorFactory.HUE_RED).setDuration(500L).setListener(new Animator.AnimatorListener() { // from class: com.callapp.contacts.widget.floatingwidget.ui.callapp.WelcomeTutorialWidget.12
                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationCancel(Animator animator) {
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    rippleBackground.m5863b();
                    rippleBackground.setVisibility(8);
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationRepeat(Animator animator) {
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                }
            }).start();
        }
    }

    /* JADX WARN: Type inference failed for: r0v13, types: [double] */
    /* JADX WARN: Type inference failed for: r0v4, types: [double] */
    private double getPositionOfIcon(int i) {
        char c;
        int i2;
        if (i == 0) {
            c = getHorizontalSpring().f34074d.f34085a + this.f29212x;
            i2 = this.f29174i;
        } else {
            c = getHorizontalSpring().f34074d.f34085a;
            i2 = this.f29174i;
        }
        return c + (i2 / 2.0d);
    }

    /* renamed from: m */
    static /* synthetic */ void m26439m(WelcomeTutorialWidget welcomeTutorialWidget) {
        RippleBackground rippleBackground = (RippleBackground) welcomeTutorialWidget.findViewById(2131362992);
        if (rippleBackground != null) {
            rippleBackground.setAlpha(0.55f);
            rippleBackground.setVisibility(0);
            rippleBackground.m5866a();
            rippleBackground.postDelayed(welcomeTutorialWidget.f29202H, 1400L);
        }
    }

    @Override // com.callapp.contacts.widget.floatingwidget.p240ui.callapp.InActivityWidget, com.callapp.contacts.widget.floatingwidget.p240ui.ChatHead
    /* renamed from: a */
    public final void mo26466a() {
        if (this.f29176k.isRunning()) {
            this.f29176k.cancel();
        }
        m26446g();
        super.mo26466a();
    }

    @Override // com.callapp.contacts.widget.floatingwidget.p240ui.callapp.InActivityWidget
    /* renamed from: a */
    public final void mo26464a(final int i) {
        View view = i == 0 ? this.f29171f : this.f29172g;
        this.f29176k = ValueAnimator.ofInt(this.f29210v, this.f29211w);
        this.f29176k.setDuration(500L);
        final View view2 = view;
        this.f29176k.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.callapp.contacts.widget.floatingwidget.ui.callapp.WelcomeTutorialWidget.4
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                try {
                    int intValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                    int i2 = WelcomeTutorialWidget.this.f29178m;
                    WelcomeTutorialWidget.this.f29178m = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                    ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) view2.getLayoutParams();
                    layoutParams.width = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                    view2.setLayoutParams(layoutParams);
                    if (i != 0) {
                        return;
                    }
                    ((ConstraintLayout.LayoutParams) WelcomeTutorialWidget.this.f29180o.getLayoutParams()).leftMargin = ((Integer) valueAnimator.getAnimatedValue()).intValue() - WelcomeTutorialWidget.this.f29210v;
                    WelcomeTutorialWidget.this.getHorizontalSpring().m22845a(WelcomeTutorialWidget.this.getHorizontalSpring().f34074d.f34085a - (intValue - i2), true);
                } catch (NullPointerException e) {
                }
            }
        });
        this.f29178m = this.f29210v;
        final View view3 = view;
        this.f29176k.addListener(new AnimatorListenerAdapter() { // from class: com.callapp.contacts.widget.floatingwidget.ui.callapp.WelcomeTutorialWidget.5
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                super.onAnimationCancel(animator);
                ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) view3.getLayoutParams();
                layoutParams.width = WelcomeTutorialWidget.this.f29211w;
                view3.setLayoutParams(layoutParams);
                if (i == 0) {
                    ((ConstraintLayout.LayoutParams) WelcomeTutorialWidget.this.f29180o.getLayoutParams()).leftMargin = WelcomeTutorialWidget.this.f29212x;
                    WelcomeTutorialWidget.this.getHorizontalSpring().m22845a(WelcomeTutorialWidget.this.getHorizontalSpring().f34074d.f34085a - (WelcomeTutorialWidget.this.f29211w - WelcomeTutorialWidget.this.f29178m), true);
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                WelcomeTutorialWidget.this.m26449e(true);
            }
        });
        this.f29176k.start();
    }

    @Override // com.callapp.contacts.widget.floatingwidget.p240ui.ChatHead, com.facebook.rebound.AbstractC10420i
    /* renamed from: a */
    public final void mo22809a(C10414e c10414e) {
        super.mo22809a(c10414e);
        boolean z = ((!isTooltipLeftShown() || getPositionOfIcon(0) >= (((double) this.f29047b.getMaxWidth()) / 2.0d) - ((double) this.f29213y)) && (isTooltipLeftShown() || isTooltipRightShown() || getPositionOfIcon(3) >= (((double) this.f29047b.getMaxWidth()) / 2.0d) - ((double) this.f29213y))) ? ((!isTooltipRightShown() || getPositionOfIcon(1) <= (((double) this.f29047b.getMaxWidth()) / 2.0d) + ((double) this.f29213y)) && (isTooltipLeftShown() || isTooltipRightShown() || getPositionOfIcon(3) <= (((double) this.f29047b.getMaxWidth()) / 2.0d) + ((double) this.f29213y))) ? true : true : false;
        if (this.f29180o == null || !this.f29175j || this.f29176k.isRunning() || z) {
            return;
        }
        int i = (int) getHorizontalSpring().f34074d.f34086b;
        if (isTooltipLeftShown()) {
            int i2 = (int) getHorizontalSpring().f34074d.f34085a;
            int width = this.f29171f.getWidth();
            int i3 = this.f29210v;
            mo26459b(0);
            if (isDragging()) {
                getHorizontalSpring().m22845a((i2 + width) - i3, true);
            }
            m26472a(false);
            getHorizontalSpring().m22837c(i);
        } else if (isTooltipRightShown()) {
            mo26459b(1);
            m26470b(false);
            getHorizontalSpring().m22837c(i);
        }
        if (!z) {
            this.f29180o.setScaleX(-1.0f);
        } else if (!z) {
        } else {
            this.f29180o.setScaleX(1.0f);
        }
    }

    @Override // com.callapp.contacts.widget.floatingwidget.p240ui.callapp.InActivityWidget, com.callapp.contacts.widget.floatingwidget.p240ui.ChatHead
    /* renamed from: a */
    public final void mo26461a(C10414e c10414e, C10414e c10414e2) {
        getHorizontalSpring().m22838c();
        getVerticalSpring().m22838c();
        if (isTooltipLeftShown()) {
            this.f29181p = Boolean.TRUE;
        }
        removeCallbacks(this.f29182q);
        removeCallbacks(this.f29203I);
        super.mo26461a(c10414e, c10414e2);
    }

    @Override // com.callapp.contacts.widget.floatingwidget.p240ui.callapp.InActivityWidget, com.callapp.contacts.widget.floatingwidget.p240ui.ChatHead
    /* renamed from: b */
    public final void mo26460b() {
        if (this.f29177l != null) {
            this.f29177l.cancel();
        }
        if (this.f29176k != null) {
            this.f29176k.cancel();
        }
        this.f29209u.removeCallbacks(this.f29202H);
        this.f29209u.removeCallbacks(this.f29207s);
        super.mo26460b();
    }

    @Override // com.callapp.contacts.widget.floatingwidget.p240ui.callapp.InActivityWidget
    /* renamed from: b */
    public final void mo26459b(int i) {
        ValueAnimator valueAnimator = this.f29206L;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            this.f29206L.cancel();
        }
        super.mo26459b(i);
    }

    @Override // com.callapp.contacts.widget.floatingwidget.p240ui.ChatHead, com.facebook.rebound.AbstractC10420i
    /* renamed from: b */
    public final void mo22808b(C10414e c10414e) {
        super.mo22808b(c10414e);
        if (!isDragging()) {
            if (this.f29177l != null) {
                this.f29177l.cancel();
            }
            if (this.f29176k != null) {
                this.f29176k.cancel();
            }
            removeCallbacks(this.f29182q);
            mo26452d(true);
            postDelayed(this.f29203I, 2000L);
        }
    }

    @Override // com.callapp.contacts.widget.floatingwidget.p240ui.callapp.InActivityWidget, com.callapp.contacts.widget.floatingwidget.p240ui.ChatHead
    /* renamed from: c */
    public final void mo26456c() {
        super.mo26456c();
        this.f29175j = false;
        this.f29183r.run();
    }

    @Override // com.callapp.contacts.widget.floatingwidget.p240ui.callapp.InActivityWidget
    /* renamed from: c */
    public final void mo26455c(final int i) {
        View view = i == 0 ? this.f29171f : this.f29172g;
        if (view == null) {
            return;
        }
        this.f29177l = ValueAnimator.ofInt(this.f29211w, 0);
        this.f29177l.setDuration(500L);
        final View view2 = view;
        this.f29177l.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.callapp.contacts.widget.floatingwidget.ui.callapp.WelcomeTutorialWidget.8
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) view2.getLayoutParams();
                layoutParams.width = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                view2.setLayoutParams(layoutParams);
                if (i == 0) {
                    view2.setX(WelcomeTutorialWidget.this.f29211w - ((Integer) valueAnimator.getAnimatedValue()).intValue());
                }
            }
        });
        this.f29177l.addListener(new Animator.AnimatorListener() { // from class: com.callapp.contacts.widget.floatingwidget.ui.callapp.WelcomeTutorialWidget.9
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                WelcomeTutorialWidget.this.mo26459b(i);
                if (i != 0 || WelcomeTutorialWidget.this.getHorizontalSpring() == null) {
                    return;
                }
                WelcomeTutorialWidget.this.getHorizontalSpring().m22845a(WelcomeTutorialWidget.this.f29047b.getMaxWidth() - WelcomeTutorialWidget.this.f29174i, true);
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }
        });
        this.f29177l.start();
    }

    @Override // com.callapp.contacts.widget.floatingwidget.p240ui.callapp.InActivityWidget
    /* renamed from: d */
    protected final void mo26452d(boolean z) {
        if (isTooltipLeftShown() || isTooltipRightShown()) {
            return;
        }
        if (getHorizontalSpring().f34074d.f34085a + (this.f29174i / 2.0d) < this.f29047b.getMaxWidth() / 2.0d) {
            m26472a(z);
            this.f29180o.setScaleX(-1.0f);
            return;
        }
        m26470b(z);
        this.f29180o.setScaleX(1.0f);
    }

    @Override // com.callapp.contacts.widget.floatingwidget.p240ui.callapp.InActivityWidget
    /* renamed from: e */
    protected final boolean mo26451e() {
        return true;
    }

    @Override // com.callapp.contacts.widget.floatingwidget.p240ui.callapp.InActivityWidget
    int getIconResId() {
        return BillingManager.isBillingAvailable() ? 2131231973 : 2131231495;
    }

    @Override // com.callapp.contacts.widget.floatingwidget.p240ui.callapp.InActivityWidget
    protected int getLayoutResource() {
        return 2131558861;
    }

    @Override // com.callapp.contacts.widget.floatingwidget.p240ui.ChatHead
    public void setChatHeadToDefaultPosition(boolean z) {
        getVerticalSpring().m22837c(100.0d);
        getHorizontalSpring().m22837c(100.0d);
        int intValue = Prefs.f26511fW.get().intValue();
        if (intValue != 0 && intValue != this.f29047b.getMaxWidth() - this.f29047b.getConfig().getHeadWidth()) {
            setIconOrientation(1);
            getHorizontalSpring().m22840b(this.f29047b.getMaxWidth() - this.f29047b.getConfig().getHeadWidth());
            getVerticalSpring().m22840b(this.f29047b.getMaxHeight() / 4);
            return;
        }
        if (intValue == 0) {
            setIconOrientation(-1);
        } else {
            setIconOrientation(1);
        }
        getHorizontalSpring().m22840b(intValue);
        getVerticalSpring().m22840b(Prefs.f26512fX.get().intValue());
    }

    @Override // com.callapp.contacts.widget.floatingwidget.p240ui.ChatHead
    public void setState(ChatHead.State state) {
        ChatHead.State state2 = getState();
        super.setState(state);
        if (state == ChatHead.State.FREE || (!isTooltipRightShown() && !isTooltipLeftShown())) {
            if (state2 == ChatHead.State.FREE || state != ChatHead.State.FREE) {
                return;
            }
            mo26452d(false);
        } else if (!isTooltipLeftShown()) {
            m26469c(false);
        } else {
            int width = this.f29171f.getWidth();
            m26469c(false);
            getHorizontalSpring().m22845a(getHorizontalSpring().f34074d.f34085a + width, true);
        }
    }

    @Override // com.callapp.contacts.widget.floatingwidget.p240ui.callapp.InActivityWidget
    protected void setupLeftTooltipLayout(boolean z) {
        ((ViewGroup.MarginLayoutParams) getLayoutParams()).width = -2;
        this.f29171f = LayoutInflater.from(getContext()).inflate(2131558860, this.f29179n).findViewById(2131364155);
        this.f29204J = ((ImageView) findViewById(2131363587)).getDrawable();
        if (z) {
            ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) this.f29171f.getLayoutParams();
            layoutParams.f2978d = 2131364004;
            layoutParams.width = this.f29210v;
            this.f29171f.setLayoutParams(layoutParams);
        } else {
            ConstraintLayout.LayoutParams layoutParams2 = (ConstraintLayout.LayoutParams) this.f29180o.getLayoutParams();
            layoutParams2.f2978d = 2131364004;
            layoutParams2.leftMargin = this.f29212x;
            this.f29180o.setLayoutParams(layoutParams2);
            getHorizontalSpring().m22845a(getHorizontalSpring().f34074d.f34085a - this.f29212x, true);
            m26449e(false);
        }
        this.f29180o.bringToFront();
        if (this.f29171f != null) {
            this.f29171f.setOnTouchListener(new View.OnTouchListener() { // from class: com.callapp.contacts.widget.floatingwidget.ui.callapp.WelcomeTutorialWidget.6
                @Override // android.view.View.OnTouchListener
                public boolean onTouch(View view, MotionEvent motionEvent) {
                    WelcomeTutorialWidget.this.f29047b.mo26413b((ChatHead) WelcomeTutorialWidget.this.f29047b.getChatHeads().get(0));
                    return true;
                }
            });
        }
    }

    @Override // com.callapp.contacts.widget.floatingwidget.p240ui.callapp.InActivityWidget
    protected void setupRightTooltipLayout(boolean z) {
        ((ViewGroup.MarginLayoutParams) getLayoutParams()).width = -2;
        this.f29172g = LayoutInflater.from(getContext()).inflate(2131558860, this.f29179n).findViewById(2131364155);
        this.f29204J = ((ImageView) findViewById(2131363587)).getDrawable();
        ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) this.f29172g.getLayoutParams();
        layoutParams.f2978d = 2131364004;
        layoutParams.leftMargin = this.f29174i - this.f29210v;
        if (z) {
            layoutParams.width = this.f29210v;
        } else {
            m26449e(false);
        }
        this.f29172g.setLayoutParams(layoutParams);
        this.f29180o.bringToFront();
        if (this.f29172g != null) {
            this.f29172g.setOnTouchListener(new View.OnTouchListener() { // from class: com.callapp.contacts.widget.floatingwidget.ui.callapp.WelcomeTutorialWidget.7
                @Override // android.view.View.OnTouchListener
                public boolean onTouch(View view, MotionEvent motionEvent) {
                    return WelcomeTutorialWidget.m26462a(WelcomeTutorialWidget.this, motionEvent.getX());
                }
            });
        }
    }
}
