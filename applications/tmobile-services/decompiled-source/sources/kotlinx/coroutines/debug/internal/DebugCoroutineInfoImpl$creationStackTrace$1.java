package kotlinx.coroutines.debug.internal;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.sequences.SequenceScope;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0012\n��\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u0002H\u008a@¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"<anonymous>", "", "Lkotlin/sequences/SequenceScope;", "Ljava/lang/StackTraceElement;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
@DebugMetadata(m1915c = "kotlinx.coroutines.debug.internal.DebugCoroutineInfoImpl$creationStackTrace$1", m1914f = "DebugCoroutineInfoImpl.kt", m1913l = {75}, m1912m = "invokeSuspend")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/debug/internal/DebugCoroutineInfoImpl$creationStackTrace$1.class */
final class DebugCoroutineInfoImpl$creationStackTrace$1 extends RestrictedSuspendLambda implements Function2<SequenceScope<? super StackTraceElement>, Continuation<? super Unit>, Object> {

    /* renamed from: g */
    private SequenceScope f22264g;

    /* renamed from: h */
    Object f22265h;

    /* renamed from: i */
    int f22266i;

    /* renamed from: j */
    final /* synthetic */ DebugCoroutineInfoImpl f22267j;

    /* renamed from: k */
    final /* synthetic */ StackTraceFrame f22268k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DebugCoroutineInfoImpl$creationStackTrace$1(DebugCoroutineInfoImpl debugCoroutineInfoImpl, StackTraceFrame stackTraceFrame, Continuation continuation) {
        super(2, continuation);
        this.f22267j = debugCoroutineInfoImpl;
        this.f22268k = stackTraceFrame;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        DebugCoroutineInfoImpl$creationStackTrace$1 debugCoroutineInfoImpl$creationStackTrace$1 = new DebugCoroutineInfoImpl$creationStackTrace$1(this.f22267j, this.f22268k, continuation);
        debugCoroutineInfoImpl$creationStackTrace$1.f22264g = (SequenceScope) obj;
        return debugCoroutineInfoImpl$creationStackTrace$1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object d;
        d = IntrinsicsKt__IntrinsicsKt.m1920d();
        int i = this.f22266i;
        if (i == 0) {
            ResultKt.m2472b(obj);
            SequenceScope<? super StackTraceElement> sequenceScope = this.f22264g;
            DebugCoroutineInfoImpl debugCoroutineInfoImpl = this.f22267j;
            CoroutineStackFrame callerFrame = this.f22268k.getCallerFrame();
            this.f22265h = sequenceScope;
            this.f22266i = 1;
            if (debugCoroutineInfoImpl.m754d(sequenceScope, callerFrame, this) == d) {
                return d;
            }
        } else if (i == 1) {
            SequenceScope sequenceScope2 = (SequenceScope) this.f22265h;
            ResultKt.m2472b(obj);
        } else {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        return Unit.f20447a;
    }

    @Override // kotlin.jvm.functions.Function2
    /* renamed from: o */
    public final Object mo422o(SequenceScope<? super StackTraceElement> sequenceScope, Continuation<? super Unit> continuation) {
        return ((DebugCoroutineInfoImpl$creationStackTrace$1) create(sequenceScope, continuation)).invokeSuspend(Unit.f20447a);
    }
}
