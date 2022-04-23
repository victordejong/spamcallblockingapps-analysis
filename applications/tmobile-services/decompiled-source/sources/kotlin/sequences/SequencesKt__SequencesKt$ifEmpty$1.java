package kotlin.sequences;

import java.util.Iterator;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u0001\"\u0004\b��\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0003H\u008a@¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"<anonymous>", "", "T", "Lkotlin/sequences/SequenceScope;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
@DebugMetadata(m1915c = "kotlin.sequences.SequencesKt__SequencesKt$ifEmpty$1", m1914f = "Sequences.kt", m1913l = {69, 71}, m1912m = "invokeSuspend")
/* loaded from: classes2-dex2jar.jar:kotlin/sequences/SequencesKt__SequencesKt$ifEmpty$1.class */
final class SequencesKt__SequencesKt$ifEmpty$1 extends RestrictedSuspendLambda implements Function2<SequenceScope<? super T>, Continuation<? super Unit>, Object> {

    /* renamed from: g */
    private SequenceScope f20906g;

    /* renamed from: h */
    Object f20907h;

    /* renamed from: i */
    Object f20908i;

    /* renamed from: j */
    int f20909j;

    /* renamed from: k */
    final /* synthetic */ Sequence f20910k;

    /* renamed from: l */
    final /* synthetic */ Function0 f20911l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SequencesKt__SequencesKt$ifEmpty$1(Sequence sequence, Function0 function0, Continuation continuation) {
        super(2, continuation);
        this.f20910k = sequence;
        this.f20911l = function0;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> completion) {
        Intrinsics.m1830e(completion, "completion");
        SequencesKt__SequencesKt$ifEmpty$1 sequencesKt__SequencesKt$ifEmpty$1 = new SequencesKt__SequencesKt$ifEmpty$1(this.f20910k, this.f20911l, completion);
        sequencesKt__SequencesKt$ifEmpty$1.f20906g = (SequenceScope) obj;
        return sequencesKt__SequencesKt$ifEmpty$1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object d;
        d = IntrinsicsKt__IntrinsicsKt.m1920d();
        int i = this.f20909j;
        if (i == 0) {
            ResultKt.m2472b(obj);
            SequenceScope sequenceScope = this.f20906g;
            Iterator it = this.f20910k.iterator();
            if (it.hasNext()) {
                this.f20907h = sequenceScope;
                this.f20908i = it;
                this.f20909j = 1;
                if (sequenceScope.mo1644b(it, this) == d) {
                    return d;
                }
            } else {
                this.f20907h = sequenceScope;
                this.f20908i = it;
                this.f20909j = 2;
                if (sequenceScope.m1643e((Sequence) this.f20911l.invoke(), this) == d) {
                    return d;
                }
            }
        } else if (i == 1 || i == 2) {
            Iterator it2 = (Iterator) this.f20908i;
            SequenceScope sequenceScope2 = (SequenceScope) this.f20907h;
            ResultKt.m2472b(obj);
        } else {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        return Unit.f20447a;
    }

    @Override // kotlin.jvm.functions.Function2
    /* renamed from: o */
    public final Object mo422o(Object obj, Continuation<? super Unit> continuation) {
        return ((SequencesKt__SequencesKt$ifEmpty$1) create(obj, continuation)).invokeSuspend(Unit.f20447a);
    }
}
