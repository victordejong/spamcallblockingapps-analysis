package p081h.p119d.p120a.p145w.p146i;

import android.graphics.drawable.Drawable;
import android.graphics.drawable.TransitionDrawable;
import p081h.p119d.p120a.p145w.p146i.AbstractC6063c;
/* renamed from: h.d.a.w.i.b */
/* loaded from: classes-dex2jar.jar:h/d/a/w/i/b.class */
public class C6062b<T extends Drawable> implements AbstractC6063c<T> {

    /* renamed from: a */
    public final AbstractC6063c<T> f15112a;

    /* renamed from: b */
    public final int f15113b;

    public C6062b(AbstractC6063c<T> cVar, int i) {
        this.f15112a = cVar;
        this.f15113b = i;
    }

    /* renamed from: a */
    public boolean m23929a(T t, AbstractC6063c.AbstractC6064a aVar) {
        Drawable e = aVar.mo23916e();
        if (e != null) {
            TransitionDrawable transitionDrawable = new TransitionDrawable(new Drawable[]{e, t});
            transitionDrawable.setCrossFadeEnabled(true);
            transitionDrawable.startTransition(this.f15113b);
            aVar.mo23917c(transitionDrawable);
            return true;
        }
        this.f15112a.mo23924a(t, aVar);
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p081h.p119d.p120a.p145w.p146i.AbstractC6063c
    /* renamed from: a */
    public /* bridge */ /* synthetic */ boolean mo23924a(Object obj, AbstractC6063c.AbstractC6064a aVar) {
        return m23929a((C6062b<T>) ((Drawable) obj), aVar);
    }
}
