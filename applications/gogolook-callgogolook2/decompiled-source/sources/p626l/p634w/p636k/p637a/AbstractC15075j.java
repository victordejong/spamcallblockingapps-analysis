package p626l.p634w.p636k.p637a;

import p626l.p634w.AbstractC15044d;
import p626l.p634w.AbstractC15049g;
import p626l.p634w.C15055h;
/* renamed from: l.w.k.a.j */
/* loaded from: classes3-dex2jar.jar:l/w/k/a/j.class */
public abstract class AbstractC15075j extends AbstractC15065a {
    public AbstractC15075j(AbstractC15044d<Object> dVar) {
        super(dVar);
        if (dVar != null) {
            if (!(dVar.getContext() == C15055h.f33080a)) {
                throw new IllegalArgumentException("Coroutines with restricted suspension must have EmptyCoroutineContext".toString());
            }
        }
    }

    @Override // p626l.p634w.AbstractC15044d
    public AbstractC15049g getContext() {
        return C15055h.f33080a;
    }
}
