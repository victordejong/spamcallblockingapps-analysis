package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.p521c.AbstractC18335f;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0003\n\u0002\b\u0002\bf\u0018�� \b2\u00020\u0001:\u0001\bJ\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&¨\u0006\t"}, m4298d2 = {"Lkotlinx/coroutines/CoroutineExceptionHandler;", "Lkotlin/coroutines/CoroutineContext$Element;", "handleException", "", "context", "Lkotlin/coroutines/CoroutineContext;", "exception", "", "Key", "kotlinx-coroutines-core"}, m4297k = 1, m4296mv = {1, 4, 2})
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/CoroutineExceptionHandler.class */
public interface CoroutineExceptionHandler extends AbstractC18335f.AbstractC18338b {

    /* renamed from: a */
    public static final C20131a f66534a = C20131a.f66535a;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018��2\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0003¨\u0006\u0004"}, m4298d2 = {"Lkotlinx/coroutines/CoroutineExceptionHandler$Key;", "Lkotlin/coroutines/CoroutineContext$Key;", "Lkotlinx/coroutines/CoroutineExceptionHandler;", "()V", "kotlinx-coroutines-core"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* renamed from: kotlinx.coroutines.CoroutineExceptionHandler$a */
    /* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/CoroutineExceptionHandler$a.class */
    public static final class C20131a implements AbstractC18335f.AbstractC18340c<CoroutineExceptionHandler> {

        /* renamed from: a */
        static final /* synthetic */ C20131a f66535a = new C20131a();

        private C20131a() {
        }
    }

    void handleException(AbstractC18335f abstractC18335f, Throwable th);
}
