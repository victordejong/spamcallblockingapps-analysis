package kotlin.coroutines.jvm.internal;

import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import p573f.p579t.AbstractC9993a;
/* loaded from: classes2-dex2jar.jar:kotlin/coroutines/jvm/internal/RestrictedContinuationImpl.class */
public abstract class RestrictedContinuationImpl extends BaseContinuationImpl {
    public RestrictedContinuationImpl(AbstractC9993a<Object> aVar) {
        super(aVar);
        if (aVar != null) {
            if (!(aVar.getContext() == EmptyCoroutineContext.INSTANCE)) {
                throw new IllegalArgumentException("Coroutines with restricted suspension must have EmptyCoroutineContext".toString());
            }
        }
    }

    @Override // p573f.p579t.AbstractC9993a
    public CoroutineContext getContext() {
        return EmptyCoroutineContext.INSTANCE;
    }
}
