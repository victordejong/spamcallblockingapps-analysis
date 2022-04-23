package kotlin.coroutines.intrinsics;

import kotlin.coroutines.jvm.internal.RestrictedContinuationImpl;
import p573f.C9927e;
import p573f.p579t.AbstractC9993a;
import p573f.p590w.p591b.AbstractC10031l;
/* renamed from: kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt$createCoroutineFromSuspendFunction$1 */
/* loaded from: classes2-dex2jar.jar:kotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt$createCoroutineFromSuspendFunction$1.class */
public final class C10482x96e8297a extends RestrictedContinuationImpl {
    public final /* synthetic */ AbstractC10031l $block;
    public final /* synthetic */ AbstractC9993a $completion;
    public int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C10482x96e8297a(AbstractC10031l lVar, AbstractC9993a aVar, AbstractC9993a aVar2) {
        super(aVar2);
        this.$block = lVar;
        this.$completion = aVar;
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
