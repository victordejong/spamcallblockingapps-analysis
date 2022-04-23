package com.criteo.publisher;

import com.criteo.publisher.logging.g;
import com.criteo.publisher.logging.h;
import com.criteo.publisher.m0.o;
import java.net.ProtocolException;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import java.util.concurrent.ExecutionException;
import javax.net.ssl.SSLException;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/v.class */
public abstract class v implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final g f17661a = h.a(v.class);

    /* renamed from: b  reason: collision with root package name */
    private final StackTraceElement[] f17662b = Thread.currentThread().getStackTrace();

    private boolean a(Throwable th) {
        return (th instanceof SocketException) || (th instanceof UnknownHostException) || (th instanceof SSLException) || (th instanceof ProtocolException) || (th instanceof SocketTimeoutException);
    }

    public abstract void a() throws Throwable;

    @Override // java.lang.Runnable
    public void run() {
        try {
            a();
        } catch (Throwable th) {
            ExecutionException executionException = new ExecutionException(th);
            executionException.setStackTrace(this.f17662b);
            if (th instanceof RuntimeException) {
                o.a((Throwable) executionException);
            } else if (a(th)) {
                this.f17661a.a(t.d(executionException));
            } else {
                this.f17661a.a(t.b(executionException));
            }
        }
    }
}
