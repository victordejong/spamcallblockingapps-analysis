package p193e.p194a.p1349x.p1353i0;

import android.animation.ValueAnimator;
import com.truecaller.ghost_call.callergradient.GhostCallerGradientView;
import java.util.Objects;
import s1.z.c.l;
/* renamed from: e.a.x.i0.e */
/* loaded from: classes9-dex2jar.jar:e/a/x/i0/e.class */
public final class C21351e implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a */
    public final /* synthetic */ GhostCallerGradientView f59769a;

    public C21351e(GhostCallerGradientView ghostCallerGradientView) {
        this.f59769a = ghostCallerGradientView;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        GhostCallerGradientView ghostCallerGradientView = this.f59769a;
        l.d(valueAnimator, "animator");
        Object animatedValue = valueAnimator.getAnimatedValue();
        Objects.requireNonNull(animatedValue, "null cannot be cast to non-null type kotlin.Float");
        ghostCallerGradientView.setHeightRatio(((Float) animatedValue).floatValue());
    }
}
