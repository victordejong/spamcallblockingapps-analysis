package kotlinx.coroutines.flow.internal;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlinx.coroutines.flow.FlowCollector;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\"F\u0010\u0005\u001a,\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00020��8\u0002@\u0002X\u0082\u0004¢\u0006\f\n\u0004\b\u0005\u0010\u0006\u0012\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lkotlin/Function3;", "Lkotlinx/coroutines/flow/FlowCollector;", "", "Lkotlin/coroutines/Continuation;", "", "emitFun", "Lkotlin/Function3;", "getEmitFun$annotations", "()V", "kotlinx-coroutines-core"}, k = 2, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/flow/internal/SafeCollectorKt.class */
public final class SafeCollectorKt {

    /* renamed from: a */
    private static final Function3<FlowCollector<Object>, Object, Continuation<? super Unit>, Object> f23872a;

    static {
        SafeCollectorKt$emitFun$1 safeCollectorKt$emitFun$1 = new SafeCollectorKt$emitFun$1();
        TypeIntrinsics.m1785b(safeCollectorKt$emitFun$1, 3);
        f23872a = safeCollectorKt$emitFun$1;
    }

    /* renamed from: a */
    public static final /* synthetic */ Function3 m595a() {
        return f23872a;
    }
}
