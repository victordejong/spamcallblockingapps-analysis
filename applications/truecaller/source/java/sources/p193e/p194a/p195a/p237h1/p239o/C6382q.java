package p193e.p194a.p195a.p237h1.p239o;

import android.animation.ValueAnimator;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.a.h1.o.q */
/* loaded from: classes11-dex2jar.jar:e/a/a/h1/o/q.class */
public final class C6382q implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a */
    public final /* synthetic */ C6374n f21267a;

    /* renamed from: b */
    public final /* synthetic */ float f21268b;

    /* renamed from: c */
    public final /* synthetic */ float f21269c;

    /* renamed from: d */
    public final /* synthetic */ float f21270d;

    /* renamed from: e */
    public final /* synthetic */ float f21271e;

    public C6382q(C6374n c6374n, float f, float f2, float f3, float f4) {
        this.f21267a = c6374n;
        this.f21268b = f;
        this.f21269c = f2;
        this.f21270d = f3;
        this.f21271e = f4;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        l.d(valueAnimator, "animator");
        Object animatedValue = valueAnimator.getAnimatedValue();
        Objects.requireNonNull(animatedValue, "null cannot be cast to non-null type kotlin.Float");
        float floatValue = ((Float) animatedValue).floatValue();
        float f = this.f21268b;
        float m8646a = C22128a.m8646a(this.f21269c, f, floatValue, f);
        float f2 = this.f21270d;
        C6374n.m31367n(this.f21267a, m8646a, C22128a.m8646a(this.f21271e, f2, floatValue, f2), false, 4);
    }
}
