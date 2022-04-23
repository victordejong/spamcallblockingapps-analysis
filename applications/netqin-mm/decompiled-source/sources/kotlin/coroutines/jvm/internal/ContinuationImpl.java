package kotlin.coroutines.jvm.internal;

import kotlin.coroutines.CoroutineContext;
import p573f.p579t.AbstractC9993a;
import p573f.p579t.AbstractC9994b;
import p573f.p579t.p585e.p586a.C10007a;
import p573f.p590w.p592c.C10059q;
/* loaded from: classes2-dex2jar.jar:kotlin/coroutines/jvm/internal/ContinuationImpl.class */
public abstract class ContinuationImpl extends BaseContinuationImpl {
    public final CoroutineContext _context;
    public transient AbstractC9993a<Object> intercepted;

    public ContinuationImpl(AbstractC9993a<Object> aVar) {
        this(aVar, aVar != null ? aVar.getContext() : null);
    }

    public ContinuationImpl(AbstractC9993a<Object> aVar, CoroutineContext coroutineContext) {
        super(aVar);
        this._context = coroutineContext;
    }

    @Override // p573f.p579t.AbstractC9993a
    public CoroutineContext getContext() {
        CoroutineContext coroutineContext = this._context;
        if (coroutineContext != null) {
            return coroutineContext;
        }
        C10059q.m1646a();
        throw null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0029, code lost:
        if (r4 != null) goto L_0x0031;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final p573f.p579t.AbstractC9993a<java.lang.Object> intercepted() {
        /*
            r3 = this;
            r0 = r3
            f.t.a<java.lang.Object> r0 = r0.intercepted
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L_0x000c
            goto L_0x0036
        L_0x000c:
            r0 = r3
            kotlin.coroutines.CoroutineContext r0 = r0.getContext()
            f.t.b$a r1 = p573f.p579t.AbstractC9994b.f37159Y
            kotlin.coroutines.CoroutineContext$a r0 = r0.get(r1)
            f.t.b r0 = (p573f.p579t.AbstractC9994b) r0
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L_0x002f
            r0 = r4
            r1 = r3
            f.t.a r0 = r0.m1688b(r1)
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L_0x002f
            goto L_0x0031
        L_0x002f:
            r0 = r3
            r4 = r0
        L_0x0031:
            r0 = r3
            r1 = r4
            r0.intercepted = r1
        L_0x0036:
            r0 = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.coroutines.jvm.internal.ContinuationImpl.intercepted():f.t.a");
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public void releaseIntercepted() {
        AbstractC9993a<?> aVar = this.intercepted;
        if (!(aVar == null || aVar == this)) {
            CoroutineContext.AbstractC10476a aVar2 = getContext().get(AbstractC9994b.f37159Y);
            if (aVar2 != null) {
                ((AbstractC9994b) aVar2).m1689a(aVar);
            } else {
                C10059q.m1646a();
                throw null;
            }
        }
        this.intercepted = C10007a.f37164a;
    }
}
