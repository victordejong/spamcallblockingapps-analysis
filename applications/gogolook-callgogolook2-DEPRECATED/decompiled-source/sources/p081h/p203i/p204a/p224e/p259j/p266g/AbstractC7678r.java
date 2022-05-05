package p081h.p203i.p204a.p224e.p259j.p266g;

import p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7671q;
import p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7678r;
/* renamed from: h.i.a.e.j.g.r */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/g/r.class */
public abstract class AbstractC7678r<MessageType extends AbstractC7671q<MessageType, BuilderType>, BuilderType extends AbstractC7678r<MessageType, BuilderType>> implements AbstractC7634l2 {
    /* JADX WARN: Multi-variable type inference failed */
    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7634l2
    /* renamed from: a */
    public final /* synthetic */ AbstractC7634l2 mo19817a(AbstractC7627k2 k2Var) {
        if (mo19972c().getClass().isInstance(k2Var)) {
            mo19816a((AbstractC7678r<MessageType, BuilderType>) ((AbstractC7671q) k2Var));
            return this;
        }
        throw new IllegalArgumentException("mergeFrom(MessageLite) can only merge messages of the same type.");
    }

    /* renamed from: a */
    public abstract BuilderType mo19816a(MessageType messagetype);
}
