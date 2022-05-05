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
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0012\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u0001\"\u0004\b��\u0010\u0002\"\u0004\b\u0001\u0010\u0003*\b\u0012\u0004\u0012\u0002H\u00030\u0004H\u008a@¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"<anonymous>", "", "T", "R", "Lkotlin/sequences/SequenceScope;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
@DebugMetadata(m1915c = "kotlin.sequences.SequencesKt___SequencesKt$zipWithNext$2", m1914f = "_Sequences.kt", m1913l = {2656}, m1912m = "invokeSuspend")
/* loaded from: classes2-dex2jar.jar:kotlin/sequences/SequencesKt___SequencesKt$zipWithNext$2.class */
final class SequencesKt___SequencesKt$zipWithNext$2 extends RestrictedSuspendLambda implements Function2<SequenceScope<? super R>, Continuation<? super Unit>, Object> {

    /* renamed from: g */
    private SequenceScope f20978g;

    /* renamed from: h */
    Object f20979h;

    /* renamed from: i */
    Object f20980i;

    /* renamed from: j */
    Object f20981j;

    /* renamed from: k */
    Object f20982k;

    /* renamed from: l */
    int f20983l;

    /* renamed from: m */
    final /* synthetic */ Sequence f20984m;

    /* renamed from: n */
    final /* synthetic */ Function2 f20985n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SequencesKt___SequencesKt$zipWithNext$2(Sequence sequence, Function2 function2, Continuation continuation) {
        super(2, continuation);
        this.f20984m = sequence;
        this.f20985n = function2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> completion) {
        Intrinsics.m1830e(completion, "completion");
        SequencesKt___SequencesKt$zipWithNext$2 sequencesKt___SequencesKt$zipWithNext$2 = new SequencesKt___SequencesKt$zipWithNext$2(this.f20984m, this.f20985n, completion);
        sequencesKt___SequencesKt$zipWithNext$2.f20978g = (SequenceScope) obj;
        return sequencesKt___SequencesKt$zipWithNext$2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object d;
        SequenceScope sequenceScope;
        Iterator it;
        Object obj2;
        d = IntrinsicsKt__IntrinsicsKt.m1920d();
        int i = this.f20983l;
        if (i == 0) {
            ResultKt.m2472b(obj);
            sequenceScope = this.f20978g;
            it = this.f20984m.iterator();
            if (!it.hasNext()) {
                return Unit.f20447a;
            }
            obj2 = it.next();
        } else if (i == 1) {
            obj2 = this.f20982k;
            it = (Iterator) this.f20980i;
            sequenceScope = (SequenceScope) this.f20979h;
            ResultKt.m2472b(obj);
        } else {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        while (it.hasNext()) {
            Object next = it.next();
            Object o = this.f20985n.mo422o(obj2, next);
            this.f20979h = sequenceScope;
            this.f20980i = it;
            this.f20981j = obj2;
            this.f20982k = next;
            this.f20983l = 1;
            if (sequenceScope.mo1645a(o, this) == d) {
                return d;
            }
            obj2 = next;
        }
        return Unit.f20447a;
    }

    @Override // kotlin.jvm.functions.Function2
    /* renamed from: o */
    public final Object mo422o(Object obj, Continuation<? super Unit> continuation) {
        return ((SequencesKt___SequencesKt$zipWithNext$2) create(obj, continuation)).invokeSuspend(Unit.f20447a);
    }
}
