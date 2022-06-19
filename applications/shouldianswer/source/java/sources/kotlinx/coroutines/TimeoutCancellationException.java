package kotlinx.coroutines;

import java.util.concurrent.CancellationException;
import kotlin.p081e.p083b.C1694h;
/* loaded from: classes-dex2jar.jar:kotlinx/coroutines/TimeoutCancellationException.class */
public final class TimeoutCancellationException extends CancellationException {

    /* renamed from: a */
    public final AbstractC1850bk f4456a;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public TimeoutCancellationException(String str) {
        this(str, null);
        C1694h.m3117b(str, "message");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TimeoutCancellationException(String str, AbstractC1850bk abstractC1850bk) {
        super(str);
        C1694h.m3117b(str, "message");
        this.f4456a = abstractC1850bk;
    }
}
