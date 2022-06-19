package com.criteo.publisher;

import com.criteo.publisher.logging.C8402g;
import com.criteo.publisher.logging.C8404h;
import com.criteo.publisher.p256m0.C8444o;
import java.net.ProtocolException;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import java.util.concurrent.ExecutionException;
import javax.net.ssl.SSLException;
/* renamed from: com.criteo.publisher.v */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/v.class */
public abstract class AbstractRunnableC8529v implements Runnable {

    /* renamed from: a */
    private final C8402g f30391a = C8404h.m25741a(AbstractRunnableC8529v.class);

    /* renamed from: b */
    private final StackTraceElement[] f30392b = Thread.currentThread().getStackTrace();

    /* renamed from: a */
    private boolean m25367a(Throwable th) {
        return (th instanceof SocketException) || (th instanceof UnknownHostException) || (th instanceof SSLException) || (th instanceof ProtocolException) || (th instanceof SocketTimeoutException);
    }

    /* renamed from: a */
    public abstract void mo25368a() throws Throwable;

    @Override // java.lang.Runnable
    public void run() {
        try {
            mo25368a();
        } catch (Throwable th) {
            ExecutionException executionException = new ExecutionException(th);
            executionException.setStackTrace(this.f30392b);
            if (th instanceof RuntimeException) {
                C8444o.m25675a((Throwable) executionException);
            } else if (m25367a(th)) {
                this.f30391a.m25744a(C8527t.m25373d(executionException));
            } else {
                this.f30391a.m25744a(C8527t.m25375b(executionException));
            }
        }
    }
}
