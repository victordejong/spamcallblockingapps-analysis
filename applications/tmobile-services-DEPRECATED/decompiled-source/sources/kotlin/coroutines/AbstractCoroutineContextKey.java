package kotlin.coroutines;

import kotlin.ExperimentalStdlibApi;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.CoroutineContext.Element;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@SinceKotlin
@Metadata(bv = {1, 0, 3}, d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\b'\u0018��*\b\b��\u0010\u0002*\u00020\u0001*\b\b\u0001\u0010\u0003*\u00028��2\u00020\u0004B:\u0012\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00028��0\u0005\u0012#\u0010\u0012\u001a\u001f\u0012\u0013\u0012\u00110\u0001¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\u000b\u0012\u0006\u0012\u0004\u0018\u00018\u00010\u000f¢\u0006\u0004\b\u0017\u0010\u0018J\u001b\u0010\n\u001a\u00020\u00072\n\u0010\u0006\u001a\u0006\u0012\u0002\b\u00030\u0005H��¢\u0006\u0004\b\b\u0010\tJ\u0019\u0010\u000e\u001a\u0004\u0018\u00018\u00012\u0006\u0010\u000b\u001a\u00020\u0001H��¢\u0006\u0004\b\f\u0010\rR3\u0010\u0012\u001a\u001f\u0012\u0013\u0012\u00110\u0001¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\u000b\u0012\u0006\u0012\u0004\u0018\u00018\u00010\u000f8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u001a\u0010\u0014\u001a\u0006\u0012\u0002\b\u00030\u00058\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015¨\u0006\u0019"}, d2 = {"Lkotlin/coroutines/AbstractCoroutineContextKey;", "Lkotlin/coroutines/CoroutineContext$Element;", "B", "E", "kotlin/coroutines/CoroutineContext$Key", "Lkotlin/coroutines/CoroutineContext$Key;", "key", "", "isSubKey$kotlin_stdlib", "(Lkotlin/coroutines/CoroutineContext$Key;)Z", "isSubKey", "element", "tryCast$kotlin_stdlib", "(Lkotlin/coroutines/CoroutineContext$Element;)Lkotlin/coroutines/CoroutineContext$Element;", "tryCast", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "safeCast", "Lkotlin/Function1;", "topmostKey", "Lkotlin/coroutines/CoroutineContext$Key;", "baseKey", "<init>", "(Lkotlin/coroutines/CoroutineContext$Key;Lkotlin/jvm/functions/Function1;)V", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
@ExperimentalStdlibApi
/* loaded from: classes2-dex2jar.jar:kotlin/coroutines/AbstractCoroutineContextKey.class */
public abstract class AbstractCoroutineContextKey<B extends CoroutineContext.Element, E extends B> implements CoroutineContext.Key<E> {

    /* renamed from: a */
    private final CoroutineContext.Key<?> f20632a;

    /* renamed from: b */
    private final Function1<CoroutineContext.Element, E> f20633b;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0, types: [kotlin.jvm.functions.Function1<? super kotlin.coroutines.CoroutineContext$Element, ? extends E extends B>, java.lang.Object, kotlin.jvm.functions.Function1<kotlin.coroutines.CoroutineContext$Element, E extends B>] */
    public AbstractCoroutineContextKey(@NotNull CoroutineContext.Key<B> baseKey, @NotNull Function1<? super CoroutineContext.Element, ? extends E> safeCast) {
        Intrinsics.m1830e(baseKey, "baseKey");
        Intrinsics.m1830e(safeCast, "safeCast");
        this.f20633b = safeCast;
        this.f20632a = baseKey instanceof AbstractCoroutineContextKey ? ((AbstractCoroutineContextKey) baseKey).f20632a : baseKey;
    }

    /* renamed from: a */
    public final boolean m1944a(@NotNull CoroutineContext.Key<?> key) {
        Intrinsics.m1830e(key, "key");
        return key == this || this.f20632a == key;
    }

    /* JADX WARN: Incorrect return type in method signature: (Lkotlin/coroutines/CoroutineContext$Element;)TE; */
    @Nullable
    /* renamed from: b */
    public final CoroutineContext.Element m1943b(@NotNull CoroutineContext.Element element) {
        Intrinsics.m1830e(element, "element");
        return (CoroutineContext.Element) this.f20633b.invoke(element);
    }
}
