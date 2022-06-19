package p193e.p194a.p1349x.p1353i0;

import android.animation.ValueAnimator;
import com.truecaller.ghost_call.callergradient.GhostCallerGradientView;
import java.util.Objects;
import s1.z.c.l;
/* renamed from: e.a.x.i0.f */
/* loaded from: classes9-dex2jar.jar:e/a/x/i0/f.class */
public final class C21352f implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a */
    public final /* synthetic */ GhostCallerGradientView f59770a;

    public C21352f(GhostCallerGradientView ghostCallerGradientView) {
        this.f59770a = ghostCallerGradientView;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        GhostCallerGradientView ghostCallerGradientView = this.f59770a;
        l.d(valueAnimator, "animator");
        Object animatedValue = valueAnimator.getAnimatedValue();
        Objects.requireNonNull(animatedValue, "null cannot be cast to non-null type kotlin.Float");
        ghostCallerGradientView.setTranslationY(((Float) animatedValue).floatValue());
    }
}
