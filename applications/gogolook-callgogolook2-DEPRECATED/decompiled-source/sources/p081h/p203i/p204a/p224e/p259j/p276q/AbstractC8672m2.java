package p081h.p203i.p204a.p224e.p259j.p276q;

import p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8663l2;
import p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8672m2;
/* renamed from: h.i.a.e.j.q.m2 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/m2.class */
public abstract class AbstractC8672m2<MessageType extends AbstractC8663l2<MessageType, BuilderType>, BuilderType extends AbstractC8672m2<MessageType, BuilderType>> implements AbstractC8657k5 {
    /* JADX WARN: Multi-variable type inference failed */
    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8657k5
    /* renamed from: a */
    public final /* synthetic */ AbstractC8657k5 mo17393a(AbstractC8648j5 j5Var) {
        if (mo17416a().getClass().isInstance(j5Var)) {
            mo17392a((AbstractC8672m2<MessageType, BuilderType>) ((AbstractC8663l2) j5Var));
            return this;
        }
        throw new IllegalArgumentException("mergeFrom(MessageLite) can only merge messages of the same type.");
    }

    /* renamed from: a */
    public abstract BuilderType mo17392a(MessageType messagetype);
}
