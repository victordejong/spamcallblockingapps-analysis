package p626l.p634w.p636k.p637a;

import java.io.Serializable;
import p626l.C14979k;
import p626l.C14982l;
import p626l.C14989s;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.p635j.C15064c;
import p626l.p641z.p643d.C15149k;
/* renamed from: l.w.k.a.a */
/* loaded from: classes3-dex2jar.jar:l/w/k/a/a.class */
public abstract class AbstractC15065a implements AbstractC15044d<Object>, AbstractC15069e, Serializable {
    public final AbstractC15044d<Object> completion;

    public AbstractC15065a(AbstractC15044d<Object> dVar) {
        this.completion = dVar;
    }

    public AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
        C15149k.m377b(dVar, "completion");
        throw new UnsupportedOperationException("create(Any?;Continuation) has not been overridden");
    }

    public AbstractC15044d<C14989s> create(AbstractC15044d<?> dVar) {
        C15149k.m377b(dVar, "completion");
        throw new UnsupportedOperationException("create(Continuation) has not been overridden");
    }

    @Override // p626l.p634w.p636k.p637a.AbstractC15069e
    public AbstractC15069e getCallerFrame() {
        AbstractC15044d<Object> dVar = this.completion;
        AbstractC15044d<Object> dVar2 = dVar;
        if (!(dVar instanceof AbstractC15069e)) {
            dVar2 = null;
        }
        return (AbstractC15069e) dVar2;
    }

    public final AbstractC15044d<Object> getCompletion() {
        return this.completion;
    }

    @Override // p626l.p634w.p636k.p637a.AbstractC15069e
    public StackTraceElement getStackTraceElement() {
        return C15071g.m465c(this);
    }

    public abstract Object invokeSuspend(Object obj);

    public void releaseIntercepted() {
    }

    @Override // p626l.p634w.AbstractC15044d
    public final void resumeWith(Object obj) {
        AbstractC15065a aVar = this;
        while (true) {
            C15072h.m463b(aVar);
            AbstractC15044d<Object> dVar = aVar.completion;
            if (dVar != null) {
                try {
                    obj = aVar.invokeSuspend(obj);
                } catch (Throwable th) {
                    C14979k.C14980a aVar2 = C14979k.f33013a;
                    obj = C14982l.m652a(th);
                    C14979k.m657a(obj);
                }
                if (obj != C15064c.m478a()) {
                    C14979k.C14980a aVar3 = C14979k.f33013a;
                    C14979k.m657a(obj);
                    aVar.releaseIntercepted();
                    if (dVar instanceof AbstractC15065a) {
                        aVar = (AbstractC15065a) dVar;
                    } else {
                        dVar.resumeWith(obj);
                        return;
                    }
                } else {
                    return;
                }
            } else {
                C15149k.m378b();
                throw null;
            }
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Continuation at ");
        Object stackTraceElement = getStackTraceElement();
        if (stackTraceElement == null) {
            stackTraceElement = getClass().getName();
        }
        sb.append(stackTraceElement);
        return sb.toString();
    }
}
