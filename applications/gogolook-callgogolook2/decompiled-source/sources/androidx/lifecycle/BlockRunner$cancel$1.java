package androidx.lifecycle;

import androidx.exifinterface.media.ExifInterface;
import androidx.media2.exoplayer.external.extractor.mkv.MatroskaExtractor;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.Job;
import p626l.C14982l;
import p626l.C14989s;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.p635j.C15064c;
import p626l.p634w.p636k.p637a.AbstractC15070f;
import p626l.p634w.p636k.p637a.AbstractC15078m;
import p626l.p641z.p642c.AbstractC15122p;
import p626l.p641z.p643d.C15149k;
@AbstractC15070f(m473c = "androidx.lifecycle.BlockRunner$cancel$1", m472f = "CoroutineLiveData.kt", m471l = {MatroskaExtractor.ID_CUE_POINT}, m470m = "invokeSuspend")
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0010\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u0001\"\u0004\b��\u0010\u0002*\u00020\u0003H\u008a@¢\u0006\u0004\b\u0004\u0010\u0005"}, m815d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/CoroutineScope;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, m814k = 3, m813mv = {1, 1, 15})
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/BlockRunner$cancel$1.class */
public final class BlockRunner$cancel$1 extends AbstractC15078m implements AbstractC15122p<CoroutineScope, AbstractC15044d<? super C14989s>, Object> {
    public Object L$0;
    public int label;

    /* renamed from: p$ */
    public CoroutineScope f63p$;
    public final /* synthetic */ BlockRunner this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BlockRunner$cancel$1(BlockRunner blockRunner, AbstractC15044d dVar) {
        super(2, dVar);
        this.this$0 = blockRunner;
    }

    @Override // p626l.p634w.p636k.p637a.AbstractC15065a
    public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
        C15149k.m377b(dVar, "completion");
        BlockRunner$cancel$1 blockRunner$cancel$1 = new BlockRunner$cancel$1(this.this$0, dVar);
        blockRunner$cancel$1.f63p$ = (CoroutineScope) obj;
        return blockRunner$cancel$1;
    }

    @Override // p626l.p641z.p642c.AbstractC15122p
    public final Object invoke(CoroutineScope coroutineScope, AbstractC15044d<? super C14989s> dVar) {
        return ((BlockRunner$cancel$1) create(coroutineScope, dVar)).invokeSuspend(C14989s.f33022a);
    }

    @Override // p626l.p634w.p636k.p637a.AbstractC15065a
    public final Object invokeSuspend(Object obj) {
        CoroutineLiveData coroutineLiveData;
        Job job;
        long j;
        Object a = C15064c.m478a();
        int i = this.label;
        if (i == 0) {
            C14982l.m653a(obj);
            CoroutineScope coroutineScope = this.f63p$;
            j = this.this$0.timeoutInMs;
            this.L$0 = coroutineScope;
            this.label = 1;
            if (DelayKt.delay(j, this) == a) {
                return a;
            }
        } else if (i == 1) {
            CoroutineScope coroutineScope2 = (CoroutineScope) this.L$0;
            C14982l.m653a(obj);
        } else {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        coroutineLiveData = this.this$0.liveData;
        if (!coroutineLiveData.hasActiveObservers()) {
            job = this.this$0.runningJob;
            if (job != null) {
                Job.DefaultImpls.cancel$default(job, (CancellationException) null, 1, (Object) null);
            }
            this.this$0.runningJob = null;
        }
        return C14989s.f33022a;
    }
}
