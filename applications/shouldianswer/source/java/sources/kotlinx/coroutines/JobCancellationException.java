package kotlinx.coroutines;

import java.util.concurrent.CancellationException;
import kotlin.p081e.p083b.C1694h;
/* loaded from: classes-dex2jar.jar:kotlinx/coroutines/JobCancellationException.class */
public final class JobCancellationException extends CancellationException {

    /* renamed from: a */
    public final AbstractC1850bk f4455a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public JobCancellationException(String str, Throwable th, AbstractC1850bk abstractC1850bk) {
        super(str);
        C1694h.m3117b(str, "message");
        C1694h.m3117b(abstractC1850bk, "job");
        this.f4455a = abstractC1850bk;
        if (th != null) {
            initCause(th);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x003b, code lost:
        if (kotlin.p081e.p083b.C1694h.m3123a(r0.getCause(), getCause()) != false) goto L13;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(java.lang.Object r4) {
        /*
            r3 = this;
            r0 = r4
            r1 = r3
            kotlinx.coroutines.JobCancellationException r1 = (kotlinx.coroutines.JobCancellationException) r1
            if (r0 == r1) goto L46
            r0 = r4
            boolean r0 = r0 instanceof kotlinx.coroutines.JobCancellationException
            if (r0 == 0) goto L41
            r0 = r4
            kotlinx.coroutines.JobCancellationException r0 = (kotlinx.coroutines.JobCancellationException) r0
            r4 = r0
            r0 = r4
            java.lang.String r0 = r0.getMessage()
            r1 = r3
            java.lang.String r1 = r1.getMessage()
            boolean r0 = kotlin.p081e.p083b.C1694h.m3123a(r0, r1)
            if (r0 == 0) goto L41
            r0 = r4
            kotlinx.coroutines.bk r0 = r0.f4455a
            r1 = r3
            kotlinx.coroutines.bk r1 = r1.f4455a
            boolean r0 = kotlin.p081e.p083b.C1694h.m3123a(r0, r1)
            if (r0 == 0) goto L41
            r0 = r4
            java.lang.Throwable r0 = r0.getCause()
            r1 = r3
            java.lang.Throwable r1 = r1.getCause()
            boolean r0 = kotlin.p081e.p083b.C1694h.m3123a(r0, r1)
            if (r0 == 0) goto L41
            goto L46
        L41:
            r0 = 0
            r5 = r0
            goto L48
        L46:
            r0 = 1
            r5 = r0
        L48:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.JobCancellationException.equals(java.lang.Object):boolean");
    }

    @Override // java.lang.Throwable
    public Throwable fillInStackTrace() {
        if (C1789ag.f4470a) {
            Throwable fillInStackTrace = super.fillInStackTrace();
            C1694h.m3122a((Object) fillInStackTrace, "super.fillInStackTrace()");
            return fillInStackTrace;
        }
        return this;
    }

    public int hashCode() {
        String message = getMessage();
        if (message == null) {
            C1694h.m3124a();
        }
        int hashCode = message.hashCode();
        int hashCode2 = this.f4455a.hashCode();
        Throwable cause = getCause();
        return (((hashCode * 31) + hashCode2) * 31) + (cause != null ? cause.hashCode() : 0);
    }

    @Override // java.lang.Throwable
    public String toString() {
        return super.toString() + "; job=" + this.f4455a;
    }
}
