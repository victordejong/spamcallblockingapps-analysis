package kotlin.sequences;

import androidx.exifinterface.media.ExifInterface;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
@Metadata(m402bv = {1, 0, 3}, m401d1 = {"��\u0012\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u0001\"\u0004\b��\u0010\u0002\"\b\b\u0001\u0010\u0003*\u0002H\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0004H\u008a@¢\u0006\u0004\b\u0005\u0010\u0006"}, m400d2 = {"<anonymous>", "", ExifInterface.LATITUDE_SOUTH, "T", "Lkotlin/sequences/SequenceScope;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, m399k = 3, m398mv = {1, 4, 0})
@DebugMetadata(m392c = "kotlin.sequences.SequencesKt___SequencesKt$runningReduce$1", m391f = "_Sequences.kt", m390i = {0, 0, 0, 1, 1, 1}, m389l = {2129, 2132}, m388m = "invokeSuspend", m387n = {"$this$sequence", "iterator", "accumulator", "$this$sequence", "iterator", "accumulator"}, m386s = {"L$0", "L$1", "L$2", "L$0", "L$1", "L$2"})
/* loaded from: classes-dex2jar.jar:kotlin/sequences/SequencesKt___SequencesKt$runningReduce$1.class */
public final class SequencesKt___SequencesKt$runningReduce$1 extends RestrictedSuspendLambda implements Function2<SequenceScope<? super S>, Continuation<? super Unit>, Object> {
    final /* synthetic */ Function2 $operation;
    final /* synthetic */ Sequence $this_runningReduce;
    Object L$0;
    Object L$1;
    Object L$2;
    int label;

    /* renamed from: p$ */
    private SequenceScope f1331p$;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SequencesKt___SequencesKt$runningReduce$1(Sequence sequence, Function2 function2, Continuation continuation) {
        super(2, continuation);
        this.$this_runningReduce = sequence;
        this.$operation = function2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> completion) {
        Intrinsics.checkNotNullParameter(completion, "completion");
        SequencesKt___SequencesKt$runningReduce$1 sequencesKt___SequencesKt$runningReduce$1 = new SequencesKt___SequencesKt$runningReduce$1(this.$this_runningReduce, this.$operation, completion);
        sequencesKt___SequencesKt$runningReduce$1.f1331p$ = (SequenceScope) obj;
        return sequencesKt___SequencesKt$runningReduce$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Continuation<? super Unit> continuation) {
        return ((SequencesKt___SequencesKt$runningReduce$1) create(obj, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        SequenceScope sequenceScope;
        Iterator it;
        Object obj2;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            sequenceScope = this.f1331p$;
            it = this.$this_runningReduce.iterator();
            if (it.hasNext()) {
                obj2 = it.next();
                this.L$0 = sequenceScope;
                this.L$1 = it;
                this.L$2 = obj2;
                this.label = 1;
                if (sequenceScope.yield(obj2, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            }
            return Unit.INSTANCE;
        } else if (i != 1 && i != 2) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            Object obj3 = this.L$2;
            it = (Iterator) this.L$1;
            sequenceScope = (SequenceScope) this.L$0;
            ResultKt.throwOnFailure(obj);
            obj2 = obj3;
        }
        while (it.hasNext()) {
            Object invoke = this.$operation.invoke(obj2, it.next());
            this.L$0 = sequenceScope;
            this.L$1 = it;
            this.L$2 = invoke;
            this.label = 2;
            obj2 = invoke;
            if (sequenceScope.yield(invoke, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
        }
        return Unit.INSTANCE;
    }
}
