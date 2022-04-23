package kotlin.coroutines;

import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@SinceKotlin
@Metadata(bv = {1, 0, 3}, d1 = {"��\u000e\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0007\b'\u0018��2\u00020\u0001B\u0013\u0012\n\u0010\u0003\u001a\u0006\u0012\u0002\b\u00030\u0002¢\u0006\u0004\b\u0007\u0010\bR \u0010\u0003\u001a\u0006\u0012\u0002\b\u00030\u00028\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\t"}, d2 = {"Lkotlin/coroutines/AbstractCoroutineContextElement;", "kotlin/coroutines/CoroutineContext$Element", "Lkotlin/coroutines/CoroutineContext$Key;", "key", "Lkotlin/coroutines/CoroutineContext$Key;", "getKey", "()Lkotlin/coroutines/CoroutineContext$Key;", "<init>", "(Lkotlin/coroutines/CoroutineContext$Key;)V", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/coroutines/AbstractCoroutineContextElement.class */
public abstract class AbstractCoroutineContextElement implements CoroutineContext.Element {
    @NotNull
    private final CoroutineContext.Key<?> key;

    public AbstractCoroutineContextElement(@NotNull CoroutineContext.Key<?> key) {
        Intrinsics.m1830e(key, "key");
        this.key = key;
    }

    @Override // kotlin.coroutines.CoroutineContext
    public <R> R fold(R r, @NotNull Function2<? super R, ? super CoroutineContext.Element, ? extends R> operation) {
        Intrinsics.m1830e(operation, "operation");
        return (R) CoroutineContext.Element.DefaultImpls.m1931a(this, r, operation);
    }

    @Override // kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    @Nullable
    public <E extends CoroutineContext.Element> E get(@NotNull CoroutineContext.Key<E> key) {
        Intrinsics.m1830e(key, "key");
        return (E) CoroutineContext.Element.DefaultImpls.m1930b(this, key);
    }

    @Override // kotlin.coroutines.CoroutineContext.Element
    @NotNull
    public CoroutineContext.Key<?> getKey() {
        return this.key;
    }

    @Override // kotlin.coroutines.CoroutineContext
    @NotNull
    public CoroutineContext minusKey(@NotNull CoroutineContext.Key<?> key) {
        Intrinsics.m1830e(key, "key");
        return CoroutineContext.Element.DefaultImpls.m1929c(this, key);
    }

    @Override // kotlin.coroutines.CoroutineContext
    @NotNull
    public CoroutineContext plus(@NotNull CoroutineContext context) {
        Intrinsics.m1830e(context, "context");
        return CoroutineContext.Element.DefaultImpls.m1928d(this, context);
    }
}
