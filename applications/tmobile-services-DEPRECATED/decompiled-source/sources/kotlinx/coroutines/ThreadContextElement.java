package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001c\n\u0002\u0018\u0002\n��\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\bf\u0018��*\u0004\b��\u0010\u00012\u00020\u00022\u00020\u0003J\u001f\u0010\b\u001a\u00020\u00072\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00028��H&¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\n\u001a\u00028��2\u0006\u0010\u0005\u001a\u00020\u0004H&¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lkotlinx/coroutines/ThreadContextElement;", "S", "kotlin/coroutines/CoroutineContext$Element", "Lkotlin/Any;", "Lkotlin/coroutines/CoroutineContext;", "context", "oldState", "", "restoreThreadContext", "(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V", "updateThreadContext", "(Lkotlin/coroutines/CoroutineContext;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/ThreadContextElement.class */
public interface ThreadContextElement<S> extends CoroutineContext.Element {

    @Metadata(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/ThreadContextElement$DefaultImpls.class */
    public static final class DefaultImpls {
        /* renamed from: a */
        public static <S, R> R m1114a(@NotNull ThreadContextElement<S> threadContextElement, R r, @NotNull Function2<? super R, ? super CoroutineContext.Element, ? extends R> function2) {
            return (R) CoroutineContext.Element.DefaultImpls.m1931a(threadContextElement, r, function2);
        }

        @Nullable
        /* renamed from: b */
        public static <S, E extends CoroutineContext.Element> E m1113b(@NotNull ThreadContextElement<S> threadContextElement, @NotNull CoroutineContext.Key<E> key) {
            return (E) CoroutineContext.Element.DefaultImpls.m1930b(threadContextElement, key);
        }

        @NotNull
        /* renamed from: c */
        public static <S> CoroutineContext m1112c(@NotNull ThreadContextElement<S> threadContextElement, @NotNull CoroutineContext.Key<?> key) {
            return CoroutineContext.Element.DefaultImpls.m1929c(threadContextElement, key);
        }

        @NotNull
        /* renamed from: d */
        public static <S> CoroutineContext m1111d(@NotNull ThreadContextElement<S> threadContextElement, @NotNull CoroutineContext coroutineContext) {
            return CoroutineContext.Element.DefaultImpls.m1928d(threadContextElement, coroutineContext);
        }
    }

    /* renamed from: I */
    void mo421I(@NotNull CoroutineContext coroutineContext, S s);

    /* renamed from: K */
    S mo420K(@NotNull CoroutineContext coroutineContext);
}
