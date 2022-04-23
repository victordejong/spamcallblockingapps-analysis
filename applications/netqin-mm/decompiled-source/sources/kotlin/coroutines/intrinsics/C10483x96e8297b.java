package kotlin.coroutines.intrinsics;

import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import p573f.C9927e;
import p573f.p579t.AbstractC9993a;
import p573f.p590w.p591b.AbstractC10031l;
/* renamed from: kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt$createCoroutineFromSuspendFunction$2 */
/* loaded from: classes2-dex2jar.jar:kotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt$createCoroutineFromSuspendFunction$2.class */
public final class C10483x96e8297b extends ContinuationImpl {
    public final /* synthetic */ AbstractC10031l $block;
    public final /* synthetic */ AbstractC9993a $completion;
    public final /* synthetic */ CoroutineContext $context;
    public int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C10483x96e8297b(AbstractC10031l lVar, AbstractC9993a aVar, CoroutineContext coroutineContext, AbstractC9993a aVar2, CoroutineContext coroutineContext2) {
        super(aVar2, coroutineContext2);
        this.$block = lVar;
        this.$completion = aVar;
        this.$context = coroutineContext;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public Object invokeSuspend(Object obj) {
        int i = this.label;
        if (i == 0) {
            this.label = 1;
            C9927e.m1779a(obj);
            obj = this.$block.invoke(this);
        } else if (i == 1) {
            this.label = 2;
            C9927e.m1779a(obj);
        } else {
            throw new IllegalStateException("This coroutine had already completed".toString());
        }
        return obj;
    }
}
