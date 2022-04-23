package kotlinx.coroutines.flow;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlinx.coroutines.ExperimentalCoroutinesApi;
import kotlinx.coroutines.FlowPreview;
import kotlinx.coroutines.flow.internal.NullSurrogateKt;
import p459j.p460a.p541n0.C13032a;
import p626l.C14989s;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.p635j.C15064c;
import p626l.p634w.p636k.p637a.AbstractC15068d;
import p626l.p634w.p636k.p637a.AbstractC15070f;
import p626l.p641z.p642c.AbstractC15118l;
import p626l.p641z.p642c.AbstractC15122p;
import p626l.p641z.p643d.C15164z;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��&\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u001e\u0010��\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b��\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0001H\u0007\u001aV\u0010��\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b��\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u000126\u0010\u0003\u001a2\u0012\u0013\u0012\u0011H\u0002¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012\u0013\u0012\u0011H\u0002¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\b\u0012\u0004\u0012\u00020\t0\u0004H\u0007\u001a8\u0010\n\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b��\u0010\u0002\"\u0004\b\u0001\u0010\u000b*\b\u0012\u0004\u0012\u0002H\u00020\u00012\u0012\u0010\f\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u000b0\rH\u0007\u001az\u0010\n\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b��\u0010\u0002\"\u0004\b\u0001\u0010\u000b*\b\u0012\u0004\u0012\u0002H\u00020\u00012\u0014\b\u0004\u0010\f\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u000b0\r28\b\u0004\u0010\u0003\u001a2\u0012\u0013\u0012\u0011H\u000b¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012\u0013\u0012\u0011H\u000b¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\b\u0012\u0004\u0012\u00020\t0\u0004H\u0082\b¢\u0006\u0002\b\u000e¨\u0006\u000f"}, m815d2 = {"distinctUntilChanged", "Lkotlinx/coroutines/flow/Flow;", ExifInterface.GPS_DIRECTION_TRUE, "areEquivalent", "Lkotlin/Function2;", "Lkotlin/ParameterName;", "name", "old", "new", "", "distinctUntilChangedBy", "K", "keySelector", "Lkotlin/Function1;", "distinctUntilChangedBy$FlowKt__DistinctKt", "kotlinx-coroutines-core"}, m814k = 5, m813mv = {1, 1, 16}, m810xs = "kotlinx/coroutines/flow/FlowKt")
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/flow/FlowKt__DistinctKt.class */
public final /* synthetic */ class FlowKt__DistinctKt {
    @ExperimentalCoroutinesApi
    public static final <T> Flow<T> distinctUntilChanged(Flow<? extends T> flow) {
        return FlowKt.distinctUntilChangedBy(flow, FlowKt__DistinctKt$distinctUntilChanged$1.INSTANCE);
    }

    @FlowPreview
    public static final <T> Flow<T> distinctUntilChanged(final Flow<? extends T> flow, final AbstractC15122p<? super T, ? super T, Boolean> pVar) {
        return new Flow<T>() { // from class: kotlinx.coroutines.flow.FlowKt__DistinctKt$distinctUntilChanged$$inlined$distinctUntilChangedBy$FlowKt__DistinctKt$1

            @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u007f\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0004\n\u0002\b\u0004\n\u0002\b\u0004\n\u0002\b\u0005*\u0001��\b\n\u0018��2\b\u0012\u0004\u0012\u00028��0\u0001J\u0019\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00028��H\u0096@ø\u0001��¢\u0006\u0002\u0010\u0005\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0006¸\u0006\b"}, m815d2 = {"kotlinx/coroutines/flow/FlowKt__CollectKt$collect$3", "Lkotlinx/coroutines/flow/FlowCollector;", "emit", "", C13032a.f29462d, "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core", "kotlinx/coroutines/flow/FlowKt__DistinctKt$$special$$inlined$collect$1", "kotlinx/coroutines/flow/FlowKt__DistinctKt$distinctUntilChangedBy$$inlined$unsafeFlow$1$lambda$1"}, m814k = 1, m813mv = {1, 1, 16})
            /* renamed from: kotlinx.coroutines.flow.FlowKt__DistinctKt$distinctUntilChanged$$inlined$distinctUntilChangedBy$FlowKt__DistinctKt$1$2 */
            /* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/flow/FlowKt__DistinctKt$distinctUntilChanged$$inlined$distinctUntilChangedBy$FlowKt__DistinctKt$1$2.class */
            public static final class C147202 implements FlowCollector<T> {
                public final /* synthetic */ C15164z $previousKey$inlined;
                public final /* synthetic */ FlowCollector $this_unsafeFlow$inlined;
                public final /* synthetic */ C14719x9f1d94d1 this$0;

                @AbstractC15070f(m473c = "kotlinx.coroutines.flow.FlowKt__DistinctKt$distinctUntilChanged$$inlined$distinctUntilChangedBy$FlowKt__DistinctKt$1$2", m472f = "Distinct.kt", m471l = {141}, m470m = "emit")
                @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0082\u0001\n��\n\u0002\u0010��\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\b\u0003\u0010��\u001a\u0004\u0018\u00010\u0001\"\u0004\b��\u0010\u00022\u0006\u0010\u0003\u001a\u0002H\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005H\u0096@¨\u0006\t"}, m815d2 = {"emit", "", ExifInterface.GPS_DIRECTION_TRUE, C13032a.f29462d, "continuation", "Lkotlin/coroutines/Continuation;", "", "kotlinx/coroutines/flow/FlowKt__CollectKt$collect$3$emit$1", "kotlinx/coroutines/flow/FlowKt__DistinctKt$$special$$inlined$collect$1$1", "kotlinx/coroutines/flow/FlowKt__DistinctKt$distinctUntilChangedBy$$inlined$unsafeFlow$1$lambda$1$1"}, m814k = 3, m813mv = {1, 1, 16})
                /* renamed from: kotlinx.coroutines.flow.FlowKt__DistinctKt$distinctUntilChanged$$inlined$distinctUntilChangedBy$FlowKt__DistinctKt$1$2$1 */
                /* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/flow/FlowKt__DistinctKt$distinctUntilChanged$$inlined$distinctUntilChangedBy$FlowKt__DistinctKt$1$2$1.class */
                public static final class C147211 extends AbstractC15068d {
                    public Object L$0;
                    public Object L$1;
                    public Object L$2;
                    public Object L$3;
                    public Object L$4;
                    public int label;
                    public /* synthetic */ Object result;

                    public C147211(AbstractC15044d dVar) {
                        super(dVar);
                    }

                    @Override // p626l.p634w.p636k.p637a.AbstractC15065a
                    public final Object invokeSuspend(Object obj) {
                        this.result = obj;
                        this.label |= Integer.MIN_VALUE;
                        return C147202.this.emit(null, this);
                    }
                }

                public C147202(FlowCollector flowCollector, C15164z zVar, C14719x9f1d94d1 flowKt__DistinctKt$distinctUntilChanged$$inlined$distinctUntilChangedBy$FlowKt__DistinctKt$1) {
                    this.$this_unsafeFlow$inlined = flowCollector;
                    this.$previousKey$inlined = zVar;
                    this.this$0 = flowKt__DistinctKt$distinctUntilChanged$$inlined$distinctUntilChangedBy$FlowKt__DistinctKt$1;
                }

                /* JADX WARN: Multi-variable type inference failed */
                /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
                /* JADX WARN: Removed duplicated region for block: B:15:0x007d  */
                @Override // kotlinx.coroutines.flow.FlowCollector
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public java.lang.Object emit(java.lang.Object r6, p626l.p634w.AbstractC15044d r7) {
                    /*
                        Method dump skipped, instructions count: 230
                        To view this dump add '--comments-level debug' option
                    */
                    throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.C14719x9f1d94d1.C147202.emit(java.lang.Object, l.w.d):java.lang.Object");
                }
            }

            /* JADX WARN: Type inference failed for: r1v1, types: [kotlinx.coroutines.internal.Symbol, T] */
            @Override // kotlinx.coroutines.flow.Flow
            public Object collect(FlowCollector flowCollector, AbstractC15044d dVar) {
                C15164z zVar = new C15164z();
                zVar.f33152a = NullSurrogateKt.NULL;
                Object collect = Flow.this.collect(new C147202(flowCollector, zVar, this), dVar);
                return collect == C15064c.m478a() ? collect : C14989s.f33022a;
            }
        };
    }

    @FlowPreview
    public static final <T, K> Flow<T> distinctUntilChangedBy(final Flow<? extends T> flow, final AbstractC15118l<? super T, ? extends K> lVar) {
        return new Flow<T>() { // from class: kotlinx.coroutines.flow.FlowKt__DistinctKt$distinctUntilChangedBy$$inlined$distinctUntilChangedBy$FlowKt__DistinctKt$1

            @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u007f\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0004\n\u0002\b\u0004\n\u0002\b\u0004\n\u0002\b\u0005*\u0001��\b\n\u0018��2\b\u0012\u0004\u0012\u00028��0\u0001J\u0019\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00028��H\u0096@ø\u0001��¢\u0006\u0002\u0010\u0005\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0006¸\u0006\b"}, m815d2 = {"kotlinx/coroutines/flow/FlowKt__CollectKt$collect$3", "Lkotlinx/coroutines/flow/FlowCollector;", "emit", "", C13032a.f29462d, "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core", "kotlinx/coroutines/flow/FlowKt__DistinctKt$$special$$inlined$collect$2", "kotlinx/coroutines/flow/FlowKt__DistinctKt$distinctUntilChangedBy$$inlined$unsafeFlow$2$lambda$1"}, m814k = 1, m813mv = {1, 1, 16})
            /* renamed from: kotlinx.coroutines.flow.FlowKt__DistinctKt$distinctUntilChangedBy$$inlined$distinctUntilChangedBy$FlowKt__DistinctKt$1$2 */
            /* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/flow/FlowKt__DistinctKt$distinctUntilChangedBy$$inlined$distinctUntilChangedBy$FlowKt__DistinctKt$1$2.class */
            public static final class C147232 implements FlowCollector<T> {
                public final /* synthetic */ C15164z $previousKey$inlined;
                public final /* synthetic */ FlowCollector $this_unsafeFlow$inlined;
                public final /* synthetic */ C14722xde9fe73a this$0;

                @AbstractC15070f(m473c = "kotlinx.coroutines.flow.FlowKt__DistinctKt$distinctUntilChangedBy$$inlined$distinctUntilChangedBy$FlowKt__DistinctKt$1$2", m472f = "Distinct.kt", m471l = {141}, m470m = "emit")
                @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0082\u0001\n��\n\u0002\u0010��\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\b\u0003\u0010��\u001a\u0004\u0018\u00010\u0001\"\u0004\b��\u0010\u00022\u0006\u0010\u0003\u001a\u0002H\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005H\u0096@¨\u0006\t"}, m815d2 = {"emit", "", ExifInterface.GPS_DIRECTION_TRUE, C13032a.f29462d, "continuation", "Lkotlin/coroutines/Continuation;", "", "kotlinx/coroutines/flow/FlowKt__CollectKt$collect$3$emit$1", "kotlinx/coroutines/flow/FlowKt__DistinctKt$$special$$inlined$collect$2$1", "kotlinx/coroutines/flow/FlowKt__DistinctKt$distinctUntilChangedBy$$inlined$unsafeFlow$2$lambda$1$1"}, m814k = 3, m813mv = {1, 1, 16})
                /* renamed from: kotlinx.coroutines.flow.FlowKt__DistinctKt$distinctUntilChangedBy$$inlined$distinctUntilChangedBy$FlowKt__DistinctKt$1$2$1 */
                /* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/flow/FlowKt__DistinctKt$distinctUntilChangedBy$$inlined$distinctUntilChangedBy$FlowKt__DistinctKt$1$2$1.class */
                public static final class C147241 extends AbstractC15068d {
                    public Object L$0;
                    public Object L$1;
                    public Object L$2;
                    public Object L$3;
                    public Object L$4;
                    public int label;
                    public /* synthetic */ Object result;

                    public C147241(AbstractC15044d dVar) {
                        super(dVar);
                    }

                    @Override // p626l.p634w.p636k.p637a.AbstractC15065a
                    public final Object invokeSuspend(Object obj) {
                        this.result = obj;
                        this.label |= Integer.MIN_VALUE;
                        return C147232.this.emit(null, this);
                    }
                }

                public C147232(FlowCollector flowCollector, C15164z zVar, C14722xde9fe73a flowKt__DistinctKt$distinctUntilChangedBy$$inlined$distinctUntilChangedBy$FlowKt__DistinctKt$1) {
                    this.$this_unsafeFlow$inlined = flowCollector;
                    this.$previousKey$inlined = zVar;
                    this.this$0 = flowKt__DistinctKt$distinctUntilChangedBy$$inlined$distinctUntilChangedBy$FlowKt__DistinctKt$1;
                }

                /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
                /* JADX WARN: Removed duplicated region for block: B:15:0x007d  */
                /* JADX WARN: Type inference failed for: r0v13, types: [T, java.lang.Object] */
                /* JADX WARN: Unknown variable types count: 1 */
                @Override // kotlinx.coroutines.flow.FlowCollector
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public java.lang.Object emit(java.lang.Object r6, p626l.p634w.AbstractC15044d r7) {
                    /*
                        Method dump skipped, instructions count: 240
                        To view this dump add '--comments-level debug' option
                    */
                    throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.C14722xde9fe73a.C147232.emit(java.lang.Object, l.w.d):java.lang.Object");
                }
            }

            /* JADX WARN: Type inference failed for: r1v1, types: [kotlinx.coroutines.internal.Symbol, T] */
            @Override // kotlinx.coroutines.flow.Flow
            public Object collect(FlowCollector flowCollector, AbstractC15044d dVar) {
                C15164z zVar = new C15164z();
                zVar.f33152a = NullSurrogateKt.NULL;
                Object collect = Flow.this.collect(new C147232(flowCollector, zVar, this), dVar);
                return collect == C15064c.m478a() ? collect : C14989s.f33022a;
            }
        };
    }

    public static final <T, K> Flow<T> distinctUntilChangedBy$FlowKt__DistinctKt(Flow<? extends T> flow, AbstractC15118l<? super T, ? extends K> lVar, AbstractC15122p<? super K, ? super K, Boolean> pVar) {
        return new FlowKt__DistinctKt$distinctUntilChangedBy$$inlined$unsafeFlow$3(flow, lVar, pVar);
    }
}
