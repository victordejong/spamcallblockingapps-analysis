package kotlinx.coroutines.flow.internal;

import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.channels.ReceiveChannel;
import kotlinx.coroutines.flow.FlowCollector;
import p626l.C14989s;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.p636k.p637a.AbstractC15078m;
import p626l.p641z.p642c.AbstractC15118l;
import p626l.p641z.p642c.AbstractC15122p;
import p626l.p641z.p643d.AbstractC15150l;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u001e\n��\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\b\u0003\u0010��\u001a\u00020\u0001\"\u0004\b��\u0010\u0002\"\u0004\b\u0001\u0010\u0003\"\u0004\b\u0002\u0010\u0004*\u00020\u0005H\u008a@¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, m815d2 = {"<anonymous>", "", "T1", "T2", "R", "Lkotlinx/coroutines/CoroutineScope;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "kotlinx/coroutines/flow/internal/CombineKt$zipImpl$1$1"}, m814k = 3, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1.class */
public final class CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1 extends AbstractC15078m implements AbstractC15122p<CoroutineScope, AbstractC15044d<? super C14989s>, Object> {
    public final /* synthetic */ FlowCollector $this_unsafeFlow;
    public Object L$0;
    public Object L$1;
    public Object L$10;
    public Object L$11;
    public Object L$12;
    public Object L$2;
    public Object L$3;
    public Object L$4;
    public Object L$5;
    public Object L$6;
    public Object L$7;
    public Object L$8;
    public Object L$9;
    public int label;

    /* renamed from: p$ */
    public CoroutineScope f32919p$;
    public final /* synthetic */ CombineKt$zipImpl$$inlined$unsafeFlow$1 this$0;

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u001e\n��\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\b\u0004\n\u0002\b\u0004\n\u0002\b\u0004\n\u0002\u0010\u0003\n\u0002\b\u0002\u0010��\u001a\u00020\u0001\"\u0004\b��\u0010\u0002\"\u0004\b\u0001\u0010\u0003\"\u0004\b\u0002\u0010\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\n¢\u0006\u0002\b\u0007¨\u0006\b"}, m815d2 = {"<anonymous>", "", "T1", "T2", "R", "it", "", "invoke", "kotlinx/coroutines/flow/internal/CombineKt$zipImpl$1$1$1"}, m814k = 3, m813mv = {1, 1, 16})
    /* renamed from: kotlinx.coroutines.flow.internal.CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1$1 */
    /* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1$1.class */
    public static final class C148691 extends AbstractC15150l implements AbstractC15118l<Throwable, C14989s> {
        public final /* synthetic */ ReceiveChannel $first;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C148691(ReceiveChannel receiveChannel) {
            super(1);
            this.$first = receiveChannel;
        }

        @Override // p626l.p641z.p642c.AbstractC15118l
        public /* bridge */ /* synthetic */ C14989s invoke(Throwable th) {
            invoke2(th);
            return C14989s.f33022a;
        }

        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2(Throwable th) {
            if (!this.$first.isClosedForReceive()) {
                this.$first.cancel((CancellationException) new AbortFlowException(CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1.this.$this_unsafeFlow));
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1(FlowCollector flowCollector, AbstractC15044d dVar, CombineKt$zipImpl$$inlined$unsafeFlow$1 combineKt$zipImpl$$inlined$unsafeFlow$1) {
        super(2, dVar);
        this.$this_unsafeFlow = flowCollector;
        this.this$0 = combineKt$zipImpl$$inlined$unsafeFlow$1;
    }

    @Override // p626l.p634w.p636k.p637a.AbstractC15065a
    public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
        CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1 combineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1 = new CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1(this.$this_unsafeFlow, dVar, this.this$0);
        combineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1.f32919p$ = (CoroutineScope) obj;
        return combineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;
    }

    @Override // p626l.p641z.p642c.AbstractC15122p
    public final Object invoke(CoroutineScope coroutineScope, AbstractC15044d<? super C14989s> dVar) {
        return ((CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1) create(coroutineScope, dVar)).invokeSuspend(C14989s.f33022a);
    }

    /* JADX WARN: Not initialized variable reg: 14, insn: 0x0796: MOVE  (r0 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r14 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:186:0x0796 */
    /* JADX WARN: Not initialized variable reg: 22, insn: 0x07d6: MOVE  (r3 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r22 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:196:0x07d0 */
    /* JADX WARN: Not initialized variable reg: 23, insn: 0x07c6: MOVE  (r0 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r23 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:194:0x07c6 */
    /* JADX WARN: Removed duplicated region for block: B:160:0x06e0  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x06e3  */
    /* JADX WARN: Removed duplicated region for block: B:166:0x072d A[Catch: all -> 0x0762, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x0762, blocks: (B:65:0x03c2, B:67:0x03cd, B:166:0x072d), top: B:201:0x03c2 }] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x03a1  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x03a4  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x03cd A[Catch: all -> 0x0762, TRY_LEAVE, TryCatch #0 {all -> 0x0762, blocks: (B:65:0x03c2, B:67:0x03cd, B:166:0x072d), top: B:201:0x03c2 }] */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0467  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x046e  */
    /* JADX WARN: Type inference failed for: r0v1, types: [kotlinx.coroutines.channels.ReceiveChannel, java.lang.Object] */
    /* JADX WARN: Unknown variable types count: 1 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:162:0x06e3 -> B:163:0x0713). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:77:0x0469 -> B:36:0x02e4). Please submit an issue!!! */
    @Override // p626l.p634w.p636k.p637a.AbstractC15065a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r7) {
        /*
            Method dump skipped, instructions count: 2031
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.internal.CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
