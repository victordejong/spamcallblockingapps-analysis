package kotlin.sequences;

import java.util.Iterator;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0012\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u0001\"\u0004\b��\u0010\u0002\"\b\b\u0001\u0010\u0003*\u0002H\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0004H\u008a@¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"<anonymous>", "", "S", "T", "Lkotlin/sequences/SequenceScope;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
@DebugMetadata(m1915c = "kotlin.sequences.SequencesKt___SequencesKt$runningReduce$1", m1914f = "_Sequences.kt", m1913l = {2129, 2132}, m1912m = "invokeSuspend")
/* loaded from: classes2-dex2jar.jar:kotlin/sequences/SequencesKt___SequencesKt$runningReduce$1.class */
final class SequencesKt___SequencesKt$runningReduce$1 extends RestrictedSuspendLambda implements Function2<SequenceScope<? super S>, Continuation<? super Unit>, Object> {

    /* renamed from: g */
    private SequenceScope f20960g;

    /* renamed from: h */
    Object f20961h;

    /* renamed from: i */
    Object f20962i;

    /* renamed from: j */
    Object f20963j;

    /* renamed from: k */
    int f20964k;

    /* renamed from: l */
    final /* synthetic */ Sequence f20965l;

    /* renamed from: m */
    final /* synthetic */ Function2 f20966m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SequencesKt___SequencesKt$runningReduce$1(Sequence sequence, Function2 function2, Continuation continuation) {
        super(2, continuation);
        this.f20965l = sequence;
        this.f20966m = function2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> completion) {
        Intrinsics.m1830e(completion, "completion");
        SequencesKt___SequencesKt$runningReduce$1 sequencesKt___SequencesKt$runningReduce$1 = new SequencesKt___SequencesKt$runningReduce$1(this.f20965l, this.f20966m, completion);
        sequencesKt___SequencesKt$runningReduce$1.f20960g = (SequenceScope) obj;
        return sequencesKt___SequencesKt$runningReduce$1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object d;
        SequenceScope sequenceScope;
        Iterator it;
        Object obj2;
        d = IntrinsicsKt__IntrinsicsKt.m1920d();
        int i = this.f20964k;
        if (i == 0) {
            ResultKt.m2472b(obj);
            sequenceScope = this.f20960g;
            it = this.f20965l.iterator();
            if (it.hasNext()) {
                obj2 = it.next();
                this.f20961h = sequenceScope;
                this.f20962i = it;
                this.f20963j = obj2;
                this.f20964k = 1;
                if (sequenceScope.mo1645a(obj2, this) == d) {
                    return d;
                }
            }
            return Unit.f20447a;
        } else if (i == 1 || i == 2) {
            obj2 = this.f20963j;
            it = (Iterator) this.f20962i;
            sequenceScope = (SequenceScope) this.f20961h;
            ResultKt.m2472b(obj);
        } else {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        while (it.hasNext()) {
            Object o = this.f20966m.mo422o(obj2, it.next());
            this.f20961h = sequenceScope;
            this.f20962i = it;
            this.f20963j = o;
            this.f20964k = 2;
            obj2 = o;
            if (sequenceScope.mo1645a(o, this) == d) {
                return d;
            }
        }
        return Unit.f20447a;
    }

    @Override // kotlin.jvm.functions.Function2
    /* renamed from: o */
    public final Object mo422o(Object obj, Continuation<? super Unit> continuation) {
        return ((SequencesKt___SequencesKt$runningReduce$1) create(obj, continuation)).invokeSuspend(Unit.f20447a);
    }
}
