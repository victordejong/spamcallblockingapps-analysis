package p081h.p119d.p120a.p145w.p146i;

import android.view.View;
import android.view.animation.Animation;
import p081h.p119d.p120a.p145w.p146i.AbstractC6063c;
/* renamed from: h.d.a.w.i.f */
/* loaded from: classes-dex2jar.jar:h/d/a/w/i/f.class */
public class C6068f<R> implements AbstractC6063c<R> {

    /* renamed from: a */
    public final AbstractC6069a f15116a;

    /* renamed from: h.d.a.w.i.f$a */
    /* loaded from: classes-dex2jar.jar:h/d/a/w/i/f$a.class */
    public interface AbstractC6069a {
        Animation build();
    }

    public C6068f(AbstractC6069a aVar) {
        this.f15116a = aVar;
    }

    @Override // p081h.p119d.p120a.p145w.p146i.AbstractC6063c
    /* renamed from: a */
    public boolean mo23924a(R r, AbstractC6063c.AbstractC6064a aVar) {
        View d = aVar.m23928d();
        if (d == null) {
            return false;
        }
        d.clearAnimation();
        d.startAnimation(this.f15116a.build());
        return false;
    }
}
