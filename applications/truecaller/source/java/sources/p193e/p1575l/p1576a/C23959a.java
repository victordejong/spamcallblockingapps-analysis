package p193e.p1575l.p1576a;

import android.animation.ValueAnimator;
import p193e.p1575l.p1576a.C23960b;
/* renamed from: e.l.a.a */
/* loaded from: classes2-dex2jar.jar:e/l/a/a.class */
public class C23959a implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a */
    public final /* synthetic */ C23960b.AbstractC23963c f66345a;

    public C23959a(C23960b c23960b, C23960b.AbstractC23963c abstractC23963c) {
        this.f66345a = abstractC23963c;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.f66345a.mo5636a(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }
}
