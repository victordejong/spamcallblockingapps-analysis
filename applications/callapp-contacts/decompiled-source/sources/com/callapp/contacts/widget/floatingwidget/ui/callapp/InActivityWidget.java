package com.callapp.contacts.widget.floatingwidget.ui.callapp;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.widget.floatingwidget.ui.ChatHead;
import com.callapp.contacts.widget.floatingwidget.ui.ChatHeadManager;
import com.callapp.contacts.widget.floatingwidget.ui.ChatHeadViewAdapter;
import com.facebook.rebound.e;
import com.facebook.rebound.k;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget.class */
public abstract class InActivityWidget extends ChatHead {
    protected View f;
    protected View g;
    public ValueAnimator k;
    public ValueAnimator l;
    protected int m;
    protected ConstraintLayout n;
    protected View o;
    final Runnable r;
    protected int h = (int) CallAppApplication.get().getResources().getDimension(2131166077);
    private final int s = (int) CallAppApplication.get().getResources().getDimension(2131166075);
    private int t = (int) CallAppApplication.get().getResources().getDimension(2131166076);
    public final int i = (int) CallAppApplication.get().getResources().getDimension(2131166073);
    protected boolean j = false;
    protected Boolean p = Boolean.FALSE;
    final Runnable q = new Runnable() { // from class: com.callapp.contacts.widget.floatingwidget.ui.callapp._$$Lambda$InActivityWidget$ewG2XBiDXtTDsAGa06n3kalaErk
        @Override // java.lang.Runnable
        public final void run() {
            InActivityWidget.this.g();
        }
    };

    public InActivityWidget(ChatHeadManager chatHeadManager, k kVar, Context context, boolean z) {
        super(chatHeadManager, kVar, context, z);
        Runnable ___lambda_inactivitywidget_qqsbko1seh2w8zann4q53ij90ti = new Runnable() { // from class: com.callapp.contacts.widget.floatingwidget.ui.callapp._$$Lambda$InActivityWidget$qqSbko1seH2w8ZanN4q53Ij90TI
            @Override // java.lang.Runnable
            public final void run() {
                InActivityWidget.this.f();
            }
        };
        this.r = ___lambda_inactivitywidget_qqsbko1seh2w8zann4q53ij90ti;
        d();
        chatHeadManager.setViewAdapter(new ChatHeadViewAdapter() { // from class: com.callapp.contacts.widget.floatingwidget.ui.callapp.InActivityWidget.1
            @Override // com.callapp.contacts.widget.floatingwidget.ui.ChatHeadViewAdapter
            public View getChatHeadView(Object obj) {
                View inflate = LayoutInflater.from(InActivityWidget.this.getContext()).inflate(InActivityWidget.this.getLayoutResource(), (ViewGroup) null);
                InActivityWidget.this.n = (ConstraintLayout) inflate.findViewById(2131364004);
                InActivityWidget inActivityWidget = InActivityWidget.this;
                inActivityWidget.o = inActivityWidget.n.findViewById(2131364005);
                (InActivityWidget.this.o instanceof ImageView ? (ImageView) InActivityWidget.this.o : (ImageView) InActivityWidget.this.n.findViewById(2131364006)).setImageResource(InActivityWidget.this.getIconResId());
                return inflate;
            }
        });
        if (e()) {
            postDelayed(___lambda_inactivitywidget_qqsbko1seh2w8zann4q53ij90ti, getAnimationDelay());
        }
    }

    private void a(int i, boolean z) {
        if (z) {
            c(i);
        } else {
            b(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void f() {
        if (!this.j) {
            this.p = Boolean.TRUE;
            if (!this.f16696b.j() && getHorizontalSpring().f20128d.f20129a != this.f16696b.getMaxWidth() - this.i) {
                getHorizontalSpring().a(this.f16696b.getMaxWidth() - this.i, true);
            }
            d(true);
            this.j = false;
            postDelayed(this.q, 5500L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void g() {
        if (!this.j) {
            this.p = Boolean.FALSE;
            c(true);
        }
    }

    @Override // com.callapp.contacts.widget.floatingwidget.ui.ChatHead
    public void a() {
        if (getState() == ChatHead.State.FREE && isTooltipLeftShown()) {
            getHorizontalSpring().a(getHorizontalSpring().f20128d.f20129a + this.f.getWidth(), true);
        }
        c(false);
        this.p = Boolean.FALSE;
    }

    protected void a(final int i) {
        final View view = i == 0 ? this.f : this.g;
        ValueAnimator ofInt = ValueAnimator.ofInt(0, this.s);
        this.k = ofInt;
        ofInt.setDuration(500L);
        this.k.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.callapp.contacts.widget.floatingwidget.ui.callapp.InActivityWidget.2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                try {
                    int intValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                    int i2 = InActivityWidget.this.m;
                    InActivityWidget.this.m = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                    LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) view.findViewById(2131364165).getLayoutParams();
                    layoutParams.width = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                    view.findViewById(2131364165).setLayoutParams(layoutParams);
                    if (i == 0) {
                        ((ConstraintLayout.LayoutParams) InActivityWidget.this.o.getLayoutParams()).leftMargin = (InActivityWidget.this.t - InActivityWidget.this.s) + ((Integer) valueAnimator.getAnimatedValue()).intValue();
                        InActivityWidget.this.getHorizontalSpring().a(InActivityWidget.this.getHorizontalSpring().f20128d.f20129a - (intValue - i2), true);
                    }
                } catch (NullPointerException e) {
                }
            }
        });
        this.m = 0;
        this.k.start();
    }

    @Override // com.callapp.contacts.widget.floatingwidget.ui.ChatHead
    public void a(e eVar, e eVar2) {
        ValueAnimator valueAnimator = this.l;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            this.l.cancel();
            b(0);
        }
        if (!this.p.booleanValue() || !isTooltipLeftShown()) {
            super.a(eVar, eVar2);
            d(true);
        } else {
            this.f16697c = (((float) eVar.f20128d.f20129a) + this.f.getWidth()) - this.h;
            this.f16698d = (float) eVar2.f20128d.f20129a;
        }
        this.j = true;
    }

    @Override // com.callapp.contacts.widget.floatingwidget.ui.ChatHead
    public final void a(e eVar, e eVar2, float f, float f2) {
        if (isTooltipLeftShown()) {
            eVar.a(((this.f16697c + f) - this.f.getWidth()) + this.h, true);
            eVar2.a(this.f16698d + f2, true);
            return;
        }
        super.a(eVar, eVar2, f, f2);
    }

    public final void a(boolean z) {
        if (!isTooltipRightShown() && !isTooltipLeftShown()) {
            ((ViewGroup.MarginLayoutParams) getLayoutParams()).width = -2;
            setupRightTooltipLayout(z);
            if (z) {
                a(1);
            }
        }
    }

    @Override // com.callapp.contacts.widget.floatingwidget.ui.ChatHead
    public void b() {
        super.b();
        if (isTooltipLeftShown()) {
            b(0);
        } else if (isTooltipRightShown()) {
            b(1);
        }
        removeCallbacks(this.r);
        removeCallbacks(this.q);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void b(int i) {
        ValueAnimator valueAnimator = this.k;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            this.k.cancel();
        }
        if (i == 1) {
            this.n.removeView(this.g);
            this.g = null;
        } else {
            this.n.removeView(this.f);
            this.f = null;
        }
        ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) this.o.getLayoutParams();
        layoutParams.f1592d = 2131364004;
        layoutParams.leftMargin = 0;
        this.o.setLayoutParams(layoutParams);
    }

    public final void b(boolean z) {
        if (!isTooltipLeftShown() && !isTooltipRightShown()) {
            ((ViewGroup.MarginLayoutParams) getLayoutParams()).width = -2;
            setupLeftTooltipLayout(z);
            if (z) {
                a(0);
            }
        }
    }

    @Override // com.callapp.contacts.widget.floatingwidget.ui.ChatHead
    public void c() {
        this.p = Boolean.FALSE;
        if (isTooltipRightShown()) {
            a(1, false);
        } else if (isTooltipLeftShown()) {
            a(0, false);
            getHorizontalSpring().a(this.f16696b.getMaxWidth() - this.i, true);
        }
    }

    protected void c(final int i) {
        final View view = i == 0 ? this.f : this.g;
        if (view != null && view.findViewById(2131364165) != null) {
            CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.widget.floatingwidget.ui.callapp.InActivityWidget.3
                @Override // java.lang.Runnable
                public void run() {
                    InActivityWidget inActivityWidget = InActivityWidget.this;
                    inActivityWidget.l = ValueAnimator.ofInt(inActivityWidget.s, 0);
                    InActivityWidget.this.l.setDuration(500L);
                    InActivityWidget.this.l.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.callapp.contacts.widget.floatingwidget.ui.callapp.InActivityWidget.3.1
                        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                        public void onAnimationUpdate(ValueAnimator valueAnimator) {
                            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) view.findViewById(2131364165).getLayoutParams();
                            layoutParams.width = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                            view.findViewById(2131364165).setLayoutParams(layoutParams);
                            if (i == 0) {
                                view.setX(InActivityWidget.this.s - ((Integer) valueAnimator.getAnimatedValue()).intValue());
                            }
                        }
                    });
                    InActivityWidget.this.l.addListener(new Animator.AnimatorListener() { // from class: com.callapp.contacts.widget.floatingwidget.ui.callapp.InActivityWidget.3.2
                        @Override // android.animation.Animator.AnimatorListener
                        public void onAnimationCancel(Animator animator) {
                        }

                        @Override // android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            InActivityWidget.this.b(i);
                            if (i == 0) {
                                InActivityWidget.this.getHorizontalSpring().a(InActivityWidget.this.getHorizontalSpring().f20128d.f20129a + InActivityWidget.this.t, true);
                            }
                        }

                        @Override // android.animation.Animator.AnimatorListener
                        public void onAnimationRepeat(Animator animator) {
                        }

                        @Override // android.animation.Animator.AnimatorListener
                        public void onAnimationStart(Animator animator) {
                        }
                    });
                    InActivityWidget.this.l.start();
                }
            });
        }
    }

    public final void c(boolean z) {
        if (isTooltipLeftShown()) {
            a(0, z);
        }
        if (isTooltipRightShown()) {
            a(1, z);
        }
    }

    protected void d(boolean z) {
        if (!isTooltipLeftShown() && !isTooltipRightShown()) {
            if (getHorizontalSpring().f20128d.f20129a < this.f16696b.getMaxWidth() / 2) {
                a(z);
            } else {
                b(z);
            }
        }
    }

    protected abstract boolean e();

    protected long getAnimationDelay() {
        return 1000L;
    }

    public int getIconOrientation() {
        return (int) this.o.getScaleX();
    }

    abstract int getIconResId();

    protected abstract int getLayoutResource();

    public boolean isTooltipLeftShown() {
        return this.f != null;
    }

    public boolean isTooltipRightShown() {
        return this.g != null;
    }

    public void setIconOrientation(int i) {
        this.o.setScaleX(i);
    }

    protected void setupLeftTooltipLayout(boolean z) {
        View findViewById = LayoutInflater.from(getContext()).inflate(2131558851, this.n).findViewById(2131364155);
        this.f = findViewById;
        ((LinearLayout) findViewById).removeView(findViewById(2131363192));
        ((LinearLayout) this.f).removeView(findViewById(2131363688));
        ((LinearLayout.LayoutParams) this.f.findViewById(2131364165).getLayoutParams()).leftMargin = -5;
        ((TextView) this.f.findViewById(2131364165)).setText(Activities.getString(2131887756));
        if (z) {
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f.findViewById(2131364165).getLayoutParams();
            layoutParams.width = 0;
            this.f.findViewById(2131364165).setLayoutParams(layoutParams);
            this.o.bringToFront();
            ConstraintLayout.LayoutParams layoutParams2 = (ConstraintLayout.LayoutParams) this.o.getLayoutParams();
            layoutParams2.f1592d = 2131364004;
            layoutParams2.leftMargin = this.t - this.s;
            this.o.setLayoutParams(layoutParams2);
            getHorizontalSpring().a(getHorizontalSpring().f20128d.f20129a - (this.t - this.s), true);
            return;
        }
        this.o.bringToFront();
        ConstraintLayout.LayoutParams layoutParams3 = (ConstraintLayout.LayoutParams) this.o.getLayoutParams();
        layoutParams3.f1592d = 2131364004;
        layoutParams3.leftMargin = this.t - this.h;
        this.o.setLayoutParams(layoutParams3);
        getHorizontalSpring().a(getHorizontalSpring().f20128d.f20129a - this.f.getWidth(), true);
    }

    protected void setupRightTooltipLayout(boolean z) {
        View findViewById = LayoutInflater.from(getContext()).inflate(2131558851, this.n).findViewById(2131364155);
        this.g = findViewById;
        ((LinearLayout) findViewById).removeView(findViewById(2131363188));
        ((LinearLayout) this.g).removeView(findViewById(2131363694));
        ((LinearLayout.LayoutParams) this.g.findViewById(2131363688).getLayoutParams()).leftMargin = -5;
        ((TextView) this.g.findViewById(2131364165)).setText(Activities.getString(2131887756));
        ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) this.g.getLayoutParams();
        layoutParams.f1592d = 2131364004;
        layoutParams.leftMargin = this.i - this.h;
        this.g.setLayoutParams(layoutParams);
        View findViewById2 = this.n.findViewById(2131364005);
        ConstraintLayout.LayoutParams layoutParams2 = (ConstraintLayout.LayoutParams) findViewById2.getLayoutParams();
        layoutParams2.f1592d = 2131364004;
        layoutParams2.leftMargin = 0;
        findViewById2.setLayoutParams(layoutParams2);
        findViewById2.bringToFront();
        if (z) {
            LinearLayout.LayoutParams layoutParams3 = (LinearLayout.LayoutParams) this.g.findViewById(2131364165).getLayoutParams();
            layoutParams3.width = 0;
            this.g.findViewById(2131364165).setLayoutParams(layoutParams3);
        }
    }
}
