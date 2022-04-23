package kotlin.coroutines.experimental;

import kotlin.jvm.internal.Lambda;
import p573f.p579t.p580c.AbstractC9997b;
import p573f.p579t.p580c.AbstractC9999c;
import p573f.p579t.p580c.C10002d;
import p573f.p590w.p591b.AbstractC10035p;
import p573f.p590w.p592c.C10059q;
/* loaded from: classes2-dex2jar.jar:kotlin/coroutines/experimental/CoroutineContext$plus$1.class */
public final class CoroutineContext$plus$1 extends Lambda implements AbstractC10035p<AbstractC9999c, AbstractC9999c.AbstractC10000a, AbstractC9999c> {
    public static final CoroutineContext$plus$1 INSTANCE = new CoroutineContext$plus$1();

    public CoroutineContext$plus$1() {
        super(2);
    }

    public final AbstractC9999c invoke(AbstractC9999c cVar, AbstractC9999c.AbstractC10000a aVar) {
        C10059q.m1637b(cVar, "acc");
        C10059q.m1637b(aVar, "element");
        AbstractC9999c b = cVar.mo42b(aVar.getKey());
        AbstractC9999c cVar2 = aVar;
        if (b != C10002d.f37163b) {
            AbstractC9997b bVar = (AbstractC9997b) b.mo44a(AbstractC9997b.f37161a);
            if (bVar == null) {
                cVar2 = new CombinedContext(b, aVar);
            } else {
                AbstractC9999c b2 = b.mo42b(AbstractC9997b.f37161a);
                cVar2 = b2 == C10002d.f37163b ? new CombinedContext(aVar, bVar) : new CombinedContext(new CombinedContext(b2, aVar), bVar);
            }
        }
        return cVar2;
    }
}
