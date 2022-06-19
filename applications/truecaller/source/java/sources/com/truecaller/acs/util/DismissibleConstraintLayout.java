package com.truecaller.acs.util;

import android.animation.Animator;
import android.content.Context;
import android.os.Build;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewPropertyAnimator;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.razorpay.AnalyticsConstants;
import kotlin.Metadata;
import p1727n3.p1807k.p1821i.C26574e;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p773g.p785j.C14297n0;
import s1.g;
import s1.s;
import s1.z.b.a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0007\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\t\b��\u0018��2\u00020\u00012\u00020\u0002J\u0019\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\u0006\u0010\u0007J3\u0010\r\u001a\u00020\u00052\b\u0010\b\u001a\u0004\u0018\u00010\u00032\b\u0010\t\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\nH\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u0019\u0010\u0010\u001a\u00020\u00052\b\u0010\u000f\u001a\u0004\u0018\u00010\u0003H\u0017¢\u0006\u0004\b\u0010\u0010\u0007J3\u0010\u0013\u001a\u00020\u00052\b\u0010\b\u001a\u0004\u0018\u00010\u00032\b\u0010\t\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0011\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\nH\u0016¢\u0006\u0004\b\u0013\u0010\u000eJ\u0019\u0010\u0015\u001a\u00020\u00052\b\u0010\u0014\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\u0015\u0010\u0007J\u0019\u0010\u0016\u001a\u00020\u00052\b\u0010\u0014\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\u0016\u0010\u0007J\u0019\u0010\u0018\u001a\u00020\u00172\b\u0010\u0014\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u0019\u0010\u001a\u001a\u00020\u00172\b\u0010\u0014\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\u001a\u0010\u0019J\u000f\u0010\u001b\u001a\u00020\u0017H\u0002¢\u0006\u0004\b\u001b\u0010\u001cJ\u0017\u0010\u001d\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u0003H\u0002¢\u0006\u0004\b\u001d\u0010\u0007R\u001d\u0010#\u001a\u00020\u001e8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001f\u0010 \u001a\u0004\b!\u0010\"R\u001d\u0010'\u001a\u00020\n8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b$\u0010 \u001a\u0004\b%\u0010&R\u0016\u0010*\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010)R0\u00103\u001a\u0010\u0012\u0004\u0012\u00020\u0017\u0018\u00010+j\u0004\u0018\u0001`,8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b-\u0010.\u001a\u0004\b/\u00100\"\u0004\b1\u00102R\u0016\u00107\u001a\u0002048\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b5\u00106R\u0016\u0010;\u001a\u0002088\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b9\u0010:R\u0016\u0010=\u001a\u00020\u00058\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b<\u0010)R\u001d\u0010@\u001a\u00020\n8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b>\u0010 \u001a\u0004\b?\u0010&¨\u0006A"}, d2 = {"Lcom/truecaller/acs/util/DismissibleConstraintLayout;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "Landroid/view/GestureDetector$OnGestureListener;", "Landroid/view/MotionEvent;", "ev", "", "onInterceptTouchEvent", "(Landroid/view/MotionEvent;)Z", "e1", "e2", "", "velocityX", "velocityY", "onFling", "(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z", "event", "onTouchEvent", "distanceX", "distanceY", "onScroll", "e", "onDown", "onSingleTapUp", "Ls1/s;", "onLongPress", "(Landroid/view/MotionEvent;)V", "onShowPress", "f1", "()V", "g1", "Landroid/view/View;", "x", "Ls1/g;", "getViewToAnimate", "()Landroid/view/View;", "viewToAnimate", "w", "getMinScrollDistance", "()F", "minScrollDistance", "y", "Z", "isScrolling", "Lkotlin/Function0;", "Lcom/truecaller/acs/util/OnDismissListener;", "t", "Ls1/z/b/a;", "getOnDismissListener", "()Ls1/z/b/a;", "setOnDismissListener", "(Ls1/z/b/a;)V", "onDismissListener", "Ln3/k/i/e;", "u", "Ln3/k/i/e;", "gestureDetector", "", "z", "I", "lastPointerIndex", "A", "isSwipeEnabled", "v", "getMinVelocity", "minVelocity", "acs_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes4-dex2jar.jar:com/truecaller/acs/util/DismissibleConstraintLayout.class */
public final class DismissibleConstraintLayout extends ConstraintLayout implements GestureDetector.OnGestureListener {

    /* renamed from: A */
    public final boolean f9727A;

    /* renamed from: t */
    public a<s> f9728t;

    /* renamed from: u */
    public final C26574e f9729u;

    /* renamed from: x */
    public final g f9732x;

    /* renamed from: y */
    public boolean f9733y;

    /* renamed from: v */
    public final g f9730v = C25225a.m3978P1(new b2(1, this));

    /* renamed from: w */
    public final g f9731w = C25225a.m3978P1(new b2(0, this));

    /* renamed from: z */
    public int f9734z = -1;

    /* renamed from: com.truecaller.acs.util.DismissibleConstraintLayout$a */
    /* loaded from: classes4-dex2jar.jar:com/truecaller/acs/util/DismissibleConstraintLayout$a.class */
    public static final class C2801a implements Animator.AnimatorListener {
        public C2801a() {
            DismissibleConstraintLayout.this = r4;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            a<s> onDismissListener = DismissibleConstraintLayout.this.getOnDismissListener();
            if (onDismissListener != null) {
                s sVar = (s) onDismissListener.invoke();
            }
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DismissibleConstraintLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        l.e(context, AnalyticsConstants.CONTEXT);
        boolean z = false;
        this.f9729u = new C26574e(context, this);
        this.f9732x = C25225a.m3978P1(new C14297n0(this, context));
        this.f9727A = Build.VERSION.SDK_INT != 26 ? true : z;
    }

    private final float getMinScrollDistance() {
        return ((Number) this.f9731w.getValue()).floatValue();
    }

    private final float getMinVelocity() {
        return ((Number) this.f9730v.getValue()).floatValue();
    }

    private final View getViewToAnimate() {
        return (View) this.f9732x.getValue();
    }

    /* renamed from: f1 */
    public final void m35996f1() {
        ViewPropertyAnimator animate = getViewToAnimate().animate();
        View viewToAnimate = getViewToAnimate();
        l.d(viewToAnimate, "viewToAnimate");
        animate.translationY(viewToAnimate.getHeight()).setDuration(200L).setListener(new C2801a()).start();
        getViewToAnimate().animate().alpha(0.0f).setDuration(200L).start();
    }

    /* renamed from: g1 */
    public final boolean m35995g1(MotionEvent motionEvent) {
        if (!this.f9727A) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        int pointerId = motionEvent.getPointerId(motionEvent.getActionIndex());
        boolean z = true;
        if (actionMasked != 0 && actionMasked != 1 && actionMasked != 3 && this.f9734z != pointerId) {
            return false;
        }
        boolean onTouchEvent = ((C26574e.C26576b) this.f9729u.f74449a).f74450a.onTouchEvent(motionEvent);
        if (actionMasked == 0) {
            this.f9734z = motionEvent.getPointerId(motionEvent.getActionIndex());
        } else if (actionMasked == 1 || actionMasked == 3 || actionMasked == 6) {
            if (!onTouchEvent) {
                View viewToAnimate = getViewToAnimate();
                l.d(viewToAnimate, "viewToAnimate");
                if (viewToAnimate.getTranslationY() >= ((float) getHeight()) / 2.0f) {
                    m35996f1();
                } else {
                    getViewToAnimate().animate().translationY(0.0f).setDuration(200L).start();
                    getViewToAnimate().animate().alpha(1.0f).setDuration(200L).start();
                }
            }
            this.f9733y = false;
            this.f9734z = -1;
            return z;
        }
        z = onTouchEvent;
        return z;
    }

    public final a<s> getOnDismissListener() {
        return this.f9728t;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public boolean onDown(MotionEvent motionEvent) {
        return true;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        if (f2 < getMinVelocity()) {
            return false;
        }
        m35996f1();
        return true;
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (motionEvent == null) {
            return super.onInterceptTouchEvent(motionEvent);
        }
        m35995g1(motionEvent);
        return this.f9733y;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public void onLongPress(MotionEvent motionEvent) {
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        if (motionEvent == null || motionEvent2 == null) {
            return false;
        }
        float max = Math.max(motionEvent2.getRawY() - motionEvent.getRawY(), 0.0f);
        if (!this.f9733y && max < getMinScrollDistance()) {
            return false;
        }
        this.f9733y = true;
        View viewToAnimate = getViewToAnimate();
        viewToAnimate.setTranslationY(max);
        View viewToAnimate2 = getViewToAnimate();
        l.d(viewToAnimate2, "viewToAnimate");
        viewToAnimate.setAlpha(1.0f - (max / viewToAnimate2.getHeight()));
        return true;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public void onShowPress(MotionEvent motionEvent) {
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public boolean onSingleTapUp(MotionEvent motionEvent) {
        return performClick();
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return motionEvent == null ? super.onTouchEvent(motionEvent) : m35995g1(motionEvent);
    }

    public final void setOnDismissListener(a<s> aVar) {
        this.f9728t = aVar;
    }
}
