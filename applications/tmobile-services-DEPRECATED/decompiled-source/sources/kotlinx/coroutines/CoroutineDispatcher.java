package kotlinx.coroutines;

import kotlin.ExperimentalStdlibApi;
import kotlin.Metadata;
import kotlin.coroutines.AbstractCoroutineContextElement;
import kotlin.coroutines.AbstractCoroutineContextKey;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.ContinuationInterceptor;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Lambda;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0006\b&\u0018�� \u001e2\u00020\u00012\u00020\u0002:\u0001\u001eB\u0007¢\u0006\u0004\b\u001c\u0010\u001dJ#\u0010\t\u001a\u00020\b2\u0006\u0010\u0004\u001a\u00020\u00032\n\u0010\u0007\u001a\u00060\u0005j\u0002`\u0006H&¢\u0006\u0004\b\t\u0010\nJ#\u0010\u000b\u001a\u00020\b2\u0006\u0010\u0004\u001a\u00020\u00032\n\u0010\u0007\u001a\u00060\u0005j\u0002`\u0006H\u0017¢\u0006\u0004\b\u000b\u0010\nJ'\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028��0\r\"\u0004\b��\u0010\f2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028��0\r¢\u0006\u0004\b\u000f\u0010\u0010J\u0017\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0004\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u0018\u0010\u0015\u001a\u00020��2\u0006\u0010\u0014\u001a\u00020��H\u0087\u0002¢\u0006\u0004\b\u0015\u0010\u0016J\u001b\u0010\u0017\u001a\u00020\b2\n\u0010\u000e\u001a\u0006\u0012\u0002\b\u00030\rH\u0017¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u001a\u001a\u00020\u0019H\u0016¢\u0006\u0004\b\u001a\u0010\u001b¨\u0006\u001f"}, d2 = {"Lkotlinx/coroutines/CoroutineDispatcher;", "Lkotlin/coroutines/ContinuationInterceptor;", "Lkotlin/coroutines/AbstractCoroutineContextElement;", "Lkotlin/coroutines/CoroutineContext;", "context", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "block", "", "dispatch", "(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V", "dispatchYield", "T", "Lkotlin/coroutines/Continuation;", "continuation", "interceptContinuation", "(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;", "", "isDispatchNeeded", "(Lkotlin/coroutines/CoroutineContext;)Z", "other", "plus", "(Lkotlinx/coroutines/CoroutineDispatcher;)Lkotlinx/coroutines/CoroutineDispatcher;", "releaseInterceptedContinuation", "(Lkotlin/coroutines/Continuation;)V", "", "toString", "()Ljava/lang/String;", "<init>", "()V", "Key", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/CoroutineDispatcher.class */
public abstract class CoroutineDispatcher extends AbstractCoroutineContextElement implements ContinuationInterceptor {

    /* renamed from: f */
    public static final Key f21133f = new Key(null);

    @Metadata(bv = {1, 0, 3}, d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0087\u0003\u0018��2\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lkotlinx/coroutines/CoroutineDispatcher$Key;", "Lkotlin/coroutines/AbstractCoroutineContextKey;", "<init>", "()V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    @ExperimentalStdlibApi
    /* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/CoroutineDispatcher$Key.class */
    public static final class Key extends AbstractCoroutineContextKey<ContinuationInterceptor, CoroutineDispatcher> {

        @Metadata(bv = {1, 0, 3}, d1 = {"��\u000e\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\u0010��\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "Lkotlinx/coroutines/CoroutineDispatcher;", "it", "Lkotlin/coroutines/CoroutineContext$Element;", "invoke"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
        /* renamed from: kotlinx.coroutines.CoroutineDispatcher$Key$1 */
        /* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/CoroutineDispatcher$Key$1.class */
        static final class C22651 extends Lambda implements Function1<CoroutineContext.Element, CoroutineDispatcher> {

            /* renamed from: f */
            public static final C22651 f21134f = new C22651();

            C22651() {
                super(1);
            }

            @Nullable
            /* renamed from: b */
            public final CoroutineDispatcher invoke(@NotNull CoroutineContext.Element element) {
                CoroutineContext.Element element2 = element;
                if (!(element instanceof CoroutineDispatcher)) {
                    element2 = null;
                }
                return (CoroutineDispatcher) element2;
            }
        }

        private Key() {
            super(ContinuationInterceptor.f20640b, C22651.f21134f);
        }

        public /* synthetic */ Key(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public CoroutineDispatcher() {
        super(ContinuationInterceptor.f20640b);
    }

    @InternalCoroutinesApi
    /* renamed from: N */
    public void mo349N(@NotNull CoroutineContext coroutineContext, @NotNull Runnable runnable) {
        mo241t(coroutineContext, runnable);
    }

    /* renamed from: V */
    public boolean mo478V(@NotNull CoroutineContext coroutineContext) {
        return true;
    }

    @Override // kotlin.coroutines.ContinuationInterceptor
    @InternalCoroutinesApi
    /* renamed from: b */
    public void mo1322b(@NotNull Continuation<?> continuation) {
        if (continuation != null) {
            CancellableContinuationImpl<?> k = ((DispatchedContinuation) continuation).m1288k();
            if (k != null) {
                k.m1354l();
                return;
            }
            return;
        }
        throw new NullPointerException("null cannot be cast to non-null type kotlinx.coroutines.DispatchedContinuation<*>");
    }

    @Override // kotlin.coroutines.ContinuationInterceptor
    @NotNull
    /* renamed from: e */
    public final <T> Continuation<T> mo1321e(@NotNull Continuation<? super T> continuation) {
        return new DispatchedContinuation(this, continuation);
    }

    @Override // kotlin.coroutines.AbstractCoroutineContextElement, kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    @Nullable
    public <E extends CoroutineContext.Element> E get(@NotNull CoroutineContext.Key<E> key) {
        return (E) ContinuationInterceptor.DefaultImpls.m1937a(this, key);
    }

    @Override // kotlin.coroutines.AbstractCoroutineContextElement, kotlin.coroutines.CoroutineContext
    @NotNull
    public CoroutineContext minusKey(@NotNull CoroutineContext.Key<?> key) {
        return ContinuationInterceptor.DefaultImpls.m1936b(this, key);
    }

    /* renamed from: t */
    public abstract void mo241t(@NotNull CoroutineContext coroutineContext, @NotNull Runnable runnable);

    @NotNull
    public String toString() {
        return DebugStringsKt.m1304a(this) + '@' + DebugStringsKt.m1303b(this);
    }
}
