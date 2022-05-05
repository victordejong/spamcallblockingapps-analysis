package p081h.p203i.p204a.p224e.p259j.p269j;

import p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7943w;
import p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7950x;
/* renamed from: h.i.a.e.j.j.x */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/j/x.class */
public abstract class AbstractC7950x<MessageType extends AbstractC7943w<MessageType, BuilderType>, BuilderType extends AbstractC7950x<MessageType, BuilderType>> implements AbstractC7932u2 {
    /* JADX WARN: Multi-variable type inference failed */
    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7932u2
    /* renamed from: a */
    public final /* synthetic */ AbstractC7932u2 mo18841a(AbstractC7925t2 t2Var) {
        if (mo18856a().getClass().isInstance(t2Var)) {
            mo18840a((AbstractC7950x<MessageType, BuilderType>) ((AbstractC7943w) t2Var));
            return this;
        }
        throw new IllegalArgumentException("mergeFrom(MessageLite) can only merge messages of the same type.");
    }

    /* renamed from: a */
    public abstract BuilderType mo18840a(MessageType messagetype);
}
