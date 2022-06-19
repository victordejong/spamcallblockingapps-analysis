package kotlinx.coroutines;

import kotlin.p081e.p083b.C1694h;
/* loaded from: classes-dex2jar.jar:kotlinx/coroutines/CompletionHandlerException.class */
public final class CompletionHandlerException extends RuntimeException {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CompletionHandlerException(String str, Throwable th) {
        super(str, th);
        C1694h.m3117b(str, "message");
        C1694h.m3117b(th, "cause");
    }
}
