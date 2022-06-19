package p193e.p194a.p195a.p200c;

import android.animation.Animator;
import android.animation.ArgbEvaluator;
import android.animation.ValueAnimator;
import androidx.recyclerview.widget.RecyclerView;
import java.util.Objects;
import p1727n3.p1807k.p1812c.C26493a;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import s1.z.c.l;
/* renamed from: e.a.a.c.z6 */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/z6.class */
public final class C5837z6 extends ValueAnimator implements ValueAnimator.AnimatorUpdateListener, Animator.AnimatorListener {

    /* renamed from: a */
    public ViewTreeObserver$OnPreDrawListenerC5184d f19572a;

    /* renamed from: b */
    public final int f19573b;

    /* renamed from: c */
    public final int f19574c;

    /* renamed from: d */
    public final ArgbEvaluator f19575d = new ArgbEvaluator();

    /* renamed from: e */
    public final RecyclerView f19576e;

    /* renamed from: f */
    public final long f19577f;

    /* renamed from: g */
    public final String f19578g;

    public C5837z6(RecyclerView recyclerView, long j, String str, long j2) {
        l.e(recyclerView, "recyclerView");
        this.f19576e = recyclerView;
        this.f19577f = j;
        this.f19578g = str;
        this.f19573b = C26493a.m1747l(C19291g.m13612L(recyclerView.getContext(), 2130970334), 26);
        this.f19574c = C19291g.m13612L(recyclerView.getContext(), 2130969987);
        setFloatValues(0.0f, 1.0f);
        setDuration(j2);
        addListener(this);
        addUpdateListener(this);
    }

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationCancel(Animator animator) {
    }

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        l.e(animator, "animation");
        ViewTreeObserver$OnPreDrawListenerC5184d viewTreeObserver$OnPreDrawListenerC5184d = this.f19572a;
        if (viewTreeObserver$OnPreDrawListenerC5184d != null) {
            viewTreeObserver$OnPreDrawListenerC5184d.m33610l5(0);
        }
        this.f19572a = null;
    }

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationRepeat(Animator animator) {
    }

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        ViewTreeObserver$OnPreDrawListenerC5184d viewTreeObserver$OnPreDrawListenerC5184d;
        ViewTreeObserver$OnPreDrawListenerC5184d viewTreeObserver$OnPreDrawListenerC5184d2;
        l.e(valueAnimator, "animation");
        RecyclerView.AbstractC0313c0 findViewHolderForItemId = this.f19576e.findViewHolderForItemId(this.f19577f);
        RecyclerView.AbstractC0313c0 abstractC0313c0 = findViewHolderForItemId;
        if (!(findViewHolderForItemId instanceof ViewTreeObserver$OnPreDrawListenerC5184d)) {
            abstractC0313c0 = null;
        }
        ViewTreeObserver$OnPreDrawListenerC5184d viewTreeObserver$OnPreDrawListenerC5184d3 = (ViewTreeObserver$OnPreDrawListenerC5184d) abstractC0313c0;
        Integer valueOf = getAnimatedFraction() < 0.975f ? Integer.valueOf(this.f19573b) : this.f19575d.evaluate((getAnimatedFraction() - 0.975f) / 0.024999976f, Integer.valueOf(this.f19573b), 0);
        if (!l.a(this.f19572a, viewTreeObserver$OnPreDrawListenerC5184d3)) {
            ViewTreeObserver$OnPreDrawListenerC5184d viewTreeObserver$OnPreDrawListenerC5184d4 = this.f19572a;
            if (viewTreeObserver$OnPreDrawListenerC5184d4 != null) {
                viewTreeObserver$OnPreDrawListenerC5184d4.m33610l5(0);
            }
            String str = this.f19578g;
            if (str != null && (viewTreeObserver$OnPreDrawListenerC5184d2 = this.f19572a) != null) {
                viewTreeObserver$OnPreDrawListenerC5184d2.m33587u5(0, str);
            }
            this.f19572a = viewTreeObserver$OnPreDrawListenerC5184d3;
        }
        if (viewTreeObserver$OnPreDrawListenerC5184d3 != null) {
            Objects.requireNonNull(valueOf, "null cannot be cast to non-null type kotlin.Int");
            viewTreeObserver$OnPreDrawListenerC5184d3.m33610l5(((Integer) valueOf).intValue());
        }
        String str2 = this.f19578g;
        if (str2 == null || (viewTreeObserver$OnPreDrawListenerC5184d = this.f19572a) == null) {
            return;
        }
        viewTreeObserver$OnPreDrawListenerC5184d.m33587u5(this.f19574c, str2);
    }
}
