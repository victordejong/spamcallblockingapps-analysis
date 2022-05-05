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
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0012\n��\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u0001\"\u0004\b��\u0010\u0002\"\u0004\b\u0001\u0010\u0003\"\u0004\b\u0002\u0010\u0004*\b\u0012\u0004\u0012\u0002H\u00040\u0005H\u008a@¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"<anonymous>", "", "T", "C", "R", "Lkotlin/sequences/SequenceScope;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
@DebugMetadata(m1915c = "kotlin.sequences.SequencesKt__SequencesKt$flatMapIndexed$1", m1914f = "Sequences.kt", m1913l = {332}, m1912m = "invokeSuspend")
/* loaded from: classes2-dex2jar.jar:kotlin/sequences/SequencesKt__SequencesKt$flatMapIndexed$1.class */
final class SequencesKt__SequencesKt$flatMapIndexed$1 extends RestrictedSuspendLambda implements Function2<SequenceScope<? super R>, Continuation<? super Unit>, Object> {

    /* renamed from: g */
    private SequenceScope f20894g;

    /* renamed from: h */
    Object f20895h;

    /* renamed from: i */
    Object f20896i;

    /* renamed from: j */
    Object f20897j;

    /* renamed from: k */
    Object f20898k;

    /* renamed from: l */
    int f20899l;

    /* renamed from: m */
    int f20900m;

    /* renamed from: n */
    final /* synthetic */ Sequence f20901n;

    /* renamed from: o */
    final /* synthetic */ Function2 f20902o;

    /* renamed from: p */
    final /* synthetic */ Function1 f20903p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SequencesKt__SequencesKt$flatMapIndexed$1(Sequence sequence, Function2 function2, Function1 function1, Continuation continuation) {
        super(2, continuation);
        this.f20901n = sequence;
        this.f20902o = function2;
        this.f20903p = function1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> completion) {
        Intrinsics.m1830e(completion, "completion");
        SequencesKt__SequencesKt$flatMapIndexed$1 sequencesKt__SequencesKt$flatMapIndexed$1 = new SequencesKt__SequencesKt$flatMapIndexed$1(this.f20901n, this.f20902o, this.f20903p, completion);
        sequencesKt__SequencesKt$flatMapIndexed$1.f20894g = (SequenceScope) obj;
        return sequencesKt__SequencesKt$flatMapIndexed$1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object d;
        SequenceScope sequenceScope;
        int i;
        Iterator it;
        d = IntrinsicsKt__IntrinsicsKt.m1920d();
        int i2 = this.f20900m;
        if (i2 == 0) {
            ResultKt.m2472b(obj);
            sequenceScope = this.f20894g;
            it = this.f20901n.iterator();
            i = 0;
        } else if (i2 == 1) {
            it = (Iterator) this.f20897j;
            i = this.f20899l;
            sequenceScope = (SequenceScope) this.f20895h;
            ResultKt.m2472b(obj);
        } else {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        while (it.hasNext()) {
            Object next = it.next();
            Function2 function2 = this.f20902o;
            int i3 = i + 1;
            if (i >= 0) {
                Object o = function2.mo422o(Boxing.m1917c(i), next);
                this.f20895h = sequenceScope;
                this.f20899l = i3;
                this.f20896i = next;
                this.f20897j = it;
                this.f20898k = o;
                this.f20900m = 1;
                if (sequenceScope.mo1644b((Iterator) this.f20903p.invoke(o), this) == d) {
                    return d;
                }
                i = i3;
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
        return ((SequencesKt__SequencesKt$flatMapIndexed$1) create(obj, continuation)).invokeSuspend(Unit.f20447a);
    }
}
