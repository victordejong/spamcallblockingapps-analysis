package kotlin.sequences;

import java.util.Iterator;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0012\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u0001\"\u0004\b��\u0010\u0002\"\b\b\u0001\u0010\u0003*\u0002H\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0004H\u008a@¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"<anonymous>", "", "S", "T", "Lkotlin/sequences/SequenceScope;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
@DebugMetadata(m1915c = "kotlin.sequences.SequencesKt___SequencesKt$runningReduceIndexed$1", m1914f = "_Sequences.kt", m1913l = {2158, 2162}, m1912m = "invokeSuspend")
/* loaded from: classes2-dex2jar.jar:kotlin/sequences/SequencesKt___SequencesKt$runningReduceIndexed$1.class */
final class SequencesKt___SequencesKt$runningReduceIndexed$1 extends RestrictedSuspendLambda implements Function2<SequenceScope<? super S>, Continuation<? super Unit>, Object> {

    /* renamed from: g */
    private SequenceScope f20967g;

    /* renamed from: h */
    Object f20968h;

    /* renamed from: i */
    Object f20969i;

    /* renamed from: j */
    Object f20970j;

    /* renamed from: k */
    int f20971k;

    /* renamed from: l */
    int f20972l;

    /* renamed from: m */
    final /* synthetic */ Sequence f20973m;

    /* renamed from: n */
    final /* synthetic */ Function3 f20974n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SequencesKt___SequencesKt$runningReduceIndexed$1(Sequence sequence, Function3 function3, Continuation continuation) {
        super(2, continuation);
        this.f20973m = sequence;
        this.f20974n = function3;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> completion) {
        Intrinsics.m1830e(completion, "completion");
        SequencesKt___SequencesKt$runningReduceIndexed$1 sequencesKt___SequencesKt$runningReduceIndexed$1 = new SequencesKt___SequencesKt$runningReduceIndexed$1(this.f20973m, this.f20974n, completion);
        sequencesKt___SequencesKt$runningReduceIndexed$1.f20967g = (SequenceScope) obj;
        return sequencesKt___SequencesKt$runningReduceIndexed$1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object d;
        SequenceScope sequenceScope;
        Iterator it;
        Object obj2;
        d = IntrinsicsKt__IntrinsicsKt.m1920d();
        int i = this.f20972l;
        int i2 = 1;
        if (i == 0) {
            ResultKt.m2472b(obj);
            SequenceScope sequenceScope2 = this.f20967g;
            it = this.f20973m.iterator();
            if (it.hasNext()) {
                Object next = it.next();
                this.f20968h = sequenceScope2;
                this.f20969i = it;
                this.f20970j = next;
                this.f20972l = 1;
                obj2 = next;
                sequenceScope = sequenceScope2;
                if (sequenceScope2.mo1645a(next, this) == d) {
                    return d;
                }
            }
            return Unit.f20447a;
        } else if (i == 1) {
            obj2 = this.f20970j;
            it = (Iterator) this.f20969i;
            sequenceScope = (SequenceScope) this.f20968h;
            ResultKt.m2472b(obj);
        } else if (i == 2) {
            i2 = this.f20971k;
            obj2 = this.f20970j;
            it = (Iterator) this.f20969i;
            sequenceScope = (SequenceScope) this.f20968h;
            ResultKt.m2472b(obj);
        } else {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        while (it.hasNext()) {
            Function3 function3 = this.f20974n;
            int i3 = i2 + 1;
            if (i2 >= 0) {
                obj2 = function3.mo594a(Boxing.m1917c(i2), obj2, it.next());
                this.f20968h = sequenceScope;
                this.f20969i = it;
                this.f20970j = obj2;
                this.f20971k = i3;
                this.f20972l = 2;
                if (sequenceScope.mo1645a(obj2, this) == d) {
                    return d;
                }
                i2 = i3;
            } else {
                CollectionsKt.m2188o();
                throw null;
            }
        }
        return Unit.f20447a;
    }

    @Override // kotlin.jvm.functions.Function2
    /* renamed from: o */
    public final Object mo422o(Object obj, Continuation<? super Unit> continuation) {
        return ((SequencesKt___SequencesKt$runningReduceIndexed$1) create(obj, continuation)).invokeSuspend(Unit.f20447a);
    }
}
