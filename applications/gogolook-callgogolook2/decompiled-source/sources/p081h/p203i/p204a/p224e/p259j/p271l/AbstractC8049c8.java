package p081h.p203i.p204a.p224e.p259j.p271l;

import p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8049c8;
import p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8067d8;
/* renamed from: h.i.a.e.j.l.c8 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/c8.class */
public abstract class AbstractC8049c8<MessageType extends AbstractC8067d8<MessageType, BuilderType>, BuilderType extends AbstractC8049c8<MessageType, BuilderType>> implements AbstractC8451xa {
    /* renamed from: a */
    public abstract BuilderType mo18350a(MessageType messagetype);

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8451xa
    /* renamed from: a */
    public final /* synthetic */ AbstractC8451xa mo17996a(AbstractC8390ua uaVar) {
        if (mo18102b().getClass().isInstance(uaVar)) {
            mo18350a((AbstractC8049c8<MessageType, BuilderType>) ((AbstractC8067d8) uaVar));
            return this;
        }
        throw new IllegalArgumentException("mergeFrom(MessageLite) can only merge messages of the same type.");
    }
}
