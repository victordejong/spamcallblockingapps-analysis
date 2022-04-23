package kotlinx.coroutines.flow.internal;

import kotlin.Metadata;
import kotlinx.coroutines.flow.FlowCollector;
import p459j.p460a.p541n0.C13032a;
import p626l.C14989s;
import p626l.p629c0.AbstractC14902e;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.p636k.p637a.AbstractC15077l;
import p626l.p641z.p642c.AbstractC15123q;
import p626l.p641z.p643d.C15131a0;
import p626l.p641z.p643d.C15147i;
import p626l.p641z.p643d.C15148j;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u001a\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\u0010��\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u00032\u0017\u0010\u0005\u001a\u0013\u0018\u00010\u0004¢\u0006\f\b\u0006\u0012\b\b\u0007\u0012\u0004\b\b(\bH\u0086@¢\u0006\u0004\b\t\u0010\n"}, m815d2 = {"<anonymous>", "", "p1", "Lkotlinx/coroutines/flow/FlowCollector;", "", "p2", "Lkotlin/ParameterName;", "name", C13032a.f29462d, "invoke", "(Lkotlinx/coroutines/flow/FlowCollector;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;"}, m814k = 3, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/flow/internal/SafeCollectorKt$emitFun$1.class */
public final /* synthetic */ class SafeCollectorKt$emitFun$1 extends C15147i implements AbstractC15123q<FlowCollector<? super Object>, Object, AbstractC15044d<? super C14989s>, Object>, AbstractC15077l {
    public SafeCollectorKt$emitFun$1() {
        super(3);
    }

    @Override // p626l.p641z.p643d.AbstractC15134c
    public final String getName() {
        return "emit";
    }

    @Override // p626l.p641z.p643d.AbstractC15134c
    public final AbstractC14902e getOwner() {
        return C15131a0.m419a(FlowCollector.class);
    }

    @Override // p626l.p641z.p643d.AbstractC15134c
    public final String getSignature() {
        return "emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;";
    }

    @Override // p626l.p641z.p642c.AbstractC15123q
    public /* bridge */ /* synthetic */ Object invoke(FlowCollector<? super Object> flowCollector, Object obj, AbstractC15044d<? super C14989s> dVar) {
        return invoke2((FlowCollector<Object>) flowCollector, obj, dVar);
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Object invoke2(FlowCollector<Object> flowCollector, Object obj, AbstractC15044d<? super C14989s> dVar) {
        C15148j.m388c(0);
        Object emit = flowCollector.emit(obj, dVar);
        C15148j.m388c(2);
        C15148j.m388c(1);
        return emit;
    }
}
