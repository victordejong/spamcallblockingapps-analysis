package kotlinx.coroutines.internal;

import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.ThreadContextElement;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��6\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a!\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0001\u001a\u00020��2\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H��¢\u0006\u0004\b\u0005\u0010\u0006\u001a\u0017\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020��H��¢\u0006\u0004\b\u0007\u0010\b\u001a#\u0010\n\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0001\u001a\u00020��2\b\u0010\t\u001a\u0004\u0018\u00010\u0002H��¢\u0006\u0004\b\n\u0010\u000b\"\u0016\u0010\r\u001a\u00020\f8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000e\",\u0010\u0011\u001a\u0018\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0012\u0004\u0012\u00020\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u000f8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012\"4\u0010\u0014\u001a \u0012\n\u0012\b\u0012\u0002\b\u0003\u0018\u00010\u0013\u0012\u0004\u0012\u00020\u0010\u0012\n\u0012\b\u0012\u0002\b\u0003\u0018\u00010\u00130\u000f8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0012\"(\u0010\u0016\u001a\u0014\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00150\u000f8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0012\"(\u0010\u0017\u001a\u0014\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00150\u000f8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u0012¨\u0006\u0018"}, d2 = {"Lkotlin/coroutines/CoroutineContext;", "context", "", "oldState", "", "restoreThreadContext", "(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V", "threadContextElements", "(Lkotlin/coroutines/CoroutineContext;)Ljava/lang/Object;", "countOrElement", "updateThreadContext", "(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)Ljava/lang/Object;", "Lkotlinx/coroutines/internal/Symbol;", "ZERO", "Lkotlinx/coroutines/internal/Symbol;", "Lkotlin/Function2;", "Lkotlin/coroutines/CoroutineContext$Element;", "countAll", "Lkotlin/Function2;", "Lkotlinx/coroutines/ThreadContextElement;", "findOne", "Lkotlinx/coroutines/internal/ThreadState;", "restoreState", "updateState", "kotlinx-coroutines-core"}, k = 2, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/internal/ThreadContextKt.class */
public final class ThreadContextKt {

    /* renamed from: a */
    private static final Symbol f23952a = new Symbol("ZERO");

    /* renamed from: b */
    private static final Function2<Object, CoroutineContext.Element, Object> f23953b = ThreadContextKt$countAll$1.f23957f;

    /* renamed from: c */
    private static final Function2<ThreadContextElement<?>, CoroutineContext.Element, ThreadContextElement<?>> f23954c = ThreadContextKt$findOne$1.f23958f;

    /* renamed from: d */
    private static final Function2<ThreadState, CoroutineContext.Element, ThreadState> f23955d = ThreadContextKt$updateState$1.f23960f;

    /* renamed from: e */
    private static final Function2<ThreadState, CoroutineContext.Element, ThreadState> f23956e = ThreadContextKt$restoreState$1.f23959f;

    /* renamed from: a */
    public static final void m429a(@NotNull CoroutineContext coroutineContext, @Nullable Object obj) {
        if (obj != f23952a) {
            if (obj instanceof ThreadState) {
                ((ThreadState) obj).m403c();
                coroutineContext.fold(obj, f23956e);
                return;
            }
            Object fold = coroutineContext.fold(null, f23954c);
            if (fold != null) {
                ((ThreadContextElement) fold).mo421I(coroutineContext, obj);
                return;
            }
            throw new NullPointerException("null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>");
        }
    }

    @NotNull
    /* renamed from: b */
    public static final Object m428b(@NotNull CoroutineContext coroutineContext) {
        Object fold = coroutineContext.fold(0, f23953b);
        Intrinsics.m1832c(fold);
        return fold;
    }

    @Nullable
    /* renamed from: c */
    public static final Object m427c(@NotNull CoroutineContext coroutineContext, @Nullable Object obj) {
        Object obj2;
        if (obj == null) {
            obj = m428b(coroutineContext);
        }
        if (obj == 0) {
            obj2 = f23952a;
        } else if (obj instanceof Integer) {
            obj2 = coroutineContext.fold(new ThreadState(coroutineContext, ((Number) obj).intValue()), f23955d);
        } else if (obj != null) {
            obj2 = ((ThreadContextElement) obj).mo420K(coroutineContext);
        } else {
            throw new NullPointerException("null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>");
        }
        return obj2;
    }
}
