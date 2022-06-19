package kotlinx.coroutines;

import kotlin.C18298b;
import kotlin.Metadata;
import kotlin.p521c.AbstractC18335f;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u001c\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0010\u0002\n\u0002\b\u0007\u001a%\u0010��\u001a\u00020\u00012\u001a\b\u0004\u0010\u0002\u001a\u0014\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0003H\u0086\b\u001a\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0005H\u0007\u001a\u0018\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\u0005H��¨\u0006\r"}, m4298d2 = {"CoroutineExceptionHandler", "Lkotlinx/coroutines/CoroutineExceptionHandler;", "handler", "Lkotlin/Function2;", "Lkotlin/coroutines/CoroutineContext;", "", "", "handleCoroutineException", "context", "exception", "handlerException", "originalException", "thrownException", "kotlinx-coroutines-core"}, m4297k = 2, m4296mv = {1, 4, 2})
/* renamed from: kotlinx.coroutines.ah */
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/ah.class */
public final class C20144ah {
    /* renamed from: a */
    public static final Throwable m1087a(Throwable th, Throwable th2) {
        if (th == th2) {
            return th;
        }
        RuntimeException runtimeException = new RuntimeException("Exception while trying to handle coroutine exception", th2);
        C18298b.m4101a(runtimeException, th);
        return runtimeException;
    }

    /* renamed from: a */
    public static final void m1086a(AbstractC18335f abstractC18335f, Throwable th) {
        try {
            CoroutineExceptionHandler coroutineExceptionHandler = (CoroutineExceptionHandler) abstractC18335f.get(CoroutineExceptionHandler.f66534a);
            if (coroutineExceptionHandler != null) {
                coroutineExceptionHandler.handleException(abstractC18335f, th);
            } else {
                C20143ag.m1088a(abstractC18335f, th);
            }
        } catch (Throwable th2) {
            C20143ag.m1088a(abstractC18335f, m1087a(th, th2));
        }
    }
}
