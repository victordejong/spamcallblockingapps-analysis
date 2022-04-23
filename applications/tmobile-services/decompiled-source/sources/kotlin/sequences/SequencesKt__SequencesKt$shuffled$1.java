package kotlin.sequences;

import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.random.Random;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u0001\"\u0004\b��\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0003H\u008a@¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"<anonymous>", "", "T", "Lkotlin/sequences/SequenceScope;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
@DebugMetadata(m1915c = "kotlin.sequences.SequencesKt__SequencesKt$shuffled$1", m1914f = "Sequences.kt", m1913l = {145}, m1912m = "invokeSuspend")
/* loaded from: classes2-dex2jar.jar:kotlin/sequences/SequencesKt__SequencesKt$shuffled$1.class */
final class SequencesKt__SequencesKt$shuffled$1 extends RestrictedSuspendLambda implements Function2<SequenceScope<? super T>, Continuation<? super Unit>, Object> {

    /* renamed from: g */
    private SequenceScope f20912g;

    /* renamed from: h */
    Object f20913h;

    /* renamed from: i */
    Object f20914i;

    /* renamed from: j */
    Object f20915j;

    /* renamed from: k */
    Object f20916k;

    /* renamed from: l */
    int f20917l;

    /* renamed from: m */
    int f20918m;

    /* renamed from: n */
    final /* synthetic */ Sequence f20919n;

    /* renamed from: o */
    final /* synthetic */ Random f20920o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SequencesKt__SequencesKt$shuffled$1(Sequence sequence, Random random, Continuation continuation) {
        super(2, continuation);
        this.f20919n = sequence;
        this.f20920o = random;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> completion) {
        Intrinsics.m1830e(completion, "completion");
        SequencesKt__SequencesKt$shuffled$1 sequencesKt__SequencesKt$shuffled$1 = new SequencesKt__SequencesKt$shuffled$1(this.f20919n, this.f20920o, completion);
        sequencesKt__SequencesKt$shuffled$1.f20912g = (SequenceScope) obj;
        return sequencesKt__SequencesKt$shuffled$1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object d;
        SequenceScope sequenceScope;
        List list;
        d = IntrinsicsKt__IntrinsicsKt.m1920d();
        int i = this.f20918m;
        if (i == 0) {
            ResultKt.m2472b(obj);
            sequenceScope = this.f20912g;
            list = SequencesKt___SequencesKt.m1611s(this.f20919n);
        } else if (i == 1) {
            list = (List) this.f20914i;
            sequenceScope = (SequenceScope) this.f20913h;
            ResultKt.m2472b(obj);
        } else {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        while (!list.isEmpty()) {
            int i2 = this.f20920o.mo1761i(list.size());
            Object w = CollectionsKt.m2181w(list);
            Object obj2 = i2 < list.size() ? list.set(i2, w) : w;
            this.f20913h = sequenceScope;
            this.f20914i = list;
            this.f20917l = i2;
            this.f20915j = w;
            this.f20916k = obj2;
            this.f20918m = 1;
            if (sequenceScope.mo1645a(obj2, this) == d) {
                return d;
            }
        }
        return Unit.f20447a;
    }

    @Override // kotlin.jvm.functions.Function2
    /* renamed from: o */
    public final Object mo422o(Object obj, Continuation<? super Unit> continuation) {
        return ((SequencesKt__SequencesKt$shuffled$1) create(obj, continuation)).invokeSuspend(Unit.f20447a);
    }
}
