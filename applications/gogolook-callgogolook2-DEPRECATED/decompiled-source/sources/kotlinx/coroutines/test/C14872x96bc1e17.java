package kotlinx.coroutines.test;

import java.util.List;
import kotlin.Metadata;
import kotlinx.coroutines.CoroutineExceptionHandler;
import p626l.p634w.AbstractC15037a;
import p626l.p634w.AbstractC15049g;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��!\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0003\n��*\u0001��\b\n\u0018��2\u00020\u00012\u00020\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016¨\u0006\t¸\u0006��"}, m815d2 = {"kotlinx/coroutines/CoroutineExceptionHandlerKt$CoroutineExceptionHandler$1", "Lkotlin/coroutines/AbstractCoroutineContextElement;", "Lkotlinx/coroutines/CoroutineExceptionHandler;", "handleException", "", "context", "Lkotlin/coroutines/CoroutineContext;", "exception", "", "kotlinx-coroutines-core"}, m814k = 1, m813mv = {1, 1, 16})
/* renamed from: kotlinx.coroutines.test.TestCoroutineContext$$special$$inlined$CoroutineExceptionHandler$1 */
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/test/TestCoroutineContext$$special$$inlined$CoroutineExceptionHandler$1.class */
public final class C14872x96bc1e17 extends AbstractC15037a implements CoroutineExceptionHandler {
    public final /* synthetic */ TestCoroutineContext this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C14872x96bc1e17(AbstractC15049g.AbstractC15054c cVar, TestCoroutineContext testCoroutineContext) {
        super(cVar);
        this.this$0 = testCoroutineContext;
    }

    @Override // kotlinx.coroutines.CoroutineExceptionHandler
    public void handleException(AbstractC15049g gVar, Throwable th) {
        List list;
        list = this.this$0.uncaughtExceptions;
        list.add(th);
    }
}
