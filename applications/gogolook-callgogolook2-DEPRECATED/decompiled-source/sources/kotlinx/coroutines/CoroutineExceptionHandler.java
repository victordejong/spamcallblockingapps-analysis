package kotlinx.coroutines;

import kotlin.Metadata;
import p626l.p634w.AbstractC15049g;
import p626l.p641z.p642c.AbstractC15122p;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0003\n\u0002\b\u0002\bf\u0018�� \b2\u00020\u0001:\u0001\bJ\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&¨\u0006\t"}, m815d2 = {"Lkotlinx/coroutines/CoroutineExceptionHandler;", "Lkotlin/coroutines/CoroutineContext$Element;", "handleException", "", "context", "Lkotlin/coroutines/CoroutineContext;", "exception", "", "Key", "kotlinx-coroutines-core"}, m814k = 1, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/CoroutineExceptionHandler.class */
public interface CoroutineExceptionHandler extends AbstractC15049g.AbstractC15052b {
    public static final Key Key = Key.$$INSTANCE;

    @Metadata(m817bv = {1, 0, 3}, m814k = 3, m813mv = {1, 1, 16})
    /* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/CoroutineExceptionHandler$DefaultImpls.class */
    public static final class DefaultImpls {
        public static <R> R fold(CoroutineExceptionHandler coroutineExceptionHandler, R r, AbstractC15122p<? super R, ? super AbstractC15049g.AbstractC15052b, ? extends R> pVar) {
            return (R) AbstractC15049g.AbstractC15052b.C15053a.m486a(coroutineExceptionHandler, r, pVar);
        }

        public static <E extends AbstractC15049g.AbstractC15052b> E get(CoroutineExceptionHandler coroutineExceptionHandler, AbstractC15049g.AbstractC15054c<E> cVar) {
            return (E) AbstractC15049g.AbstractC15052b.C15053a.m485a(coroutineExceptionHandler, cVar);
        }

        public static AbstractC15049g minusKey(CoroutineExceptionHandler coroutineExceptionHandler, AbstractC15049g.AbstractC15054c<?> cVar) {
            return AbstractC15049g.AbstractC15052b.C15053a.m483b(coroutineExceptionHandler, cVar);
        }

        public static AbstractC15049g plus(CoroutineExceptionHandler coroutineExceptionHandler, AbstractC15049g gVar) {
            return AbstractC15049g.AbstractC15052b.C15053a.m484a(coroutineExceptionHandler, gVar);
        }
    }

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018��2\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0003¨\u0006\u0004"}, m815d2 = {"Lkotlinx/coroutines/CoroutineExceptionHandler$Key;", "Lkotlin/coroutines/CoroutineContext$Key;", "Lkotlinx/coroutines/CoroutineExceptionHandler;", "()V", "kotlinx-coroutines-core"}, m814k = 1, m813mv = {1, 1, 16})
    /* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/CoroutineExceptionHandler$Key.class */
    public static final class Key implements AbstractC15049g.AbstractC15054c<CoroutineExceptionHandler> {
        public static final /* synthetic */ Key $$INSTANCE = new Key();
    }

    void handleException(AbstractC15049g gVar, Throwable th);
}
