package com.callapp.contacts.widget;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/RetractableViewImpl.class */
public class RetractableViewImpl implements RetractableView {

    /* renamed from: a */
    private final ValueAnimator f28858a;

    /* renamed from: b */
    private final ValueAnimator f28859b;

    /* renamed from: c */
    private final View f28860c;

    /* renamed from: d */
    private Animator.AnimatorListener f28861d;

    /* renamed from: e */
    private Animator.AnimatorListener f28862e;

    /* renamed from: f */
    private int f28863f = -2;

    /* renamed from: g */
    private int f28864g = 0;

    /* renamed from: h */
    private int f28865h = 0;

    /* renamed from: i */
    private boolean f28866i = true;

    public RetractableViewImpl(View view) {
        this.f28860c = view;
        ValueAnimator m26659a = m26659a(view);
        this.f28858a = m26659a;
        m26659a.setInterpolator(new AccelerateInterpolator(1.5f));
        m26659a.addListener(new Animator.AnimatorListener() { // from class: com.callapp.contacts.widget.RetractableViewImpl.1
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                if (RetractableViewImpl.this.f28861d != null) {
                    RetractableViewImpl.this.f28861d.onAnimationCancel(null);
                }
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (RetractableViewImpl.this.f28861d != null) {
                    RetractableViewImpl.this.f28861d.onAnimationEnd(null);
                }
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
                if (RetractableViewImpl.this.f28861d != null) {
                    RetractableViewImpl.this.f28861d.onAnimationRepeat(null);
                }
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                if (RetractableViewImpl.this.f28861d != null) {
                    RetractableViewImpl.this.f28861d.onAnimationStart(null);
                }
            }
        });
        ValueAnimator m26659a2 = m26659a(view);
        this.f28859b = m26659a2;
        m26659a2.setInterpolator(new AccelerateInterpolator(1.5f));
        m26659a2.addListener(new Animator.AnimatorListener() { // from class: com.callapp.contacts.widget.RetractableViewImpl.2
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                if (RetractableViewImpl.this.f28862e != null) {
                    RetractableViewImpl.this.f28862e.onAnimationCancel(null);
                }
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (RetractableViewImpl.this.f28862e != null) {
                    RetractableViewImpl.this.f28862e.onAnimationEnd(null);
                }
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
                if (RetractableViewImpl.this.f28862e != null) {
                    RetractableViewImpl.this.f28862e.onAnimationRepeat(null);
                }
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                if (RetractableViewImpl.this.f28862e != null) {
                    RetractableViewImpl.this.f28862e.onAnimationStart(null);
                }
            }
        });
    }

    /* renamed from: a */
    private static ValueAnimator m26659a(final View view) {
        ValueAnimator ofInt = ValueAnimator.ofInt(0, 0);
        ofInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.callapp.contacts.widget.RetractableViewImpl.3
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                RetractableViewImpl.m26654b(view, ((Integer) valueAnimator.getAnimatedValue()).intValue());
            }
        });
        ofInt.setDuration(250L);
        return ofInt;
    }

    /* renamed from: b */
    public static void m26654b(View view, int i) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        layoutParams.height = i;
        view.setLayoutParams(layoutParams);
    }

    @Override // com.callapp.contacts.widget.RetractableView
    /* renamed from: a */
    public final void mo26661a() {
        m26656a(false);
    }

    /* renamed from: a */
    public final void m26660a(int i, int i2) {
        if (this.f28863f != -2 || !this.f28866i || i == i2) {
            return;
        }
        this.f28866i = false;
        this.f28864g = i;
    }

    /* renamed from: a */
    public final void m26656a(boolean z) {
        synchronized (this) {
            this.f28859b.cancel();
            if (!z) {
                this.f28858a.setIntValues(this.f28860c.getHeight(), getExpandMaxHeight());
                this.f28858a.start();
                return;
            }
            Animator.AnimatorListener animatorListener = this.f28861d;
            if (animatorListener != null) {
                animatorListener.onAnimationStart(null);
                this.f28861d.onAnimationEnd(null);
            }
            m26654b(this.f28860c, getExpandMaxHeight());
        }
    }

    @Override // com.callapp.contacts.widget.RetractableView
    /* renamed from: b */
    public final void mo26655b() {
        m26652b(false);
    }

    /* renamed from: b */
    public final void m26652b(boolean z) {
        synchronized (this) {
            this.f28858a.cancel();
            int height = this.f28860c.getHeight();
            if (!z) {
                int i = this.f28865h;
                if (height != i) {
                    this.f28859b.setIntValues(height, i);
                    this.f28859b.start();
                    return;
                }
            }
            Animator.AnimatorListener animatorListener = this.f28862e;
            if (animatorListener != null) {
                animatorListener.onAnimationStart(null);
                this.f28862e.onAnimationEnd(null);
            }
            m26654b(this.f28860c, this.f28865h);
        }
    }

    @Override // com.callapp.contacts.widget.RetractableView
    /* renamed from: c */
    public final void mo26651c() {
        m26652b(true);
    }

    public int getExpandMaxHeight() {
        int i = this.f28863f;
        return i != -2 ? i : this.f28864g;
    }

    @Override // com.callapp.contacts.widget.RetractableView
    public boolean isCollapsed() {
        return this.f28860c.getHeight() == this.f28865h || this.f28859b.isRunning();
    }

    public void setCollapseListener(Animator.AnimatorListener animatorListener) {
        this.f28862e = animatorListener;
    }

    public void setCollapseMinHeight(int i) {
        this.f28865h = i;
    }

    public void setExpandListener(Animator.AnimatorListener animatorListener) {
        this.f28861d = animatorListener;
    }

    @Override // com.callapp.contacts.widget.RetractableView
    public void setExpandMaxHeight(int i) {
        this.f28863f = i;
        this.f28860c.requestLayout();
    }
}
