package kotlin.coroutines;

import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@SinceKotlin
@Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000b\bg\u0018��2\u00020\u0001:\u0002\u0013\u0014J7\u0010\u0007\u001a\u00028��\"\u0004\b��\u0010\u00022\u0006\u0010\u0003\u001a\u00028��2\u0018\u0010\u0006\u001a\u0014\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00028��0\u0004H&¢\u0006\u0004\b\u0007\u0010\bJ*\u0010\f\u001a\u0004\u0018\u00018��\"\b\b��\u0010\t*\u00020\u00052\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028��0\nH¦\u0002¢\u0006\u0004\b\f\u0010\rJ\u001b\u0010\u000e\u001a\u00020��2\n\u0010\u000b\u001a\u0006\u0012\u0002\b\u00030\nH&¢\u0006\u0004\b\u000e\u0010\u000fJ\u0018\u0010\u0011\u001a\u00020��2\u0006\u0010\u0010\u001a\u00020��H\u0096\u0002¢\u0006\u0004\b\u0011\u0010\u0012¨\u0006\u0015"}, d2 = {"Lkotlin/coroutines/CoroutineContext;", "Lkotlin/Any;", "R", "initial", "Lkotlin/Function2;", "Lkotlin/coroutines/CoroutineContext$Element;", "operation", "fold", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;", "E", "Lkotlin/coroutines/CoroutineContext$Key;", "key", "get", "(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;", "minusKey", "(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;", "context", "plus", "(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;", "Element", "Key", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/coroutines/CoroutineContext.class */
public interface CoroutineContext {

    @Metadata(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:kotlin/coroutines/CoroutineContext$DefaultImpls.class */
    public static final class DefaultImpls {
        @NotNull
        /* renamed from: a */
        public static CoroutineContext m1932a(@NotNull CoroutineContext coroutineContext, @NotNull CoroutineContext context) {
            Intrinsics.m1830e(context, "context");
            if (context != EmptyCoroutineContext.f20645f) {
                coroutineContext = (CoroutineContext) context.fold(coroutineContext, CoroutineContext$plus$1.f20644f);
            }
            return coroutineContext;
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\bf\u0018��2\u00020\u00012\u00020\u0002J7\u0010\u0007\u001a\u00028��\"\u0004\b��\u0010\u00032\u0006\u0010\u0004\u001a\u00028��2\u0018\u0010\u0006\u001a\u0014\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00020��\u0012\u0004\u0012\u00028��0\u0005H\u0016¢\u0006\u0004\b\u0007\u0010\bJ*\u0010\f\u001a\u0004\u0018\u00018��\"\b\b��\u0010\t*\u00020��2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028��0\nH\u0096\u0002¢\u0006\u0004\b\f\u0010\rJ\u001b\u0010\u000e\u001a\u00020\u00012\n\u0010\u000b\u001a\u0006\u0012\u0002\b\u00030\nH\u0016¢\u0006\u0004\b\u000e\u0010\u000fR\u001a\u0010\u000b\u001a\u0006\u0012\u0002\b\u00030\n8&@&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0011¨\u0006\u0012"}, d2 = {"Lkotlin/coroutines/CoroutineContext$Element;", "Lkotlin/coroutines/CoroutineContext;", "Lkotlin/Any;", "R", "initial", "Lkotlin/Function2;", "operation", "fold", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;", "E", "Lkotlin/coroutines/CoroutineContext$Key;", "key", "get", "(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;", "minusKey", "(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;", "getKey", "()Lkotlin/coroutines/CoroutineContext$Key;", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:kotlin/coroutines/CoroutineContext$Element.class */
    public interface Element extends CoroutineContext {

        @Metadata(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
        /* loaded from: classes2-dex2jar.jar:kotlin/coroutines/CoroutineContext$Element$DefaultImpls.class */
        public static final class DefaultImpls {
            /* renamed from: a */
            public static <R> R m1931a(@NotNull Element element, R r, @NotNull Function2<? super R, ? super Element, ? extends R> operation) {
                Intrinsics.m1830e(operation, "operation");
                return (R) operation.mo422o(r, element);
            }

            @Nullable
            /* renamed from: b */
            public static <E extends Element> E m1930b(@NotNull Element element, @NotNull Key<E> key) {
                Intrinsics.m1830e(key, "key");
                if (!Intrinsics.m1834a(element.getKey(), key)) {
                    element = (E) null;
                } else if (element == null) {
                    throw new NullPointerException("null cannot be cast to non-null type E");
                }
                return (E) element;
            }

            @NotNull
            /* renamed from: c */
            public static CoroutineContext m1929c(@NotNull Element element, @NotNull Key<?> key) {
                Intrinsics.m1830e(key, "key");
                CoroutineContext coroutineContext = element;
                if (Intrinsics.m1834a(element.getKey(), key)) {
                    coroutineContext = EmptyCoroutineContext.f20645f;
                }
                return coroutineContext;
            }

            @NotNull
            /* renamed from: d */
            public static CoroutineContext m1928d(@NotNull Element element, @NotNull CoroutineContext context) {
                Intrinsics.m1830e(context, "context");
                return DefaultImpls.m1932a(element, context);
            }
        }

        @Override // kotlin.coroutines.CoroutineContext
        @Nullable
        <E extends Element> E get(@NotNull Key<E> key);

        @NotNull
        Key<?> getKey();
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\bf\u0018��*\b\b��\u0010\u0002*\u00020\u00012\u00020\u0003¨\u0006\u0004"}, d2 = {"Lkotlin/coroutines/CoroutineContext$Key;", "Lkotlin/coroutines/CoroutineContext$Element;", "E", "Lkotlin/Any;", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:kotlin/coroutines/CoroutineContext$Key.class */
    public interface Key<E extends Element> {
    }

    <R> R fold(R r, @NotNull Function2<? super R, ? super Element, ? extends R> function2);

    @Nullable
    <E extends Element> E get(@NotNull Key<E> key);

    @NotNull
    CoroutineContext minusKey(@NotNull Key<?> key);

    @NotNull
    CoroutineContext plus(@NotNull CoroutineContext coroutineContext);
}
