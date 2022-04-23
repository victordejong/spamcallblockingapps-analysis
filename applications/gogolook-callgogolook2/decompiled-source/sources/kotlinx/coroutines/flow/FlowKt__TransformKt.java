package kotlinx.coroutines.flow;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlinx.coroutines.ExperimentalCoroutinesApi;
import p459j.p460a.p541n0.C13032a;
import p626l.C14989s;
import p626l.p632u.C15035z;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.p635j.C15064c;
import p626l.p634w.p636k.p637a.AbstractC15068d;
import p626l.p634w.p636k.p637a.AbstractC15070f;
import p626l.p641z.p642c.AbstractC15122p;
import p626l.p641z.p642c.AbstractC15123q;
import p626l.p641z.p643d.C15149k;
import p626l.p641z.p643d.C15162x;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��<\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010��\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\u001aM\u0010��\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b��\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00012$\b\u0004\u0010\u0003\u001a\u001e\b\u0001\u0012\u0004\u0012\u0002H\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0004H\u0086\bø\u0001��¢\u0006\u0002\u0010\b\u001a\u001f\u0010\t\u001a\b\u0012\u0004\u0012\u0002H\n0\u0001\"\u0006\b��\u0010\n\u0018\u0001*\u0006\u0012\u0002\b\u00030\u0001H\u0086\b\u001aM\u0010\u000b\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b��\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00012$\b\u0004\u0010\u0003\u001a\u001e\b\u0001\u0012\u0004\u0012\u0002H\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0004H\u0086\bø\u0001��¢\u0006\u0002\u0010\b\u001a\"\u0010\f\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\b\b��\u0010\u0002*\u00020\u0007*\n\u0012\u0006\u0012\u0004\u0018\u0001H\u00020\u0001\u001ab\u0010\r\u001a\b\u0012\u0004\u0012\u0002H\n0\u0001\"\u0004\b��\u0010\u0002\"\u0004\b\u0001\u0010\n*\b\u0012\u0004\u0012\u0002H\u00020\u000123\b\u0004\u0010\u000e\u001a-\b\u0001\u0012\u0013\u0012\u0011H\u0002¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0011\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\n0\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0004H\u0086\bø\u0001��¢\u0006\u0002\u0010\b\u001ah\u0010\u0012\u001a\b\u0012\u0004\u0012\u0002H\n0\u0001\"\u0004\b��\u0010\u0002\"\b\b\u0001\u0010\n*\u00020\u0007*\b\u0012\u0004\u0012\u0002H\u00020\u000125\b\u0004\u0010\u000e\u001a/\b\u0001\u0012\u0013\u0012\u0011H\u0002¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0011\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u0001H\n0\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0004H\u0086\bø\u0001��¢\u0006\u0002\u0010\b\u001aH\u0010\u0013\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b��\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00012\"\u0010\u0014\u001a\u001e\b\u0001\u0012\u0004\u0012\u0002H\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00150\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0004ø\u0001��¢\u0006\u0002\u0010\b\u001a~\u0010\u0016\u001a\b\u0012\u0004\u0012\u0002H\n0\u0001\"\u0004\b��\u0010\u0002\"\u0004\b\u0001\u0010\n*\b\u0012\u0004\u0012\u0002H\u00020\u00012\u0006\u0010\u0017\u001a\u0002H\n2H\b\u0001\u0010\u0018\u001aB\b\u0001\u0012\u0013\u0012\u0011H\n¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u001a\u0012\u0013\u0012\u0011H\u0002¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0011\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\n0\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0019H\u0007ø\u0001��¢\u0006\u0002\u0010\u001b\u001an\u0010\u001c\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b��\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00012F\u0010\u0018\u001aB\b\u0001\u0012\u0013\u0012\u0011H\u0002¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u001a\u0012\u0013\u0012\u0011H\u0002¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0011\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0019H\u0007ø\u0001��¢\u0006\u0002\u0010\u001d\u001a$\u0010\u001e\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00020\u001f0\u0001\"\u0004\b��\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0001H\u0007\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006 "}, m815d2 = {"filter", "Lkotlinx/coroutines/flow/Flow;", ExifInterface.GPS_DIRECTION_TRUE, "predicate", "Lkotlin/Function2;", "Lkotlin/coroutines/Continuation;", "", "", "(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;", "filterIsInstance", "R", "filterNot", "filterNotNull", "map", "transform", "Lkotlin/ParameterName;", "name", C13032a.f29462d, "mapNotNull", "onEach", "action", "", "scan", "initial", "operation", "Lkotlin/Function3;", "accumulator", "(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/Flow;", "scanReduce", "(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/Flow;", "withIndex", "Lkotlin/collections/IndexedValue;", "kotlinx-coroutines-core"}, m814k = 5, m813mv = {1, 1, 16}, m810xs = "kotlinx/coroutines/flow/FlowKt")
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/flow/FlowKt__TransformKt.class */
public final /* synthetic */ class FlowKt__TransformKt {
    public static final <T> Flow<T> filter(Flow<? extends T> flow, AbstractC15122p<? super T, ? super AbstractC15044d<? super Boolean>, ? extends Object> pVar) {
        return new FlowKt__TransformKt$filter$$inlined$unsafeTransform$1(flow, pVar);
    }

    public static final /* synthetic */ <R> Flow<R> filterIsInstance(Flow<?> flow) {
        C15149k.m387a();
        throw null;
    }

    public static final <T> Flow<T> filterNot(Flow<? extends T> flow, AbstractC15122p<? super T, ? super AbstractC15044d<? super Boolean>, ? extends Object> pVar) {
        return new FlowKt__TransformKt$filterNot$$inlined$unsafeTransform$1(flow, pVar);
    }

    public static final <T> Flow<T> filterNotNull(final Flow<? extends T> flow) {
        return new Flow<T>() { // from class: kotlinx.coroutines.flow.FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1
            @Override // kotlinx.coroutines.flow.Flow
            public Object collect(final FlowCollector flowCollector, AbstractC15044d dVar) {
                Object collect = Flow.this.collect(new FlowCollector<T>() { // from class: kotlinx.coroutines.flow.FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1.2
                    @Override // kotlinx.coroutines.flow.FlowCollector
                    public Object emit(Object obj, AbstractC15044d dVar2) {
                        C14989s sVar;
                        FlowCollector flowCollector2 = FlowCollector.this;
                        if (obj != null) {
                            Object emit = flowCollector2.emit(obj, dVar2);
                            if (emit == C15064c.m478a()) {
                                return emit;
                            }
                            sVar = C14989s.f33022a;
                        } else {
                            sVar = C14989s.f33022a;
                        }
                        return sVar;
                    }
                }, dVar);
                return collect == C15064c.m478a() ? collect : C14989s.f33022a;
            }
        };
    }

    public static final <T, R> Flow<R> map(Flow<? extends T> flow, AbstractC15122p<? super T, ? super AbstractC15044d<? super R>, ? extends Object> pVar) {
        return new FlowKt__TransformKt$map$$inlined$unsafeTransform$1(flow, pVar);
    }

    public static final <T, R> Flow<R> mapNotNull(Flow<? extends T> flow, AbstractC15122p<? super T, ? super AbstractC15044d<? super R>, ? extends Object> pVar) {
        return new FlowKt__TransformKt$mapNotNull$$inlined$unsafeTransform$1(flow, pVar);
    }

    public static final <T> Flow<T> onEach(final Flow<? extends T> flow, final AbstractC15122p<? super T, ? super AbstractC15044d<? super C14989s>, ? extends Object> pVar) {
        return new Flow<T>() { // from class: kotlinx.coroutines.flow.FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1

            @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u007f\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0004\n\u0002\b\u0004\n\u0002\b\u0004\n\u0002\b\u0005*\u0001��\b\n\u0018��2\b\u0012\u0004\u0012\u00028��0\u0001J\u0019\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00028��H\u0096@ø\u0001��¢\u0006\u0002\u0010\u0005\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0006¸\u0006\b"}, m815d2 = {"kotlinx/coroutines/flow/FlowKt__CollectKt$collect$3", "Lkotlinx/coroutines/flow/FlowCollector;", "emit", "", C13032a.f29462d, "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core", "kotlinx/coroutines/flow/FlowKt__TransformKt$$special$$inlined$collect$8", "kotlinx/coroutines/flow/FlowKt__TransformKt$unsafeTransform$$inlined$unsafeFlow$7$lambda$1"}, m814k = 1, m813mv = {1, 1, 16})
            /* renamed from: kotlinx.coroutines.flow.FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1$2 */
            /* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1$2.class */
            public static final class C148052 implements FlowCollector<T> {
                public final /* synthetic */ FlowCollector $this_unsafeFlow$inlined;
                public final /* synthetic */ FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1 this$0;

                @AbstractC15070f(m473c = "kotlinx.coroutines.flow.FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1$2", m472f = "Transform.kt", m471l = {138, 139}, m470m = "emit")
                @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0082\u0001\n��\n\u0002\u0010��\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\b\u0003\u0010��\u001a\u0004\u0018\u00010\u0001\"\u0004\b��\u0010\u00022\u0006\u0010\u0003\u001a\u0002H\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005H\u0096@¨\u0006\t"}, m815d2 = {"emit", "", ExifInterface.GPS_DIRECTION_TRUE, C13032a.f29462d, "continuation", "Lkotlin/coroutines/Continuation;", "", "kotlinx/coroutines/flow/FlowKt__CollectKt$collect$3$emit$1", "kotlinx/coroutines/flow/FlowKt__TransformKt$$special$$inlined$collect$8$1", "kotlinx/coroutines/flow/FlowKt__TransformKt$unsafeTransform$$inlined$unsafeFlow$7$lambda$1$1"}, m814k = 3, m813mv = {1, 1, 16})
                /* renamed from: kotlinx.coroutines.flow.FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1$2$1 */
                /* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1$2$1.class */
                public static final class C148061 extends AbstractC15068d {
                    public Object L$0;
                    public Object L$1;
                    public Object L$2;
                    public Object L$3;
                    public Object L$4;
                    public Object L$5;
                    public Object L$6;
                    public int label;
                    public /* synthetic */ Object result;

                    public C148061(AbstractC15044d dVar) {
                        super(dVar);
                    }

                    @Override // p626l.p634w.p636k.p637a.AbstractC15065a
                    public final Object invokeSuspend(Object obj) {
                        this.result = obj;
                        this.label |= Integer.MIN_VALUE;
                        return C148052.this.emit(null, this);
                    }
                }

                public C148052(FlowCollector flowCollector, FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1 flowKt__TransformKt$onEach$$inlined$unsafeTransform$1) {
                    this.$this_unsafeFlow$inlined = flowCollector;
                    this.this$0 = flowKt__TransformKt$onEach$$inlined$unsafeTransform$1;
                }

                /* JADX WARN: Removed duplicated region for block: B:10:0x0048  */
                /* JADX WARN: Removed duplicated region for block: B:18:0x00d1  */
                /* JADX WARN: Removed duplicated region for block: B:25:0x0167  */
                @Override // kotlinx.coroutines.flow.FlowCollector
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public java.lang.Object emit(java.lang.Object r6, p626l.p634w.AbstractC15044d r7) {
                    /*
                        Method dump skipped, instructions count: 366
                        To view this dump add '--comments-level debug' option
                    */
                    throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1.C148052.emit(java.lang.Object, l.w.d):java.lang.Object");
                }
            }

            @Override // kotlinx.coroutines.flow.Flow
            public Object collect(FlowCollector flowCollector, AbstractC15044d dVar) {
                Object collect = Flow.this.collect(new C148052(flowCollector, this), dVar);
                return collect == C15064c.m478a() ? collect : C14989s.f33022a;
            }
        };
    }

    @ExperimentalCoroutinesApi
    public static final <T, R> Flow<R> scan(Flow<? extends T> flow, R r, AbstractC15123q<? super R, ? super T, ? super AbstractC15044d<? super R>, ? extends Object> qVar) {
        return new FlowKt__TransformKt$scan$$inlined$unsafeFlow$1(flow, r, qVar);
    }

    @ExperimentalCoroutinesApi
    public static final <T> Flow<T> scanReduce(Flow<? extends T> flow, AbstractC15123q<? super T, ? super T, ? super AbstractC15044d<? super T>, ? extends Object> qVar) {
        return new FlowKt__TransformKt$scanReduce$$inlined$unsafeFlow$1(flow, qVar);
    }

    @ExperimentalCoroutinesApi
    public static final <T> Flow<C15035z<T>> withIndex(final Flow<? extends T> flow) {
        return (Flow<C15035z<? extends T>>) new Flow<C15035z<? extends T>>() { // from class: kotlinx.coroutines.flow.FlowKt__TransformKt$withIndex$$inlined$unsafeFlow$1
            @Override // kotlinx.coroutines.flow.Flow
            public Object collect(final FlowCollector flowCollector, AbstractC15044d dVar) {
                final C15162x xVar = new C15162x();
                xVar.f33150a = 0;
                Object collect = Flow.this.collect(new FlowCollector<T>() { // from class: kotlinx.coroutines.flow.FlowKt__TransformKt$withIndex$$inlined$unsafeFlow$1$lambda$1
                    @Override // kotlinx.coroutines.flow.FlowCollector
                    public Object emit(Object obj, AbstractC15044d dVar2) {
                        FlowCollector flowCollector2 = FlowCollector.this;
                        C15162x xVar2 = xVar;
                        int i = xVar2.f33150a;
                        xVar2.f33150a = i + 1;
                        if (i >= 0) {
                            Object emit = flowCollector2.emit(new C15035z(i, obj), dVar2);
                            return emit == C15064c.m478a() ? emit : C14989s.f33022a;
                        }
                        throw new ArithmeticException("Index overflow has happened");
                    }
                }, dVar);
                return collect == C15064c.m478a() ? collect : C14989s.f33022a;
            }
        };
    }
}
