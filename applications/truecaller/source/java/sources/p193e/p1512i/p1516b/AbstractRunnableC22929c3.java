package p193e.p1512i.p1516b;

import java.net.ProtocolException;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import java.util.concurrent.ExecutionException;
import javax.net.ssl.SSLException;
import p193e.p1512i.p1516b.p1528q2.C23019f;
import p193e.p1512i.p1516b.p1528q2.C23021h;
import p193e.p1512i.p1516b.p1528q2.C23023i;
import p193e.p1512i.p1516b.p1531s2.C23089l;
import s1.z.c.l;
/* renamed from: e.i.b.c3 */
/* loaded from: classes-dex2jar.jar:e/i/b/c3.class */
public abstract class AbstractRunnableC22929c3 implements Runnable {

    /* renamed from: a */
    public final C23021h f63608a = C23023i.m7583a(AbstractRunnableC22929c3.class);

    /* renamed from: b */
    public final StackTraceElement[] f63609b = Thread.currentThread().getStackTrace();

    /* renamed from: a */
    public abstract void mo7379a() throws Throwable;

    @Override // java.lang.Runnable
    public void run() {
        try {
            mo7379a();
        } catch (Throwable th) {
            ExecutionException executionException = new ExecutionException(th);
            executionException.setStackTrace(this.f63609b);
            if (th instanceof RuntimeException) {
                C23089l.m7560a(executionException);
                return;
            }
            if ((th instanceof SocketException) || (th instanceof UnknownHostException) || (th instanceof SSLException) || (th instanceof ProtocolException) || (th instanceof SocketTimeoutException)) {
                C23021h c23021h = this.f63608a;
                l.f(executionException, "throwable");
                c23021h.m7586a(new C23019f(4, "Uncaught expected exception in thread", executionException, "onUncaughtExpectedExceptionInThread"));
                return;
            }
            C23021h c23021h2 = this.f63608a;
            l.f(executionException, "throwable");
            c23021h2.m7586a(new C23019f(6, "Uncaught error in thread", executionException, "onUncaughtErrorInThread"));
        }
    }
}
