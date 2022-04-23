package kotlin.coroutines;

import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Ref$IntRef;
import p573f.C9946p;
import p573f.p590w.p591b.AbstractC10035p;
import p573f.p590w.p592c.C10059q;
/* loaded from: classes2-dex2jar.jar:kotlin/coroutines/CombinedContext$writeReplace$1.class */
public final class CombinedContext$writeReplace$1 extends Lambda implements AbstractC10035p<C9946p, CoroutineContext.AbstractC10476a, C9946p> {
    public final /* synthetic */ CoroutineContext[] $elements;
    public final /* synthetic */ Ref$IntRef $index;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CombinedContext$writeReplace$1(CoroutineContext[] coroutineContextArr, Ref$IntRef ref$IntRef) {
        super(2);
        this.$elements = coroutineContextArr;
        this.$index = ref$IntRef;
    }

    @Override // p573f.p590w.p591b.AbstractC10035p
    public /* bridge */ /* synthetic */ C9946p invoke(C9946p pVar, CoroutineContext.AbstractC10476a aVar) {
        invoke2(pVar, aVar);
        return C9946p.f37137a;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(C9946p pVar, CoroutineContext.AbstractC10476a aVar) {
        C10059q.m1637b(pVar, "<anonymous parameter 0>");
        C10059q.m1637b(aVar, "element");
        CoroutineContext[] coroutineContextArr = this.$elements;
        Ref$IntRef ref$IntRef = this.$index;
        int i = ref$IntRef.element;
        ref$IntRef.element = i + 1;
        coroutineContextArr[i] = aVar;
    }
}
