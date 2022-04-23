package com.callapp.contacts.widget.floatingwidget.ui.callapp;

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
import com.callapp.contacts.widget.floatingwidget.ui.ChatHead;
import com.callapp.contacts.widget.floatingwidget.ui.ChatHeadManager;
import com.facebook.rebound.e;
import com.facebook.rebound.k;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.skyfishjy.library.RippleBackground;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget.class */
public class WelcomeTutorialWidget extends InActivityWidget {
    private Drawable J;
    private RippleBackground[] K;
    private ValueAnimator L;
    private int v = ((int) CallAppApplication.get().getResources().getDimension(2131166143)) * 2;
    private int w = ((int) CallAppApplication.get().getResources().getDimension(2131166144)) + this.v;
    private int x = (int) CallAppApplication.get().getResources().getDimension(2131166144);
    private int y = (int) CallAppApplication.get().getResources().getDimension(2131165549);
    private final int z = 0;
    private final float A = 5.68f;
    private final float B = 30.75f;
    private final float C = 55.29f;
    private final float D = 78.07f;
    private final float E = 100.0f;
    private final float[] F = {BitmapDescriptorFactory.HUE_RED, 5.68f, 30.75f, 55.29f, 78.07f, 100.0f};
    private final int[] G = {-1, 2131363696, 2131363697, 2131363698, 2131363699, 2131363700};
    Runnable s = new Runnable() { // from class: com.callapp.contacts.widget.floatingwidget.ui.callapp.WelcomeTutorialWidget.1
        @Override // java.lang.Runnable
        public void run() {
            if (WelcomeTutorialWidget.this.K != null) {
                for (int i = 1; i < WelcomeTutorialWidget.this.K.length; i++) {
                    if (WelcomeTutorialWidget.this.K != null && WelcomeTutorialWidget.this.K[i].f34998a) {
                        WelcomeTutorialWidget.this.K[i].b();
                        return;
                    }
                }
            }
        }
    };
    private final Runnable H = new Runnable() { // from class: com.callapp.contacts.widget.floatingwidget.ui.callapp.WelcomeTutorialWidget.2
        @Override // java.lang.Runnable
        public void run() {
            WelcomeTutorialWidget.this.g();
        }
    };
    private final Runnable I = new Runnable() { // from class: com.callapp.contacts.widget.floatingwidget.ui.callapp.WelcomeTutorialWidget.3
        @Override // java.lang.Runnable
        public void run() {
            if (!WelcomeTutorialWidget.this.isDragging()) {
                WelcomeTutorialWidget.this.p = Boolean.FALSE;
                WelcomeTutorialWidget.this.c(true);
            }
        }
    };
    int t = 1;
    Handler u = new Handler();

    public WelcomeTutorialWidget(ChatHeadManager chatHeadManager, k kVar, Context context, boolean z) {
        super(chatHeadManager, kVar, context, z);
    }

    private float a(float f) {
        return this.F[Math.round(f * 5.0f)];
    }

    static /* synthetic */ boolean a(WelcomeTutorialWidget welcomeTutorialWidget, float f) {
        if (!welcomeTutorialWidget.isTooltipRightShown() || f <= welcomeTutorialWidget.i) {
            return welcomeTutorialWidget.isTooltipLeftShown() && f < ((float) (welcomeTutorialWidget.f16696b.getMaxWidth() - welcomeTutorialWidget.i));
        }
        return true;
    }

    static /* synthetic */ void b(WelcomeTutorialWidget welcomeTutorialWidget, float f) {
        int i = welcomeTutorialWidget.t;
        float[] fArr = welcomeTutorialWidget.F;
        if (i < fArr.length && f >= fArr[i]) {
            welcomeTutorialWidget.K[i].a();
            welcomeTutorialWidget.u.postDelayed(welcomeTutorialWidget.s, 700L);
            welcomeTutorialWidget.t++;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e(boolean z) {
        final float a2 = a(((WelcomeTutorialWidgetManager) this.f16696b).getTutorialProgress());
        if (z) {
            ValueAnimator ofFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, a2);
            this.L = ofFloat;
            ofFloat.setDuration(1000L);
            this.L.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.callapp.contacts.widget.floatingwidget.ui.callapp.WelcomeTutorialWidget.10
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    try {
                        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                        WelcomeTutorialWidget.this.J.setLevel(Math.round(floatValue) * 100);
                        WelcomeTutorialWidget.b(WelcomeTutorialWidget.this, floatValue);
                    } catch (NullPointerException e) {
                        WelcomeTutorialWidget.this.L.cancel();
                    }
                }
            });
            this.L.addListener(new AnimatorListenerAdapter() { // from class: com.callapp.contacts.widget.floatingwidget.ui.callapp.WelcomeTutorialWidget.11
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    super.onAnimationEnd(animator);
                    if (Float.compare(((Float) ((ValueAnimator) animator).getAnimatedValue()).floatValue(), a2) == 0) {
                        WelcomeTutorialWidget.m(WelcomeTutorialWidget.this);
                    }
                }
            });
            f();
            this.t = 1;
            this.L.start();
            return;
        }
        this.J.setLevel(Math.round(a2) * 100);
    }

    private void f() {
        View view = isTooltipLeftShown() ? this.f : this.g;
        RippleBackground[] rippleBackgroundArr = new RippleBackground[6];
        this.K = rippleBackgroundArr;
        rippleBackgroundArr[0] = null;
        for (int i = 1; i < 6; i++) {
            this.K[i] = (RippleBackground) view.findViewById(this.G[i]);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        final RippleBackground rippleBackground = (RippleBackground) findViewById(2131362992);
        if (rippleBackground != null) {
            rippleBackground.removeCallbacks(this.H);
            rippleBackground.animate().alpha(BitmapDescriptorFactory.HUE_RED).setDuration(500L).setListener(new Animator.AnimatorListener() { // from class: com.callapp.contacts.widget.floatingwidget.ui.callapp.WelcomeTutorialWidget.12
                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationCancel(Animator animator) {
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    rippleBackground.b();
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

    private double getPositionOfIcon(int i) {
        double d2;
        int i2;
        if (i == 0) {
            d2 = getHorizontalSpring().f20128d.f20129a + this.x;
            i2 = this.i;
        } else {
            d2 = getHorizontalSpring().f20128d.f20129a;
            i2 = this.i;
        }
        return d2 + (i2 / 2.0d);
    }

    static /* synthetic */ void m(WelcomeTutorialWidget welcomeTutorialWidget) {
        RippleBackground rippleBackground = (RippleBackground) welcomeTutorialWidget.findViewById(2131362992);
        if (rippleBackground != null) {
            rippleBackground.setAlpha(0.55f);
            rippleBackground.setVisibility(0);
            rippleBackground.a();
            rippleBackground.postDelayed(welcomeTutorialWidget.H, 1400L);
        }
    }

    @Override // com.callapp.contacts.widget.floatingwidget.ui.callapp.InActivityWidget, com.callapp.contacts.widget.floatingwidget.ui.ChatHead
    public final void a() {
        if (this.k.isRunning()) {
            this.k.cancel();
        }
        g();
        super.a();
    }

    @Override // com.callapp.contacts.widget.floatingwidget.ui.callapp.InActivityWidget
    public final void a(final int i) {
        final View view = i == 0 ? this.f : this.g;
        this.k = ValueAnimator.ofInt(this.v, this.w);
        this.k.setDuration(500L);
        this.k.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.callapp.contacts.widget.floatingwidget.ui.callapp.WelcomeTutorialWidget.4
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                try {
                    int intValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                    int i2 = WelcomeTutorialWidget.this.m;
                    WelcomeTutorialWidget.this.m = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                    ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) view.getLayoutParams();
                    layoutParams.width = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                    view.setLayoutParams(layoutParams);
                    if (i == 0) {
                        ((ConstraintLayout.LayoutParams) WelcomeTutorialWidget.this.o.getLayoutParams()).leftMargin = ((Integer) valueAnimator.getAnimatedValue()).intValue() - WelcomeTutorialWidget.this.v;
                        WelcomeTutorialWidget.this.getHorizontalSpring().a(WelcomeTutorialWidget.this.getHorizontalSpring().f20128d.f20129a - (intValue - i2), true);
                    }
                } catch (NullPointerException e) {
                }
            }
        });
        this.m = this.v;
        this.k.addListener(new AnimatorListenerAdapter() { // from class: com.callapp.contacts.widget.floatingwidget.ui.callapp.WelcomeTutorialWidget.5
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                super.onAnimationCancel(animator);
                ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) view.getLayoutParams();
                layoutParams.width = WelcomeTutorialWidget.this.w;
                view.setLayoutParams(layoutParams);
                if (i == 0) {
                    ((ConstraintLayout.LayoutParams) WelcomeTutorialWidget.this.o.getLayoutParams()).leftMargin = WelcomeTutorialWidget.this.x;
                    WelcomeTutorialWidget.this.getHorizontalSpring().a(WelcomeTutorialWidget.this.getHorizontalSpring().f20128d.f20129a - (WelcomeTutorialWidget.this.w - WelcomeTutorialWidget.this.m), true);
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                WelcomeTutorialWidget.this.e(true);
            }
        });
        this.k.start();
    }

    @Override // com.callapp.contacts.widget.floatingwidget.ui.ChatHead, com.facebook.rebound.i
    public final void a(e eVar) {
        super.a(eVar);
        char c2 = ((!isTooltipLeftShown() || getPositionOfIcon(0) >= (((double) this.f16696b.getMaxWidth()) / 2.0d) - ((double) this.y)) && (isTooltipLeftShown() || isTooltipRightShown() || getPositionOfIcon(3) >= (((double) this.f16696b.getMaxWidth()) / 2.0d) - ((double) this.y))) ? ((!isTooltipRightShown() || getPositionOfIcon(1) <= (((double) this.f16696b.getMaxWidth()) / 2.0d) + ((double) this.y)) && (isTooltipLeftShown() || isTooltipRightShown() || getPositionOfIcon(3) <= (((double) this.f16696b.getMaxWidth()) / 2.0d) + ((double) this.y))) ? (char) 3 : (char) 1 : (char) 0;
        if (this.o != null && this.j && !this.k.isRunning() && c2 != 3) {
            int i = (int) getHorizontalSpring().f20128d.f20130b;
            if (isTooltipLeftShown()) {
                int i2 = (int) getHorizontalSpring().f20128d.f20129a;
                int width = this.f.getWidth();
                int i3 = this.v;
                b(0);
                if (isDragging()) {
                    getHorizontalSpring().a((i2 + width) - i3, true);
                }
                a(false);
                getHorizontalSpring().c(i);
            } else if (isTooltipRightShown()) {
                b(1);
                b(false);
                getHorizontalSpring().c(i);
            }
            if (c2 == 0) {
                this.o.setScaleX(-1.0f);
            } else if (c2 == 1) {
                this.o.setScaleX(1.0f);
            }
        }
    }

    @Override // com.callapp.contacts.widget.floatingwidget.ui.callapp.InActivityWidget, com.callapp.contacts.widget.floatingwidget.ui.ChatHead
    public final void a(e eVar, e eVar2) {
        getHorizontalSpring().c();
        getVerticalSpring().c();
        if (isTooltipLeftShown()) {
            this.p = Boolean.TRUE;
        }
        removeCallbacks(this.q);
        removeCallbacks(this.I);
        super.a(eVar, eVar2);
    }

    @Override // com.callapp.contacts.widget.floatingwidget.ui.callapp.InActivityWidget, com.callapp.contacts.widget.floatingwidget.ui.ChatHead
    public final void b() {
        if (this.l != null) {
            this.l.cancel();
        }
        if (this.k != null) {
            this.k.cancel();
        }
        this.u.removeCallbacks(this.H);
        this.u.removeCallbacks(this.s);
        super.b();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.callapp.contacts.widget.floatingwidget.ui.callapp.InActivityWidget
    public final void b(int i) {
        ValueAnimator valueAnimator = this.L;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            this.L.cancel();
        }
        super.b(i);
    }

    @Override // com.callapp.contacts.widget.floatingwidget.ui.ChatHead, com.facebook.rebound.i
    public final void b(e eVar) {
        super.b(eVar);
        if (!isDragging()) {
            if (this.l != null) {
                this.l.cancel();
            }
            if (this.k != null) {
                this.k.cancel();
            }
            removeCallbacks(this.q);
            d(true);
            postDelayed(this.I, 2000L);
        }
    }

    @Override // com.callapp.contacts.widget.floatingwidget.ui.callapp.InActivityWidget, com.callapp.contacts.widget.floatingwidget.ui.ChatHead
    public final void c() {
        super.c();
        this.j = false;
        this.r.run();
    }

    @Override // com.callapp.contacts.widget.floatingwidget.ui.callapp.InActivityWidget
    public final void c(final int i) {
        final View view = i == 0 ? this.f : this.g;
        if (view != null) {
            this.l = ValueAnimator.ofInt(this.w, 0);
            this.l.setDuration(500L);
            this.l.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.callapp.contacts.widget.floatingwidget.ui.callapp.WelcomeTutorialWidget.8
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) view.getLayoutParams();
                    layoutParams.width = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                    view.setLayoutParams(layoutParams);
                    if (i == 0) {
                        view.setX(WelcomeTutorialWidget.this.w - ((Integer) valueAnimator.getAnimatedValue()).intValue());
                    }
                }
            });
            this.l.addListener(new Animator.AnimatorListener() { // from class: com.callapp.contacts.widget.floatingwidget.ui.callapp.WelcomeTutorialWidget.9
                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationCancel(Animator animator) {
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    WelcomeTutorialWidget.this.b(i);
                    if (i == 0 && WelcomeTutorialWidget.this.getHorizontalSpring() != null) {
                        WelcomeTutorialWidget.this.getHorizontalSpring().a(WelcomeTutorialWidget.this.f16696b.getMaxWidth() - WelcomeTutorialWidget.this.i, true);
                    }
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationRepeat(Animator animator) {
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                }
            });
            this.l.start();
        }
    }

    @Override // com.callapp.contacts.widget.floatingwidget.ui.callapp.InActivityWidget
    protected final void d(boolean z) {
        if (!isTooltipLeftShown() && !isTooltipRightShown()) {
            if (getHorizontalSpring().f20128d.f20129a + (this.i / 2.0d) < this.f16696b.getMaxWidth() / 2.0d) {
                a(z);
                this.o.setScaleX(-1.0f);
                return;
            }
            b(z);
            this.o.setScaleX(1.0f);
        }
    }

    @Override // com.callapp.contacts.widget.floatingwidget.ui.callapp.InActivityWidget
    protected final boolean e() {
        return true;
    }

    @Override // com.callapp.contacts.widget.floatingwidget.ui.callapp.InActivityWidget
    int getIconResId() {
        return BillingManager.isBillingAvailable() ? 2131231973 : 2131231495;
    }

    @Override // com.callapp.contacts.widget.floatingwidget.ui.callapp.InActivityWidget
    protected int getLayoutResource() {
        return 2131558861;
    }

    @Override // com.callapp.contacts.widget.floatingwidget.ui.ChatHead
    public void setChatHeadToDefaultPosition(boolean z) {
        getVerticalSpring().c(100.0d);
        getHorizontalSpring().c(100.0d);
        int intValue = Prefs.fW.get().intValue();
        if (intValue == 0 || intValue == this.f16696b.getMaxWidth() - this.f16696b.getConfig().getHeadWidth()) {
            if (intValue == 0) {
                setIconOrientation(-1);
            } else {
                setIconOrientation(1);
            }
            getHorizontalSpring().b(intValue);
            getVerticalSpring().b(Prefs.fX.get().intValue());
            return;
        }
        setIconOrientation(1);
        getHorizontalSpring().b(this.f16696b.getMaxWidth() - this.f16696b.getConfig().getHeadWidth());
        getVerticalSpring().b(this.f16696b.getMaxHeight() / 4);
    }

    @Override // com.callapp.contacts.widget.floatingwidget.ui.ChatHead
    public void setState(ChatHead.State state) {
        ChatHead.State state2 = getState();
        super.setState(state);
        if (state == ChatHead.State.FREE || (!isTooltipRightShown() && !isTooltipLeftShown())) {
            if (state2 != ChatHead.State.FREE && state == ChatHead.State.FREE) {
                d(false);
            }
        } else if (isTooltipLeftShown()) {
            int width = this.f.getWidth();
            c(false);
            getHorizontalSpring().a(getHorizontalSpring().f20128d.f20129a + width, true);
        } else {
            c(false);
        }
    }

    @Override // com.callapp.contacts.widget.floatingwidget.ui.callapp.InActivityWidget
    protected void setupLeftTooltipLayout(boolean z) {
        ((ViewGroup.MarginLayoutParams) getLayoutParams()).width = -2;
        this.f = LayoutInflater.from(getContext()).inflate(2131558860, this.n).findViewById(2131364155);
        this.J = ((ImageView) findViewById(2131363587)).getDrawable();
        if (z) {
            ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) this.f.getLayoutParams();
            layoutParams.f1592d = 2131364004;
            layoutParams.width = this.v;
            this.f.setLayoutParams(layoutParams);
        } else {
            ConstraintLayout.LayoutParams layoutParams2 = (ConstraintLayout.LayoutParams) this.o.getLayoutParams();
            layoutParams2.f1592d = 2131364004;
            layoutParams2.leftMargin = this.x;
            this.o.setLayoutParams(layoutParams2);
            getHorizontalSpring().a(getHorizontalSpring().f20128d.f20129a - this.x, true);
            e(false);
        }
        this.o.bringToFront();
        if (this.f != null) {
            this.f.setOnTouchListener(new View.OnTouchListener() { // from class: com.callapp.contacts.widget.floatingwidget.ui.callapp.WelcomeTutorialWidget.6
                @Override // android.view.View.OnTouchListener
                public boolean onTouch(View view, MotionEvent motionEvent) {
                    WelcomeTutorialWidget.this.f16696b.b((ChatHead) WelcomeTutorialWidget.this.f16696b.getChatHeads().get(0));
                    return true;
                }
            });
        }
    }

    @Override // com.callapp.contacts.widget.floatingwidget.ui.callapp.InActivityWidget
    protected void setupRightTooltipLayout(boolean z) {
        ((ViewGroup.MarginLayoutParams) getLayoutParams()).width = -2;
        this.g = LayoutInflater.from(getContext()).inflate(2131558860, this.n).findViewById(2131364155);
        this.J = ((ImageView) findViewById(2131363587)).getDrawable();
        ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) this.g.getLayoutParams();
        layoutParams.f1592d = 2131364004;
        layoutParams.leftMargin = this.i - this.v;
        if (z) {
            layoutParams.width = this.v;
        } else {
            e(false);
        }
        this.g.setLayoutParams(layoutParams);
        this.o.bringToFront();
        if (this.g != null) {
            this.g.setOnTouchListener(new View.OnTouchListener() { // from class: com.callapp.contacts.widget.floatingwidget.ui.callapp.WelcomeTutorialWidget.7
                @Override // android.view.View.OnTouchListener
                public boolean onTouch(View view, MotionEvent motionEvent) {
                    return WelcomeTutorialWidget.a(WelcomeTutorialWidget.this, motionEvent.getX());
                }
            });
        }
    }
}
