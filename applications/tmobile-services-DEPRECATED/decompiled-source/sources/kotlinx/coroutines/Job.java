package kotlinx.coroutines;

import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineExceptionHandler;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��`\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0003\n��\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\bf\u0018�� 12\u00020\u00012\u00020\u0002:\u00011J\u0017\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H'¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\bH\u0017¢\u0006\u0004\b\t\u0010\nJ\u001b\u0010\t\u001a\u00020\r2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u000bH'¢\u0006\u0004\b\t\u0010\u000eJ!\u0010\t\u001a\u00020\b2\u0010\b\u0002\u0010\f\u001a\n\u0018\u00010\u000fj\u0004\u0018\u0001`\u0010H&¢\u0006\u0004\b\t\u0010\u0011J\u0013\u0010\u0012\u001a\u00060\u000fj\u0002`\u0010H'¢\u0006\u0004\b\u0012\u0010\u0013JL\u0010\u001c\u001a\u00020\u001b2\b\b\u0002\u0010\u0014\u001a\u00020\r2\b\b\u0002\u0010\u0015\u001a\u00020\r2'\u0010\u001a\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\u000b¢\u0006\f\b\u0017\u0012\b\b\u0018\u0012\u0004\b\b(\f\u0012\u0004\u0012\u00020\b0\u0016j\u0002`\u0019H'¢\u0006\u0004\b\u001c\u0010\u001dJ8\u0010\u001c\u001a\u00020\u001b2'\u0010\u001a\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\u000b¢\u0006\f\b\u0017\u0012\b\b\u0018\u0012\u0004\b\b(\f\u0012\u0004\u0012\u00020\b0\u0016j\u0002`\u0019H&¢\u0006\u0004\b\u001c\u0010\u001eJ\u0013\u0010\u001f\u001a\u00020\bH¦@ø\u0001��¢\u0006\u0004\b\u001f\u0010 J\u0018\u0010\"\u001a\u00020��2\u0006\u0010!\u001a\u00020��H\u0097\u0002¢\u0006\u0004\b\"\u0010#J\u000f\u0010$\u001a\u00020\rH&¢\u0006\u0004\b$\u0010%R\u001c\u0010)\u001a\b\u0012\u0004\u0012\u00020��0&8&@&X¦\u0004¢\u0006\u0006\u001a\u0004\b'\u0010(R\u0016\u0010*\u001a\u00020\r8&@&X¦\u0004¢\u0006\u0006\u001a\u0004\b*\u0010%R\u0016\u0010+\u001a\u00020\r8&@&X¦\u0004¢\u0006\u0006\u001a\u0004\b+\u0010%R\u0016\u0010,\u001a\u00020\r8&@&X¦\u0004¢\u0006\u0006\u001a\u0004\b,\u0010%R\u0016\u00100\u001a\u00020-8&@&X¦\u0004¢\u0006\u0006\u001a\u0004\b.\u0010/\u0082\u0002\u0004\n\u0002\b\u0019¨\u00062"}, d2 = {"Lkotlinx/coroutines/Job;", "kotlin/coroutines/CoroutineContext$Element", "Lkotlin/Any;", "Lkotlinx/coroutines/ChildJob;", "child", "Lkotlinx/coroutines/ChildHandle;", "attachChild", "(Lkotlinx/coroutines/ChildJob;)Lkotlinx/coroutines/ChildHandle;", "", "cancel", "()V", "", "cause", "", "(Ljava/lang/Throwable;)Z", "Ljava/util/concurrent/CancellationException;", "Lkotlinx/coroutines/CancellationException;", "(Ljava/util/concurrent/CancellationException;)V", "getCancellationException", "()Ljava/util/concurrent/CancellationException;", "onCancelling", "invokeImmediately", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "Lkotlinx/coroutines/CompletionHandler;", "handler", "Lkotlinx/coroutines/DisposableHandle;", "invokeOnCompletion", "(ZZLkotlin/Function1;)Lkotlinx/coroutines/DisposableHandle;", "(Lkotlin/Function1;)Lkotlinx/coroutines/DisposableHandle;", "join", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "other", "plus", "(Lkotlinx/coroutines/Job;)Lkotlinx/coroutines/Job;", "start", "()Z", "Lkotlin/sequences/Sequence;", "getChildren", "()Lkotlin/sequences/Sequence;", "children", "isActive", "isCancelled", "isCompleted", "Lkotlinx/coroutines/selects/SelectClause0;", "getOnJoin", "()Lkotlinx/coroutines/selects/SelectClause0;", "onJoin", "Key", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/Job.class */
public interface Job extends CoroutineContext.Element {

    /* renamed from: d */
    public static final Key f21198d = Key.f21199a;

    @Metadata(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/Job$DefaultImpls.class */
    public static final class DefaultImpls {
        /* renamed from: a */
        public static /* synthetic */ void m1226a(Job job, CancellationException cancellationException, int i, Object obj) {
            if (obj == null) {
                if ((i & 1) != 0) {
                    cancellationException = null;
                }
                job.mo1002a(cancellationException);
                return;
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: cancel");
        }

        /* renamed from: b */
        public static <R> R m1225b(@NotNull Job job, R r, @NotNull Function2<? super R, ? super CoroutineContext.Element, ? extends R> function2) {
            return (R) CoroutineContext.Element.DefaultImpls.m1931a(job, r, function2);
        }

        @Nullable
        /* renamed from: c */
        public static <E extends CoroutineContext.Element> E m1224c(@NotNull Job job, @NotNull CoroutineContext.Key<E> key) {
            return (E) CoroutineContext.Element.DefaultImpls.m1930b(job, key);
        }

        /* renamed from: d */
        public static /* synthetic */ DisposableHandle m1223d(Job job, boolean z, boolean z2, Function1 function1, int i, Object obj) {
            if (obj == null) {
                if ((i & 1) != 0) {
                    z = false;
                }
                if ((i & 2) != 0) {
                    z2 = true;
                }
                return job.mo1120l(z, z2, function1);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: invokeOnCompletion");
        }

        @NotNull
        /* renamed from: e */
        public static CoroutineContext m1222e(@NotNull Job job, @NotNull CoroutineContext.Key<?> key) {
            return CoroutineContext.Element.DefaultImpls.m1929c(job, key);
        }

        @NotNull
        /* renamed from: f */
        public static CoroutineContext m1221f(@NotNull Job job, @NotNull CoroutineContext coroutineContext) {
            return CoroutineContext.Element.DefaultImpls.m1928d(job, coroutineContext);
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\b\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018��2\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lkotlinx/coroutines/Job$Key;", "kotlin/coroutines/CoroutineContext$Key", "<init>", "()V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/Job$Key.class */
    public static final class Key implements CoroutineContext.Key<Job> {

        /* renamed from: a */
        static final /* synthetic */ Key f21199a = new Key();

        static {
            CoroutineExceptionHandler.Key key = CoroutineExceptionHandler.f21135c;
        }

        private Key() {
        }
    }

    @NotNull
    /* renamed from: B */
    DisposableHandle mo1123B(@NotNull Function1<? super Throwable, Unit> function1);

    @InternalCoroutinesApi
    @NotNull
    /* renamed from: L */
    ChildHandle mo1122L(@NotNull ChildJob childJob);

    /* renamed from: a */
    void mo1002a(@Nullable CancellationException cancellationException);

    @Nullable
    /* renamed from: i */
    Object mo1121i(@NotNull Continuation<? super Unit> continuation);

    boolean isActive();

    boolean isCancelled();

    @InternalCoroutinesApi
    @NotNull
    /* renamed from: l */
    DisposableHandle mo1120l(boolean z, boolean z2, @NotNull Function1<? super Throwable, Unit> function1);

    @InternalCoroutinesApi
    @NotNull
    /* renamed from: m */
    CancellationException mo1119m();

    boolean start();
}
