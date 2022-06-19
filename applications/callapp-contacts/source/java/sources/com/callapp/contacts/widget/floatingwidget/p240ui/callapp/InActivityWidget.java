package com.callapp.contacts.widget.floatingwidget.p240ui.callapp;

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
import com.callapp.contacts.widget.floatingwidget.p240ui.ChatHead;
import com.callapp.contacts.widget.floatingwidget.p240ui.ChatHeadManager;
import com.callapp.contacts.widget.floatingwidget.p240ui.ChatHeadViewAdapter;
import com.facebook.rebound.C10414e;
import com.facebook.rebound.C10422k;
/* renamed from: com.callapp.contacts.widget.floatingwidget.ui.callapp.InActivityWidget */
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget.class */
public abstract class InActivityWidget extends ChatHead {

    /* renamed from: f */
    protected View f29171f;

    /* renamed from: g */
    protected View f29172g;

    /* renamed from: k */
    public ValueAnimator f29176k;

    /* renamed from: l */
    public ValueAnimator f29177l;

    /* renamed from: m */
    protected int f29178m;

    /* renamed from: n */
    protected ConstraintLayout f29179n;

    /* renamed from: o */
    protected View f29180o;

    /* renamed from: r */
    final Runnable f29183r;

    /* renamed from: h */
    protected int f29173h = (int) CallAppApplication.get().getResources().getDimension(2131166077);

    /* renamed from: s */
    private final int f29184s = (int) CallAppApplication.get().getResources().getDimension(2131166075);

    /* renamed from: t */
    private int f29185t = (int) CallAppApplication.get().getResources().getDimension(2131166076);

    /* renamed from: i */
    public final int f29174i = (int) CallAppApplication.get().getResources().getDimension(2131166073);

    /* renamed from: j */
    protected boolean f29175j = false;

    /* renamed from: p */
    protected Boolean f29181p = Boolean.FALSE;

    /* renamed from: q */
    final Runnable f29182q = new Runnable() { // from class: com.callapp.contacts.widget.floatingwidget.ui.callapp._$$Lambda$InActivityWidget$ewG2XBiDXtTDsAGa06n3kalaErk
        @Override // java.lang.Runnable
        public final void run() {
            InActivityWidget.this.m26467g();
        }
    };

    public InActivityWidget(ChatHeadManager chatHeadManager, C10422k c10422k, Context context, boolean z) {
        super(chatHeadManager, c10422k, context, z);
        Runnable runnable = new Runnable() { // from class: com.callapp.contacts.widget.floatingwidget.ui.callapp._$$Lambda$InActivityWidget$qqSbko1seH2w8ZanN4q53Ij90TI
            @Override // java.lang.Runnable
            public final void run() {
                InActivityWidget.this.m26468f();
            }
        };
        this.f29183r = runnable;
        m26529d();
        chatHeadManager.setViewAdapter(new ChatHeadViewAdapter() { // from class: com.callapp.contacts.widget.floatingwidget.ui.callapp.InActivityWidget.1
            @Override // com.callapp.contacts.widget.floatingwidget.p240ui.ChatHeadViewAdapter
            public View getChatHeadView(Object obj) {
                View inflate = LayoutInflater.from(InActivityWidget.this.getContext()).inflate(InActivityWidget.this.getLayoutResource(), (ViewGroup) null);
                InActivityWidget.this.f29179n = (ConstraintLayout) inflate.findViewById(2131364004);
                InActivityWidget inActivityWidget = InActivityWidget.this;
                inActivityWidget.f29180o = inActivityWidget.f29179n.findViewById(2131364005);
                (InActivityWidget.this.f29180o instanceof ImageView ? (ImageView) InActivityWidget.this.f29180o : (ImageView) InActivityWidget.this.f29179n.findViewById(2131364006)).setImageResource(InActivityWidget.this.getIconResId());
                return inflate;
            }
        });
        if (mo26451e()) {
            postDelayed(runnable, getAnimationDelay());
        }
    }

    /* renamed from: a */
    private void m26475a(int i, boolean z) {
        if (z) {
            mo26455c(i);
        } else {
            mo26459b(i);
        }
    }

    /* renamed from: f */
    public /* synthetic */ void m26468f() {
        if (this.f29175j) {
            return;
        }
        this.f29181p = Boolean.TRUE;
        if (!this.f29047b.mo26435j() && getHorizontalSpring().f34074d.f34085a != this.f29047b.getMaxWidth() - this.f29174i) {
            getHorizontalSpring().m22845a(this.f29047b.getMaxWidth() - this.f29174i, true);
        }
        mo26452d(true);
        this.f29175j = false;
        postDelayed(this.f29182q, 5500L);
    }

    /* renamed from: g */
    public /* synthetic */ void m26467g() {
        if (!this.f29175j) {
            this.f29181p = Boolean.FALSE;
            m26469c(true);
        }
    }

    @Override // com.callapp.contacts.widget.floatingwidget.p240ui.ChatHead
    /* renamed from: a */
    public void mo26466a() {
        if (getState() == ChatHead.State.FREE && isTooltipLeftShown()) {
            getHorizontalSpring().m22845a(getHorizontalSpring().f34074d.f34085a + this.f29171f.getWidth(), true);
        }
        m26469c(false);
        this.f29181p = Boolean.FALSE;
    }

    /* renamed from: a */
    protected void mo26464a(final int i) {
        View view = i == 0 ? this.f29171f : this.f29172g;
        ValueAnimator ofInt = ValueAnimator.ofInt(0, this.f29184s);
        this.f29176k = ofInt;
        ofInt.setDuration(500L);
        final View view2 = view;
        this.f29176k.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.callapp.contacts.widget.floatingwidget.ui.callapp.InActivityWidget.2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                try {
                    int intValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                    int i2 = InActivityWidget.this.f29178m;
                    InActivityWidget.this.f29178m = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                    LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) view2.findViewById(2131364165).getLayoutParams();
                    layoutParams.width = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                    view2.findViewById(2131364165).setLayoutParams(layoutParams);
                    if (i != 0) {
                        return;
                    }
                    ((ConstraintLayout.LayoutParams) InActivityWidget.this.f29180o.getLayoutParams()).leftMargin = (InActivityWidget.this.f29185t - InActivityWidget.this.f29184s) + ((Integer) valueAnimator.getAnimatedValue()).intValue();
                    InActivityWidget.this.getHorizontalSpring().m22845a(InActivityWidget.this.getHorizontalSpring().f34074d.f34085a - (intValue - i2), true);
                } catch (NullPointerException e) {
                }
            }
        });
        this.f29178m = 0;
        this.f29176k.start();
    }

    @Override // com.callapp.contacts.widget.floatingwidget.p240ui.ChatHead
    /* renamed from: a */
    public void mo26461a(C10414e c10414e, C10414e c10414e2) {
        ValueAnimator valueAnimator = this.f29177l;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            this.f29177l.cancel();
            mo26459b(0);
        }
        if (!this.f29181p.booleanValue() || !isTooltipLeftShown()) {
            super.mo26461a(c10414e, c10414e2);
            mo26452d(true);
        } else {
            this.f29048c = (((float) c10414e.f34074d.f34085a) + this.f29171f.getWidth()) - this.f29173h;
            this.f29049d = (float) c10414e2.f34074d.f34085a;
        }
        this.f29175j = true;
    }

    @Override // com.callapp.contacts.widget.floatingwidget.p240ui.ChatHead
    /* renamed from: a */
    public final void mo26473a(C10414e c10414e, C10414e c10414e2, float f, float f2) {
        if (!isTooltipLeftShown()) {
            super.mo26473a(c10414e, c10414e2, f, f2);
            return;
        }
        c10414e.m22845a(((this.f29048c + f) - this.f29171f.getWidth()) + this.f29173h, true);
        c10414e2.m22845a(this.f29049d + f2, true);
    }

    /* renamed from: a */
    public final void m26472a(boolean z) {
        if (isTooltipRightShown() || isTooltipLeftShown()) {
            return;
        }
        ((ViewGroup.MarginLayoutParams) getLayoutParams()).width = -2;
        setupRightTooltipLayout(z);
        if (!z) {
            return;
        }
        mo26464a(1);
    }

    @Override // com.callapp.contacts.widget.floatingwidget.p240ui.ChatHead
    /* renamed from: b */
    public void mo26460b() {
        super.mo26460b();
        if (isTooltipLeftShown()) {
            mo26459b(0);
        } else if (isTooltipRightShown()) {
            mo26459b(1);
        }
        removeCallbacks(this.f29183r);
        removeCallbacks(this.f29182q);
    }

    /* renamed from: b */
    public void mo26459b(int i) {
        ValueAnimator valueAnimator = this.f29176k;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            this.f29176k.cancel();
        }
        if (i == 1) {
            this.f29179n.removeView(this.f29172g);
            this.f29172g = null;
        } else {
            this.f29179n.removeView(this.f29171f);
            this.f29171f = null;
        }
        ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) this.f29180o.getLayoutParams();
        layoutParams.f2978d = 2131364004;
        layoutParams.leftMargin = 0;
        this.f29180o.setLayoutParams(layoutParams);
    }

    /* renamed from: b */
    public final void m26470b(boolean z) {
        if (isTooltipLeftShown() || isTooltipRightShown()) {
            return;
        }
        ((ViewGroup.MarginLayoutParams) getLayoutParams()).width = -2;
        setupLeftTooltipLayout(z);
        if (!z) {
            return;
        }
        mo26464a(0);
    }

    @Override // com.callapp.contacts.widget.floatingwidget.p240ui.ChatHead
    /* renamed from: c */
    public void mo26456c() {
        this.f29181p = Boolean.FALSE;
        if (isTooltipRightShown()) {
            m26475a(1, false);
        } else if (!isTooltipLeftShown()) {
        } else {
            m26475a(0, false);
            getHorizontalSpring().m22845a(this.f29047b.getMaxWidth() - this.f29174i, true);
        }
    }

    /* renamed from: c */
    protected void mo26455c(final int i) {
        View view = i == 0 ? this.f29171f : this.f29172g;
        if (view == null || view.findViewById(2131364165) == null) {
            return;
        }
        final View view2 = view;
        CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.widget.floatingwidget.ui.callapp.InActivityWidget.3
            @Override // java.lang.Runnable
            public void run() {
                InActivityWidget inActivityWidget = InActivityWidget.this;
                inActivityWidget.f29177l = ValueAnimator.ofInt(inActivityWidget.f29184s, 0);
                InActivityWidget.this.f29177l.setDuration(500L);
                InActivityWidget.this.f29177l.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.callapp.contacts.widget.floatingwidget.ui.callapp.InActivityWidget.3.1
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public void onAnimationUpdate(ValueAnimator valueAnimator) {
                        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) view2.findViewById(2131364165).getLayoutParams();
                        layoutParams.width = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                        view2.findViewById(2131364165).setLayoutParams(layoutParams);
                        if (i == 0) {
                            view2.setX(InActivityWidget.this.f29184s - ((Integer) valueAnimator.getAnimatedValue()).intValue());
                        }
                    }
                });
                InActivityWidget.this.f29177l.addListener(new Animator.AnimatorListener() { // from class: com.callapp.contacts.widget.floatingwidget.ui.callapp.InActivityWidget.3.2
                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationCancel(Animator animator) {
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        InActivityWidget.this.mo26459b(i);
                        if (i == 0) {
                            InActivityWidget.this.getHorizontalSpring().m22845a(InActivityWidget.this.getHorizontalSpring().f34074d.f34085a + InActivityWidget.this.f29185t, true);
                        }
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationRepeat(Animator animator) {
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationStart(Animator animator) {
                    }
                });
                InActivityWidget.this.f29177l.start();
            }
        });
    }

    /* renamed from: c */
    public final void m26469c(boolean z) {
        if (isTooltipLeftShown()) {
            m26475a(0, z);
        }
        if (isTooltipRightShown()) {
            m26475a(1, z);
        }
    }

    /* renamed from: d */
    protected void mo26452d(boolean z) {
        if (isTooltipLeftShown() || isTooltipRightShown()) {
            return;
        }
        if (getHorizontalSpring().f34074d.f34085a < this.f29047b.getMaxWidth() / 2) {
            m26472a(z);
        } else {
            m26470b(z);
        }
    }

    /* renamed from: e */
    protected abstract boolean mo26451e();

    protected long getAnimationDelay() {
        return 1000L;
    }

    public int getIconOrientation() {
        return (int) this.f29180o.getScaleX();
    }

    abstract int getIconResId();

    protected abstract int getLayoutResource();

    public boolean isTooltipLeftShown() {
        return this.f29171f != null;
    }

    public boolean isTooltipRightShown() {
        return this.f29172g != null;
    }

    public void setIconOrientation(int i) {
        this.f29180o.setScaleX(i);
    }

    protected void setupLeftTooltipLayout(boolean z) {
        View findViewById = LayoutInflater.from(getContext()).inflate(2131558851, this.f29179n).findViewById(2131364155);
        this.f29171f = findViewById;
        ((LinearLayout) findViewById).removeView(findViewById(2131363192));
        ((LinearLayout) this.f29171f).removeView(findViewById(2131363688));
        ((LinearLayout.LayoutParams) this.f29171f.findViewById(2131364165).getLayoutParams()).leftMargin = -5;
        ((TextView) this.f29171f.findViewById(2131364165)).setText(Activities.getString(2131887756));
        if (!z) {
            this.f29180o.bringToFront();
            ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) this.f29180o.getLayoutParams();
            layoutParams.f2978d = 2131364004;
            layoutParams.leftMargin = this.f29185t - this.f29173h;
            this.f29180o.setLayoutParams(layoutParams);
            getHorizontalSpring().m22845a(getHorizontalSpring().f34074d.f34085a - this.f29171f.getWidth(), true);
            return;
        }
        LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) this.f29171f.findViewById(2131364165).getLayoutParams();
        layoutParams2.width = 0;
        this.f29171f.findViewById(2131364165).setLayoutParams(layoutParams2);
        this.f29180o.bringToFront();
        ConstraintLayout.LayoutParams layoutParams3 = (ConstraintLayout.LayoutParams) this.f29180o.getLayoutParams();
        layoutParams3.f2978d = 2131364004;
        layoutParams3.leftMargin = this.f29185t - this.f29184s;
        this.f29180o.setLayoutParams(layoutParams3);
        getHorizontalSpring().m22845a(getHorizontalSpring().f34074d.f34085a - (this.f29185t - this.f29184s), true);
    }

    protected void setupRightTooltipLayout(boolean z) {
        View findViewById = LayoutInflater.from(getContext()).inflate(2131558851, this.f29179n).findViewById(2131364155);
        this.f29172g = findViewById;
        ((LinearLayout) findViewById).removeView(findViewById(2131363188));
        ((LinearLayout) this.f29172g).removeView(findViewById(2131363694));
        ((LinearLayout.LayoutParams) this.f29172g.findViewById(2131363688).getLayoutParams()).leftMargin = -5;
        ((TextView) this.f29172g.findViewById(2131364165)).setText(Activities.getString(2131887756));
        ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) this.f29172g.getLayoutParams();
        layoutParams.f2978d = 2131364004;
        layoutParams.leftMargin = this.f29174i - this.f29173h;
        this.f29172g.setLayoutParams(layoutParams);
        View findViewById2 = this.f29179n.findViewById(2131364005);
        ConstraintLayout.LayoutParams layoutParams2 = (ConstraintLayout.LayoutParams) findViewById2.getLayoutParams();
        layoutParams2.f2978d = 2131364004;
        layoutParams2.leftMargin = 0;
        findViewById2.setLayoutParams(layoutParams2);
        findViewById2.bringToFront();
        if (z) {
            LinearLayout.LayoutParams layoutParams3 = (LinearLayout.LayoutParams) this.f29172g.findViewById(2131364165).getLayoutParams();
            layoutParams3.width = 0;
            this.f29172g.findViewById(2131364165).setLayoutParams(layoutParams3);
        }
    }
}
