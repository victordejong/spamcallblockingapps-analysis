package kotlinx.coroutines.flow.internal;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlinx.coroutines.channels.ReceiveChannel;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.internal.Symbol;
import p459j.p460a.p541n0.C13032a;
import p626l.C14982l;
import p626l.C14986p;
import p626l.C14989s;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.p635j.C15064c;
import p626l.p634w.p636k.p637a.AbstractC15078m;
import p626l.p641z.p642c.AbstractC15122p;
import p626l.p641z.p642c.AbstractC15123q;
import p626l.p641z.p643d.C15162x;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u001e\n��\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\b\u0003\u0010��\u001a\u00020\u0001\"\u0004\b��\u0010\u0002\"\u0004\b\u0001\u0010\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u008a@¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, m815d2 = {"<anonymous>", "", "R", ExifInterface.GPS_DIRECTION_TRUE, C13032a.f29462d, "", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "kotlinx/coroutines/flow/internal/CombineKt$combineInternal$2$1$2"}, m814k = 3, m813mv = {1, 1, 16})
/* renamed from: kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2$invokeSuspend$$inlined$select$lambda$1 */
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/flow/internal/CombineKt$combineInternal$2$invokeSuspend$$inlined$select$lambda$1.class */
public final class C14863x2d5a9c55 extends AbstractC15078m implements AbstractC15122p<Object, AbstractC15044d<? super C14989s>, Object> {
    public final /* synthetic */ ReceiveChannel[] $channels$inlined;

    /* renamed from: $i */
    public final /* synthetic */ int f32918$i;
    public final /* synthetic */ Boolean[] $isClosed$inlined;
    public final /* synthetic */ Object[] $latestValues$inlined;
    public final /* synthetic */ C15162x $nonClosed$inlined;
    public final /* synthetic */ C15162x $remainingNulls$inlined;
    public final /* synthetic */ int $size$inlined;
    public Object L$0;
    public Object L$1;
    public int label;
    public Object p$0;
    public final /* synthetic */ CombineKt$combineInternal$2 this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C14863x2d5a9c55(int i, AbstractC15044d dVar, CombineKt$combineInternal$2 combineKt$combineInternal$2, int i2, Boolean[] boolArr, ReceiveChannel[] receiveChannelArr, Object[] objArr, C15162x xVar, C15162x xVar2) {
        super(2, dVar);
        this.f32918$i = i;
        this.this$0 = combineKt$combineInternal$2;
        this.$size$inlined = i2;
        this.$isClosed$inlined = boolArr;
        this.$channels$inlined = receiveChannelArr;
        this.$latestValues$inlined = objArr;
        this.$remainingNulls$inlined = xVar;
        this.$nonClosed$inlined = xVar2;
    }

    @Override // p626l.p634w.p636k.p637a.AbstractC15065a
    public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
        C14863x2d5a9c55 combineKt$combineInternal$2$invokeSuspend$$inlined$select$lambda$1 = new C14863x2d5a9c55(this.f32918$i, dVar, this.this$0, this.$size$inlined, this.$isClosed$inlined, this.$channels$inlined, this.$latestValues$inlined, this.$remainingNulls$inlined, this.$nonClosed$inlined);
        combineKt$combineInternal$2$invokeSuspend$$inlined$select$lambda$1.p$0 = obj;
        return combineKt$combineInternal$2$invokeSuspend$$inlined$select$lambda$1;
    }

    @Override // p626l.p641z.p642c.AbstractC15122p
    public final Object invoke(Object obj, AbstractC15044d<? super C14989s> dVar) {
        return ((C14863x2d5a9c55) create(obj, dVar)).invokeSuspend(C14989s.f33022a);
    }

    @Override // p626l.p634w.p636k.p637a.AbstractC15065a
    public final Object invokeSuspend(Object obj) {
        Object a = C15064c.m478a();
        int i = this.label;
        if (i == 0) {
            C14982l.m653a(obj);
            Object obj2 = this.p$0;
            if (this.$latestValues$inlined[this.f32918$i] == null) {
                C15162x xVar = this.$remainingNulls$inlined;
                xVar.f33150a--;
                int i2 = xVar.f33150a;
            }
            this.$latestValues$inlined[this.f32918$i] = obj2;
            if (this.$remainingNulls$inlined.f33150a != 0) {
                return C14989s.f33022a;
            }
            Object[] objArr = (Object[]) this.this$0.$arrayFactory.invoke();
            int i3 = this.$size$inlined;
            for (int i4 = 0; i4 < i3; i4++) {
                Symbol symbol = NullSurrogateKt.NULL;
                Object obj3 = this.$latestValues$inlined[i4];
                Object obj4 = obj3;
                if (obj3 == symbol) {
                    obj4 = null;
                }
                objArr[i4] = obj4;
            }
            CombineKt$combineInternal$2 combineKt$combineInternal$2 = this.this$0;
            AbstractC15123q qVar = combineKt$combineInternal$2.$transform;
            FlowCollector flowCollector = combineKt$combineInternal$2.$this_combineInternal;
            if (objArr != null) {
                this.L$0 = obj2;
                this.L$1 = objArr;
                this.label = 1;
                if (qVar.invoke(flowCollector, objArr, this) == a) {
                    return a;
                }
            } else {
                throw new C14986p("null cannot be cast to non-null type kotlin.Array<T>");
            }
        } else if (i == 1) {
            Object[] objArr2 = (Object[]) this.L$1;
            C14982l.m653a(obj);
        } else {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        return C14989s.f33022a;
    }
}
