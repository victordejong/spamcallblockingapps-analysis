package p193e.p194a.p1268u;

import android.animation.ValueAnimator;
import android.content.res.ColorStateList;
import android.view.View;
import com.truecaller.yearincalling.model.StatsUiModel;
import java.util.Objects;
import s1.z.c.l;
/* renamed from: e.a.u.j */
/* loaded from: classes16-dex2jar.jar:e/a/u/j.class */
public final class C20568j implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a */
    public final /* synthetic */ g f57660a;

    public C20568j(g gVar, StatsUiModel statsUiModel) {
        this.f57660a = gVar;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        g gVar = this.f57660a;
        int i = g.k;
        View RA = gVar.RA();
        l.d(RA, "fabShare");
        l.d(valueAnimator, "animator");
        Object animatedValue = valueAnimator.getAnimatedValue();
        Objects.requireNonNull(animatedValue, "null cannot be cast to non-null type kotlin.Int");
        RA.setBackgroundTintList(ColorStateList.valueOf(((Integer) animatedValue).intValue()));
    }
}
