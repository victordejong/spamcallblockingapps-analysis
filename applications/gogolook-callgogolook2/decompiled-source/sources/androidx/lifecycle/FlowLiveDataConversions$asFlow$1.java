package androidx.lifecycle;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowCollector;
import p626l.C14982l;
import p626l.C14989s;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.p635j.C15064c;
import p626l.p634w.p636k.p637a.AbstractC15070f;
import p626l.p634w.p636k.p637a.AbstractC15078m;
import p626l.p641z.p642c.AbstractC15122p;
import p626l.p641z.p643d.C15149k;
@AbstractC15070f(m473c = "androidx.lifecycle.FlowLiveDataConversions$asFlow$1", m472f = "FlowLiveData.kt", m471l = {91, 95, 96}, m470m = "invokeSuspend")
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0010\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u0001\"\u0004\b��\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0003H\u008a@¢\u0006\u0004\b\u0004\u0010\u0005"}, m815d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/flow/FlowCollector;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, m814k = 3, m813mv = {1, 1, 15})
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/FlowLiveDataConversions$asFlow$1.class */
public final class FlowLiveDataConversions$asFlow$1 extends AbstractC15078m implements AbstractC15122p<FlowCollector<? super T>, AbstractC15044d<? super C14989s>, Object> {
    public final /* synthetic */ LiveData $this_asFlow;
    public Object L$0;
    public Object L$1;
    public Object L$2;
    public Object L$3;
    public Object L$4;
    public int label;

    /* renamed from: p$ */
    public FlowCollector f68p$;

    @AbstractC15070f(m473c = "androidx.lifecycle.FlowLiveDataConversions$asFlow$1$1", m472f = "FlowLiveData.kt", m471l = {}, m470m = "invokeSuspend")
    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0010\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u0001\"\u0004\b��\u0010\u0002*\u00020\u0003H\u008a@¢\u0006\u0004\b\u0004\u0010\u0005"}, m815d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/CoroutineScope;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, m814k = 3, m813mv = {1, 1, 15})
    /* renamed from: androidx.lifecycle.FlowLiveDataConversions$asFlow$1$1 */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/FlowLiveDataConversions$asFlow$1$1.class */
    public static final class C03851 extends AbstractC15078m implements AbstractC15122p<CoroutineScope, AbstractC15044d<? super C14989s>, Object> {
        public final /* synthetic */ Observer $observer;
        public int label;

        /* renamed from: p$ */
        public CoroutineScope f69p$;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C03851(Observer observer, AbstractC15044d dVar) {
            super(2, dVar);
            this.$observer = observer;
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
            C15149k.m377b(dVar, "completion");
            C03851 r0 = new C03851(this.$observer, dVar);
            r0.f69p$ = (CoroutineScope) obj;
            return r0;
        }

        @Override // p626l.p641z.p642c.AbstractC15122p
        public final Object invoke(CoroutineScope coroutineScope, AbstractC15044d<? super C14989s> dVar) {
            return ((C03851) create(coroutineScope, dVar)).invokeSuspend(C14989s.f33022a);
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final Object invokeSuspend(Object obj) {
            C15064c.m478a();
            if (this.label == 0) {
                C14982l.m653a(obj);
                FlowLiveDataConversions$asFlow$1.this.$this_asFlow.observeForever(this.$observer);
                return C14989s.f33022a;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    @AbstractC15070f(m473c = "androidx.lifecycle.FlowLiveDataConversions$asFlow$1$2", m472f = "FlowLiveData.kt", m471l = {}, m470m = "invokeSuspend")
    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0010\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u0001\"\u0004\b��\u0010\u0002*\u00020\u0003H\u008a@¢\u0006\u0004\b\u0004\u0010\u0005"}, m815d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/CoroutineScope;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, m814k = 3, m813mv = {1, 1, 15})
    /* renamed from: androidx.lifecycle.FlowLiveDataConversions$asFlow$1$2 */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/FlowLiveDataConversions$asFlow$1$2.class */
    public static final class C03862 extends AbstractC15078m implements AbstractC15122p<CoroutineScope, AbstractC15044d<? super C14989s>, Object> {
        public final /* synthetic */ Observer $observer;
        public int label;

        /* renamed from: p$ */
        public CoroutineScope f70p$;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C03862(Observer observer, AbstractC15044d dVar) {
            super(2, dVar);
            this.$observer = observer;
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
            C15149k.m377b(dVar, "completion");
            C03862 r0 = new C03862(this.$observer, dVar);
            r0.f70p$ = (CoroutineScope) obj;
            return r0;
        }

        @Override // p626l.p641z.p642c.AbstractC15122p
        public final Object invoke(CoroutineScope coroutineScope, AbstractC15044d<? super C14989s> dVar) {
            return ((C03862) create(coroutineScope, dVar)).invokeSuspend(C14989s.f33022a);
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final Object invokeSuspend(Object obj) {
            C15064c.m478a();
            if (this.label == 0) {
                C14982l.m653a(obj);
                FlowLiveDataConversions$asFlow$1.this.$this_asFlow.removeObserver(this.$observer);
                return C14989s.f33022a;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FlowLiveDataConversions$asFlow$1(LiveData liveData, AbstractC15044d dVar) {
        super(2, dVar);
        this.$this_asFlow = liveData;
    }

    @Override // p626l.p634w.p636k.p637a.AbstractC15065a
    public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
        C15149k.m377b(dVar, "completion");
        FlowLiveDataConversions$asFlow$1 flowLiveDataConversions$asFlow$1 = new FlowLiveDataConversions$asFlow$1(this.$this_asFlow, dVar);
        flowLiveDataConversions$asFlow$1.f68p$ = (FlowCollector) obj;
        return flowLiveDataConversions$asFlow$1;
    }

    @Override // p626l.p641z.p642c.AbstractC15122p
    public final Object invoke(Object obj, AbstractC15044d<? super C14989s> dVar) {
        return ((FlowLiveDataConversions$asFlow$1) create(obj, dVar)).invokeSuspend(C14989s.f33022a);
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x015f  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0162  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x017e A[Catch: all -> 0x01fc, TRY_LEAVE, TryCatch #2 {all -> 0x01fc, blocks: (B:34:0x0173, B:36:0x017e), top: B:52:0x0173 }] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x01dc  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:41:0x01c0 -> B:49:0x0132). Please submit an issue!!! */
    @Override // p626l.p634w.p636k.p637a.AbstractC15065a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r10) {
        /*
            Method dump skipped, instructions count: 549
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.lifecycle.FlowLiveDataConversions$asFlow$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
