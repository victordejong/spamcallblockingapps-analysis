package kotlinx.coroutines;

import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010\u0003\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n��\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b��\u0018��2\u00060\u0001j\u0002`\u00022\b\u0012\u0004\u0012\u00020��0\u0003B\u001f\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\n\u0010\u000b\u001a\u0004\u0018\u00010��H\u0016J\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0096\u0002J\b\u0010\u0010\u001a\u00020\u0007H\u0016J\b\u0010\u0011\u001a\u00020\u0012H\u0016J\b\u0010\u0013\u001a\u00020\u0005H\u0016R\u0010\u0010\b\u001a\u00020\t8��X\u0081\u0004¢\u0006\u0002\n��¨\u0006\u0014"}, m4298d2 = {"Lkotlinx/coroutines/JobCancellationException;", "Ljava/util/concurrent/CancellationException;", "Lkotlinx/coroutines/CancellationException;", "Lkotlinx/coroutines/CopyableThrowable;", "message", "", "cause", "", "job", "Lkotlinx/coroutines/Job;", "(Ljava/lang/String;Ljava/lang/Throwable;Lkotlinx/coroutines/Job;)V", "createCopy", "equals", "", "other", "", "fillInStackTrace", "hashCode", "", "toString", "kotlinx-coroutines-core"}, m4297k = 1, m4296mv = {1, 4, 2})
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/JobCancellationException.class */
public final class JobCancellationException extends CancellationException implements AbstractC20138ad<JobCancellationException> {

    /* renamed from: a */
    public final AbstractC20218bv f66536a;

    public JobCancellationException(String str, Throwable th, AbstractC20218bv abstractC20218bv) {
        super(str);
        this.f66536a = abstractC20218bv;
        if (th != null) {
            initCause(th);
        }
    }

    @Override // kotlinx.coroutines.AbstractC20138ad
    /* renamed from: a */
    public final /* synthetic */ JobCancellationException mo1095a() {
        JobCancellationException jobCancellationException;
        if (C20159ao.m1082b()) {
            String message = getMessage();
            C18524p.m3851a((Object) message);
            jobCancellationException = new JobCancellationException(message, this, this.f66536a);
        } else {
            jobCancellationException = null;
        }
        return jobCancellationException;
    }

    public final boolean equals(Object obj) {
        if (obj != this) {
            if (!(obj instanceof JobCancellationException)) {
                return false;
            }
            JobCancellationException jobCancellationException = (JobCancellationException) obj;
            return C18524p.m3850a((Object) jobCancellationException.getMessage(), (Object) getMessage()) && C18524p.m3850a(jobCancellationException.f66536a, this.f66536a) && C18524p.m3850a(jobCancellationException.getCause(), getCause());
        }
        return true;
    }

    @Override // java.lang.Throwable
    public final Throwable fillInStackTrace() {
        if (C20159ao.m1082b()) {
            return super.fillInStackTrace();
        }
        setStackTrace(new StackTraceElement[0]);
        return this;
    }

    public final int hashCode() {
        String message = getMessage();
        C18524p.m3851a((Object) message);
        int hashCode = message.hashCode();
        int hashCode2 = this.f66536a.hashCode();
        Throwable cause = getCause();
        return (((hashCode * 31) + hashCode2) * 31) + (cause != null ? cause.hashCode() : 0);
    }

    @Override // java.lang.Throwable
    public final String toString() {
        return super.toString() + "; job=" + this.f66536a;
    }
}
