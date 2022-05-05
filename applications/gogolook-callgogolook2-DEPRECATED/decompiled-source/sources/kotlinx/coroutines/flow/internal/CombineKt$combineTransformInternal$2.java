package kotlinx.coroutines.flow.internal;

import kotlin.Metadata;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import p626l.C14989s;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.p636k.p637a.AbstractC15070f;
import p626l.p634w.p636k.p637a.AbstractC15078m;
import p626l.p641z.p642c.AbstractC15122p;
import p626l.p641z.p642c.AbstractC15124r;
@AbstractC15070f(m473c = "kotlinx.coroutines.flow.internal.CombineKt$combineTransformInternal$2", m472f = "Combine.kt", m471l = {143}, m470m = "invokeSuspend")
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0012\n��\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u0001\"\u0004\b��\u0010\u0002\"\u0004\b\u0001\u0010\u0003\"\u0004\b\u0002\u0010\u0004*\u00020\u0005H\u008a@¢\u0006\u0004\b\u0006\u0010\u0007"}, m815d2 = {"<anonymous>", "", "T1", "T2", "R", "Lkotlinx/coroutines/CoroutineScope;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, m814k = 3, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/flow/internal/CombineKt$combineTransformInternal$2.class */
public final class CombineKt$combineTransformInternal$2 extends AbstractC15078m implements AbstractC15122p<CoroutineScope, AbstractC15044d<? super C14989s>, Object> {
    public final /* synthetic */ Flow $first;
    public final /* synthetic */ Flow $second;
    public final /* synthetic */ FlowCollector $this_combineTransformInternal;
    public final /* synthetic */ AbstractC15124r $transform;
    public Object L$0;
    public Object L$1;
    public Object L$2;
    public Object L$3;
    public Object L$4;
    public Object L$5;
    public Object L$6;
    public Object L$7;
    public int label;

    /* renamed from: p$ */
    public CoroutineScope f32923p$;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CombineKt$combineTransformInternal$2(FlowCollector flowCollector, Flow flow, Flow flow2, AbstractC15124r rVar, AbstractC15044d dVar) {
        super(2, dVar);
        this.$this_combineTransformInternal = flowCollector;
        this.$first = flow;
        this.$second = flow2;
        this.$transform = rVar;
    }

    @Override // p626l.p634w.p636k.p637a.AbstractC15065a
    public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
        CombineKt$combineTransformInternal$2 combineKt$combineTransformInternal$2 = new CombineKt$combineTransformInternal$2(this.$this_combineTransformInternal, this.$first, this.$second, this.$transform, dVar);
        combineKt$combineTransformInternal$2.f32923p$ = (CoroutineScope) obj;
        return combineKt$combineTransformInternal$2;
    }

    @Override // p626l.p641z.p642c.AbstractC15122p
    public final Object invoke(CoroutineScope coroutineScope, AbstractC15044d<? super C14989s> dVar) {
        return ((CombineKt$combineTransformInternal$2) create(coroutineScope, dVar)).invokeSuspend(C14989s.f33022a);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(14:16|(1:40)|17|18|38|19|(1:21)|22|23|(1:25)|29|(1:31)|32|(2:34|35)(18:36|37|10|(1:12)|16|40|17|18|38|19|(0)|22|23|(0)|29|(0)|32|(0)(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x01ea, code lost:
        r22 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x01f1, code lost:
        r0.handleBuilderException(r22);
     */
    /* JADX WARN: Removed duplicated region for block: B:12:0x00e2  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0164 A[Catch: all -> 0x01ea, TRY_ENTER, TryCatch #0 {all -> 0x01ea, blocks: (B:19:0x0149, B:21:0x0164, B:23:0x0194, B:25:0x01b9), top: B:38:0x0149 }] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x01b9 A[Catch: all -> 0x01ea, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x01ea, blocks: (B:19:0x0149, B:21:0x0164, B:23:0x0194, B:25:0x01b9), top: B:38:0x0149 }] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0207  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0212  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0214  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:36:0x0214 -> B:37:0x021b). Please submit an issue!!! */
    @Override // p626l.p634w.p636k.p637a.AbstractC15065a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r12) {
        /*
            Method dump skipped, instructions count: 549
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.internal.CombineKt$combineTransformInternal$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
