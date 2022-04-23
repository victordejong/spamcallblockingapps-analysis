package com.callapp.contacts.widget;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/RetractableViewImpl.class */
public class RetractableViewImpl implements RetractableView {

    /* renamed from: a  reason: collision with root package name */
    private final ValueAnimator f16575a;

    /* renamed from: b  reason: collision with root package name */
    private final ValueAnimator f16576b;

    /* renamed from: c  reason: collision with root package name */
    private final View f16577c;

    /* renamed from: d  reason: collision with root package name */
    private Animator.AnimatorListener f16578d;
    private Animator.AnimatorListener e;
    private int f = -2;
    private int g = 0;
    private int h = 0;
    private boolean i = true;

    public RetractableViewImpl(View view) {
        this.f16577c = view;
        ValueAnimator a2 = a(view);
        this.f16575a = a2;
        a2.setInterpolator(new AccelerateInterpolator(1.5f));
        a2.addListener(new Animator.AnimatorListener() { // from class: com.callapp.contacts.widget.RetractableViewImpl.1
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                if (RetractableViewImpl.this.f16578d != null) {
                    RetractableViewImpl.this.f16578d.onAnimationCancel(null);
                }
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (RetractableViewImpl.this.f16578d != null) {
                    RetractableViewImpl.this.f16578d.onAnimationEnd(null);
                }
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
                if (RetractableViewImpl.this.f16578d != null) {
                    RetractableViewImpl.this.f16578d.onAnimationRepeat(null);
                }
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                if (RetractableViewImpl.this.f16578d != null) {
                    RetractableViewImpl.this.f16578d.onAnimationStart(null);
                }
            }
        });
        ValueAnimator a3 = a(view);
        this.f16576b = a3;
        a3.setInterpolator(new AccelerateInterpolator(1.5f));
        a3.addListener(new Animator.AnimatorListener() { // from class: com.callapp.contacts.widget.RetractableViewImpl.2
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                if (RetractableViewImpl.this.e != null) {
                    RetractableViewImpl.this.e.onAnimationCancel(null);
                }
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (RetractableViewImpl.this.e != null) {
                    RetractableViewImpl.this.e.onAnimationEnd(null);
                }
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
                if (RetractableViewImpl.this.e != null) {
                    RetractableViewImpl.this.e.onAnimationRepeat(null);
                }
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                if (RetractableViewImpl.this.e != null) {
                    RetractableViewImpl.this.e.onAnimationStart(null);
                }
            }
        });
    }

    private static ValueAnimator a(final View view) {
        ValueAnimator ofInt = ValueAnimator.ofInt(0, 0);
        ofInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.callapp.contacts.widget.RetractableViewImpl.3
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                RetractableViewImpl.b(view, ((Integer) valueAnimator.getAnimatedValue()).intValue());
            }
        });
        ofInt.setDuration(250L);
        return ofInt;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(View view, int i) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        layoutParams.height = i;
        view.setLayoutParams(layoutParams);
    }

    @Override // com.callapp.contacts.widget.RetractableView
    public final void a() {
        a(false);
    }

    public final void a(int i, int i2) {
        if (this.f == -2 && this.i && i != i2) {
            this.i = false;
            this.g = i;
        }
    }

    public final void a(boolean z) {
        synchronized (this) {
            this.f16576b.cancel();
            if (z) {
                Animator.AnimatorListener animatorListener = this.f16578d;
                if (animatorListener != null) {
                    animatorListener.onAnimationStart(null);
                    this.f16578d.onAnimationEnd(null);
                }
                b(this.f16577c, getExpandMaxHeight());
                return;
            }
            this.f16575a.setIntValues(this.f16577c.getHeight(), getExpandMaxHeight());
            this.f16575a.start();
        }
    }

    @Override // com.callapp.contacts.widget.RetractableView
    public final void b() {
        b(false);
    }

    public final void b(boolean z) {
        synchronized (this) {
            this.f16575a.cancel();
            int height = this.f16577c.getHeight();
            if (!z) {
                int i = this.h;
                if (height != i) {
                    this.f16576b.setIntValues(height, i);
                    this.f16576b.start();
                    return;
                }
            }
            Animator.AnimatorListener animatorListener = this.e;
            if (animatorListener != null) {
                animatorListener.onAnimationStart(null);
                this.e.onAnimationEnd(null);
            }
            b(this.f16577c, this.h);
        }
    }

    @Override // com.callapp.contacts.widget.RetractableView
    public final void c() {
        b(true);
    }

    public int getExpandMaxHeight() {
        int i = this.f;
        return i != -2 ? i : this.g;
    }

    @Override // com.callapp.contacts.widget.RetractableView
    public boolean isCollapsed() {
        return this.f16577c.getHeight() == this.h || this.f16576b.isRunning();
    }

    public void setCollapseListener(Animator.AnimatorListener animatorListener) {
        this.e = animatorListener;
    }

    public void setCollapseMinHeight(int i) {
        this.h = i;
    }

    public void setExpandListener(Animator.AnimatorListener animatorListener) {
        this.f16578d = animatorListener;
    }

    @Override // com.callapp.contacts.widget.RetractableView
    public void setExpandMaxHeight(int i) {
        this.f = i;
        this.f16577c.requestLayout();
    }
}
