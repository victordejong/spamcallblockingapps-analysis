package kotlinx.coroutines.flow.internal;

import kotlin.Metadata;
import kotlinx.coroutines.channels.ReceiveChannel;
import p459j.p460a.p541n0.C13032a;
import p626l.C14989s;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.p636k.p637a.AbstractC15078m;
import p626l.p641z.p642c.AbstractC15122p;
import p626l.p641z.p643d.C15159u;
import p626l.p641z.p643d.C15164z;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\"\n��\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\b\u0004\n\u0002\b\u0004\n\u0002\b\u0004\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\b\u0003\u0010��\u001a\u00020\u0001\"\u0004\b��\u0010\u0002\"\u0004\b\u0001\u0010\u0003\"\u0004\b\u0002\u0010\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u008a@¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, m815d2 = {"<anonymous>", "", "T1", "T2", "R", C13032a.f29462d, "", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "kotlinx/coroutines/flow/internal/CombineKt$combineTransformInternal$2$1$4"}, m814k = 3, m813mv = {1, 1, 16})
/* renamed from: kotlinx.coroutines.flow.internal.CombineKt$combineTransformInternal$2$invokeSuspend$$inlined$select$lambda$3 */
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/flow/internal/CombineKt$combineTransformInternal$2$invokeSuspend$$inlined$select$lambda$3.class */
public final class C14867x599c5571 extends AbstractC15078m implements AbstractC15122p<Object, AbstractC15044d<? super C14989s>, Object> {
    public final /* synthetic */ ReceiveChannel $firstChannel$inlined;
    public final /* synthetic */ C15159u $firstIsClosed$inlined;
    public final /* synthetic */ C15164z $firstValue$inlined;
    public final /* synthetic */ ReceiveChannel $secondChannel$inlined;
    public final /* synthetic */ C15159u $secondIsClosed$inlined;
    public final /* synthetic */ C15164z $secondValue$inlined;
    public Object L$0;
    public int label;
    public Object p$0;
    public final /* synthetic */ CombineKt$combineTransformInternal$2 this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C14867x599c5571(AbstractC15044d dVar, CombineKt$combineTransformInternal$2 combineKt$combineTransformInternal$2, C15159u uVar, ReceiveChannel receiveChannel, C15164z zVar, C15164z zVar2, C15159u uVar2, ReceiveChannel receiveChannel2) {
        super(2, dVar);
        this.this$0 = combineKt$combineTransformInternal$2;
        this.$firstIsClosed$inlined = uVar;
        this.$firstChannel$inlined = receiveChannel;
        this.$firstValue$inlined = zVar;
        this.$secondValue$inlined = zVar2;
        this.$secondIsClosed$inlined = uVar2;
        this.$secondChannel$inlined = receiveChannel2;
    }

    @Override // p626l.p634w.p636k.p637a.AbstractC15065a
    public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
        C14867x599c5571 combineKt$combineTransformInternal$2$invokeSuspend$$inlined$select$lambda$3 = new C14867x599c5571(dVar, this.this$0, this.$firstIsClosed$inlined, this.$firstChannel$inlined, this.$firstValue$inlined, this.$secondValue$inlined, this.$secondIsClosed$inlined, this.$secondChannel$inlined);
        combineKt$combineTransformInternal$2$invokeSuspend$$inlined$select$lambda$3.p$0 = obj;
        return combineKt$combineTransformInternal$2$invokeSuspend$$inlined$select$lambda$3;
    }

    @Override // p626l.p641z.p642c.AbstractC15122p
    public final Object invoke(Object obj, AbstractC15044d<? super C14989s> dVar) {
        return ((C14867x599c5571) create(obj, dVar)).invokeSuspend(C14989s.f33022a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v22, types: [T] */
    /* JADX WARN: Type inference failed for: r0v29, types: [T] */
    /* JADX WARN: Type inference failed for: r0v7, types: [T, java.lang.Object] */
    /* JADX WARN: Unknown variable types count: 3 */
    @Override // p626l.p634w.p636k.p637a.AbstractC15065a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r7) {
        /*
            r6 = this;
            java.lang.Object r0 = p626l.p634w.p635j.C15064c.m478a()
            r8 = r0
            r0 = r6
            int r0 = r0.label
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L_0x0023
            r0 = r9
            r1 = 1
            if (r0 != r1) goto L_0x0019
            r0 = r7
            p626l.C14982l.m653a(r0)
            goto L_0x00a8
        L_0x0019:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L_0x0023:
            r0 = r7
            p626l.C14982l.m653a(r0)
            r0 = r6
            java.lang.Object r0 = r0.p$0
            r10 = r0
            r0 = r6
            l.z.d.z r0 = r0.$secondValue$inlined
            r1 = r10
            r0.f33152a = r1
            r0 = r6
            l.z.d.z r0 = r0.$firstValue$inlined
            T r0 = r0.f33152a
            if (r0 == 0) goto L_0x00a8
            r0 = r6
            kotlinx.coroutines.flow.internal.CombineKt$combineTransformInternal$2 r0 = r0.this$0
            r7 = r0
            r0 = r7
            l.z.c.r r0 = r0.$transform
            r11 = r0
            r0 = r7
            kotlinx.coroutines.flow.FlowCollector r0 = r0.$this_combineTransformInternal
            r12 = r0
            kotlinx.coroutines.internal.Symbol r0 = kotlinx.coroutines.flow.internal.CombineKt.getNull()
            r13 = r0
            r0 = r6
            l.z.d.z r0 = r0.$firstValue$inlined
            T r0 = r0.f33152a
            r14 = r0
            r0 = 0
            r15 = r0
            r0 = r14
            r7 = r0
            r0 = r14
            r1 = r13
            if (r0 != r1) goto L_0x006e
            r0 = 0
            r7 = r0
        L_0x006e:
            kotlinx.coroutines.internal.Symbol r0 = kotlinx.coroutines.flow.internal.CombineKt.getNull()
            r13 = r0
            r0 = r6
            l.z.d.z r0 = r0.$secondValue$inlined
            T r0 = r0.f33152a
            r14 = r0
            r0 = r14
            r1 = r13
            if (r0 != r1) goto L_0x0086
            goto L_0x008a
        L_0x0086:
            r0 = r14
            r15 = r0
        L_0x008a:
            r0 = r6
            r1 = r10
            r0.L$0 = r1
            r0 = r6
            r1 = 1
            r0.label = r1
            r0 = r11
            r1 = r12
            r2 = r7
            r3 = r15
            r4 = r6
            java.lang.Object r0 = r0.invoke(r1, r2, r3, r4)
            r1 = r8
            if (r0 != r1) goto L_0x00a8
            r0 = r8
            return r0
        L_0x00a8:
            l.s r0 = p626l.C14989s.f33022a
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.internal.C14867x599c5571.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
