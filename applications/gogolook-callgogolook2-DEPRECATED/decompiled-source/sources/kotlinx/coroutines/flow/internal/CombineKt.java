package kotlinx.coroutines.flow.internal;

import androidx.exifinterface.media.ExifInterface;
import com.aotter.net.gson.internal.bind.TypeAdapters;
import com.appsflyer.AppsFlyerProperties;
import kotlin.Metadata;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.channels.ProduceKt;
import kotlinx.coroutines.channels.ReceiveChannel;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.internal.Symbol;
import kotlinx.coroutines.selects.SelectBuilder;
import p459j.p460a.p541n0.C13032a;
import p626l.C14989s;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.p635j.C15064c;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p642c.AbstractC15122p;
import p626l.p641z.p642c.AbstractC15123q;
import p626l.p641z.p642c.AbstractC15124r;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��l\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0011\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a\b\u0010��\u001a\u00020\u0001H��\u001an\u0010\u0002\u001a\b\u0012\u0004\u0012\u0002H\u00040\u0003\"\u0004\b��\u0010\u0005\"\u0004\b\u0001\u0010\u0006\"\u0004\b\u0002\u0010\u00042\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u0002H\u00050\u00032\f\u0010\b\u001a\b\u0012\u0004\u0012\u0002H\u00060\u00032(\u0010\t\u001a$\b\u0001\u0012\u0004\u0012\u0002H\u0005\u0012\u0004\u0012\u0002H\u0006\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00040\u000b\u0012\u0006\u0012\u0004\u0018\u00010\f0\nH��ø\u0001��¢\u0006\u0002\u0010\r\u001a\u001e\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\f0\u000f*\u00020\u00102\n\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\u0003H\u0002\u001a\u001e\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\f0\u000f*\u00020\u00102\n\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\u0003H\u0002\u001a\u008e\u0001\u0010\u0012\u001a\u00020\u0013\"\u0004\b��\u0010\u0004\"\u0004\b\u0001\u0010\u0014*\b\u0012\u0004\u0012\u0002H\u00040\u00152\u0014\u0010\u0016\u001a\u0010\u0012\f\b\u0001\u0012\b\u0012\u0004\u0012\u0002H\u00140\u00030\u00172\u0014\u0010\u0018\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u0001H\u00140\u00170\u001929\u0010\t\u001a5\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00040\u0015\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00140\u0017\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00130\u000b\u0012\u0006\u0012\u0004\u0018\u00010\f0\n¢\u0006\u0002\b\u001aH\u0081@ø\u0001��¢\u0006\u0002\u0010\u001b\u001a¢\u0001\u0010\u001c\u001a\u00020\u0013\"\u0004\b��\u0010\u0005\"\u0004\b\u0001\u0010\u0006\"\u0004\b\u0002\u0010\u0004*\b\u0012\u0004\u0012\u0002H\u00040\u00152\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u0002H\u00050\u00032\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u0002H\u00060\u00032W\u0010\t\u001aS\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00040\u0015\u0012\u0013\u0012\u0011H\u0005¢\u0006\f\b \u0012\b\b!\u0012\u0004\b\b(\"\u0012\u0013\u0012\u0011H\u0006¢\u0006\f\b \u0012\b\b!\u0012\u0004\b\b(#\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00130\u000b\u0012\u0006\u0012\u0004\u0018\u00010\f0\u001f¢\u0006\u0002\b\u001aH\u0080@ø\u0001��¢\u0006\u0002\u0010$\u001av\u0010%\u001a\u00020\u0013*\b\u0012\u0004\u0012\u00020\u00130&2\u0006\u0010'\u001a\u00020(2\f\u0010)\u001a\b\u0012\u0004\u0012\u00020\f0\u000f2\u000e\b\u0004\u0010*\u001a\b\u0012\u0004\u0012\u00020\u00130\u001923\b\b\u0010%\u001a-\b\u0001\u0012\u0013\u0012\u00110\f¢\u0006\f\b \u0012\b\b!\u0012\u0004\b\b(,\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00130\u000b\u0012\u0006\u0012\u0004\u0018\u00010\f0+H\u0082\bø\u0001��¢\u0006\u0002\u0010-\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006."}, m815d2 = {"getNull", "Lkotlinx/coroutines/internal/Symbol;", "zipImpl", "Lkotlinx/coroutines/flow/Flow;", "R", "T1", "T2", "flow", "flow2", "transform", "Lkotlin/Function3;", "Lkotlin/coroutines/Continuation;", "", "(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/Flow;", "asChannel", "Lkotlinx/coroutines/channels/ReceiveChannel;", "Lkotlinx/coroutines/CoroutineScope;", "asFairChannel", "combineInternal", "", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/flow/FlowCollector;", "flows", "", "arrayFactory", "Lkotlin/Function0;", "Lkotlin/ExtensionFunctionType;", "(Lkotlinx/coroutines/flow/FlowCollector;[Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "combineTransformInternal", "first", TypeAdapters.C163827.SECOND, "Lkotlin/Function4;", "Lkotlin/ParameterName;", "name", "a", "b", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function4;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "onReceive", "Lkotlinx/coroutines/selects/SelectBuilder;", "isClosed", "", AppsFlyerProperties.CHANNEL, "onClosed", "Lkotlin/Function2;", C13032a.f29462d, "(Lkotlinx/coroutines/selects/SelectBuilder;ZLkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;)V", "kotlinx-coroutines-core"}, m814k = 2, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/flow/internal/CombineKt.class */
public final class CombineKt {
    public static final ReceiveChannel<Object> asChannel(CoroutineScope coroutineScope, Flow<?> flow) {
        return ProduceKt.produce$default(coroutineScope, null, 0, new CombineKt$asChannel$1(flow, null), 3, null);
    }

    public static final ReceiveChannel<Object> asFairChannel(CoroutineScope coroutineScope, Flow<?> flow) {
        return ProduceKt.produce$default(coroutineScope, null, 0, new CombineKt$asFairChannel$1(flow, null), 3, null);
    }

    public static final <R, T> Object combineInternal(FlowCollector<? super R> flowCollector, Flow<? extends T>[] flowArr, AbstractC15107a<T[]> aVar, AbstractC15123q<? super FlowCollector<? super R>, ? super T[], ? super AbstractC15044d<? super C14989s>, ? extends Object> qVar, AbstractC15044d<? super C14989s> dVar) {
        Object coroutineScope = CoroutineScopeKt.coroutineScope(new CombineKt$combineInternal$2(flowCollector, flowArr, aVar, qVar, null), dVar);
        return coroutineScope == C15064c.m478a() ? coroutineScope : C14989s.f33022a;
    }

    public static final <T1, T2, R> Object combineTransformInternal(FlowCollector<? super R> flowCollector, Flow<? extends T1> flow, Flow<? extends T2> flow2, AbstractC15124r<? super FlowCollector<? super R>, ? super T1, ? super T2, ? super AbstractC15044d<? super C14989s>, ? extends Object> rVar, AbstractC15044d<? super C14989s> dVar) {
        Object coroutineScope = CoroutineScopeKt.coroutineScope(new CombineKt$combineTransformInternal$2(flowCollector, flow, flow2, rVar, null), dVar);
        return coroutineScope == C15064c.m478a() ? coroutineScope : C14989s.f33022a;
    }

    public static final Symbol getNull() {
        return NullSurrogateKt.NULL;
    }

    public static final void onReceive(SelectBuilder<? super C14989s> selectBuilder, boolean z, ReceiveChannel<? extends Object> receiveChannel, AbstractC15107a<C14989s> aVar, AbstractC15122p<Object, ? super AbstractC15044d<? super C14989s>, ? extends Object> pVar) {
        if (!z) {
            selectBuilder.invoke(receiveChannel.getOnReceiveOrNull(), new CombineKt$onReceive$1(aVar, pVar, null));
        }
    }

    public static final <T1, T2, R> Flow<R> zipImpl(Flow<? extends T1> flow, Flow<? extends T2> flow2, AbstractC15123q<? super T1, ? super T2, ? super AbstractC15044d<? super R>, ? extends Object> qVar) {
        return new CombineKt$zipImpl$$inlined$unsafeFlow$1(flow, flow2, qVar);
    }
}
