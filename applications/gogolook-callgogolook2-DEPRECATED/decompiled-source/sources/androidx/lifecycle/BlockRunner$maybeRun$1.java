package androidx.lifecycle;

import androidx.exifinterface.media.ExifInterface;
import androidx.media2.exoplayer.external.extractor.mkv.MatroskaExtractor;
import kotlin.Metadata;
import kotlinx.coroutines.CoroutineScope;
import p626l.C14982l;
import p626l.C14989s;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.p635j.C15064c;
import p626l.p634w.p636k.p637a.AbstractC15070f;
import p626l.p634w.p636k.p637a.AbstractC15078m;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p642c.AbstractC15122p;
import p626l.p641z.p643d.C15149k;
@AbstractC15070f(m473c = "androidx.lifecycle.BlockRunner$maybeRun$1", m472f = "CoroutineLiveData.kt", m471l = {MatroskaExtractor.ID_PIXEL_WIDTH}, m470m = "invokeSuspend")
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0010\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u0001\"\u0004\b��\u0010\u0002*\u00020\u0003H\u008a@¢\u0006\u0004\b\u0004\u0010\u0005"}, m815d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/CoroutineScope;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, m814k = 3, m813mv = {1, 1, 15})
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/BlockRunner$maybeRun$1.class */
public final class BlockRunner$maybeRun$1 extends AbstractC15078m implements AbstractC15122p<CoroutineScope, AbstractC15044d<? super C14989s>, Object> {
    public Object L$0;
    public Object L$1;
    public int label;

    /* renamed from: p$ */
    public CoroutineScope f64p$;
    public final /* synthetic */ BlockRunner this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BlockRunner$maybeRun$1(BlockRunner blockRunner, AbstractC15044d dVar) {
        super(2, dVar);
        this.this$0 = blockRunner;
    }

    @Override // p626l.p634w.p636k.p637a.AbstractC15065a
    public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
        C15149k.m377b(dVar, "completion");
        BlockRunner$maybeRun$1 blockRunner$maybeRun$1 = new BlockRunner$maybeRun$1(this.this$0, dVar);
        blockRunner$maybeRun$1.f64p$ = (CoroutineScope) obj;
        return blockRunner$maybeRun$1;
    }

    @Override // p626l.p641z.p642c.AbstractC15122p
    public final Object invoke(CoroutineScope coroutineScope, AbstractC15044d<? super C14989s> dVar) {
        return ((BlockRunner$maybeRun$1) create(coroutineScope, dVar)).invokeSuspend(C14989s.f33022a);
    }

    @Override // p626l.p634w.p636k.p637a.AbstractC15065a
    public final Object invokeSuspend(Object obj) {
        AbstractC15107a aVar;
        CoroutineLiveData coroutineLiveData;
        AbstractC15122p pVar;
        Object a = C15064c.m478a();
        int i = this.label;
        if (i == 0) {
            C14982l.m653a(obj);
            CoroutineScope coroutineScope = this.f64p$;
            coroutineLiveData = this.this$0.liveData;
            LiveDataScopeImpl liveDataScopeImpl = new LiveDataScopeImpl(coroutineLiveData, coroutineScope.getCoroutineContext());
            pVar = this.this$0.block;
            this.L$0 = coroutineScope;
            this.L$1 = liveDataScopeImpl;
            this.label = 1;
            if (pVar.invoke(liveDataScopeImpl, this) == a) {
                return a;
            }
        } else if (i == 1) {
            LiveDataScopeImpl liveDataScopeImpl2 = (LiveDataScopeImpl) this.L$1;
            CoroutineScope coroutineScope2 = (CoroutineScope) this.L$0;
            C14982l.m653a(obj);
        } else {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        aVar = this.this$0.onDone;
        aVar.invoke();
        return C14989s.f33022a;
    }
}
