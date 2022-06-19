package kotlinx.coroutines;

import java.util.concurrent.CancellationException;
import kotlin.Metadata;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018��2\u00060\u0001j\u0002`\u00022\b\u0012\u0004\u0012\u00020��0\u0003B\u000f\b\u0010\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006B\u0019\b��\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\u0002\u0010\tJ\n\u0010\n\u001a\u0004\u0018\u00010��H\u0016R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\b8��X\u0081\u0004¢\u0006\u0002\n��¨\u0006\u000b"}, m4298d2 = {"Lkotlinx/coroutines/TimeoutCancellationException;", "Ljava/util/concurrent/CancellationException;", "Lkotlinx/coroutines/CancellationException;", "Lkotlinx/coroutines/CopyableThrowable;", "message", "", "(Ljava/lang/String;)V", "coroutine", "Lkotlinx/coroutines/Job;", "(Ljava/lang/String;Lkotlinx/coroutines/Job;)V", "createCopy", "kotlinx-coroutines-core"}, m4297k = 1, m4296mv = {1, 4, 2})
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/TimeoutCancellationException.class */
public final class TimeoutCancellationException extends CancellationException implements AbstractC20138ad<TimeoutCancellationException> {

    /* renamed from: a */
    public final AbstractC20218bv f66537a;

    public TimeoutCancellationException(String str) {
        this(str, null);
    }

    public TimeoutCancellationException(String str, AbstractC20218bv abstractC20218bv) {
        super(str);
        this.f66537a = abstractC20218bv;
    }

    @Override // kotlinx.coroutines.AbstractC20138ad
    /* renamed from: a */
    public final /* synthetic */ TimeoutCancellationException mo1095a() {
        String message = getMessage();
        String str = message;
        if (message == null) {
            str = "";
        }
        TimeoutCancellationException timeoutCancellationException = new TimeoutCancellationException(str, this.f66537a);
        timeoutCancellationException.initCause(this);
        return timeoutCancellationException;
    }
}
