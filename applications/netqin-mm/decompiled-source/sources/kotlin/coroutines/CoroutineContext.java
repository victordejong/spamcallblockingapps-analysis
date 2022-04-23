package kotlin.coroutines;

import p573f.p590w.p591b.AbstractC10035p;
import p573f.p590w.p592c.C10059q;
/* loaded from: classes2-dex2jar.jar:kotlin/coroutines/CoroutineContext.class */
public interface CoroutineContext {

    /* loaded from: classes2-dex2jar.jar:kotlin/coroutines/CoroutineContext$DefaultImpls.class */
    public static final class DefaultImpls {
        /* renamed from: a */
        public static CoroutineContext m47a(CoroutineContext coroutineContext, CoroutineContext coroutineContext2) {
            C10059q.m1637b(coroutineContext2, "context");
            if (coroutineContext2 != EmptyCoroutineContext.INSTANCE) {
                coroutineContext = (CoroutineContext) coroutineContext2.fold(coroutineContext, CoroutineContext$plus$1.INSTANCE);
            }
            return coroutineContext;
        }
    }

    /* renamed from: kotlin.coroutines.CoroutineContext$a */
    /* loaded from: classes2-dex2jar.jar:kotlin/coroutines/CoroutineContext$a.class */
    public interface AbstractC10476a extends CoroutineContext {
        @Override // kotlin.coroutines.CoroutineContext
        <E extends AbstractC10476a> E get(AbstractC10477b<E> bVar);

        AbstractC10477b<?> getKey();
    }

    /* renamed from: kotlin.coroutines.CoroutineContext$b */
    /* loaded from: classes2-dex2jar.jar:kotlin/coroutines/CoroutineContext$b.class */
    public interface AbstractC10477b<E extends AbstractC10476a> {
    }

    <R> R fold(R r, AbstractC10035p<? super R, ? super AbstractC10476a, ? extends R> pVar);

    <E extends AbstractC10476a> E get(AbstractC10477b<E> bVar);

    CoroutineContext minusKey(AbstractC10477b<?> bVar);

    CoroutineContext plus(CoroutineContext coroutineContext);
}
