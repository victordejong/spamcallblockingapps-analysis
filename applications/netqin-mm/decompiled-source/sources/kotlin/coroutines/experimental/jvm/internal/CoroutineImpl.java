package kotlin.coroutines.experimental.jvm.internal;

import kotlin.TypeCastException;
import kotlin.jvm.internal.Lambda;
import p573f.C9946p;
import p573f.p579t.p580c.AbstractC9996a;
import p573f.p579t.p580c.AbstractC9999c;
import p573f.p579t.p580c.p581e.C10003a;
import p573f.p579t.p580c.p582f.p583a.C10004a;
import p573f.p590w.p592c.C10059q;
/* loaded from: classes2-dex2jar.jar:kotlin/coroutines/experimental/jvm/internal/CoroutineImpl.class */
public abstract class CoroutineImpl extends Lambda<Object> implements AbstractC9996a<Object> {
    public final AbstractC9999c _context;
    public AbstractC9996a<Object> _facade;
    public AbstractC9996a<Object> completion;
    public int label;

    public CoroutineImpl(int i, AbstractC9996a<Object> aVar) {
        super(i);
        this.completion = aVar;
        this.label = aVar != null ? 0 : -1;
        AbstractC9996a<Object> aVar2 = this.completion;
        this._context = aVar2 != null ? aVar2.getContext() : null;
    }

    public AbstractC9996a<C9946p> create(AbstractC9996a<?> aVar) {
        C10059q.m1637b(aVar, "completion");
        throw new IllegalStateException("create(Continuation) has not been overridden");
    }

    public AbstractC9996a<C9946p> create(Object obj, AbstractC9996a<?> aVar) {
        C10059q.m1637b(aVar, "completion");
        throw new IllegalStateException("create(Any?;Continuation) has not been overridden");
    }

    public abstract Object doResume(Object obj, Throwable th);

    @Override // p573f.p579t.p580c.AbstractC9996a
    public AbstractC9999c getContext() {
        AbstractC9999c cVar = this._context;
        if (cVar != null) {
            return cVar;
        }
        C10059q.m1646a();
        throw null;
    }

    public final AbstractC9996a<Object> getFacade() {
        if (this._facade == null) {
            AbstractC9999c cVar = this._context;
            if (cVar != null) {
                this._facade = C10004a.m1685a(cVar, this);
            } else {
                C10059q.m1646a();
                throw null;
            }
        }
        AbstractC9996a<Object> aVar = this._facade;
        if (aVar != null) {
            return aVar;
        }
        C10059q.m1646a();
        throw null;
    }

    @Override // p573f.p579t.p580c.AbstractC9996a
    public void resume(Object obj) {
        AbstractC9996a<Object> aVar = this.completion;
        if (aVar != null) {
            try {
                Object doResume = doResume(obj, null);
                if (doResume == C10003a.m1686a()) {
                    return;
                }
                if (aVar != null) {
                    aVar.resume(doResume);
                    return;
                }
                throw new TypeCastException("null cannot be cast to non-null type kotlin.coroutines.experimental.Continuation<kotlin.Any?>");
            } catch (Throwable th) {
                aVar.resumeWithException(th);
            }
        } else {
            C10059q.m1646a();
            throw null;
        }
    }

    @Override // p573f.p579t.p580c.AbstractC9996a
    public void resumeWithException(Throwable th) {
        C10059q.m1637b(th, "exception");
        AbstractC9996a<Object> aVar = this.completion;
        if (aVar != null) {
            try {
                Object doResume = doResume(null, th);
                if (doResume == C10003a.m1686a()) {
                    return;
                }
                if (aVar != null) {
                    aVar.resume(doResume);
                    return;
                }
                throw new TypeCastException("null cannot be cast to non-null type kotlin.coroutines.experimental.Continuation<kotlin.Any?>");
            } catch (Throwable th2) {
                aVar.resumeWithException(th2);
            }
        } else {
            C10059q.m1646a();
            throw null;
        }
    }
}
