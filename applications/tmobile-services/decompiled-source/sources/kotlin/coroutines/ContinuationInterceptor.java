package kotlin.coroutines;

import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@SinceKotlin
@Metadata(bv = {1, 0, 3}, d1 = {"��0\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\bg\u0018�� \u00142\u00020\u00012\u00020\u0002:\u0001\u0014J*\u0010\u0007\u001a\u0004\u0018\u00018��\"\b\b��\u0010\u0004*\u00020\u00032\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028��0\u0005H\u0096\u0002¢\u0006\u0004\b\u0007\u0010\bJ)\u0010\f\u001a\b\u0012\u0004\u0012\u00028��0\n\"\u0004\b��\u0010\t2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028��0\nH&¢\u0006\u0004\b\f\u0010\rJ\u001b\u0010\u000f\u001a\u00020\u000e2\n\u0010\u0006\u001a\u0006\u0012\u0002\b\u00030\u0005H\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u001b\u0010\u0012\u001a\u00020\u00112\n\u0010\u000b\u001a\u0006\u0012\u0002\b\u00030\nH\u0016¢\u0006\u0004\b\u0012\u0010\u0013¨\u0006\u0015"}, d2 = {"Lkotlin/coroutines/ContinuationInterceptor;", "kotlin/coroutines/CoroutineContext$Element", "Lkotlin/Any;", "Lkotlin/coroutines/CoroutineContext$Element;", "E", "Lkotlin/coroutines/CoroutineContext$Key;", "key", "get", "(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;", "T", "Lkotlin/coroutines/Continuation;", "continuation", "interceptContinuation", "(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;", "Lkotlin/coroutines/CoroutineContext;", "minusKey", "(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;", "", "releaseInterceptedContinuation", "(Lkotlin/coroutines/Continuation;)V", "Key", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/coroutines/ContinuationInterceptor.class */
public interface ContinuationInterceptor extends CoroutineContext.Element {

    /* renamed from: b */
    public static final Key f20640b = Key.f20641a;

    @Metadata(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:kotlin/coroutines/ContinuationInterceptor$DefaultImpls.class */
    public static final class DefaultImpls {
        @Nullable
        /* renamed from: a */
        public static <E extends CoroutineContext.Element> E m1937a(@NotNull ContinuationInterceptor continuationInterceptor, @NotNull CoroutineContext.Key<E> key) {
            Intrinsics.m1830e(key, "key");
            if (key instanceof AbstractCoroutineContextKey) {
                AbstractCoroutineContextKey abstractCoroutineContextKey = (AbstractCoroutineContextKey) key;
                E e = null;
                if (abstractCoroutineContextKey.m1944a(continuationInterceptor.getKey())) {
                    e = (E) abstractCoroutineContextKey.m1943b(continuationInterceptor);
                    if (!(e instanceof CoroutineContext.Element)) {
                        e = null;
                    }
                }
                return e;
            }
            if (ContinuationInterceptor.f20640b != key) {
                continuationInterceptor = null;
            } else if (continuationInterceptor == null) {
                throw new NullPointerException("null cannot be cast to non-null type E");
            }
            return continuationInterceptor;
        }

        @NotNull
        /* renamed from: b */
        public static CoroutineContext m1936b(@NotNull ContinuationInterceptor continuationInterceptor, @NotNull CoroutineContext.Key<?> key) {
            Intrinsics.m1830e(key, "key");
            if (key instanceof AbstractCoroutineContextKey) {
                AbstractCoroutineContextKey abstractCoroutineContextKey = (AbstractCoroutineContextKey) key;
                CoroutineContext coroutineContext = continuationInterceptor;
                if (abstractCoroutineContextKey.m1944a(continuationInterceptor.getKey())) {
                    coroutineContext = continuationInterceptor;
                    if (abstractCoroutineContextKey.m1943b(continuationInterceptor) != null) {
                        coroutineContext = EmptyCoroutineContext.f20645f;
                    }
                }
                return coroutineContext;
            }
            CoroutineContext coroutineContext2 = continuationInterceptor;
            if (ContinuationInterceptor.f20640b == key) {
                coroutineContext2 = EmptyCoroutineContext.f20645f;
            }
            return coroutineContext2;
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\b\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018��2\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lkotlin/coroutines/ContinuationInterceptor$Key;", "kotlin/coroutines/CoroutineContext$Key", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:kotlin/coroutines/ContinuationInterceptor$Key.class */
    public static final class Key implements CoroutineContext.Key<ContinuationInterceptor> {

        /* renamed from: a */
        static final /* synthetic */ Key f20641a = new Key();

        private Key() {
        }
    }

    /* renamed from: b */
    void mo1322b(@NotNull Continuation<?> continuation);

    @NotNull
    /* renamed from: e */
    <T> Continuation<T> mo1321e(@NotNull Continuation<? super T> continuation);
}
