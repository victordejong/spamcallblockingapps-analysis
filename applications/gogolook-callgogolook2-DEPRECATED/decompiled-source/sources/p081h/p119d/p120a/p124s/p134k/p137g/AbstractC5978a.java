package p081h.p119d.p120a.p124s.p134k.p137g;

import android.graphics.drawable.Drawable;
import p081h.p119d.p120a.p124s.p126i.AbstractC5848l;
/* renamed from: h.d.a.s.k.g.a */
/* loaded from: classes-dex2jar.jar:h/d/a/s/k/g/a.class */
public abstract class AbstractC5978a<T extends Drawable> implements AbstractC5848l<T> {

    /* renamed from: a */
    public final T f14920a;

    public AbstractC5978a(T t) {
        if (t != null) {
            this.f14920a = t;
            return;
        }
        throw new NullPointerException("Drawable must not be null!");
    }

    @Override // p081h.p119d.p120a.p124s.p126i.AbstractC5848l
    public final T get() {
        return (T) this.f14920a.getConstantState().newDrawable();
    }
}
